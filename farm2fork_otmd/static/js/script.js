/* Author:
 * Matthew Roberts
*/

// $('[rel=tooltip]').tooltip();
$('[rel=popover]').popover().click(function(e) {
    e.preventDefault()
});