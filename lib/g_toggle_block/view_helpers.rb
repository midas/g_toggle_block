module GToggleBlock
  module ViewHelpers

    # GUIlded component.  This is a div container that will show and hide itself based
    # on the state of another element (currently only a check box).  Different animations
    # can be used.
    # 
    # The HTML included inside of this block is rendered inside the block element in the HTML.
    # 
    # *options*
    # id:: (required) The id of the element.  Must be unique on the page.
    # exclude_css:: A boolean indicating if Guilded should create a stylesheet inlcude tag for 
    #   this element.  Defaults to false.
    # toggler_id:: The id of the element that will toggle the block.  Defaults to toggle-{id}.
    # animation::  The animation to use when showing or hiding.  Valid values are: [ 'slide', 'fade' ].  
    #   Defaults to 'slide'.
    #
    def g_toggle_block( options={}, &block )
      raise ArgumentError, "Block required" unless block_given?
      # Set the default value for the toggler id if not provided
      options[:toggler_id] ||= "toggle-#{options[:id]}"
      # Add the element to the inits data structure so that the javascript initialization
      # code can be generated.
      options.merge! :exclude_css => true
      Guilded::Guilder.instance.add( :toggle_block, options )
      # Add the HTML to the caller.
      concat( content_tag( :div, capture( &block ), options ) ) 
    end

  end
end