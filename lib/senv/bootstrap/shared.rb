module SENV
  module Bootstrap
    module Shared
      def self.included( klass )
        klass.instance_eval &ClassFunctionality
        klass.class_eval    &InstanceFunctionality
      end

      ClassFunctionality = proc do
        attr_reader :location , :options , :senv_location , :senv_dir
      end

      InstanceFunctionality = proc do
        def initialize( *args )
          @options  = Map.opts! args
          @location = options.location rescue args.shift || DEFAULTS.location
          @senv_dir = options.senv_dir rescue args.shift || DEFAULTS.senv_dir
        end

        def senv_path
          @senv_path ||= File.expand_path "#{ location }/#{ senv_dir }"
        end
      end
    end
  end
end
