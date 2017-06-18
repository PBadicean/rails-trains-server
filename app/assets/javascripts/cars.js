$(document).ready(function(){
  $('#car_type').change(function() {
    $('.field:not(.select-type)').hide();
    
    switch (this.value) {
      case 'SedenteryCar':
        $('#car_sedentery_seats').closest('.field').show();
        break;
      case 'EconomeCar':
        $('#car_side_bottom_seats').closest('.field').show();
        $('#car_side_top_seats').closest('.field').show();
        break;
      case 'CoupeCar':
        $('#car_side_bottom_seats').closest('.field').show();
        $('#car_side_top_seats').closest('.field').show();
        $('#car_bottom_seats').closest('.field').show();
        $('#car_top_seats').closest('.field').show();
        break;
      case 'SleepCar':
        $('#car_bottom_seats').closest('.field').show();
        break;
    };
  });
});
