module SENV
  module Environment
    class ConfigParser
      attr_reader :options , :parsed_configuration , :raw_configurations

      def self.parse( *args )
        parser = new *args
        parser.parse
      end

      def initialize( *args )
        @options           = Map.opts! args
        @raw_configuration = options.raw_configuration rescue args.shift or raise ArgumentError.new( "Missing argument 'raw_configuration'!" )
      end

      def parse
        # Thanks to ddollar and Foreman
        # See: https://github.com/ddollar/foreman/blob/2f982ff9c779ec9a8afa14a758601887606e1c66/lib/foreman/engine.rb#L208
        #
        @parsed_configuration = raw_configuration.split( "\n" ).inject( {} ) do | hash , line |
          if line =~ /\A([A-Za-z_0-9]+)=(.*)\z/
            key , val = [ $1 , $2 ]
            case val
            when /\A'(.*)'\z/ then hash[ key ] = $1
            when /\A"(.*)"\z/ then hash[ key ] = $1.gsub /\\(.)/ , '\1'
            else hash[ key ] = val
            end
          end
          hash
        end
      end
    end
  end
end
