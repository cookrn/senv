Given /^I am working on a Ruby application$/ do
  assert TempProject::Application
end

Given /^I have configured some environment variables$/ do
  ScenarioBootstrapper.bootstrap! :temp_project
  file = File.expand_path '~/.senv/temp_project'
  assert \
    File.exists?( file ),
    'Environment variables not configured at `~/.senv/temp_project`'
end

Given /^I have configured some default environment variables$/ do
  ScenarioBootstrapper.bootstrap! :_default
  file = File.expand_path '~/.senv/_default'
  assert \
    File.exists?( file ),
    'Default environment variables not configured at `~/.senv/_default`'
end

When /^I invoke SENV in my project$/ do
  assert TempProject::Application.initialize!
end

Then /^I can access the variables$/ do
  pending # express the regexp above with the code you wish you had
end
