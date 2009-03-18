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

