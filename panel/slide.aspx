<%@ Page Title="" Language="C#" MasterPageFile="~/panel/panel.master" AutoEventWireup="true" CodeBehind="slide.aspx.cs" Inherits="ModernProje.panel.slide" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row" runat="server" id="Slide_Ekle" visible="false">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-body">
                    <div class="row">
                        <div class="col-lg-12">
                            <asp:Label ID="Uyari" runat="server"></asp:Label>
                        </div>
                        <asp:Repeater ID="SlideResim" runat="server">
                            <ItemTemplate>
                                <div class="col-lg-3">
                                    <asp:Label ID="SlideId" runat="server" Text='<%#Eval("slide_id") %>' Visible="false"></asp:Label>
                                    <div class="form-group">
                                        <div style="background-image: url('<%#Eval("slide_resim") %>'); opacity: 0.9; background-position: center; background-size: cover" class="image_radius">
                                            <asp:FileUpload ID="UrunResimGuncelle" class="dropify-urun1 image_radius" runat="server" />
                                        </div>
                                        <div class="pt-1">
                                            <a href="#" runat="server" id="UrunLinkId" class="btn btn-primary btn-sm font-size-xs" style="height: 28px; padding-left: 5px; padding-right: 7px;padding-bottom:5px;border-radius:0;  color: white"><i class="note-icon-trash mr-1"></i>Resmi Sil</a>
                                        </div>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="form-group">
                                <button class="btn btn-primary btn-sm" style="border-radius:0" id="SlideKaydet" onserverclick="SlideKaydet_ServerClick" runat="server">Kaydet</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
