module SENV
  module Environment
    # Autoloads
    #
    autoload :Config       , "senv/environment/config"
    autoload :ConfigParser , "senv/environment/config_parser"
    autoload :ConfigPath   , "senv/environment/config_path"
    autoload :GlobalConfig , "senv/environment/global_config"
    autoload :Loader       , "senv/environment/loader"
  end
end
