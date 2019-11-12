<%@ Page Title="Log in" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Login.aspx.vb" Inherits="Account_Login" Async="true" %>

<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2><%: Title %>.<asp:Image ID="Image1" runat="server" ImageUrl="~/Image/mca-department.jpg" style="position: relative; left: -61px; top: -44px; width: 1321px; height: 101px; z-index: 1;" />
            </h2>

    <div class="row">
        <div class="col-md-8" style="background-image: url('../Image/grey-dark-vintage-background-texture.jpg'); left: 384px; top: -21px; width: 505px; height: 328px;">
            <section id="loginForm">
                <div class="form-horizontal">
                    <h4 class="text-center" style="color: #FFFFFF; font-weight: bold">&nbsp;</h4>
                    <asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="false">
                        <p class="text-danger">
                            <asp:Literal runat="server" ID="FailureText" />
                        </p>
                    </asp:PlaceHolder>
                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="UserName" CssClass="col-md-2 control-label" ID="Label1" ForeColor="White" style="left: 2px; top: -5px; width: 110px">User name</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="UserName" CssClass="form-control" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName"
                                CssClass="text-danger" ErrorMessage="The user name field is required." ID="RequiredFieldValidator1" style="color: #FFFFFF" />
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-2 control-label" ID="Label2" ForeColor="White" style="left: 5px; top: -1px; width: 88px">Password</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" CssClass="text-danger" ErrorMessage="The password field is required." ID="RequiredFieldValidator2" style="color: #FFFFFF" />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="text-center" style="left: 0px; top: 0px; width: 394px">
                            <div class="checkbox" style="left: -47px; top: -17px">
                                <strong>
                                <asp:CheckBox runat="server" ID="RememberMe" style="color: #000000" />
                                <asp:Label runat="server" AssociatedControlID="RememberMe" ID="Label3" Width="129px">Remember me?</asp:Label>
                                </strong>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-offset-2 col-md-10">
                            <asp:Button runat="server" OnClick="LogIn" Text="Log in" CssClass="btn btn-default" ID="login_button" style="position: relative; left: 13px; top: -19px" />
                        </div>
                    </div>
                </div>
            </section>
        </div>

        <div class="col-md-4" style="left: 14px; top: -374px; height: 365px;">
            <section id="socialLoginForm" style="position: relative; left: 2px; top: -1px; height: 362px">
                <p style="height: 1px">
                    
                    &nbsp;</p>
            </section>
        </div>
                <table style="width: 111%; position: relative; left: -50px; top: -1px; height: 245px; background-color: #C0C0C0;">
                    <tr>
                        <td class="modal-sm" style="height: 31px; width: 1855px"></td>
                        <td style="height: 31px; width: 696px">
                            </td>
                        <td class="text-right" style="height: 31px; width: 530px;">
                            </td>
                    </tr>
                    <tr>
                        <td style="height: 95px; width: 1855px">&nbsp;</td>
                        <td style="height: 95px; width: 696px">
                <ul class="flink" style="box-sizing: border-box; margin: 0px; list-style-type: none; padding: 0px; color: rgb(0, 0, 0); font-family: sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: bold; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;  text-decoration-style: initial; text-decoration-color: initial; position: relative; left: 34px; top: -5px; width: 348px;">
                    <li class="text-center" style="position: relative; left: 42px; top: -4px">CONTACT&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </li>
                    <li class="text-center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Address: <strong __designer:mapid="e1" style="color: #000000; font-size: small;">Sector 16-C, Dwarka, New Delhi-110078</strong></li>
                    <li class="text-center" style="font-size: small; color: #000000;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Telephone :
                        <strong __designer:mapid="c1">91-11-25302104, 25302105 </strong></li>
                    <li style="box-sizing: border-box; padding: 0px; color: rgb(0, 0, 0); font-size: 0.857em; line-height: 24px; position: relative; margin-left: 0px; margin-right: 0px; margin-top: 0px;" class="text-center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; FAX :
                        <strong __designer:mapid="c1">+91-11-28035243</strong></li>
                </ul>
                        </td>
                        <td style="height: 95px; width: 530px;">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="background-color: #000000">&nbsp;</td>
                        <td class="modal-lg" style="background-color: #000000; width: 696px;">
                            <asp:TextBox runat="server" ID="Emp_name" CssClass="form-control" style="position: relative; left: 269px; top: 28px; width: 38%" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="color: #FFFFFF">Feedback</span></strong></td>
                        <td class="modal-lg" style="background-color: #000000; width: 530px;">
                            <asp:TextBox runat="server" ID="Emp_name0" CssClass="form-control" style="position: relative; left: 1px; top: 17px; width: 94%" />
                        </td>
                        <td class="modal-sm" style="background-color: #000000; width: 573px;">
                            <asp:TextBox runat="server" ID="Placed_name1" CssClass="form-control" style="position: relative; left: -5px; top: 1px; width: 102%; height: 76px; right: 5px" TextMode="MultiLine" />
                            </td>
                        <td style="background-color: #000000">
                            <asp:Button ID="Button1" runat="server" Font-Bold="True" style="position: relative; left: 0px; top: 18px; width: 96px; height: 38px" Text="Submit" CssClass="btn btn-default" />
                            </td>
                    </tr>
                    </table>
    </div>
</asp:Content>

