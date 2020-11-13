<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script>
function delClick(){
   if (confirm("정말 예약을 취소 하시겠어요??") == true){    //확인
   alert("예약이 취소 되었습니다 다음번에 꼭 이용해 주세요 ㅠ ㅠ");
        document.removefrm.submit();
    }else{   //취소
        return false;
    }
}
</script>
<div style="position: relative; top: 450;">
   <form id="frm3" name="frm" method="post">
      <table class="table table-bordered table-hovers"
         style="text-align: center">
         <thead>
            <tr>
               <th scope="col">예약번호</th>
               <th scope="col">숙소이름</th>
               <th scope="col">체크인</th>
               <th scope="col">체크아웃</th>
               <th scope="col">가격</th>
               <th scope="col">인원</th>
               <th scope="col">예약자 ID</th>
               <th scope="col">숙소 번호</th>
               <th scope="col">결제한 날짜</th>
               <th scope="col">주소</th>
               <th scope="col">*</th>
            </tr>
         </thead>
         <tbody>
            <c:forEach items="${reserInfo2}" var="reserInfo2" varStatus="i">
               <tr>
                  <td class="bb">${reserInfo2.reserNum}</td>
                  <td class="bb">${reserInfo2.reserRoomName}</td>
                  <td class="bb">입실 : ${reserInfo2.reserCheckIn}<br>
                        수정할 날짜 <input type="date" id="room_checkin" name="room_checkin" />
                 </td>
                  <td class="bb">퇴실 : ${reserInfo2.reserCheckOut}<br>수정할
                                날짜 <input type="date" id="room_checkout" name="room_checkout" />
                 </td>
                  <td class="bb">${reserInfo2.reserPrice}</td>
                  <td class="bb">예약 인원 :&nbsp;&nbsp;&nbsp;${reserInfo2.reserMax}<br>수정할 인원 :&nbsp;&nbsp;
                   <select style="margin-bottom: 32px;" id="room_max" name="room_max">
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                        <option value="6">6</option>
                        <option value="7">7</option>
                        <option value="8">8</option>
                   </select></td>
                  <td class="bb">${reserInfo2.id}</td>
                  <td class="bb">${reserInfo2.roomNum}</td>
                  <td class="bb">${reserInfo2.reserToday}</td>
                  <td class="bb">${reserInfo2.reserAddress}</td>
                  <td class="bb">
                  <button type="button" id="update_btn" class="btn btn-light">수정</button> 
                  <input type="hidden"id="reserNum" name="reserNum" value="${reserInfo2.reserNum}">
                  <button type="button" id="delete_btn" class="btn btn-light"><!-- onclick="delClick()" -->삭제</button></td>
               </tr>
            </c:forEach>
         </tbody>
      </table>
   </form>
   </div>
   <script type="text/javascript">
      //var reserNum= $("#reserNum").val();
      function refreshMemList(){
      location.reload();
   }
  /*    if (confirm("정말 예약을 취소 하시겠어요??") == true){    //확인
        alert("예약이 취소 되었습니다 다음번에 꼭 이용해 주세요 ㅠ ㅠ");
             document.removefrm.submit();
         }else{   //취소
             return false;
         } */
      $(function() {//id-># 
         $("#delete_btn").on("click", function() {
            $.ajax({
               url : "deleteReser.do",
               data : {
                  "reserNum" : $("[name='reserNum']").val()
               },
               async : false,
               success : function(result) {
                  if(result=="OK"){
                     if(confirm("정말 예약을 취소 하시겠어요??") == true){
                     $("td[class='bb']").remove();
                     location.reload();
                      }else{
                         return false;
                      }
                  }
               }
            });
         });
         //업데이트
         $("#update_btn").on("click",function(){
            $.ajax({
               url: "updateReser.do",
               data : {
                  "checkIn" : $("#room_checkin").val(),
                  "checkout" : $("#room_checkout").val(),
                  "roomMax" : $("#room_max").val(),
                  "reserNum" : $("#reserNum").val()
               },
               async : false,
               success : function(result) {
                  if(result=="OK"){
                  alert("수정 되었습니다.")
                  refreshMemList();
                  }
                  else{
                     alert("날짜와 인원을 선택해주세요!")
                  }
               }
            });
         });
   });//end of function
   </script>
</body>
</html>