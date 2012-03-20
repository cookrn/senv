module SENV
  module Bootstrap
    class Proto
      attr_reader :location , :options , :senv_location , :senv_path

      def initialize( *args )
        @options   = Map.opts! args
        @location  = options.location  rescue args.shift || DEFAULTS.location
        @senv_path = options.senv_path rescue args.shift || DEFAULTS.senv_path
      end

      def senv_location
        @senv_location ||= File.expand_path "#{ location }/#{ senv_path }"
      end
    end
  end
end
