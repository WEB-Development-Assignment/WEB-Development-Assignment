<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Graphs.aspx.cs" Inherits="WEB_Assignment___Agriculture.doagraph" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Graph Page</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:Chart ID="Chart1" runat="server" Height="310px" Width="350px">
                <Series>
                    <asp:Series Name="Series1" YValuesPerPoint="2" ChartArea="ChartArea1">
                    </asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1">
                    </asp:ChartArea>
                </ChartAreas>
            </asp:Chart>

            <br />
            <br />

        </div>
    </form>
</body>
</html>
