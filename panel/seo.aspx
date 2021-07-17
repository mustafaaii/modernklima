<%@ Page Title="" Language="C#" MasterPageFile="~/panel/panel.master" AutoEventWireup="true" CodeBehind="seo.aspx.cs" Inherits="ModernProje.panel.seo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row" runat="server" id="Seo_Duzenle" visible="true">


        <div class="col-lg-12">
            <asp:Label ID="Uyari" runat="server"></asp:Label>
        </div>

        <div class="col-lg-12">
            <div class="card">
                <div class="card-body">

                    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <div class="row">

                                <div class="col-lg-12">
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="alert alert-info">
                                                <b>Seo İşlemleri İçin Seo Yapılacak Sayfayı Seçiniz</b>
                                            </div>
                                        </div>

                                        <div class="col-lg-6">
                                            <div class="form-group">
                                                <asp:DropDownList ID="SeoDurumu" runat="server" CssClass="form-control" AppendDataBoundItems="true">
                                                    <asp:ListItem Value="1">Seo Bu Sayfada Aktif</asp:ListItem>
                                                    <asp:ListItem Value="0">Seo Bu Sayfada Pasif</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>

                                        <div class="col-lg-6">
                                            <div class="form-group">
                                                <asp:DropDownList ID="SayfaSec" runat="server" CssClass="form-control" AppendDataBoundItems="true" AutoPostBack="true" OnSelectedIndexChanged="SayfaSec_SelectedIndexChanged">
                                                    <asp:ListItem Value="0">Sayfa Yapılacak Sayfa</asp:ListItem>
                                                    <asp:ListItem Value="1">Anasayfa</asp:ListItem>
                                                    <asp:ListItem Value="2">Kurumsal</asp:ListItem>
                                                    <asp:ListItem Value="3">Ürünlerimiz</asp:ListItem>
                                                    <asp:ListItem Value="4">Servisler & Satıcılar Sayfası</asp:ListItem>
                                                    <asp:ListItem Value="5">Haberler</asp:ListItem>
                                                    <asp:ListItem Value="6">Destek</asp:ListItem>
                                                    <asp:ListItem Value="7">Bize Ulaşın</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-3">
                                    <div class="form-group">
                                        <asp:Label ID="SeciliSayfa" CssClass="form-control" runat="server"></asp:Label>
                                    </div>
                                </div>

                                <div class="col-lg-9">
                                    <div class="form-group">
                                        <asp:TextBox ID="SeoBasligi" CssClass="form-control" runat="server" placeholder="Seo Başlığı" Style="border-radius: 0px"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <textarea id="SeoAciklamasi" rows="6" cols="8" class="form-control" runat="server" placeholder="Seo Açıklaması"></textarea>
                                    </div>
                                </div>


                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <asp:TextBox ID="SeoKey" CssClass="form-control" runat="server" placeholder="Anahtar Kelimeler" Style="border-radius: 0px"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="form-group">
                                <button class="btn btn-primary btn-sm" id="SeoKaydet" runat="server" onserverclick="SeoKaydet_ServerClick">Kaydet</button>
                                <button class="btn btn-primary btn-sm" id="SeoGuncelle" visible="false" runat="server" onserverclick="SeoGuncelle_ServerClick">Güncelle</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
