$(document).on('click', '#map-mode-tab', function () {
    $(this).addClass('active-mode-tab')
    $('#list-mode-tab').removeClass('active-mode-tab')

    $('#list-container').addClass('hide-for-small');
    $('#map-container').removeClass('hide-for-small');
});

$(document).on('click', '#list-mode-tab', function () {
    $(this).addClass('active-mode-tab')
    $('#map-mode-tab').removeClass('active-mode-tab')

    $('#map-container').addClass('hide-for-small');
    $('#list-container').removeClass('hide-for-small');
});