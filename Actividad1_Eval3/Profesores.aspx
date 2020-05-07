<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="Profesores.aspx.cs" Inherits="Actividad1_Eval3.Profesores" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="contenedor">
        <div class="form-register">
    <h2 class="form_titulo">Profesor</h2>
        <div class="contenedor-inputs">
            <asp:TextBox ID="txtIdProfesor" placeholder="idProfesor" class="input-48 input" runat="server"></asp:TextBox>
            <asp:TextBox ID="txtIndetif" placeholder="Identificacion" class="input-48 input" runat="server"></asp:TextBox>
            <asp:TextBox ID="txtNombre" placeholder="Nombre" class="input-100 input" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
            <asp:TextBox ID="txtApellido1" placeholder="Apellido1" class="input-48 input" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
            <asp:TextBox ID="txtApellido2" placeholder="Apellido2" class="input-48 input" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
            <asp:TextBox ID="txtDireccion" placeholder="Direccion" class="input-100 input" runat="server"></asp:TextBox>
            <asp:TextBox ID="txtTelefono" placeholder="Telefono" class="input-48 input" runat="server"></asp:TextBox>
            <asp:DropDownList ID="DropDSexo" runat="server" Class="input input-48">
                <asp:ListItem>- Sexo -</asp:ListItem>
                <asp:ListItem>Masculino</asp:ListItem>
                <asp:ListItem>Femenino</asp:ListItem>
            </asp:DropDownList>
            <%--<asp:TextBox ID="txtSexo" placeholder="Genero" class="input-48 input" runat="server" AutoCompleteType="Disabled"></asp:TextBox>--%>
            
            <asp:TextBox ID="txtCorreo" placeholder="Email" class="input-100 input" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
            <asp:Button ID="btnIngresar" runat="server" Text="Ingresar" class="btn-enviar1" BorderStyle="None" OnClick="btnIngresar_Click" CssClass="btn-enviar1"/>
            <asp:Button ID="btnActualizar" runat="server" Text="Actualizar" class="btn-enviar1" BorderStyle="None" CssClass="btn-enviar1" />
            <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" class="btn-enviar1" BorderStyle="None" CssClass="btn-enviar1" />
	    </div>
       

    </div>
    </div>
</asp:Content>
