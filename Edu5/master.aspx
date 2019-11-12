<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="master.aspx.vb" Inherits="master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    j<table style="width: 99%; height: 1234px; position: relative; left: -49px; top: -5px;">
        <tr>
            <td class="text-center" style="height: 95px; font-size: large; background-color: #FFFFCC;">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/Image/mca-department.jpg" style="position: relative; left: 1px; top: 0px; width: 1321px; height: 101px; z-index: 1;" />
            </td>
        </tr>
        <tr>
            <td class="text-left" style="height: 426px;">
                <table align="center" style="width: 69%; height: 723px; background-color: #669999;">
                    <tr>
                        <td class="text-center" colspan="3" style="height: 42px; font-size: x-large; background-color: #C0C0C0;"><strong style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: large">Faculty Details&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong></td>
                    </tr>
                    <tr>
                        <td class="text-center" style="height: 55px; width: 261px"><strong>
                            <br />
                            <asp:Label ID="Label1" runat="server" Text="Designation"></asp:Label>
                            </strong></td>
                        <td style="height: 55px; width: 381px">
                            <asp:DropDownList ID="desig" runat="server" Font-Bold="True" style="position: relative; left: 0px; top: 9px; width: 315px; height: 39px" CssClass="form-control">
                                <asp:ListItem Value="Vice Chancellor"></asp:ListItem>
                                <asp:ListItem Value="Professor"></asp:ListItem>
                                <asp:ListItem Value="Associate Professor"></asp:ListItem>
                                <asp:ListItem Value="Assistant Professor"></asp:ListItem>
                                <asp:ListItem Value="Assistant Professor II"></asp:ListItem>
                                <asp:ListItem Value="Assistant Professor I"></asp:ListItem>
                            </asp:DropDownList>
                            <asp:DropDownList ID="desig2" runat="server" Font-Bold="True" style="position: relative; left: 316px; top: -25px; width: 315px; height: 49px" CssClass="form-control" DataSourceID="SqlDataSource3" DataTextField="name" DataValueField="name" ToolTip="Select Employe name">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT distinct[name] FROM [faculty]"></asp:SqlDataSource>
                            <asp:SqlDataSource ID="Select" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [name] FROM [faculty]"></asp:SqlDataSource>
                        </td>
                        <td style="height: 55px">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="text-center" style="height: 64px; width: 261px"><strong>Name</strong></td>
                        <td style="height: 64px; width: 381px">
                            <asp:TextBox runat="server" ID="Emp_name" CssClass="form-control" ToolTip="Enter name of employe" MaxLength="25" />
                             <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
            ControlToValidate="Emp_name" ErrorMessage="Enter Character Only" ValidationExpression="[A-Z/a-z ]*" Font-Bold="True" ForeColor="#CC3300" ></asp:RegularExpressionValidator>
                        </td>
                        <td style="height: 64px">
                           

                            &nbsp;</td>
                        <td style="height: 64px"></td>
                    </tr>
                    <tr>
                        <td class="text-center" style="height: 27px; width: 261px"><strong>Picture</strong></td>
                        <td style="height: 27px; width: 381px">
                            <asp:FileUpload ID="Pic_up" runat="server" Font-Bold="True" ForeColor="Black" style="position: relative; left: -2px; top: -2px; width: 309px; height: 39px" CssClass="form-control" />
                        </td>
                        <td style="height: 27px">
                             <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server"
            ControlToValidate="Emp_name" ErrorMessage="Please select photo" ValidationExpression="[A-Z/a-z ]*" Font-Bold="True" ForeColor="#CC3300" ></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 68px; width: 261px"></td>
                        <td style="height: 68px; width: 381px">
                            <asp:Button ID="Button1" runat="server" Font-Bold="True" style="position: relative; left: 0px; top: 0px; width: 96px; height: 38px" Text="Insert" CssClass="btn btn-default" onclick="Button1_Click" />
                            <asp:Button ID="Button2" runat="server" Font-Bold="True" style="position: relative; left: 95px; top: 0px; width: 85px; height: 39px" Text="Update" CssClass="btn btn-default" />
                            <asp:Button ID="Button3" runat="server" Font-Bold="True" style="position: relative; left: -88px; top: 0px; width: 85px; height: 39px" Text="Edit" CssClass="btn btn-default" />
                        </td>
                        <td style="height: 68px">
                           

                            <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" ForeColor="White" style="position: relative" PostBackUrl="~/News.aspx">Go to feedback Details</asp:LinkButton>
                           

                        </td>
                    </tr>
                    <tr>
                        <td class="text-center" colspan="3" style="height: 49px; font-size: x-large; background-color: #C0C0C0;"><strong style="background-color: #C0C0C0; font-size: large; font-family: Verdana, Geneva, Tahoma, sans-serif;">News/Events&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong></td>
                    </tr>
                    <tr>
                        <td class="text-center" style="height: 124px; width: 261px"><strong style="font-family: Arial; font-size: medium; font-weight: bolder;">News/Events</strong></td>
                        <td style="height: 124px; width: 381px">
                            <asp:TextBox runat="server" ID="News" CssClass="form-control" Height="99px" TextMode="MultiLine" ToolTip="Enter News" />
                        </td>
                        <td style="height: 124px"></td>
                    </tr>
                    <tr>
                        <td class="text-center" style="height: 41px; font-size: large; width: 261px"><strong style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: medium;">Title</strong></td>
                        <td style="height: 41px; width: 381px">
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [title] FROM [News]"></asp:SqlDataSource>
                            <asp:DropDownList ID="id_news" runat="server" Font-Bold="True" Font-Size="Large" style="position: relative; left: 305px; top: 33px; width: 237px; height: 34px" Visible="False" DataSourceID="SqlDataSource2" DataTextField="title" DataValueField="title" CssClass="form-control">
                                <asp:ListItem Value="Vice Chancellor"></asp:ListItem>
                                <asp:ListItem Value="Professor"></asp:ListItem>
                                <asp:ListItem Value="Associate Professor"></asp:ListItem>
                                <asp:ListItem Value="Assistant Professor"></asp:ListItem>
                                <asp:ListItem Value="Assistant Professor II"></asp:ListItem>
                                <asp:ListItem Value="Assistant Professor I"></asp:ListItem>
                            </asp:DropDownList>
                            <asp:TextBox runat="server" ID="Tittle_txt" CssClass="form-control" ToolTip="Enter title of news" MaxLength="15" />
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
                        </td>
                        <td style="height: 41px">
                            </td>
                    </tr>
                    <tr>
                        <td style="width: 261px; height: 62px;"></td>
                        <td style="width: 381px; height: 62px;">
                            <asp:FileUpload ID="File_up" runat="server" Font-Bold="True" ForeColor="Black" style="position: relative; left: -1px; top: 0px; width: 309px; height: 39px" CssClass="form-control" />
                        </td>
                        <td style="height: 62px"></td>
                    </tr>
                    <tr>
                        <td style="width: 261px">&nbsp;</td>
                        <td style="width: 381px">
                            <asp:Button ID="Button4" runat="server" Font-Bold="True" style="position: relative; left: 0px; top: -1px; width: 96px; height: 40px" Text="Insert" CssClass="btn btn-default" />
                            <asp:Button ID="Button6" runat="server" Font-Bold="True" style="position: relative; left: 4px; top: -1px; width: 85px; height: 39px" Text="Edit" CssClass="btn btn-default" />
                            <asp:Button ID="Button5" runat="server" Font-Bold="True" style="position: relative; left: 9px; top: -1px; width: 85px; height: 39px" Text="Update" CssClass="btn btn-default" />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 261px">&nbsp;</td>
                        <td style="width: 381px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="height: 46px; background-color: #C0C0C0; font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: large;" class="text-center" colspan="3"><strong>Placment details&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong></td>
                    </tr>
                    <tr>
                        <td style="width: 261px; height: 61px;" class="text-center"><strong>Name</strong></td>
                        <td style="width: 381px; height: 61px;">
                            <asp:TextBox runat="server" ID="Placed_name" CssClass="form-control" ToolTip="Enter name of placed student" MaxLength="25" />
             
                            </td>
                        <td style="height: 61px">
                   
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
            ControlToValidate="Placed_name" ErrorMessage="Enter Character Only" ValidationExpression="[A-Z/a-z ]*" Font-Bold="True" ForeColor="#CC3300" ></asp:RegularExpressionValidator>
             
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 261px; height: 51px;" class="text-center"><strong>Photo</strong></td>
                        <td style="width: 381px; height: 51px;">
                            <asp:FileUpload ID="Pic_up2" runat="server" Font-Bold="True" ForeColor="Black" style="position: relative; left: 2px; top: 0px; width: 309px; height: 39px" CssClass="form-control" />
                        </td>
                        <td style="height: 51px">
                            <asp:TextBox runat="server" ID="year" CssClass="form-control" style="position: relative; left: -70px; top: 1px; width: 45%" ToolTip="Enter placed year" MaxLength="4" />
                            </td>
                    </tr>
                    <tr>
                        <td style="width: 261px; height: 59px;" class="text-center"><strong>Company Name</strong></td>
                        <td style="width: 381px; height: 59px;">
                            <asp:TextBox runat="server" ID="company" CssClass="form-control" ToolTip="Enter company name" MaxLength="30" />
                            </td>
                        <td style="height: 59px"></td>
                    </tr>
                    <tr>
                        <td style="width: 261px">&nbsp;</td>
                        <td style="width: 381px">
                            <asp:Button ID="Button7" runat="server" Font-Bold="True" style="position: relative; left: 84px; top: 0px; width: 96px; height: 40px" Text="Insert" CssClass="btn btn-default" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 261px">&nbsp;</td>
                        <td style="width: 381px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 261px">&nbsp;</td>
                        <td style="width: 381px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td style="background-color: #000000; color: #FFFFFF;">
                <ul class="flink" style="box-sizing: border-box; margin: 0px; list-style-type: none; padding: 0px; color: rgb(255, 255, 255); font-family: sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: bold; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;  text-decoration-style: initial; text-decoration-color: initial; position: relative; left: 432px; top: 1px; width: 348px; z-index: 1;">
                    <li class="text-center" style="position: relative; left: 31px; top: 18px; color: #FFFFFF;">&nbsp;&nbsp;&nbsp; CONTACT&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </li>
                    <li class="text-center">&nbsp;&nbsp;&nbsp;&nbsp;<strong><p class="auto-style41" style="padding-right: 0px; padding-left: 0px; font-weight: 400; font-size: 0.8em; padding-bottom: 10px; margin: 0px; line-height: 1.4em; font-family: arial, helvetica, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;" __designer:mapid="449">
                        Tirumalaisamudram Thanjavur - 613401. Tamilnadu, India.</p>
                    <p class="auto-style41" style="padding-right: 0px; padding-left: 0px; font-weight: 400; font-size: 0.8em; padding-bottom: 10px; margin: 0px; line-height: 1.4em; font-family: arial, helvetica, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;" __designer:mapid="44d">
                        Ph: +91 4362 264101 - 108 304000 - 010 +91 4362 264120.</p>
                    <p class="auto-style41" style="padding-right: 0px; padding-left: 0px; font-weight: 400; font-size: 0.8em; padding-bottom: 10px; margin: 0px; line-height: 1.4em; font-family: arial, helvetica, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;" __designer:mapid="451">
                        E-Mail: vc@edu.ac.in</p>
                        <br class="auto-style41" style="font-family: Lato, Arial, sans-serif; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;" __designer:mapid="44c" />
                        <br class="auto-style41" style="font-family: Lato, Arial, sans-serif; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;" __designer:mapid="450" />
                </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
                </ul>
                        </td>
        </tr>
    </table>
</asp:Content>

