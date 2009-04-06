/* Guilded Toggle Block 1.0.0
 * Copyright (c) 2009 C. Jason Harrelson (midas)
 * Guilded Toggle Block is licensed under the terms of the MIT License */
g.toggle = function( e )
{  
  $j( e.data.selector ).slideToggle();
};

g.toggleBlockInit = function( options ) 
{
  if( !options )
	{
    options = {};
  }
  
  var toggleSel = '#' + options.id; //jQuery selector for the toggle element
  var toggleDiv = $j( toggleSel );
  var toggleChk = $jid( options.toggler_id );

  toggleChk.bind( "click", { selector: toggleSel }, g.toggle );

  // Toggle to initial state
  if( toggleChk[0].checked == false )
	{
    toggleDiv.hide();
	}
};