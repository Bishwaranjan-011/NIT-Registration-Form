<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="NIT_Registration_Form.Registration" %>
<asp:Content ContentPlaceHolderID="MainContent" runat="server">

    <asp:Panel ID="pnlStudent" runat="server" CssClass="form-box" Visible="false">
        <h2>Student Registration</h2>

        <label>Name</label>
        <asp:TextBox ID="txtSName" runat="server" CssClass="textbox"></asp:TextBox>

        <label>Email</label>
        <asp:TextBox ID="txtSEmail" runat="server" CssClass="textbox"></asp:TextBox>

        <label>Phone</label>
        <asp:TextBox ID="txtSPhone" runat="server" CssClass="textbox"></asp:TextBox>

        <label>Stream</label>
        <asp:DropDownList ID="ddlStream" runat="server" CssClass="textbox">
            <asp:ListItem Text="Select"></asp:ListItem>
            <asp:ListItem>MPC</asp:ListItem>
            <asp:ListItem>BIPC</asp:ListItem>
            <asp:ListItem>CSE</asp:ListItem>
        </asp:DropDownList>

        <label>Type</label>
        <asp:RadioButtonList ID="rblSType" runat="server">
            <asp:ListItem>Day Scholar</asp:ListItem>
            <asp:ListItem>Hosteller</asp:ListItem>
        </asp:RadioButtonList>

        <asp:Button ID="btnSRegister" runat="server" Text="Register" CssClass="btn" OnClick="btnSRegister_Click" />
    </asp:Panel>



    <asp:Panel ID="pnlFaculty" runat="server" Visible="false" CssClass="form-box">
        <h2>Faculty Registration</h2>

        <label>Name</label>
        <asp:TextBox ID="txtFName" CssClass="textbox" runat="server"></asp:TextBox>

        <label>Email</label>
        <asp:TextBox ID="txtFEmail" CssClass="textbox" runat="server"></asp:TextBox>

        <label>Phone</label>
        <asp:TextBox ID="txtFPhone" CssClass="textbox" runat="server"></asp:TextBox>

        <label>Subject</label>
        <asp:TextBox ID="txtFSubject" CssClass="textbox" runat="server"></asp:TextBox>

        <label>Qualification</label>
        <asp:TextBox ID="txtFQual" CssClass="textbox" runat="server"></asp:TextBox>

        <asp:Button ID="btnFRegister" runat="server" Text="Register" CssClass="btn" OnClick="btnFRegister_Click" />
    </asp:Panel>



    <asp:Panel ID="pnlNonFaculty" runat="server" Visible="false" CssClass="form-box">
        <h2>Non-Faculty Registration</h2>

        <label>Name</label>
        <asp:TextBox ID="txtNFName" CssClass="textbox" runat="server"></asp:TextBox>

        <label>Email</label>
        <asp:TextBox ID="txtNFEmail" CssClass="textbox" runat="server"></asp:TextBox>

        <label>Phone</label>
        <asp:TextBox ID="txtNFPhone" CssClass="textbox" runat="server"></asp:TextBox>

        <label>Employee Type</label>
        <asp:DropDownList ID="ddlNFTYPE" CssClass="textbox" runat="server">
            <asp:ListItem>Select</asp:ListItem>
            <asp:ListItem>Admin</asp:ListItem>
            <asp:ListItem>Security</asp:ListItem>
            <asp:ListItem>Lab Assistant</asp:ListItem>
        </asp:DropDownList>

        <label>Qualification</label>
        <asp:TextBox ID="txtNFQual" CssClass="textbox" runat="server"></asp:TextBox>

        <asp:Button ID="btnNFRegister" runat="server" Text="Register" CssClass="btn" OnClick="btnNFRegister_Click" />
    </asp:Panel>

    <asp:Label ID="lblMsg" runat="server" CssClass="msg"></asp:Label>

</asp:Content>
