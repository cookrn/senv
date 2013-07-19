require 'fileutils'

module ScenarioBootstrapper
  def bootstrap!( name )
    make_container!
    remove_existing! name
    create_new_
  end

  def example_envfile
    dirname       = File.dirname __FILE__
    relative_path = './example_envfile'
    File.expand_path File.join( dirname , relative_path )
  end

  def make_container!
    FileUtils.mkdir_p '~/.senv'
  end

  def remove_existing!( name )
    FileUtils.rm "~/.senv/#{ name }"
  end

  extend self
end
