<%@ Page Title="" Language="C#" MasterPageFile="~/front.master" AutoEventWireup="true" CodeBehind="servisler-ve-saticilar.aspx.cs" Inherits="ModernProje.servisler_ve_saticilar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .inputWithIcon input[type="text"] {
            padding-left: 40px;
        }

        .inputWithIcon {
            position: relative;
        }

            .inputWithIcon i {
                position: absolute;
                left: 0;
                top: 8px;
                padding: 5px 8px;
                color: #000000;
                transition: 0.3s;
            }

            .inputWithIcon input[type="text"]:focus + i {
                color: dodgerBlue;
            }

            .inputWithIcon.inputIconBg i {
                background-color: #000000;
                color: #fff;
                padding: 9px 4px;
                border-radius: 4px 0 0 4px;
            }

            .inputWithIcon.inputIconBg input[type="text"]:focus + i {
                color: #fff;
                background-color: dodgerBlue;
            }

        .centertext {
            margin: auto;
            padding-top: 60px;
            text-align: center;
        }
    </style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div style="height: 10px"></div>
    <asp:Label ID="markasay" runat="server" Visible="false"></asp:Label>
    <asp:Label ID="grupsay" runat="server" Visible="false"></asp:Label>
    <asp:Label ID="tipsay" runat="server" Visible="false"></asp:Label>
    <asp:Label ID="ilsay" runat="server" Visible="false"></asp:Label>
    <asp:Label ID="toplamsersat" runat="server" Visible="false"></asp:Label>
    <asp:Label ID="ilcesay" runat="server" Visible="false"></asp:Label>


    


    <div class="container py-2">
        <div class="row mt-5">
            <div class="col">
                <div class="row">
                    <div class="col-lg-3">
                        <div class="sidebar sidebar-light bg-transparent sidebar-component sidebar-component-right border-0 shadow-0 order-1 order-md-2 sidebar-expand-md">


                            <div class="card">
                                <div class="card-filter-body">
                                    <div class="inputWithIcon border">
                                        <i class="fa fa-search fa-lg fa-fw" aria-hidden="true"></i>
                                        <asp:TextBox ID="SerSatSearch" OnTextChanged="SerSatSearch_TextChanged" runat="server" value="" MaxLength="100" Style="height: 35px; border-radius: 0px" class="form-control border-0" name="name" placeholder="Servis & Satıcı Adınız Yazın..." AutoPostBack="true"></asp:TextBox>
                                    </div>
                                </div>

                                <asp:Label ID="IdTasi" runat="server" Visible="false"></asp:Label>
                                <div class="card-filter-body">
                                    <div class="form-group">

                                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                            <ContentTemplate>
                                                <div class="font-size-xs text-uppercase text-muted mb-0" style="font-size: 10px">SERVİS & SATICI İl - İLÇE</div>
                                                <asp:DropDownList ID="IlSec" CssClass="form-control border-radius-0" runat="server" AppendDataBoundItems="true" AutoPostBack="true" OnSelectedIndexChanged="IlSec_SelectedIndexChanged" OnLoad="IlSec_Load">
                                                    <asp:ListItem Value="0">İl Seçiniz</asp:ListItem>
                                                </asp:DropDownList>
                                                <div class="pt-4"></div>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>

                                        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                            <ContentTemplate>
                                                <asp:DropDownList ID="IlceSec" CssClass="form-control border-radius-0" runat="server" AppendDataBoundItems="true" AutoPostBack="true" OnSelectedIndexChanged="IlceSec_SelectedIndexChanged" >
                                                    <asp:ListItem Value="0">İlçe Seçiniz</asp:ListItem>
                                                </asp:DropDownList>
                                                <div class="pt-4"></div>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>


                                        <div class="font-size-xs text-uppercase text-muted mb-0" id="MarkaId" runat="server" visible="false" style="font-size: 10px">MARKA</div>
                                        <asp:Repeater ID="MarkaRepet" runat="server" visible="false">
                                            <ItemTemplate>
                                                <div class="form-check">
                                                    <asp:Label ID="MarkaId" runat="server" Text='<%#Eval("sersat_marka_id") %>' Visible="false"></asp:Label>
                                                    <asp:Label ID="MarkaKodu" runat="server" Text='<%#Eval("sersat_marka_kodu") %>' Visible="false"></asp:Label>
                                                    <label class="form-check-label" style="font-size: 13px">
                                                        <input type="checkbox" id="MarkaCheck" runat="server" onclick="javascript: form1.submit();" class="form-input-styled mr-5" onserverchange="MarkaCheck_ServerChange"><label class="mr-3"></label><%#Eval("sersat_marka_adi") %>
                                                    </label>
                                                </div>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                        <div class="pt-4"></div>
                                        <div class="font-size-xs text-uppercase text-muted mb-0" style="font-size: 10px">FİRMA TİPİ</div>
                                        <asp:Repeater ID="TipRepet" runat="server">
                                            <ItemTemplate>
                                                <div class="form-check">
                                                    <asp:Label ID="TipId" runat="server" Text='<%#Eval("sersat_tip_id") %>' Visible="false"></asp:Label>
                                                    <asp:Label ID="TipKodu" runat="server" Text='<%#Eval("sersat_tip_kod") %>' Visible="false"></asp:Label>
                                                    <label class="form-check-label" style="font-size: 13px">
                                                        <input type="checkbox" id="TipCheck" runat="server" onclick="javascript: form1.submit();" class="form-input-styled mr-5" onserverchange="TipCheck_ServerChange"><label class="mr-3"></label><%#Eval("sersat_tip_adi") %>
                                                    </label>
                                                </div>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                        <div class="pt-4"></div>
                                        <div class="font-size-xs text-uppercase text-muted mb-0">ÜRÜN GRUBU</div>
                                        <asp:Repeater ID="GrupRepet" runat="server">
                                            <ItemTemplate>
                                                <div class="form-check">
                                                    <asp:Label ID="GrupId" runat="server" Text='<%#Eval("sersat_grup_id") %>' Visible="false"></asp:Label>
                                                    <asp:Label ID="GrupKodu" runat="server" Text='<%#Eval("sersat_grup_kodu") %>' Visible="false"></asp:Label>
                                                    <label class="form-check-label" style="font-size: 13px">
                                                        <input type="checkbox" id="GrupCheck" runat="server" onclick="javascript: form1.submit();" class="form-input-styled mr-5" onserverchange="GrupCheck_ServerChange"><label class="mr-3"></label><%#Eval("sersat_grup_adi") %>
                                                    </label>
                                                </div>
                                            </ItemTemplate>
                                        </asp:Repeater>

                                        <div class="pt-4"></div>
                                        <div class=" pt-4">
                                            <button class="btn btn-primary btn-sm btn-block border-radius-0" id="FilitreReset" runat="server" onserverclick="FilitreReset_ServerClick"><i class="note-icon-redo mr-2"></i>Filtreyi Sıfırla</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="col-lg-9">


                        <div class="content">
                            <div class="row" style="font-size: 12px">
                                <asp:Repeater ID="ServisSaticiListesi" runat="server">
                                    <ItemTemplate>
                                        <div class="col-lg-4 pb-5" style="font-size: 12px">
                                            <div class="card border-radius-0" style="box-shadow: 0.1px 0.1px 1px 0.001px">
                                                <img src="<%#Eval("sersat_resim") %>" class="img-fluid" />
                                                <div style="padding: 20px; height: 180px">
                                                    <div style="text-transform: capitalize; font-size: 12px; text-transform: capitalize"><b><%#Eval("sersat_adi") %></b></div>
                                                    <div class="mb-1" style="text-transform: capitalize; font-size: 12px; text-transform: capitalize">
                                                        <div class="pb-2" style="line-height: 18px; text-align: justify"></div>
                                                        <%#Eval("sersat_il") %> / <%#Eval("sersat_ilce") %><br />
                                                        <b><%#Eval("sersat_yetkili_durumu") %></b><br />
                                                        <%#Eval("sersat_tip") %>
                                                    </div>
                                                </div>
                                                <div class="card-footer">
                                                    <div class="row">
                                                        <div class="col-lg-9 col-9 ">
                                                            <a style="font-size: 10px; text-decoration: none" href="tel:<%#Eval("sersat_telefon").ToString().Replace(" ","") %>"><i class="fas fa-phone mr-1"></i><b><%#Eval("sersat_telefon") %></b></a>
                                                        </div>
                                                        <div class="col-lg-3 col-3 ">
                                                            <b style="font-size: 10px" id="MarkaAdi" runat="server" visible="false"></b>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </div>
                        </div>
                        <div class="col-xl-12 col-sm-12 text-center">
                            <img src="/img/loadings.svg" height="100" id="Yukleyici" runat="server" visible="false" />
                        </div>
                        <div class="col-xl-12 col-sm-12 pb-4 text-center">
                            <button class="btn btn-primary btn-xs border-radius-0" runat="server" id="DahaCokFirma" onserverclick="DahaCokFirma_ServerClick">Daha Fazla Firma Göster <i class="icon-cart"></i></button>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>

    <div style="height: 200px"></div>


</asp:Content>
