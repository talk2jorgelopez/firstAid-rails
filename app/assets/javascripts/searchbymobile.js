// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://coffeescript.org/
var ready;
var readyFetch;
var readyChange;
ready = function()
{
	$( "#searchPanel" ).panel();
};
readyFetch = function()
{
	$(".loading-indicator").show();
$( "#searchPanel" ).panel();
};
readyChange = function()
{
	$(".loading-indicator").hide();
$( "#searchPanel" ).panel();
};
$(document).ready(ready);
$(document).on('page:load', ready);
$(document).on('page:fetch', readyFetch);
$(document).on('page:change', readyChange);