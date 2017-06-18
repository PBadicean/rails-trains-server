$(document).ready(function() {
    $('a.edit_train').click(function(e){
        e.preventDefault();
        var train_id = $(this).data('trainId');
        var form = $('#edit_train_' + train_id);
        var number = $('#route_number_'+ train_id);

        if ($(this).hasClass('cancel')){
            $(this).html('Редактировать');
            $(this).removeClass('cancel');
        } else {
            $(this).html('Отмена');
            $(this).addClass('cancel');
        }

        form.toggle();
        name.toggle();
    });
});
