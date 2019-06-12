const dataTable = () => {
   if($('.data-table').length == 0) return ;
    let $dataTable = $('.data-table'),
        optionImg = "<?xml version='1.0' ?><!DOCTYPE svg  PUBLIC '-//W3C//DTD SVG 1.1//EN'  'http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd'><svg enable-background='new 0 0 48 48' height='48px' id='Layer_3' version='1.1' viewBox='0 0 48 48' width='48px' xml:space='preserve' xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink'><g><path d='M44.552,31.386L46,29.938l-2.691-2.692l-1.427,1.425c-0.879-0.591-1.864-1.029-2.918-1.302v-2.22h-4.78v2.22   c-1.029,0.268-1.994,0.694-2.857,1.267l-1.483-1.486l-2.692,2.694l1.483,1.484c-0.575,0.868-1.004,1.84-1.27,2.875h-2.216v4.747   h2.216c0.271,1.058,0.711,2.051,1.306,2.934l-1.521,1.521l2.693,2.691l1.544-1.543c0.853,0.555,1.798,0.973,2.808,1.231V48h4.762   v-2.216c1.033-0.267,2.002-0.695,2.867-1.269L43.309,46L46,43.309l-1.484-1.483c0.571-0.864,1-1.831,1.268-2.862H48v-4.775h-2.218   C45.521,33.18,45.105,32.234,44.552,31.386z M36.573,40.491c-2.162,0-3.916-1.755-3.916-3.917c0-2.163,1.754-3.917,3.916-3.917   c2.163,0,3.918,1.754,3.918,3.917C40.491,38.736,38.736,40.491,36.573,40.491z'/><polygon points='14.212,33.285 14.212,27.627 5.728,19.143 14.212,10.658 14.212,5 0.071,19.143  '/><polygon points='38.549,22.938 44.206,22.938 48,19.143 33.859,5 33.859,10.658 42.344,19.143  '/></g></svg>";

    let dateHeader = 
        "<div class='grid-row-col-header'>" +
            "<button class='columnSetting-btn'>" +
                optionImg +
            "</button>" +
        "</div>" +
        "<div class='grid-row-header'></div>" +
        "<div class='grid-header'></div>" +
        "<div class='grid-body'></div>" +
        "<div class='grid-footer-header'>" +
            "<div class='header-column'>Totals</div>" +
        "</div>" +
        "<div class='grid-footer'></div>";
    
    $dataTable.wrap("<div class='data-table-wrap'></div>")
    .append(dateHeader);
    // console.log($dataTable.data('uiHeight'));
    if( $dataTable.data('uiHeight') != undefined ) {
        $(".data-table-wrap").css('height', $dataTable.data('uiHeight'));
    }
}