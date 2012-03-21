module SENV
  module Environment
    class Config
      attr_reader :config_path , :environment_hash , :group , :options , :raw_configuration , :tag

      def self.configure( *args )
        config = new *args
        config.configure
      end

      def initialize( *args )
        @options = Map.opts! args
        @group   = options.group rescue args.shift or raise ArgumentError.new( "Missing argument 'group'!" )
        @tag     = options.tag   rescue args.shift or raise ArgumentError.new( "Missing argument 'tag'!" )
      end

      def configure
        load_configuration
        parse_configuration
      end

      def load_configuration
        @config_path = ConfigPath.resolve \
          :group => group,
          :tag   => tag

        @raw_configuration = File.read config_path
      end

      def parse_configuration
        @environment_hash = ConfigParser.parse raw_configuration
      end
    end
  end
end
