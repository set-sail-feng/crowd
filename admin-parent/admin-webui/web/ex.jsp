<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zh-CN">
<%@include file="/WEB-INF/include-head.jsp" %>
<script type="text/javascript">
    $(function () {
        console.log("ajax函数之前");
        $("#asyncBtn").click(function () {
            $.ajax({
                "url":"test/ajax/async.html",
                "type":"post",
                "dataType":"text",
                // "async":false,
                "success":function (response) {
                    console.log("ajax函数内部success函数"+response);
                }
            });
            console.log("ajax函数之后");
        });
    });
</script>
<body>
<%@include file="/WEB-INF/include-nav.jsp" %>
<div class="container-fluid">
    <div class="row">
        <%@include file="/WEB-INF/include-sidebar.jsp" %>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
            <button id="asyncBtn">发送Ajax请求</button>
        </div>
    </div>
</div>
</body>
</html>