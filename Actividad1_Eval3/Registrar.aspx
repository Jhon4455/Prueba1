<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="Registrar.aspx.cs" Inherits="Actividad1_Eval3.Forms.Registrar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="contenedor">
        <div class="form-register">
    <h2 class="form_titulo">CREAR USUARIO</h2>
        <div class="contenedor-inputs">
            <asp:TextBox ID="txtIDUser" placeholder="idUsuario" class="input-100 input" runat="server"></asp:TextBox>
            <asp:TextBox ID="txtNombre" placeholder="Nombre" class="input-100 input" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
            <asp:TextBox ID="txtApellido1" placeholder="Apellido1" class="input-48 input" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
            <asp:TextBox ID="txtApellido2" placeholder="Apellido2" class="input-48 input" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
            <asp:TextBox ID="txtCorreo" placeholder="Email" class="input-100 input" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
            <asp:TextBox ID="txtUsuario" placeholder="Usuario" class="input-48 input" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
            <asp:TextBox ID="txtClave" placeholder="Contraseña" class="input-48 input" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
            <asp:TextBox ID="txtEstado" placeholder="Estado" class="input-100 input" runat="server"></asp:TextBox>
            <asp:Button ID="btnRegistrar" runat="server" Text="Registrar" class="btn-enviar" CssClass="btn-enviar" OnClick="btnRegistrar_Click" BorderStyle="None"/>
		<p class="form__link">¿ya tienes una cuenta? <a href="Login.aspx">Ingresa aqui</a></p>
	    </div>
    </div>
    </div>
</asp:Content>
