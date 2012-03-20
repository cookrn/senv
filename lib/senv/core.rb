module SENV
  def bootstrap!
    Bootstrap::Runner.run
  end

  def self.bootstrapped?
    Bootstrap::Checker.check
  end

  def self.load!
    bootstrap! unless bootstrapped?
  end
end
