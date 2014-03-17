$(document).on('click', 'table .lnk-to-show-column', function () {
    var path = $('#catch-reports-table').attr('data-path');
    var id = $(this).parents('tr').attr('data-id');

    window.location.href = path.replace(':id', id);
});