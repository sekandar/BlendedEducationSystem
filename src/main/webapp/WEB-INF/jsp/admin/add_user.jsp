<%@include file="header.jsp" %>

<div id="page-wrapper" style="min-height: 800px;">
    <div class="container-fluid">
        <!-- Page Heading -->
        <div class="row">
            <div class="col-lg-12">
                <h2 class="page-header">
                    <i class="fa fa-user-plus"></i> Add User
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

                <form class="form-horizontal" action="${pageContext.request.contextPath}/admin/saveUser" method="post">
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="userName">User Name:</label>
                        <div class="col-sm-10">
                            <input name="userName" type="text" class="form-control" id="userName" placeholder="Enter User Name">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="email">Email:</label>
                        <div class="col-sm-10"> 
                            <input name="email" type="email" class="form-control" id="email" placeholder="Enter Email">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="pwd">Password:</label>
                        <div class="col-sm-10"> 
                            <input name="password" type="password" class="form-control" id="pwd" placeholder="Enter password">
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="pwd">Role: </label>
                        <div class="col-sm-10"> 
                            <select name="role" class="form-control">
                                <option value="0">--- select role ---</option>
                                <option value="admin">Admin</option>
                                <option value="student">Student</option>
                                <option value="teacher">Teacher</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group"> 
                        <div class="col-sm-offset-2 col-sm-10">
                            <div class="checkbox">
                                <label><input type="checkbox" name="status"> Active</label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group"> 
                        <div class="col-sm-offset-2 col-sm-10">
                            <button type="submit" class="btn btn-success">Create</button>
                            <button type="reset" class="btn btn-default">Reset</button>
                        </div>
                    </div>
                </form>

            </div>

        </div>





    </div>
</div>

<%@include file="footer.jsp" %>