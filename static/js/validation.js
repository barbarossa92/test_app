function checkParams() {
    var text = $('#text').val();

    if(text.length != 0) {
        $('#add_comment').removeAttr('disabled');
    } else {
        $('#add_comment').attr('disabled', 'disabled');
    }
}
