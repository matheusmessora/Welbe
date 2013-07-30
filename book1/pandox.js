/**
 * Em homenagem a funcao eita encontrada no arquivo custo2.js
 *
 * Realiza a passada de aula.
 * @param myUnit - Unidade que estou (1, 2, 3 etc...)
 * @param myLesson - Lesson (practice, homework, text, grammar)
 */
function eitchaLele(myUnit, myLesson){
//    $.ajax({
//        type: "POST",
//        url: "http://www.ingleson.com.br/class/Book1Grammar1.aspx/Unlock",
//        data: "{ _unit: '" + myUnit + "', _lesson:'" + myLesson + "'}",
//        contentType: "application/json; charset=utf-8",
//        dataType: "json",
//        success: function (msg) {
//
//            var ar = msg.d.toString().split("|");
//            parent.liberar('Unit ' + ar[1], ar[0], ar[2]);
//        }
//    });

}

function loadPops(popCornInstance, times, divId){
    popCornInstance.exec(times[0], function () {
        $("#p" + divId).find(".p_answer").eq(0).show('slow');
    });
    popCornInstance.exec(times[1], function () {
        $("#p" + divId).find(".p_answer").eq(1).show('slow');
    });
    popCornInstance.exec(times[2], function () {
        $("#p" + divId).find(".p_answer").eq(2).show('slow');
    });
    popCornInstance.exec(times[3], function () {
        $("#p" + divId).find(".p_answer").eq(3).show('slow');
    });
    popCornInstance.exec(times[4], function () {
        $("#p" + divId).find(".p_answer").eq(4).show('slow');
    });
    popCornInstance.exec(times[5], function () {
        $("#p" + divId).find(".p_answer").eq(5).show('slow');
    });
    popCornInstance.exec(times[6], function () {
        $("#p" + divId).find(".p_answer").eq(6).show('slow');
    });
    popCornInstance.exec(times[7], function () {
        $("#p" + divId).find(".p_answer").eq(7).show('slow');
    });
    popCornInstance.exec(times[8], function () {
        $("#p" + divId).find(".p_answer").eq(8).show('slow');
    });
    popCornInstance.exec(times[9], function () {
        $("#p" + divId).find(".p_answer").eq(9).show('slow');
    });
    popCornInstance.exec(times[10], function () {
        $("#p" + divId).find(".p_answer").eq(10).show('slow');
    });
    popCornInstance.exec(times[11], function () {
        $("#p" + divId).find(".p_answer").eq(11).show('slow');
    });
    popCornInstance.exec(times[12], function () {
        $("#p" + divId).find(".p_answer").eq(12).show('slow');
    });
}