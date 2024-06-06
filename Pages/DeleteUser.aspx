<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeleteUser.aspx.cs" Inherits="BMOnlineTest.Pages.DeleteUser" %>

<!DOCTYPE html>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Manage Users</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        body {
            background-color: #f8f9fa;
        }
        .container {
            margin-top: 50px;
        }
        .grid-view {
            margin-top: 20px;
        }
        .grid-view th, .grid-view td {
            text-align: center;
            vertical-align: middle;
        }
        .message-label {
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2 class="text-center">Manage Users</h2>
            <div class="card mb-4">
                <div class="card-header">Add New User</div>
                <div class="card-body">
                    <div class="form-group">
                        <label for="txtName">Name</label>
                        <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="txtSurname">Surname</label>
                        <asp:TextBox ID="txtSurname" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="txtIDNumber">ID Number</label>
                        <asp:TextBox ID="txtIDNumber" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="txtUsername">Username</label>
                        <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="txtPassword">Password</label>
                        <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="txtCellphoneNumber">Cellphone Number</label>
                        <asp:TextBox ID="txtCellphoneNumber" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <asp:Button ID="btnAddUser" runat="server" Text="Add User" CssClass="btn btn-primary" OnClick="btnAddUser_Click" />
                </div>
            </div>
            <asp:GridView ID="gvUsers" runat="server" CssClass="table table-bordered table-striped grid-view" AutoGenerateColumns="False" DataKeyNames="id" OnRowEditing="gvUsers_RowEditing" OnRowCancelingEdit="gvUsers_RowCancelingEdit" OnRowUpdating="gvUsers_RowUpdating" OnRowDeleting="gvUsers_RowDeleting">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="ID" ReadOnly="True" InsertVisible="False" />
                    <asp:BoundField DataField="name" HeaderText="Name" />
                    <asp:BoundField DataField="surname" HeaderText="Surname" />
                    <asp:BoundField DataField="idnumber" HeaderText="ID Number" />
                    <asp:BoundField DataField="username" HeaderText="Username" />
                    <asp:BoundField DataField="password" HeaderText="Password" />
                    <asp:BoundField DataField="cellphonenumber" HeaderText="Cellphone Number" />
                    <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
                </Columns>
            </asp:GridView>
            <asp:Label ID="lblMessage" runat="server" CssClass="text-danger message-label"></asp:Label>
        </div>
    </form>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>