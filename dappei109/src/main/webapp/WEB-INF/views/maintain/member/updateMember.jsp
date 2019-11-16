<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<%@ taglib prefix='form' uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE HTML>
<html>
<head>
<style>
</style>
<link rel='stylesheet' href='${pageContext.request.contextPath}/css/style.css'  type="text/css" />
<meta charset="UTF-8">
<title>MVC</title>
<script type="text/javascript">
  function confirmDelete(userId){
	  var result = confirm("確定刪除此筆記錄(帳號:" + userId.trim() + ")?");
	  if (result) {
		  document.forms[0].putOrDelete.value = "DELETE";
	      return true;
	  }
	  return false;
  }
  function confirmUpdate(userId){
	  var result = confirm("確定送出此筆記錄(帳號:" + userId.trim() + ")?");
	  if (result) {
		  document.forms[0].putOrDelete.value = "PUT";
	      return true;
	  }
	  return false;
  }
</script>
</head>
<body>
<p>
<hr>
<div class='center' >
<h2 class='center'>更新會員資料</h2>
<hr>
<p> 
<form:form class='center' 
		action="${pageContext.request.contextPath}/_01/cnvr/members/${member.pk}" 
     modelAttribute="member" method="POST" >
    <input type="hidden" name="_method"  id='putOrDelete'   value="" >
    <input type="hidden" name="pk"     value="${member.pk}" >
    <input type="hidden" name="id"     value="${member.id}${param.id}" >
    <input type="hidden" name="finalDecision" value="" > 
    <Table>
         <TR>
             <TD align="RIGHT">帳號：</TD>
             <TD align="LEFT">${member.id}${param.id}</TD>
         </TR>
         <TR>
             <TD align="RIGHT">姓名：</TD>
             <TD align="LEFT" >
                <form:input path="name"  size="30"/>
                <font color='red' size='-3'>${error.name}</font>
             </TD>
         </TR>             
                      
         <TR>
             <TD align="RIGHT">餘額：</TD>
             <TD align="LEFT" > 
               <form:input path="balance" />
               <font color='red' size='-3'>${error.balance}</font>
             </TD>
         </TR>
          <TR>
             <TD align="RIGHT">生日：</TD>
             <TD align="LEFT" > 
               <form:input path="birthday" />
               <font color='red' size='-3'>${error.birthday}</font>
             </TD>
         </TR>               

        <TR>
            <TD colspan="2" align="center">     
            <input type="submit" value="更新" name='updateBtn' onclick="return confirmUpdate('${member.id}');"> 
            <input type="submit" value="刪除" name='deleteBtn' onclick="return confirmDelete('${member.id}');" >
            </TD>
            </TR>
         </Table>
         <c:if test="${not empty requestScope.modify}">   
           <c:remove var="member" scope="request" />       
         </c:if>
</form:form>
<p/>
<small>&lt;&lt;<a href="../members">回上一頁</a>&gt;&gt;</small>
</div>
</body>

</html>
