$(document).ready(function() {
    $('a.edit_station').click(function(e){
        e.preventDefault();
        var station_id = $(this).data('stationId');
        var form = $('#edit_railway_station_' + station_id);
        var title = $('#railway_station_title_'+ station_id);

        if ($(this).hasClass('cancel')){
            $(this).html('Редактировать');
            $(this).removeClass('cancel');
        } else {
            $(this).html('Отмена');
            $(this).addClass('cancel');
        }

        form.toggle();
        title.toggle();

    });
});
