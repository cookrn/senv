module SENV
  module Bootstrap
    class Runner
      include Shared

      def self.run( *args )
        runner = new *args
        runner.run
      end

      def create_directory_with_global
        FileUtils.mkdir_p senv_path_with_global
      end

      def run
        create_directory_with_global
      end

      def senv_path_with_global
        "#{ senv_path }/__global"
      end
    end
  end
end
