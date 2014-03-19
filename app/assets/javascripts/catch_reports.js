// serializes and applies the filter queries to the list of catch reports
function filterCatchReports() {
    action = $('#filter-form').attr('action');
    q = $('#filter-form').serialize();

    $.get(action, q, null, 'script');
}

// Method used for loading all of the catch reports using ajax
function reloadCatchReportsList() {

}

$(document).on('click', '.pagination li', function (e) {
    if (!$(this).hasClass('unavailable') && !$(this).hasClass('current')) {
        page_id = $(this).attr('data-page');
        $('#filter-form #page').val(page_id);
        filterCatchReports();
    }
});

$(document).on('click', 'table .lnk-to-show-column', function () {
    var path = $('#catch-reports-table tbody').attr('data-path');
    var id = $(this).parents('tr').attr('data-id');

    window.location.href = path.replace(':id', id);
});

