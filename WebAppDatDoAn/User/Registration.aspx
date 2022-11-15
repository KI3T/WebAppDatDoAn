<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="WebAppDatDoAn.User.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <%--For disappearing alert message--%>
    <script>
        window.onload = function () {
            var seconds = 5;
            setTimeout(function () {
                document.getElementById("<%=lblMsg.ClientID %>").style.display = "none";
            }, seconds * 1000);
        };
    </script>

    <%--Show Image Preview --%>
    <script>
        function ImagePreview(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    $('#<%=imgUser.ClientID%>').prop('src', e.target.result)
                        .width(200)
                        .height(200);
                };
                reader.readAsDataURL(input.files[0]);
            }
        }
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="book_section layout_padding">
        <div class="container">
            <div class="heading_container">
                <div class="align-self-end">
                    <asp:Label ID="lblMsg" runat="server" Visible="false"></asp:Label>
                </div>
                <asp:Label ID="lblHeaderMsg" runat="server" Text="<h2>Đăng ký tài khoản</h2>"></asp:Label>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="form_container">

                        <div>
                            <asp:RequiredFieldValidator ID="rfvName" runat="server" ErrorMessage="Vui lòng nhập họ tên !"
                                ControlToValidate="txtName" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revName" runat="server" ErrorMessage="Tên chỉ bao gồm ký tự"
                                ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ValidationExpression="^[a-zA-Z\s]+$"
                                ControlToValidate="txtName"></asp:RegularExpressionValidator>
                            <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="Nhập họ tên"
                                ToolTip="Họ và tên"></asp:TextBox>
                        </div>

                        <div>
                            <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ErrorMessage="Vui lòng nhập tài khoản !"
                                ControlToValidate="txtUsername" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" placeholder="Nhập tài khoản"
                                ToolTip="Tên tài khoản"></asp:TextBox>
                        </div>

                        <div>
                            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ErrorMessage="Vui lòng nhập Email !"
                                ControlToValidate="txtEmail" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Nhập Email"
                                ToolTip="Địa chỉ Email" TextMode="Email"></asp:TextBox>
                        </div>

                        <div>
                            <asp:RequiredFieldValidator ID="rfvMobile" runat="server" ErrorMessage="Vui lòng nhập số điện thoại !"
                                ControlToValidate="txtMobile" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revMobile" runat="server" ErrorMessage="Số điện thoại chỉ bao gồm số nguyên và tối đa là 10 số"
                                ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ValidationExpression="^[0-9]{10}$"
                                ControlToValidate="txtMobile"></asp:RegularExpressionValidator>
                            <asp:TextBox ID="txtMobile" runat="server" CssClass="form-control" placeholder="Nhập số điện thoại"
                                ToolTip="Số điện thoại" TextMode="Number"></asp:TextBox>
                        </div>

                    </div>
                </div>

                <div class="col-md-6">
                    <div class="form_container">

                        <div>
                            <asp:RequiredFieldValidator ID="rfvAddress" runat="server" ErrorMessage="Vui lòng nhập địa chỉ !"
                                ControlToValidate="txtAddress" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" placeholder="Nhập địa chỉ"
                                ToolTip="Địa chỉ nhà/ Hộ khẩu thường trú" TextMode="MultiLine"></asp:TextBox>
                        </div>

                        <div>
                            <asp:FileUpload ID="fuUserImage" runat="server" CssClass="form-control" ToolTip="Ảnh chân dung"
                                onchange="ImagePreview(this);"/>
                        </div>

                        <div>
                            <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ErrorMessage="Vui lòng nhập mật khẩu !"
                                ControlToValidate="txtPassword" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" placeholder="Nhập mật khẩu"
                                ToolTip="Mật khẩu để truy cập tài khoản" TextMode="Password"></asp:TextBox>
                        </div>

                    </div>
                </div>

                <div class="row pl-4">
                    <div class="btn_box">
                        <asp:Button ID="btnRegister" runat="server" Text="Đăng kí" CssClass="btn btn-success rounded-pill pl-4 pr-4 text-white"
                            OnClick="btnRegister_Click"/>

                        <asp:Label ID="lblAlreadyUser" runat="server" CssClass="pl-3 text-black-100"
                            Text="Đã có tài khoản? <a href='Login.aspx' class='badge badge-info'>Đăng nhập..</a>">
                        </asp:Label>
                    </div>
                </div>

                <div class="row p-5">
                    <div style="align-items:center">
                        <asp:Image ID="imgUser" runat="server" CssClass="img-thumbnail" />
                    </div>
                </div>

            </div>
        </div>
    </section>

</asp:Content>
