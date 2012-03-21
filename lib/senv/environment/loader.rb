module SENV
  module Environment
    class Loader
      attr_reader :environment_hash,
                  :load_global,
                  :local_group,
                  :local_tags,
                  :global_tags,
                  :options

      def self.load( *args )
        loader = new *args
        loader.load
        loader.load_into_environment!
      end

      def initialize( *args )
        @options     = Map.opts! args
        @local_group = options.local_group rescue args.shift or nil
        @local_tags  = options.local_tags  rescue args.shift or []
        @global_tags = options.global_tags rescue args.shift or []
        @load_global = options.load_global rescue args.shift or false

        @environment_hash = {}
      end

      def load
        load_global if load_global
        load_local  unless local_group.nil?
      end

      def load_into_environment
        environment_hash.each do | key , val |
          unless ENV[ key ].exists?
            ENV[ key ] = val
          end
        end
      end

      def load_local
        local_tags.push :default
        local_tags.each do | local_tag |
          config = Config.configure \
            :group => local_group,
            :tag   => local_tag
          environment_hash.merge! config
        end
      end

      def load_global
        global_tags.push :default
        global_tags.each do | global_tag |
          config = GlobalConfig.configure :tag => global_tag
          environment_hash.merge! config
        end
      end
    end
  end
end
