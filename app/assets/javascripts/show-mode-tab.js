$(document).on('click', '#map-mode-tab', function () {
    $(this).removeClass('inactive-tab');
    $('#list-mode-tab').addClass('inactive-tab');

    $('#list-container').addClass('hide-for-small');
    $('#map-container').removeClass('hide-for-small');
});

$(document).on('click', '#list-mode-tab', function () {
    $(this).removeClass('inactive-tab');
    $('#map-mode-tab').addClass('inactive-tab');

    $('#map-container').addClass('hide-for-small');
    $('#list-container').removeClass('hide-for-small');
});