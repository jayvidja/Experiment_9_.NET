<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Companies.aspx.cs" Inherits="P9_PlacementDashboard.Companies" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h3>Placement Records</h3>

        <div>
            <asp:Repeater ID="rptCompanies" runat="server">
                <HeaderTemplate>
                    <table border="1" cellpadding="5">
                        <tr>
                            <th>Placement ID</th>
                            <th>Student ID</th>
                            <th>Company</th>
                            <th>Job Role</th>
                            <th>Package (LPA)</th>
                        </tr>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td><%# Eval("PlacementId") %></td>
                        <td><%# Eval("StudentId") %></td>
                        <td><%# Eval("CompanyName") %></td>
                        <td><%# Eval("JobRole") %></td>
                        <td><%# Eval("PackageLPA") %></td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </table>
                </FooterTemplate>
            </asp:Repeater>

            <h3>Company Details</h3>

            <asp:DataList ID="dlPlacements" runat="server">
                <ItemTemplate>
                    Company: <%# Eval("CompanyName") %><br />
                    Job Role: <%# Eval("JobRole") %><br />
                    Package: <%# Eval("PackageLPA") %> LPA
                    <hr />
                </ItemTemplate>
            </asp:DataList>
        </div>
    </form>
</body>
</html>
