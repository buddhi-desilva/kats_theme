jQuery.fn.box_floater = function(){
  /* Read CSS properties from the dialog window */
  MaxWidth = parseInt(jQuery(this).css('max-width'), 10);
  MinWidth = parseInt(jQuery(this).css('min-width'), 10);
  MinHeight = parseInt(jQuery(this).css('min-height'), 10);
  PaddingHorizontal = parseInt(jQuery(this).css('padding-left'), 10) * 2;
  PaddingVertical = parseInt(jQuery(this).css('padding-top'), 10) * 2;

  //Get the screen width & height
  screen_width = box_container.width();
  screen_height = box_container.outerHeight();

  //Calculate the margin based on screen size and set a 1% margin
  margin_horizontal = screen_width * 0.01;
  margin_vertical = screen_height * 0.01;


  if ( screen_width > (MaxWidth + margin_horizontal + PaddingHorizontal) ) {
    calc_dialog_width = MaxWidth;
  }
  else if (screen_width < (MinWidth + margin_horizontal + PaddingHorizontal) ) {
    calc_dialog_width = MinWidth;
  }
  else {
    calc_dialog_width = screen_width - (margin_horizontal + PaddingHorizontal);
  }

  calc_left_margin = (calc_dialog_width / 2 );

  calc_dialog_height = jQuery(this).height();
  calc_top_margin = (calc_dialog_height / 2 );


  MaxHeight = screen_height - (margin_vertical + PaddingVertical);
  if (MaxHeight < MinHeight) {
    MinHeight = MaxHeight; // Ensures the modal window won't span out of screen size
  }


  return this
    .width(calc_dialog_width)
    .css('height', 'auto')
    .css('min-height', MinHeight)
    .css('margin-left', (screen_width/2 - (calc_left_margin + PaddingHorizontal/2)) + 'px')
    .css('position', 'absolute')
    .css('margin-top', (screen_height/2) - (calc_top_margin + PaddingVertical/2) + 'px');
};