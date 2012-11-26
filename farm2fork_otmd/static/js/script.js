
//Author: Douglas Anderson

$(function() {
    $('#tosCheckbox').click(function() {
        if ($(this).is(':checked')) {
            $('#signup_button').removeAttr('disabled');
        } 
        else {
            $('#signup_button').attr('disabled', 'disabled');
        }
    });
}); 