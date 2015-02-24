$(document).ready(function() {
	
	$("div#topLeftBar").load("jsp/topLeftBar.jsp");
	$("div#addpay").load("jsp/addpay.jsp");
	$("div#rightSideBar").load("jsp/rightSidebar.jsp");
});


// onlyNumber 이거는 숫자만 텍스트필드에 들어가
function onlyNumber(event){
    event = event || window.event;
    var keyID = (event.which) ? event.which : event.keyCode;
    if ( (keyID >= 48 && keyID <= 57) || (keyID >= 96 && keyID <= 105) || keyID == 8 || keyID == 46 || keyID == 37 || keyID == 39 ) 
        return;
    else
        return false;
}
//문자는 제거 해주는 역할 
function removeChar(event) {
    event = event || window.event;
    var keyID = (event.which) ? event.which : event.keyCode;
    if ( keyID == 8 || keyID == 46 || keyID == 37 || keyID == 39 ) 
        return;
    else
        event.target.value = event.target.value.replace(/[^0-9]/g, "");
}

