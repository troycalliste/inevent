function datepicker() {
    $('input[name="daterange"]').datepicker({
        format: 'dd-mm-yyyy',

    }).on('changeDate', function(e){
        $(this).attr('value', $('input[name="daterange"]').val());
        $(this).datepicker('hide');
    }); 
}