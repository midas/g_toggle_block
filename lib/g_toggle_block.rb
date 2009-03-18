$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

module GToggleBlock
  VERSION = '1.0.0'
end

if defined? ActionView::Base
  ActionView::Base.send( :include, GToggleBlock::ViewHelpers ) unless ActionView::Base.include?( GToggleBlock::ViewHelpers )
end