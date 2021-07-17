<%@ Page Title="" Language="C#" MasterPageFile="~/panel/panel.master" AutoEventWireup="true" CodeBehind="footer.aspx.cs" Inherits="ModernProje.panel.footer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="content">
        <asp:Label ID="Uyari" runat="server"></asp:Label>
        <div class="row" runat="server" id="Footer" visible="false">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <div class="row">

                            <div class="col-lg-12">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="alert alert-info">
                                            <b>Adresmiz İçerik Bilgileri 1.Bölüm</b>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <asp:TextBox ID="FooterBaslik1" CssClass="form-control" runat="server" placeholder="Footer Bölüm 1 Başlık" Style="border-radius: 0px"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <textarea id="FooterIcerik1" rows="4" cols="4" class="ckeditor" runat="server"></textarea>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="alert alert-info">
                                            <b>Açılış - Kapanış Bilgileri 2.Bölüm</b>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <asp:TextBox ID="FooterBaslik2" CssClass="form-control" runat="server" placeholder="Footer Bölüm 2 Başlık" Style="border-radius: 0px"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <textarea id="FooterIcerik2" rows="4" cols="4" class="ckeditor" runat="server"></textarea>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="alert alert-info">
                                            <b>Footer İletişim Bilgileri 3.Bölüm</b>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <asp:TextBox ID="FooterBaslik3" CssClass="form-control" runat="server" placeholder="Footer Bölüm 3 Başlık" Style="border-radius: 0px"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <textarea id="FooterIcerik3" rows="4" cols="4" class="ckeditor" runat="server"></textarea>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="alert alert-info">
                                            <b>Footer İçerik Bilgileri 4.Bölüm Sosyal Medya</b>
                                        </div>
                                    </div>
                                </div>
                            </div>


                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <asp:TextBox ID="FooterBaslik4" runat="server" CssClass="form-control" placeholder="Footer Bölüm 4 Başlık" Style="border-radius: 0px"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="col-lg-2">
                                    <label><b>Facebook Url</b></label>
                                </div>

                                <div class="col-lg-10">
                                    <div class="form-group">
                                        <asp:TextBox ID="Facebook" runat="server" CssClass="form-control" placeholder="URL" Style="border-radius: 0px"></asp:TextBox>
                                    </div>
                                </div>


                                <div class="col-lg-2">
                                    <label><b>Instagram Url</b></label>
                                </div>
                                <div class="col-lg-10">
                                    <div class="form-group">
                                        <asp:TextBox ID="Instagram" runat="server" CssClass="form-control" placeholder="URL" Style="border-radius: 0px"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="col-lg-2">
                                    <label><b>Linkedin Url</b></label>
                                </div>
                                <div class="col-lg-10">
                                    <div class="form-group">
                                        <asp:TextBox ID="Linkedin" runat="server" CssClass="form-control" placeholder="URL" Style="border-radius: 0px"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="col-lg-2">
                                    <label><b>Twitter Url</b></label>
                                </div>
                                <div class="col-lg-10">
                                    <div class="form-group">
                                        <asp:TextBox ID="Twitter" runat="server" CssClass="form-control" placeholder="URL" Style="border-radius: 0px"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="col-lg-2">
                                    <label><b>Youtube Url</b></label>
                                </div>
                                <div class="col-lg-10">
                                    <div class="form-group">
                                        <asp:TextBox ID="Youtube" runat="server" CssClass="form-control" placeholder="URL" Style="border-radius: 0px"></asp:TextBox>
                                    </div>
                                </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <button class="btn btn-primary btn-sm" id="HakkimizdaKaydet" runat="server" onserverclick="HakkimizdaKaydet_ServerClick">Kaydet</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
