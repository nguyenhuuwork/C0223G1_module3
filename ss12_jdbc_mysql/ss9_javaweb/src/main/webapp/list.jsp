<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 29/5/2023
  Time: 10:49 AM
  To change this template use File | Settings | File Templates.
--%>
<%--Bắt buộc--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="bootstrap520/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="datatables/css/dataTables.bootstrap5.min.css"/>
</head>
<body>
<h1>Danh sách sinh viên</h1>
<a href="/StudentServlet?action=showFormCreate">Them moi sinh vien</a>
<table id="tableStudent" class="table table-striped">
    <thead>
    <tr>
        <th>STT</th>
        <th>Tên</th>
        <th>Giới tính</th>
        <th>Điểm</th>
        <th>Mã lớp</th>
        <th>Sua</th>
        <th>Xoa</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${list}" var="s" varStatus="loop">
        <tr>
            <td>
                <c:out value="${loop.count}"/>
            </td>
            <td>
                <c:out value="${s.name}"/>
            </td>
            <td>
                <c:if test="${s.gender == true}">
                    Nam
                </c:if>
                <c:if test="${s.gender == false}">
                    Nu
                </c:if>
            </td>
            <td>
                <c:choose>
                    <c:when test="${s.point > 8}">Gioi</c:when>
                    <c:when test="${s.point > 6.5}">Kha</c:when>
                    <c:otherwise>Trung Binh</c:otherwise>
                </c:choose>
            </td>
            <td>
                <c:out value="${s.classId}"/>
            </td>
            <td>
                <button>
                    <a href="/StudentServlet?action=showFormEdit">Sua</a>
                </button>
            </td>
            <td>
                <button type="button" class="btn btn-primary"
                        data-bs-toggle="modal" data-bs-target="#exampleModal"
                        onclick="remove(${s.id},'${s.name}')">
                    Xóa
                </button>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<!-- Button trigger modal -->


<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="exampleModalLabel">Xóa học viên</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <h3>Bạn có chắc chắn xóa học viên có tên:
                    <span style="color:red" id="nameDelete"></span>
                </h3>
            </div>
            <div class="modal-footer">
                <form action="/StudentServlet?action=delete" method="post">
                    <input type="hidden" name="idDelete" id="idDelete">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Không</button>
                    <button type="submit" class="btn btn-primary">Có</button>
                </form>
            </div>
        </div>
    </div>
</div>

<script src="jquery/jquery-3.5.1.min.js"></script>
<script src="datatables/js/jquery.dataTables.min.js"></script>
<script src="datatables/js/dataTables.bootstrap5.min.js"></script>
<script src="bootstrap520/js/bootstrap.bundle.js"></script>
<script>
    $(document).ready(function () {
        $('#tableStudent').dataTable({
            "dom": 'lrtip',
            "lengthChange": false,
            "pageLength": 2
        });
    });

    function remove(id, name) {
        document.getElementById("nameDelete").innerText = name;
        document.getElementById("idDelete").value = id;
    }
</script>
</body>
</html>
