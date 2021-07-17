<%@ Page Title="" Language="C#" MasterPageFile="~/panel/panel.master" AutoEventWireup="true" CodeBehind="ayarlar.aspx.cs" Inherits="ModernProje.panel.ayarlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="content">
        <div class="row" runat="server" id="Ayarlar" visible="false">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <div class="row">

                            <div class="col-lg-12">
                                <div class="alert alert-info" style="border-radius: 0">
                                    <b>Site Ayarları</b>
                                </div>
                            </div>

                            <div class="col-lg-12">
                                <div class="row">
                                    <div class="col-lg-4">
                                        <div class="form-group">
                                            <p>Hızlı Mesaj Maili Nereye Gitsin</p>
                                            <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" placeholder="Hızlı Mesaj Mail Adresi" Style="border-radius: 0px"></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="col-lg-4">
                                        <div class="form-group">
                                            <p>İletişim Formu Maili Nereye Gitsin</p>
                                            <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" placeholder="Hızlı Mesaj Mail Adresi" Style="border-radius: 0px"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-lg-4">
                                        <div class="form-group">
                                            <p>Servis Satıcı Başvuru Formu Maili Nereye Gitsin</p>
                                            <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" placeholder="Hızlı Mesaj Mail Adresi" Style="border-radius: 0px"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <button class="btn btn-primary btn-sm" id="Kaydet" runat="server">Kaydet</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>


</asp:Content>
