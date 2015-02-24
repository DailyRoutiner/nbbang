var Script = function (pay, not) {


    var pieData = [
        {
            value : 10/20,
            color : "#CC0000"
        },
        {
            value : 10/20,
            color : "#27ae60"
        }
    ];
 
    new Chart(document.getElementById("pie").getContext("2d")).Pie(pieData);

}();