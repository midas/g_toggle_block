$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

require 'g_toggle_block/view_helpers'

module GToggleBlock
  VERSION = '1.0.1'
end

if defined? ActionView::Base
  ActionView::Base.send( :include, GToggleBlock::ViewHelpers ) unless ActionView::Base.include?( GToggleBlock::ViewHelpers )
end