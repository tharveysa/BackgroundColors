function setColorsOnPage(fieldName, color, variable) {
    var headerName = getHeaderColumnId(fieldName.replace('"', ''));
    changeBackgroundColors(headerName, color, variable);
}

function getHeaderColumnId(fieldName) {
    var header = window.parent.document.querySelector('[title="Sort on \'' + fieldName + '\'"]');
    return header.id;
}

function changeBackgroundColors(headerName, color, variable) {
    var rows = window.parent.document.querySelectorAll("[class='thm-cont-g0-bgcolor']");
    for (var i = 0; i < rows.length; i++) {
        rows[i].removeAttribute("style");
        if (rows[i].querySelector('[aria-labelledby^=\'' + headerName + '\']').innerHTML == variable) {
            rows[i].setAttribute("style", "background-color: red !important;");
            // var row = window.parent.document.querySelector("[rowkey='"+ rows[i].getAttribute("rowkey") + "']"); // Isolate each row into var = same behaviour
            // row.setAttribute("style", "background-color: red !important;");
        }
    }
}