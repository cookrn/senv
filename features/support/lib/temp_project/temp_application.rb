module TempProject
  module Application
    def initialize!
      SENV.load! :temp_project
    end

    extend self
  end
end
