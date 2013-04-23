
function iniciar() {

    $("#swf").html("");
    $("#p1").delay(300).fadeIn();
    $("#next").delay(300).fadeIn();
    $("#swf").width("1px");
    $("#swf").height("1px");
    som("1");

}

function iniciarPractice() {

    $("#swf").html("");
    $("#p1").delay(300).fadeIn();
    $("#next").delay(300).fadeIn();
    $("#swf").width("1px");
    $("#swf").height("1px");
    som("1");

    practice("1");

}


function iniciarHomework() {

    $("#swf").html("");
    $("#p1").delay(300).fadeIn();
    $("#next").delay(300).fadeIn();
    $("#swf").width("1px");
    $("#swf").height("1px");
    som("1");

    homework();

}

function som(pagina) {

    $("#swf").html("");
    $("#swf").html("<object classid='clsid:D27CDB6E-AE6D-11cf-96B8-444553540000' codebase='http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,28,0' width='1' height='1'><param name='movie' value='book" + book + "/" + lesson + "/" + unit + ".swf' /><param name='quality' value='high' /><param name='FlashVars' value='pagina=" + pagina + "' /><embed src='book" + book + "/" + lesson + "/" + unit + ".swf' quality='high' pluginspage='http://www.macromedia.com/go/getflashplayer' type='application/x-shockwave-flash' width='1' height='1' FlashVars='pagina=" + pagina + "'></embed></object>");

}

function unlock() {
    $.ajax({
        type: "POST",
        url: "http://www.welbe.com.br/class/Book3Grammar21.aspx/Unlock",
        data: "{ _unit: '" + unit + "', _lesson:'" + lesson + "'}",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (msg) {

            var ar = msg.d.toString().split("|");
            parent.liberar('Unit ' + ar[1], ar[0], ar[2]);
        }
    });

}

$(document).ready(function () {

    $("#previous,#next").hide();
    var totalPaginas = $(".pagina").size();
    var currentPagina = 1;
    $("#paginaAtual").text(currentPagina);


    //Next Page
    $("#next").click(function () {

        $("#previous").show();
        currentPagina = currentPagina + 1;
        som(currentPagina);

        $(".pagina").hide();
        $("#p" + currentPagina).fadeIn();

        if (currentPagina == totalPaginas) {
            $(this).hide();
            unlock();
        } else {

            $(this).show();

        }

        $("#paginaAtual").text(currentPagina);
        practice(currentPagina);

    });

    //Previous Page
    $("#previous").click(function () {

        $("#next").show();
        currentPagina = currentPagina - 1;
        som(currentPagina);

        $(".pagina").hide();
        $("#p" + currentPagina).fadeIn();

        if (currentPagina == 1) {

            $(this).hide();

        } else {

            $(this).show();

        }

        $("#paginaAtual").text(currentPagina);
        practice(currentPagina);

    });

});