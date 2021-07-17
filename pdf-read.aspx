<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pdf-read.aspx.cs" Inherits="ModernProje.pdf_read" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
            <asp:Repeater ID="PdfRepet" runat="server"><ItemTemplate>
                <asp:Label ID="pdflink" runat="server" Text='<%#Eval("urun_pdf") %>'></asp:Label>
            </ItemTemplate></asp:Repeater>
    </form>
</body>
</html>
