var Script = function (pay, not) {

    var pieData = [
        {
            value : 2- $("input:hidden[name=no]").val(),
            color : "#CC0000"
        },
        {
            value : 2- $("input:hidden[name=ok]").val(),
            color : "#27ae60"
        }
    ];
 
    new Chart(document.getElementById("pie").getContext("2d")).Pie(pieData);

}();