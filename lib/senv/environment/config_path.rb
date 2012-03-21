module SENV
  module Environment
    class ConfigPath
      attr_reader :group , :options , :path , :tag

      def self.resolve( *args )
        path = new *args
        path.resolve
      end

      def initialize( *args )
        @options = Map.opts! args
        @group   = options.group rescue args.shift or raise ArgumentError.new( "Missing argument 'group'!" )
        @tag     = options.tag   rescue args.shift or raise ArgumentError.new( "Missing argument 'tag'!" )
      end

      def resolve
        @path = "#{ SENV.path }/#{ group }/#{ tag }"
        raise NonExistentError.new( "Configuration not found at #{ path }!" )
        path
      end

      class NonExistentError < StandardError; end
    end
  end
end
