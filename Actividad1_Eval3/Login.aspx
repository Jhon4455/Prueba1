<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Actividad1_Eval3.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 48%;
            float: right;
            margin-bottom: 0;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="form-register" style="position: absolute">
    <h2 class="form_titulo">INICIAR SESSION</h2>
        <div class="contenedor-inputs">
            
		<input type="email" id="txtCorreo" placeholder="Email" class="input-100" >
		<input type="text" id="txtUsuario" placeholder="Usuario" class="auto-style1" >
		<input type="password" id="txtClave" placeholder="Contraseña" class="input-48" >
        <asp:Button ID="btnIngresar" runat="server" Text="Ingresar" class="btn-enviar" CssClass="btn-enviar"/>
	    </div>
    </div>
</asp:Content>
