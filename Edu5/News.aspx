<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="News.aspx.vb" Inherits="News" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <table style="width: 100%; height: 698px; position: relative; left: -48px; top: 6px;">
        <tr>
            <td style="height: 103px" colspan="3">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/Image/mca-department.jpg" style="position: relative; left: -17px; top: -1px; width: 1321px; height: 101px; z-index: 1;" />
            </td>
        </tr>
        <tr>
            <td style="width: 389px; height: 657px">
                <div class="text-justify" style="overflow: scroll; position: relative; left: 250px; top: 26px; height: 582px; width: 818px;">
                <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource2" DataKeyNames="Id" style="background-color: #CCCCCC" EnablePersistedSelection="True" ValidateRequestMode="Disabled" ViewStateMode="Enabled">
                    <AlternatingItemTemplate>
                        <li style="background-color: #FFF8DC;">Id:
                            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                            <br />
                            Name:
                            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                            <br />
                            Email:
                            <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                            <br />
                            Feedback:
                            <asp:Label ID="FeedbackLabel" runat="server" Text='<%# Eval("Feedback") %>' />
                            <br />
                        </li>
                    </AlternatingItemTemplate>
                    <EditItemTemplate>
                        <li style="background-color: #008A8C;color: #FFFFFF;">Id:
                            <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                            <br />
                            Name:
                            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                            <br />
                            Email:
                            <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                            <br />
                            Feedback:
                            <asp:TextBox ID="FeedbackTextBox" runat="server" Text='<%# Bind("Feedback") %>' />
                            <br />
                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                        </li>
                    </EditItemTemplate>
                    <EmptyDataTemplate>
                        No data was returned.
                    </EmptyDataTemplate>
                    <InsertItemTemplate>
                        <li style="">Name:
                            <asp:TextBox ID="NameTextBox0" runat="server" Text='<%# Bind("Name") %>' />
                            <br />
                            Email:
                            <asp:TextBox ID="EmailTextBox0" runat="server" Text='<%# Bind("Email") %>' />
                            <br />
                            Feedback:
                            <asp:TextBox ID="FeedbackTextBox0" runat="server" Text='<%# Bind("Feedback") %>' />
                            <br />
                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                            <asp:Button ID="CancelButton0" runat="server" CommandName="Cancel" Text="Clear" />
                        </li>
                    </InsertItemTemplate>
                    <ItemSeparatorTemplate>
                        <br />
                    </ItemSeparatorTemplate>
                    <ItemTemplate>
                        <li style="background-color: #DCDCDC;color: #000000;">Id:
                            <asp:Label ID="IdLabel2" runat="server" Text='<%# Eval("Id") %>' />
                            <br />
                            Name:
                            <asp:Label ID="NameLabel0" runat="server" Text='<%# Eval("Name") %>' />
                            <br />
                            Email:
                            <asp:Label ID="EmailLabel0" runat="server" Text='<%# Eval("Email") %>' />
                            <br />
                            Feedback:
                            <asp:Label ID="FeedbackLabel0" runat="server" Text='<%# Eval("Feedback") %>' />
                            <br />
                        </li>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <ul id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                            <li runat="server" id="itemPlaceholder" />
                        </ul>
                        <div style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                            <asp:DataPager ID="DataPager1" runat="server">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                    <asp:NumericPagerField />
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                </Fields>
                            </asp:DataPager>
                        </div>
                    </LayoutTemplate>
                    <SelectedItemTemplate>
                        <li style="background-color: #008A8C;font-weight: bold;color: #FFFFFF;">Id:
                            <asp:Label ID="IdLabel3" runat="server" Text='<%# Eval("Id") %>' />
                            <br />
                            Name:
                            <asp:Label ID="NameLabel1" runat="server" Text='<%# Eval("Name") %>' />
                            <br />
                            Email:
                            <asp:Label ID="EmailLabel1" runat="server" Text='<%# Eval("Email") %>' />
                            <br />
                            Feedback:
                            <asp:Label ID="FeedbackLabel1" runat="server" Text='<%# Eval("Feedback") %>' />
                            <br />
                        </li>
                    </SelectedItemTemplate>
                </asp:ListView>
                </div>
                <asp:Panel ID="Panel1" runat="server" BackColor="#333333" style="position: relative; left: 250px; top: -592px; width: 863px; height: 33px; z-index: 2;">
                    <div class="text-center" style="color: #003366; font-size: large;">
                        <strong style="color: #FFFFFF">FEEDBACK DETAILS</strong></div>
                </asp:Panel>
            </td>
            <td style="width: 580px; height: 657px">
                
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Id], [Name], [Email], [Feedback] FROM [Feedback]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Id], [Name], [Email], [Feedback] FROM [Feedback]"></asp:SqlDataSource>
            </td>
            <td class="text-center" style="height: 657px"></td>
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
    </table>
</asp:Content>

