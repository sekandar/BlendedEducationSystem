<%@include file="header.jsp" %>

<div id="page-wrapper" style="min-height: 800px;">
    <div class="container-fluid">
        <!-- Page Heading -->
        <div class="row">
            <div class="col-lg-12">
                <h2 class="page-header">
                    <i class="fa fa-edit"></i> Edit User
                </h2>
            </div>
        </div>

        <div class="row">
            <div class="col-md-12">
                <c:if test="${sm != null}">
                    <div class="alert alert-success alert-dismissable">
                        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                        <strong>Success!</strong> ${sm}
                    </div>
                </c:if>
                <c:if test="${em != null}">
                    <div class="alert alert-danger alert-dismissable">
                        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                        <strong>Error!</strong> ${em}
                    </div>
                </c:if>
            </div>
        </div>

        <div class="row">

            <div class="col-md-12">

                <form class="form-horizontal" action="${pageContext.request.contextPath}/admin/updateUser" method="post">
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="userName">User Name:</label>
                        <div class="col-sm-10">
                            <input value="${user.userId}" name="userId" type="hidden" class="form-control">
                            <input value="${user.userName}" name="userName" type="text" class="form-control" id="userName" placeholder="Enter User Name">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="role">Role: </label>
                        <div class="col-sm-10"> 
                            <select name="role" class="form-control" id="role">
                                <option value="0">--- Select Role ---</option>
                                <option value="admin">Admin</option>
                                <option value="student">Student</option>
                                <option value="teacher">Teacher</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group"> 
                        <div class="col-sm-offset-2 col-sm-10">
                            <button type="submit" class="btn btn-success">Update</button>
                            <button type="reset" class="btn btn-default">Reset</button>
                            <a href="${pageContext.request.contextPath}/admin/list_user" class="btn btn-warning pull-right">Go back to User List</a>
                        </div>
                    </div>
                </form>

            </div>

        </div>





    </div>
</div>

<script type="text/javascript">
    document.getElementById("role").value = ${user.role};
</script>

<%@include file="footer.jsp" %>