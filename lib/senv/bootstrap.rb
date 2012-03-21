module SENV
  module Bootstrap
    # Autoloads
    #
    autoload :Checker , "senv/bootstrap/checker"
    autoload :Runner  , "senv/bootstrap/runner"
    autoload :Shared  , "senv/bootstrap/shared"

    # Constants
    #
    DEFAULTS = Map.new \
      :location  => "~",
      :senv_dir  => ".senv"
  end
end
