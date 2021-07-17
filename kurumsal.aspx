<%@ Page Title="" Language="C#" MasterPageFile="~/front.master" AutoEventWireup="true" CodeBehind="kurumsal.aspx.cs" Inherits="ModernProje.kurumsal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .video-container {
            position: relative;
            padding-bottom: 56.25%;
            padding-top: 30px;
            height: 0;
            overflow: hidden;
        }

            .video-container iframe, .video-container object, .video-container embed {
                position: absolute;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="height: 10px"></div>

    <div class="container py-2">
        <div class="row mt-5">
            <div class="col">
                <div class="row">
                    <div class="col-lg-3">
                        <div class="tabs tabs-vertical tabs-right tabs-navigation tabs-navigation-simple sidebar" id="sidebar" data-plugin-sticky data-plugin-options="{'minWidth': 991, 'containerSelector': '.container', 'padding': {'top': 110}}">
                            <ul class="nav nav-tabs col-sm-3">
                                <li class="nav-item" runat="server" id="HakkimizdaActive">
                                    <a class="nav-link" href="hakkimizda">Hakkımızda</a>
                                </li>
                                <li class="nav-item" runat="server" id="HaierActive">
                                    <a class="nav-link" href="haier">Haier</a>
                                </li>
                                <li class="nav-item" runat="server" id="MideaActive">
                                    <a class="nav-link" href="midea">Midea</a>
                                </li>
                                <li class="nav-item" runat="server" id="ReferansActive">
                                    <a class="nav-link" href="referanslarimiz">Referanslarımız</a>
                                </li>
                                <li class="nav-item" runat="server" id="TanitimActive">
                                    <a class="nav-link" href="tanitim-filimleri">Tanıtım Filmleri</a>
                                </li>
                                <li class="nav-item" runat="server" id="BelgeActive" visible="false">
                                    <a class="nav-link" href="belgelerimiz">Belgelerimiz</a>
                                </li>

                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-9">


                        <div role="main" class="main" runat="server" id="HakkimizdaSayfasi" visible="false">
                            <div class="container">
                                <asp:Repeater ID="HakkimizdaIcerik" runat="server">
                                    <ItemTemplate>
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <img src="<%#Eval("hakkimizda_resim") %>" class="img-fluid " alt="">
                                                <div>
                                                    <h4 class="text-color-dark font-weight-bold mb-0 pt-4 mt-0"><%#Eval("hakkimizda_adi") %></h4>
                                                </div>
                                                <p><%#Eval("hakkimizda_icerik") %></p>
                                                <hr>
                                            </div>
                                        </div>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </div>
                        </div>
                        <div role="main" class="main" runat="server" id="HaierSayfasi" visible="false">
                            <div class="container">
                                <asp:Repeater ID="HaierIcerik" runat="server">
                                    <ItemTemplate>
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <img src="<%#Eval("haier_resim") %>" class="img-fluid " alt="">
                                                <div>
                                                    <h4 class="text-color-dark font-weight-bold mb-0 pt-4 mt-0"><%#Eval("haier_adi") %></h4>
                                                </div>
                                                <p><%#Eval("haier_icerik") %></p>
                                                <hr>
                                            </div>
                                        </div>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </div>
                        </div>
                        <div role="main" class="main" runat="server" id="MideaSayfasi" visible="false">
                            <div class="container">
                                <asp:Repeater ID="MideaIcerik" runat="server">
                                    <ItemTemplate>
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <img src="<%#Eval("midea_resim") %>" class="img-fluid " alt="">
                                                <div>
                                                    <h4 class="text-color-dark font-weight-bold mb-0 pt-4 mt-0"><%#Eval("midea_adi") %></h4>
                                                </div>
                                                <p><%#Eval("midea_icerik") %></p>
                                                <hr>
                                            </div>
                                        </div>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </div>
                        </div>
                        <div role="main" class="main" runat="server" id="RefransListe" visible="false">
                            <div class="content">
                                <div class="row" style="font-size: 12px">
                                    <asp:Repeater ID="ReferansRepet" runat="server">
                                        <ItemTemplate>
                                            <div class="col-lg-3 pb-4" style="font-size: 12px;">
                                                <div style="background-color: #fafafa">
                                                    <a href="referanslarimiz?referans_id=<%#Eval("referans_id") %>" style="text-decoration: none;">
                                                        <img src="<%#Eval("referans_resim") %>" class="img-fluid" />
                                                    </a>
                                                </div>
                                                <div class="card">
                                                    <div class="card-body" style="height: 180px">
                                                        <div style="height: 100px;">
                                                            <a href="referanslarimiz?referans_id=<%#Eval("referans_id") %>" style="text-decoration: none">
                                                                <div style="text-transform: capitalize">
                                                                    <h5><b><%#Eval("referans_baslik") %></b></h5>
                                                                </div>
                                                            </a>
                                                        </div>
                                                        <div style="height: 80px; font-size: 10px; line-height: 16px">
                                                            <%#Eval("referans_konusu") %>
                                                        </div>
                                                    </div>
                                                    <div class="card-footer">
                                                        <div class="row">
                                                            <div class="col-lg-12">
                                                                <a href="referanslarimiz?referans_id=<%#Eval("referans_id") %>" style="text-decoration: none"><i class="icon-package icon-1x mr-2"></i>Detaylar</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </div>
                            </div>
                        </div>
                        <div role="main" class="main" runat="server" id="ReferansIcerik" visible="false">
                            <div class="container">
                                <asp:Repeater ID="ReferansIcerikler" runat="server">
                                    <ItemTemplate>
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <img src="<%#Eval("referans_resim") %>" class="img-fluid" />
                                                <div>
                                                    <h4 class="text-color-dark font-weight-bold mb-0 pt-4 mt-0"><%#Eval("referans_baslik") %></h4>
                                                    <p style="font-size: 12px; color: #808080"><%#Eval("referans_konusu") %></p>
                                                </div>
                                                <p ><%#Eval("referans_icerik") %></p>
                                                </div>
                                            </div>
                                        </div>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </div>
                        </div>


                        <div role="main" class="main" runat="server" id="TanitimFlimListe" visible="false">
                            <div class="content">
                                <div class="row" style="font-size: 12px">
                                    <asp:Repeater ID="TanitimVideoListe" runat="server">
                                        <ItemTemplate>
                                            <div class="col-lg-4 pb-4" style="font-size: 12px;">
                                                <a href="tanitim-filimleri?video_id=<%#Eval("video_id") %>" style="text-decoration: none">
                                                    <img src="<%#Eval("video_resim") %>" class="img-fluid" /></a>
                                                <div class="card">
                                                    <div class="card-body" style="height: 200px">
                                                        <a href="tanitim-filimleri?video_id=<%#Eval("video_id") %>" style="text-decoration: none">
                                                            <div style="text-transform: capitalize">
                                                                <h4><b><%#Eval("video_baslik") %></b></h4>
                                                            </div>
                                                        </a>
                                                        <div>
                                                            <%#Eval("video_konusu") %>
                                                        </div>
                                                    </div>
                                                    <div class="card-footer">
                                                        <div class="row">
                                                            <div class="col-lg-6">
                                                                <a href="tanitim-filimleri?video_id=<%#Eval("video_id") %>" style="text-decoration: none"><i class="icon-play3 icon-1x mr-2"></i>Videoyu İzle</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </div>
                            </div>
                        </div>
                        <div role="main" class="main" runat="server" id="TanitimFlimleriDetay" visible="false">
                            <div class="container">
                                <asp:Repeater ID="TanitimFlimIcerik" runat="server">
                                    <ItemTemplate>
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <div class="video-container"><%#Eval("video_linki") %></div>
                                                <div>
                                                    <h4 class="text-color-dark font-weight-bold mb-0 pt-4 mt-0"><%#Eval("video_baslik") %></h4>
                                                    <p style="font-size: 12px; color: #808080"><%#Eval("video_kategorisi") %> - <%#Eval("video_konusu") %></p>
                                                </div>
                                                <p><%#Eval("video_icerik") %></p>
                                                <hr>
                                            </div>
                                        </div>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </div>
                        </div>
                        <div role="main" class="main" runat="server" id="BelgeListesi" visible="false">
                            <div class="content">
                                <div class="row" style="font-size: 12px">
                                    <asp:Repeater ID="BelgelerListele" runat="server">
                                        <ItemTemplate>
                                            <div class="col-lg-4 pb-4 shadow" style="font-size: 12px;">
                                                <a href="belgelerimiz?belge_id=<%#Eval("belge_id") %>" style="text-decoration: none">
                                                    <img src="<%#Eval("belge_resim") %>" class="img-fluid" /></a>
                                                <div class="card">
                                                    <div class="card-body" style="height: 110px">
                                                        <a href="belgelerimiz?belge_id=<%#Eval("belge_id") %>" style="text-decoration: none">
                                                            <div style="text-transform: capitalize">
                                                                <h4><b><%#Eval("belge_adi") %></b></h4>
                                                            </div>
                                                        </a>
                                                        <div>
                                                            <%#Eval("belge_verilme_nedeni") %>
                                                        </div>
                                                    </div>
                                                    <div class="card-footer background-transparent">
                                                        <div class="row">
                                                            <div class="col-lg-6">
                                                                <a href="belgelerimiz?belge_id=<%#Eval("belge_id") %>" style="text-decoration: none"><i class="icon-page-break icon-1x mr-2"></i>Belge Detayı</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                        </ItemTemplate>
                                    </asp:Repeater>
                                </div>
                            </div>
                        </div>
                        <div role="main" class="main" runat="server" id="BelgeIcerik" visible="false">
                            <div class="container">
                                <asp:Repeater ID="BelgeDetay" runat="server">
                                    <ItemTemplate>
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <div class="shadow">
                                                    <img src="<%#Eval("belge_resim") %>" class="img-fluid" />
                                                </div>
                                                <div>
                                                    <h4 class="text-color-dark font-weight-bold mb-0 pt-5 mt-0"><%#Eval("belge_adi") %></h4>
                                                    <p style="font-size: 12px; color: #808080"><%#Eval("belge_verilme_nedeni") %> &nbsp;&nbsp; Verilme Tarihi: <%#Eval("belge_tarihi") %></p>
                                                </div>
                                                <p><%#Eval("belge_aciklamasi") %></p>
                                                <hr>
                                            </div>
                                        </div>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div style="height: 200px"></div>
</asp:Content>
