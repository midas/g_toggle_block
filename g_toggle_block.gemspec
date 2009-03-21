# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{g_toggle_block}
  s.version = "1.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["C. Jason Harrelson (midas)"]
  s.date = %q{2009-03-21}
  s.description = %q{A Rails Guilded  (http://github.com/midas/guilded/tree/master) component allowing a block of markup to be shown and  hidden by toggling another control.}
  s.email = ["jason@lookforwardenterprises.com"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "PostInstall.txt", "README.rdoc"]
  s.files = ["History.txt", "Manifest.txt", "PostInstall.txt", "README.rdoc", "Rakefile", "g_toggle_block.gemspec", "lib/g_toggle_block.rb", "lib/g_toggle_block/view_helpers.rb", "rails_generators/toggle_block_assets/templates/guilded.toggle_block.js", "rails_generators/toggle_block_assets/templates/guilded.toggle_block.min.js", "rails_generators/toggle_block_assets/toggle_block_assets_generator.rb", "script/console", "script/destroy", "script/generate", "spec/g_toggle_block_spec.rb", "spec/spec.opts", "spec/spec_helper.rb", "tasks/rspec.rake"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/midas/g_toggle_block/tree/master}
  s.post_install_message = %q{PostInstall.txt}
  s.rdoc_options = ["--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{g_toggle_block}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{A Rails Guilded  (http://github.com/midas/guilded/tree/master) component allowing a block of markup to be shown and  hidden by toggling another control.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<newgem>, [">= 1.2.3"])
      s.add_development_dependency(%q<rails>, [">= 2.2.0"])
      s.add_development_dependency(%q<midas-guilded>, [">= 0.1.4"])
      s.add_development_dependency(%q<hoe>, [">= 1.8.0"])
    else
      s.add_dependency(%q<newgem>, [">= 1.2.3"])
      s.add_dependency(%q<rails>, [">= 2.2.0"])
      s.add_dependency(%q<midas-guilded>, [">= 0.1.4"])
      s.add_dependency(%q<hoe>, [">= 1.8.0"])
    end
  else
    s.add_dependency(%q<newgem>, [">= 1.2.3"])
    s.add_dependency(%q<rails>, [">= 2.2.0"])
    s.add_dependency(%q<midas-guilded>, [">= 0.1.4"])
    s.add_dependency(%q<hoe>, [">= 1.8.0"])
  end
end
