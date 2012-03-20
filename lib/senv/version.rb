module SENV
  VERSION = "0.0.1"
  MAJOR_VERSION , MINOR_VERSION , PATCH_VERSION = VERSION.split "."

  def self.version
    VERSION
  end

  def self.major_version
    MAJOR_VERSION
  end

  def self.minor_version
    MINOR_VERSION
  end

  def self.patch_version
    PATCH_VERSION
  end
end
