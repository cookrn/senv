module SENV
  module Bootstrap
    # Autoloads
    #
    autoload :Checker , "senv/bootstrap/checker"
    autoload :Proto   , "senv/bootstrap/proto"
    autoload :Runner  , "senv/bootstrap/runner"

    # Constants
    #
    DEFAULTS = Map.new \
      :location  => "~",
      :senv_path => ".senv"
  end
end
