require 'rspec-puppet' 

fixture_path = File.expand_path(File.join(__FILE__, '..', 'fixtures'))

$: << File.join(fixture_path, 'modules/module-data/lib')

RSpec.configure do |c|
  c.mock_framework = :rspec
  c.module_path = File.join(fixture_path, 'modules')
  c.manifest_dir = File.join(fixture_path, 'manifests')
end

def default_test_facts
  {
    :architecture    => "x86_64",
    :boxen_home      => "/test/boxen",
    :boxen_user      => "testuser",
    :boxen_repodir   => "/test/boxen/repo",
    :boxen_reponame  => "repo",
    :boxen_srcdir    => "/test/boxen/src",
    :boxen_repo_url_template => "https://github.com/%s",
    :kernel          => "Darwin",
    :operatingsystem => "Darwin"
  }
end
