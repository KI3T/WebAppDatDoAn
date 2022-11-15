<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="WebAppDatDoAn.User.Profile" %>

<%@ Import Namespace="WebAppDatDoAn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <%
        String imageUrl = Session["imageUrl"].ToString();
    %>

    <section class="book_section layout_padding">
        <div class="container">
            <div class="heading_container">
                <h2>Thông tin người dùng</h2>
            </div>

            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-body">
                             <div class="card-title mb-4">
                                 <div class="d-flex justify—content-start">
                                     <div class="image-container">
                                        <img src="<%= Utils.GetImageUrl(imageUrl) %>" id="imgProfile" style="width:150px; height:150px;" 
                                            class="img-thumbnail" />
                                        <div class="middle pt-2">
                                            <a href="Registration.aspx?id=<% Response.Write(Session["userId"]); %>" class="btn btn-warning">
                                                <i class="fa fa-pencil"></i>Chỉnh sửa thông tin
                                            </a>
                                        </div>
                                     </div>

                                     <div class="userData ml-3">
                                         <h2 class="d-block" style="font-size: 1.5rem; font-weight: bold">
                                             <a href="javascript:void(0);"><% Response.Write(Session["name"]); %> </a>
                                         </h2>
                                         <h6 class="d-block">
                                             <a href="javascript:void(0)">
                                                 <asp:Label ID="lblUsername" runat="server" ToolTip="Tên tài khoản duy nhất">
                                                     @<% Response.Write(Session["username"]); %>
                                                 </asp:Label>
                                             </a>
                                         </h6>
                                         <h6 class="d-block">
                                             <a href="javascript:void(0)">
                                                 <asp:Label ID="lblEmail" runat="server" ToolTip="Email người dùng">
                                                     <% Response.Write(Session["email"]); %>
                                                 </asp:Label>
                                             </a>
                                         </h6>
                                         <h6 class="d-block">
                                             <a href="javascript:void(0)">
                                                 <asp:Label ID="lblCreatedDate" runat="server" ToolTip="Thời gian tài khoản được tạo">
                                                     <% Response.Write(Session["createdDate"]); %>
                                                 </asp:Label>
                                             </a>
                                         </h6>
                                     </div>

                                 </div>
                             </div>

                            <div class="row">
                                <div class="col-12">
                                    <ul class="nav nav-tabs mb-4" id="myTab" role="tablist">
                                        <li class="nav-item">
                                            <a class="nav-link active text-info" id="basicInfo-tab" data-toggle="tab" href="#basicInfo" role="tab"
                                                aria-controls="basicInfo" aria-selected="true"><i class="fa fa-id-badge mr-2"></i>Thông tin cơ bản</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link text-info" id="connectedServices-tab" data-toggle="tab" href="#connectedServices"
                                                role="tab" aria-controls="connectedServices" aria-selected="false">
                                                <i class="fa fa-clock-o mr-2"></i>Lịch sử mua hàng</a>
                                        </li>
                                    </ul>

                                    <div class="tab-content ml-1" id="myTabContent">
                                        <%--Basic User Info Starts--%>
                                        <div class="tab-pane fade show active" id="basicInfo" role="tabpanel" aria-labelledby="basicInfo-tab">
                                            <asp:Repeater ID="rUserProfile" runat="server">
                                                <ItemTemplate>

                                                    <div class="row">
                                                        <div class="col-sm-3 col-md-2 col-5">
                                                            <label style="font-weight: bold;">Họ tên</label>
                                                        </div>
                                                        <div class="col-md-8 col-6">
                                                            <%# Eval("Name") %>
                                                        </div>
                                                    </div>
                                                    <hr />
                                                    <div class="row">
                                                        <div class="col-sm-3 col-md-2 col-5">
                                                            <label style="font-weight: bold;">Tài khoản</label>
                                                        </div>
                                                        <div class="col-md-8 col-6">
                                                            @<%# Eval("Username") %>
                                                        </div>
                                                    </div>         
                                                    <hr />
                                                    <div class="row">
                                                        <div class="col-sm-3 col-md-2 col-5">
                                                            <label style="font-weight: bold;">Số điện thoại</label>
                                                        </div>
                                                        <div class="col-md-8 col-6">
                                                            <%# Eval("Mobile") %>
                                                        </div>
                                                    </div>
                                                    <hr />
                                                    <div class="row">
                                                        <div class="col-sm-3 col-md-2 col-5">
                                                            <label style="font-weight: bold;">Email</label>
                                                        </div>
                                                        <div class="col-md-8 col-6">
                                                            <%# Eval("Email") %>
                                                        </div>
                                                    </div>
                                                    <hr />
                                                    <div class="row">
                                                        <div class="col-sm-3 col-md-2 col-5">
                                                            <label style="font-weight: bold;">Địa chỉ</label>
                                                        </div>
                                                        <div class="col-md-8 col-6">
                                                            <%# Eval("Address") %>
                                                        </div>
                                                    </div>
                                                    <hr />

                                                </ItemTemplate>
                                            </asp:Repeater>
                                        </div>
                                        <%--Basic User Info End--%>

                                        <%--Order History Starts--%>
                                        <div class="tab-pane fade" id="connectedServices" role="tabpanel" aria-labelledby="ConnectedServices-tab">
                                            <h3>Lịch sử đặt hàng</h3>
                                        </div>
                                        <%--Order History End--%>
                                    </div>

                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>

        </div>
    </section>

</asp:Content>
