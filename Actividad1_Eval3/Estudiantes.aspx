<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="Estudiantes.aspx.cs" Inherits="Actividad1_Eval3.Estudiantes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            position: absolute;
            left: 150px;
            top: 339px;
            margin-top: 0;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <asp:GridView ID="GV_Estudiantes" runat="server" AutoGenerateColumns="False" DataKeyNames="idEstudiante" DataSourceID="SqlDataSource1" Width="737px" CssClass="contenedor">
        <Columns>
            <asp:BoundField DataField="idEstudiante" HeaderText="idEstudiante" ReadOnly="True" SortExpression="idEstudiante" />
            <asp:BoundField DataField="identificacion" HeaderText="identificacion" SortExpression="identificacion" />
            <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
            <asp:BoundField DataField="Apellido1" HeaderText="Apellido1" SortExpression="Apellido1" />
            <asp:BoundField DataField="Apellido2" HeaderText="Apellido2" SortExpression="Apellido2" />
            <asp:BoundField DataField="idPadre" HeaderText="idPadre" SortExpression="idPadre" />
            <asp:BoundField DataField="idpadre2" HeaderText="idpadre2" SortExpression="idpadre2" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="sexo" HeaderText="sexo" SortExpression="sexo" />
        </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BDProgramacionConnectionString %>" SelectCommand="SELECT * FROM [Estudiante]"></asp:SqlDataSource>
</asp:Content>
