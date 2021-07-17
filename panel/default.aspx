<%@ Page Title="" Language="C#" MasterPageFile="~/panel/panel.master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="ModernProje.panel._default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


    <style>
        div.ex1 {
            height: 310px;
            overflow-y: scroll;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="row">

        <div class="col-lg-12">
            <div class="card">
                <div class="card-body">


                    <div class="row">
                        <div class="col-lg-12">
                            <p style="font-weight: 600; font-size: 16px">Güncelleme Tablosu</p>
                            <p>
                                <b>En Son Güncelleme: </b>
                                <asp:Label ID="datetime" runat="server"></asp:Label>
                            </p>
                            <div class="pb-3"></div>
                        </div>


                        <div class="col-lg-12">
                            <div class="ex1" style="padding: 10px">
                                <div class="table-responsive">
                                    <table class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th></th>
                                                <th>Talep Başlığı</th>
                                                <th>Talep Konusu</th>
                                                <th>Talep Edilen</th>
                                            </tr>
                                        </thead>
                                        <asp:Repeater ID="updatepanel" runat="server">
                                            <ItemTemplate>
                                                <tbody>
                                                    <tr runat="server" id="TableKontrol">
                                                        <td><a href="#"><i class="icon-eye"></i></a></td>
                                                        <td><%#Eval("guncelleme_baslik") %></td>
                                                        <td><%#Eval("guncelleme_tarihi") %></td>
                                                        <td><%#Eval("guncelleme_yapilan") %></td>
                                                    </tr>
                                                </tbody>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </table>
                                </div>
                            </div>
                        </div>

                    </div>


                </div>
            </div>
        </div>


    </div>


</asp:Content>
