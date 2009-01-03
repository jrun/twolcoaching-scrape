# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{twolcoaching-scrape}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["jrun"]
  s.date = %q{2009-01-03}
  s.default_executable = %q{twolcoaching-scrape}
  s.email = %q{jeremy.burks@gmail.com}
  s.executables = ["twolcoaching-scrape"]
  s.files = ["bin", "cruise_config.rb", "lib", "out", "Rakefile", "README.txt", "spec", "bin/twolcoaching-scrape.rb", "lib/twolcoaching", "lib/twolcoaching/scrape", "lib/twolcoaching/scrape/entry.rb", "lib/twolcoaching/scrape/paging.rb", "lib/twolcoaching/scrape/session.rb", "lib/twolcoaching/scrape/table_view.rb", "lib/twolcoaching/scrape/version.rb", "lib/twolcoaching-scrape.rb", "spec/spec_helper.rb", "bin/twolcoaching-scrape"]
  s.homepage = %q{[ENTER A PROJECT URL]}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Scrapes log entries from 2LCoaching since they can't manage to offer an export}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rstack>, [">= 0.5.2"])
      s.add_runtime_dependency(%q<rake>, [">= 0.8.1"])
      s.add_runtime_dependency(%q<rcov>, [">= 0.8.0"])
      s.add_runtime_dependency(%q<diff-lcs>, [">= 1.1.2"])
      s.add_runtime_dependency(%q<rspec>, [">= 1.1.3"])
      s.add_runtime_dependency(%q<extlib>, [">= 0"])
      s.add_runtime_dependency(%q<fastercsv>, ["= 1.4.0"])
      s.add_runtime_dependency(%q<highline>, ["= 1.4.0"])
      s.add_runtime_dependency(%q<mechanize>, ["= 0.9.0"])
    else
      s.add_dependency(%q<rstack>, [">= 0.5.2"])
      s.add_dependency(%q<rake>, [">= 0.8.1"])
      s.add_dependency(%q<rcov>, [">= 0.8.0"])
      s.add_dependency(%q<diff-lcs>, [">= 1.1.2"])
      s.add_dependency(%q<rspec>, [">= 1.1.3"])
      s.add_dependency(%q<extlib>, [">= 0"])
      s.add_dependency(%q<fastercsv>, ["= 1.4.0"])
      s.add_dependency(%q<highline>, ["= 1.4.0"])
      s.add_dependency(%q<mechanize>, ["= 0.9.0"])
    end
  else
    s.add_dependency(%q<rstack>, [">= 0.5.2"])
    s.add_dependency(%q<rake>, [">= 0.8.1"])
    s.add_dependency(%q<rcov>, [">= 0.8.0"])
    s.add_dependency(%q<diff-lcs>, [">= 1.1.2"])
    s.add_dependency(%q<rspec>, [">= 1.1.3"])
    s.add_dependency(%q<extlib>, [">= 0"])
    s.add_dependency(%q<fastercsv>, ["= 1.4.0"])
    s.add_dependency(%q<highline>, ["= 1.4.0"])
    s.add_dependency(%q<mechanize>, ["= 0.9.0"])
  end
end
