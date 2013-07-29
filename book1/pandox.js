/**
 * Em homenagem a funcao eita encontrada no arquivo custo2.js
 *
 * Realiza a passada de aula.
 * @param myUnit - Unidade que estou (1, 2, 3 etc...)
 * @param myLesson - Lesson (practice, homework, text, grammar)
 */
function eitchaLele(myUnit, myLesson){
    $.ajax({
        type: "POST",
        url: "http://www.ingleson.com.br/class/Book1Grammar1.aspx/Unlock",
        data: "{ _unit: '" + myUnit + "', _lesson:'" + myLesson + "'}",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (msg) {

            var ar = msg.d.toString().split("|");
            parent.liberar('Unit ' + ar[1], ar[0], ar[2]);
        }
    });

}