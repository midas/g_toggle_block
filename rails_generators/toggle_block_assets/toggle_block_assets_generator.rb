class ToggleBlockAssetsGenerator < Rails::Generator::Base
  def initialize(runtime_args, runtime_options = {})
    super
  end

  def manifest
    record do |m|
      m.file "guilded.toggle_block.js", "public/javascripts/guilded.toggle_block.js"
      m.file "guilded.toggle_block.min.js", "public/javascripts/guilded.toggle_block.min.js"
    end
  end
end