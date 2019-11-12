<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="Placement.aspx.vb" Inherits="Placement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Name], [Photo], [Compony], [Year] FROM [placement] WHERE ([Year] = @Year)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="Year" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <table style="width: 103%; height: 646px; position: relative; left: -59px; top: 4px;">
        <tr>
            <td style="background-color: #000000; height: 70px;"></td>
            <td class="text-left" colspan="2" style="background-color: #000000; height: 70px;">
                            <strong style="font-family: Verdana, Geneva, Tahoma, sans-serif">
                            <asp:Button ID="Button1" runat="server" CssClass="btn btn-default" style="position: relative; left: 1056px; top: 26px; height: 33px" Text="Search" />
                            <span style="color: #FFFFFF; background-color: #000000;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; PLACEMENT&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" DataSourceID="SqlDataSource2" DataTextField="Year" DataValueField="Year" style="position: relative; left: 764px; top: -26px; width: 24%">
                            </asp:DropDownList>
                            &nbsp;<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT distinct([Year]) FROM [placement]"></asp:SqlDataSource>
                            </span></strong>
            </td>
        </tr>
        <tr>
            <td style="height: 425px"></td>
            <td class="text-left" style="height: 425px; width: 1316px">
                <div class="text-center">
                    <asp:Panel ID="Panel1" runat="server" style="position: relative; left: 39px; top: 25px; width: 1278px">
                        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource3" BorderStyle="Double" GridLines="Both" RepeatColumns="5" Width="987px" BorderWidth="4px" style="position: relative; left: 150px; top: 6px">
                            <ItemTemplate>
                                <asp:Panel ID="Panel2" runat="server" BackColor="#999999" Height="43px">
                                    <strong>
                                    <asp:Label ID="Label1" runat="server" Font-Names="Verdana" Text='<%# Eval("Year") %>'></asp:Label>
                                    </strong>
                                </asp:Panel>
                                <asp:Image ID="Image1" runat="server" style="position: relative; left: -5px; top: 11px; width: 137px; height: 143px" ImageUrl='<%# Eval("Photo") %>' />
                                <br />
                                <br />
                                <asp:Panel ID="Panel3" runat="server" BackColor="#999999" Height="39px">
                                    <strong>
                                    <asp:Label ID="Label2" runat="server" Font-Names="Verdana" Text='<%# Eval("Name") %>'></asp:Label>
                                    </strong>
                                </asp:Panel>
                                <asp:Panel ID="Panel4" runat="server" BackColor="Black" ForeColor="White" Height="47px" style="position: relative; left: -2px; top: 12px">
                                    <strong>
                                    <asp:Label ID="Label3" runat="server" Font-Names="Verdana" Text='<%# Eval("Compony") %>'></asp:Label>
                                    </strong>
                                </asp:Panel>
                                <br />
                            </ItemTemplate>
                        </asp:DataList>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Name], [Photo], [Compony], [Year] FROM [placement] WHERE ([Year] = @Year)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList1" Name="Year" PropertyName="SelectedValue" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </asp:Panel>
                </div>
                <table style="width: 102%; height: 96px; background-color: #C0C0C0; margin-top: 53px;">
                    <tr>
                        <td class="modal-sm" style="height: 31px; width: 1855px"></td>
                        <td style="height: 31px; width: 747px">
                            </td>
                        <td class="text-right" style="height: 31px; width: 530px;">
                            </td>
                    </tr>
                    <tr>
            <td class="modal-sm" colspan="3" style="height: 211px; background-color: #C0C0C0;">
                <ul class="flink" style="box-sizing: border-box; margin: 0px; list-style-type: none; padding: 0px; color: rgb(0, 0, 0); font-family: sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: bold; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;  text-decoration-style: initial; text-decoration-color: initial; position: relative; left: 403px; top: 25px; width: 348px;">
                    <li class="text-center" style="position: relative; left: 42px; top: -4px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; CONTACT&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </li>
                    <li class="text-center" style="width: 406px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Address: <strong __designer:mapid="e1" style="color: #000000; font-size: small;">Sector 16-C, Dwarka, New Delhi- 110078</strong></li>
                    <li class="text-center" style="font-size: small; color: #000000;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Telephone : <strong __designer:mapid="c1">91-11-35646553,35646554</strong></li>
                    <li style="box-sizing: border-box; padding: 0px; color: rgb(0, 0, 0); font-size: 0.857em; line-height: 24px; position: relative; margin-left: 0px; margin-right: 0px; margin-top: 0px;" class="text-center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; FAX : <strong __designer:mapid="c1">+91-11-28035243</strong></li>
                </ul>
            </td>
        </tr>
                    <tr>
                        <td style="background-color: #000000">&nbsp;</td>
                        <td class="modal-lg" style="background-color: #000000; width: 747px;">
                            <asp:TextBox runat="server" ID="Emp_name" CssClass="form-control" style="position: relative; left: 269px; top: 28px; width: 38%" ToolTip="Enter Name" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="color: #FFFFFF">Feedback</span></strong></td>
                        <td class="modal-lg" style="background-color: #000000; width: 530px;">
                            <asp:TextBox runat="server" ID="Emp_name0" CssClass="form-control" style="position: relative; left: 1px; top: 17px; width: 94%" ToolTip="Enter Email" />
                        </td>
                        <td class="modal-sm" style="background-color: #000000; width: 573px;">
                            <asp:TextBox runat="server" ID="Placed_name1" CssClass="form-control" style="position: relative; left: -5px; top: 1px; width: 102%; height: 76px; right: 5px" TextMode="MultiLine" ToolTip="Give Feedback" />
                            </td>
                        <td style="background-color: #000000">
                            <asp:Button ID="Button2" runat="server" Font-Bold="True" style="position: relative; left: 0px; top: 18px; width: 96px; height: 38px" Text="Submit" CssClass="btn btn-default" />
                            </td>
                    </tr>
                    </table>
            </td>
            <td style="height: 425px"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 1316px">
                <div class="text-center" style="color: #FF0000">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RegularExpressionValidator ID="validator" runat="server" ControlToValidate="Emp_name0" ErrorMessage="Invalid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </div>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

