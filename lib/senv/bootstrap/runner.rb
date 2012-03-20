module SENV
  module Bootstrap
    class Runner < Proto
      def self.run( *args )
        runner = new *args
        runner.run
      end

      def create_directory_with_global
        FileUtils.mkdir_p senv_location
      end

      def run
        create_directory_with_global
      end
    end
  end
end
