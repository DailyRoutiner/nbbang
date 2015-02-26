<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<!-- 회비 추가 팝업창 on-->
	<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">회비 추가</h4>
				</div>
				
				<div class="modal-body">
					<div class="row mt">
          		<div class="col-lg-12">
          			<div class="form-panel">
                  	  <h4 class="mb"><i class="fa fa-angle-right"></i> 회비를 입력해 주세요. </h4>
                      <form class="form-inline" role="form" method="get" id="fee">
                          <div class="form-group">
                          	  <label> 한 사람당 회비 : <input id="price" type="text" name="price" class="form-control" onkeydown='return onlyNumber(event)' onkeyup='removeChar(event)'> 원 </label>
                          </div>
                          <br><br>
                          <div class="form-group">
                              <label> 총 회비 : <input id="totalfee" type="text" name="totalfee" class="form-control" onkeydown='return onlyNumber(event)' onkeyup='removeChar(event)'>원</label>
                          </div>
                        <input type="hidden" name="count" value="${sessionScope.count }"> 
                        <input type="hidden" name="meetno" value="${requestScope.meetNo }"> 
                      </form>
          			</div><!-- /form-panel -->
          		</div><!-- /col-lg-12 -->
          	</div><!-- /row -->
					

				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
					<button type="submit" class="btn btn-primary" id="btn" data-dismiss="modal">추가</button>
				</div>
			</div>
		</div>
	</div>
	<!-- 회비 추가 end -->
	<script>
			//회비 값 체크 
		    $('.modal-footer').submit(function(){
		        var username = $('#price').val();
		        var password = $('#totalfee').val();
		        if(username == '') {
		       		alert("price 값을 입력하세요");
		            return false;
		        }
		        if(password == '') {
		        	alert("total 값을 입력하세요");      
		            return false;
		        }
		    });
		

		//회비 나누고 총액 확인 로직
		$("#price").blur(function(){
			$("input:text[name=totalfee]").val($("input:text[name=price]").val() * $("input:hidden[name=count]").val()); 
		});
		$("#totalfee").blur(function(){
			$("input:text[name=price]").val($("input:text[name=totalfee]").val() / $("input:hidden[name=count]").val()); 
		});
		
		//추가하기
		$("#btn").click(function() {
			alert($("#fee").serialize());
			$.ajax({
				url : "insertfee.do",
				type : "get",
				dataType : "text",
				data : $("#fee").serialize(),
				success : function(data) {
					if (data == "ok") {
						alert("추가 성공" +$("#fee").serialize());
						$("input[type=text]").val(""); //text박스 모두 지우기
					} else {
						alert("추가 실패");
					}
				},
				error:function(request,status,error){
			        alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			    }
			}); //end of ajax
		});// 회비 추가 로직 
	</script>
	<script src="assets/js/common-scripts.js"></script>
	<script src="assets/js/jquery.js"></script>
	<script src="assets/js/jquery-1.8.3.min.js"></script>    