// JavaScript Document

jQuery.fn.equalHeights = function() { 
 var currentHeight = 0;
 jQuery(this).each(function(){ 
  if (jQuery(this).height() > currentHeight) { currentHeight = jQuery(this).height(); }
 }); 
 jQuery(this).css({'min-height': currentHeight});
 return this; 
}; 


jQuery(document).ready(function() { 
 jQuery(".left_side, .page_main_content, .right_side").equalHeights();
 jQuery(".reg_div, .right_side").equalHeights();
}); 

