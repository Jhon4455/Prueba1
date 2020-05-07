<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Actividad1_Eval3.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <br />
        <br />
        <br />
        <br />
        <br />
    <div class="contenedor1 cont_input_Line">
       
        <h1>Mantenimiento</h1>
        <asp:Button ID="Button1" runat="server" class="input_Line" Text="Profesores" BorderStyle="None" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" class="input_Line" Text="Estudiantes" BorderStyle="None" OnClick="Button2_Click" />
        <asp:Button ID="btnPadres" runat="server" class="input_Line" Text="Padres" BorderStyle="None" OnClick="Button3_Click" />
        <asp:Button ID="Button4" runat="server" class="input_Line" Text="Semestre" BorderStyle="None" OnClick="Button4_Click" />
        <asp:Button ID="Button5" runat="server" class="input_Line" Text="Horarios" BorderStyle="None" OnClick="Button5_Click" />
        <asp:Button ID="Button6" runat="server" class="input_Line" Text="Cursos" BorderStyle="None" OnClick="Button6_Click" />
        <asp:Button ID="Button7" runat="server" class="input_Line" Text="Grupos" BorderStyle="None" OnClick="Button7_Click" />
	</div>
</asp:Content>
