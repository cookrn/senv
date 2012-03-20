# Standard Requires
#
require "fileutils"
require "map"

module SENV
  # Autoloads
  #
  autoload :Bootstrap , "senv/bootstrap"
end

# Standard SENV Requires
#
require "senv/core"
require "senv/version"

Senv = SEnv = SENV
