<%--
  Created by IntelliJ IDEA.
  User: Bear-BOY
  Date: 2023/4/11
  Time: 21:58
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改信息</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <style>
        input{
            margin: 10px;
        }
    </style>
</head>
<body>
<div class="container">

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>修改信息</small>
                </h1>
            </div>
        </div>
    </div>

    <form action="${pageContext.request.contextPath}/book/updateBook" method="post">
        <input type="hidden" name="bookID" value="${book.bookID}"/></br>
        书籍名称：<input type="text" name="bookName" value="${book.bookName}"/></br>
        书籍数量：<input type="text" name="bookCounts" value="${book.bookCounts}"/></br>
        书籍详情：<input type="text" name="detail" value="${book.detail }"/></br>
        <input  class="btn btn-primary" type="submit" value="提交"/>
    </form>

</div>
