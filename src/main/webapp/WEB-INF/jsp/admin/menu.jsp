<div class="collapse navbar-collapse navbar-ex1-collapse">
    <ul class="nav navbar-nav side-nav">
        <li class="active">
            <a href="${pageContext.request.contextPath}/admin/"><i class="fa fa-fw fa-dashboard"></i> Dashboard</a>
        </li>

        <li>
            <a href="javascript:;" data-toggle="collapse" data-target="#demo"><i class="fa fa-users"></i> Users <i class="fa fa-fw fa-caret-down"></i></a>
            <ul id="demo" class="collapse">
                <li>
                    <a href="${pageContext.request.contextPath}/admin/add_user"><i class="fa fa-user-plus"></i> Add User</a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/admin/list_user"><i class="fa fa-list-ul"></i> Users List</a>
                </li>
            </ul>
        </li>

        <li>
            <a href="#"><i class="fa fa-address-book"></i> Batch</a>
        </li>
        
        <li>
            <a href="javascript:;" data-toggle="collapse" data-target="#demo1"><i class="fa fa-users"></i> Students <i class="fa fa-fw fa-caret-down"></i></a>
            <ul id="demo1" class="collapse">
                <li>
                    <a href="${pageContext.request.contextPath}/admin/add_student"><i class="fa fa-user-plus"></i> Add Student</a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/admin/list_student"><i class="fa fa-list-ul"></i> Students List</a>
                </li>
            </ul>
        </li>
        
        <li>
            <a href="${pageContext.request.contextPath}/admin/backup_data"><i class="fa fa-database"></i> BackUp Data</a>
        </li>
        
    </ul>
</div>