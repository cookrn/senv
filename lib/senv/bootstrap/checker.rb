module SENV
  module Bootstrap
    class Checker < Proto
      def self.check( *args )
        checker = new *args
        checker.check
      end

      def check
        location_exists  = location_exists?
        senv_path_exists = senv_path_exists?
        location_exists && senv_path_exists
      end

      def location_exists?
        File.directory? location
      end

      def senv_path_exists?
        File.directory? senv_location
      end
    end
  end
end
