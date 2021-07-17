<%@ Page Title="" Language="C#" MasterPageFile="~/front.master" AutoEventWireup="true" CodeBehind="bize-ulasin.aspx.cs" Inherits="ModernProje.bize_ulasin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script>
        $('#file').click(function () {
            $('#image_file').show();
            $('.btn').prop('disabled', false);
            $('#image_file').change(function () {
                var filename = $('#image_file').val();
                $('#select_file').html(filename);
            });
        });
    </script>

    <style>
        .custom-file-upload {
            border: 1px solid #ccc;
            display: inline-block;
            padding: 6px 12px;
            cursor: pointer;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="height: 10px"></div>
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="container py-2">
        <div class="row mt-5">
            <div class="col">
                <div class="row">
                    <div class="col-lg-3">
                        <div class="tabs tabs-vertical tabs-right tabs-navigation tabs-navigation-simple">
                            <ul class="nav nav-tabs col-sm-3">
                                <li class="nav-item" runat="server" id="IletisimSection">
                                    <a class="nav-link" href="iletisim" id="iletisimatt" runat="server">İletişim</a>
                                </li>
                                <li class="nav-item" runat="server" id="IletisimFormSection">
                                    <a class="nav-link" href="iletisim-formu" id="iletisimformatt" runat="server">İletişim Formu</a>
                                </li>
                                <li class="nav-item" runat="server" id="ServisSaticiSection">
                                    <a class="nav-link" href="yetkili-servis-satici-basvurusu" id="yetkiliatt" runat="server">Yetkili Satıcı & Servis Başvurusu</a>
                                </li>
                                <li class="nav-item" runat="server" id="IkSection">
                                    <a class="nav-link" href="insan-kaynaklari" id="ikatt" runat="server">İnsan Kaynakları</a>
                                </li>
                            </ul>
                        </div>
                    </div>

                    <div class="col-lg-9">
                        <asp:Label ID="Uyari" runat="server"></asp:Label>
                        <div class="row" runat="server" id="Iletisim" visible="false">
                            <asp:Repeater ID="IletisimFirmalar" runat="server">
                                <ItemTemplate>
                                    <div class="col-lg-4 col-12 pb-4">
                                        <div class="card border-radius-0">
                                            <div class="card-body" style="font-size: 12px; height: 270px">
                                                <div style="height: 115px" id="adresyukseligi" runat="server">
                                                    <div style="height: 50px">
                                                        <asp:Label ID="FirmaID" runat="server" Text='<%#Eval("firma_id") %>' Visible="false"></asp:Label>
                                                        <div style="text-transform: capitalize; font-size: 12px; font-weight: 600; line-height: 16px"><%#Eval("firma_adi") %></div>
                                                    </div>
                                                    <div class="mb-1" id="adress" runat="server"><i class="fas fa-address-card mr-2"></i><%#Eval("firma_adresi") %></div>
                                                </div>
                                                <div class="pb-3" id="divempty" runat="server"></div>
                                                <div class="mb-1" id="phone01" runat="server"><i class="fas fa-phone mr-2"></i><%#Eval("firma_tel_01") %></div>
                                                <div class="mb-1" id="phone02" runat="server"><i class="fas fa-phone mr-2"></i><%#Eval("firma_tel_02") %></div>
                                                <div class="mb-1" id="phone03" runat="server"><i class="fas fa-phone mr-2"></i><%#Eval("firma_tel_03") %></div>
                                                <div class="mb-1" id="fax" runat="server"><i class="fas fa-fax mr-2"></i><%#Eval("firma_fax") %></div>

                                            </div>
                                            <div class="card-footer text-left">
                                                <a href="#" data-toggle="modal" data-target="#popupmaps<%#Eval("firma_id") %>" style="text-decoration: none; font-size: 12px"><i class="fas fa-map mr-2"></i>Harita Göster</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="modal fade" id="popupmaps<%#Eval("firma_id") %>" tabindex="-1" role="dialog" aria-labelledby="defaultModalLabel" aria-hidden="true">
                                        <div class="row">
                                            <div class="col-lg-3"></div>
                                            <div class="col-lg-6">
                                                <div class="modal-dialog">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <h4 class="modal-title" style="font-size: 16px;">HARİTALARDA  <b><%#Eval("firma_adi") %></b></h4>
                                                            <a href="#" style="font-size: 24px; text-decoration: none; color: #808080" data-dismiss="modal" aria-hidden="true">&times;</a>
                                                        </div>
                                                        <div class="modal-body">
                                                            <div class="img-fluid"><%#Eval("firma_google_maps") %></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-3"></div>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                        <div class="row" runat="server" id="IletisiFormu" visible="false">
                            <div class="col-lg-12">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-lg-12 pb-4">
                                                <h5 class="mb-2">İLETİŞİM FORMU</h5>
                                            </div>
                                            <div class="col-lg-12">
                                                <div class="form-group">
                                                    <asp:DropDownList ID="IletisimKonu" runat="server" CssClass="form-control border-radius-0" AutoPostBack="true" OnSelectedIndexChanged="IletisimKonu_SelectedIndexChanged">
                                                        <asp:ListItem Value="0">İletişim Konusu Seçiniz</asp:ListItem>
                                                        <asp:ListItem Value="1">Yardım İsteme</asp:ListItem>
                                                        <asp:ListItem Value="2">Teşekkür</asp:ListItem>
                                                        <asp:ListItem Value="3">Öneri</asp:ListItem>
                                                        <asp:ListItem Value="4">Şikayet</asp:ListItem>
                                                        <asp:ListItem Value="5">Teklif Talebi</asp:ListItem>
                                                        <asp:ListItem Value="6">Diğer</asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                            </div>
                                            <div class="col-lg-12" id="diger" runat="server" visible="false">
                                                <div class="form-group">
                                                    <asp:TextBox ID="Diğerkonu" runat="server" placeholder="Diğer İletişim Konusunu Yazınız" CssClass="form-control border-radius-0"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="col-lg-6">
                                                <div class="form-group">
                                                    <asp:DropDownList ID="IletisimIl" runat="server" CssClass="form-control border-radius-0" AutoPostBack="true" AppendDataBoundItems="true" OnLoad="IletisimIl_Load" OnSelectedIndexChanged="IletisimIl_SelectedIndexChanged">
                                                        <asp:ListItem Value="0">İl </asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                            </div>

                                            <div class="col-lg-6">
                                                <div class="form-group">
                                                    <asp:DropDownList ID="IletisimIlce" runat="server" CssClass="form-control border-radius-0" AppendDataBoundItems="true">
                                                        <asp:ListItem Value="0">İlçe </asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                            </div>

                                            <div class="col-lg-6">
                                                <div class="form-group">
                                                    <asp:TextBox ID="IletisimAd" runat="server" placeholder="Adınız Soyadınız" CssClass="form-control border-radius-0"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="col-lg-6">
                                                <div class="form-group">
                                                    <asp:TextBox ID="IletisimMail" runat="server" placeholder="Mail Adres" CssClass="form-control border-radius-0"></asp:TextBox>
                                                </div>
                                            </div>

                                            <div class="col-lg-6">
                                                <div class="form-group">
                                                    <asp:TextBox ID="IletisimTel" runat="server" placeholder="Telefon Numaranız" CssClass="form-control border-radius-0"></asp:TextBox>
                                                </div>
                                            </div>

                                        </div>
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <div class="form-group">
                                                    <textarea id="IletisimMesaj" runat="server" class="form-control border-radius-0" placeholder="Mesajınız" cols="20" rows="2"></textarea>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-lg-8">
                                                <div class="form-group">
                                                    <div class="mb-0 text-capitalize text-color-default font-weight-normal" style="font-size: 12px">* Size hangi İletişim yolu ile ulaşalım?</div>
                                                </div>
                                            </div>
                                            <div class="col-lg-2">
                                                <div class="form-group">
                                                    <div class="form-check">
                                                        <label class="form-check-label">
                                                            <input type="checkbox" id="İletisimMailUlas" runat="server" class="form-input-styled mr-2"><label class="mr-2"></label>Mail İle
                                                        </label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-2">
                                                <div class="form-group">
                                                    <div class="form-check">
                                                        <label class="form-check-label">
                                                            <input type="checkbox" id="IletisimTelUlas" runat="server" class="form-input-styled mr-2"><label class="mr-2"></label>Telefon İle
                                                        </label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-12 pt-5">
                                                <div class="form-group">
                                                    <button class="btn btn-primary btn-xs border-radius-0" id="IletisimGonder" runat="server" onserverclick="IletisimGonder_ServerClick"><i class="icon-mail5"></i>Formu Gönder</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row" runat="server" id="YetkiliServisFormu" visible="false">
                            <div class="col-lg-12">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-lg-12 pb-4">
                                                <h5 class="mb-2" style="text-transform: capitalize">YETKİLİ SERVİS VE SATICI BAŞVURUSU</h5>
                                            </div>
                                            <div class="col-lg-8">
                                                <div class="form-group">
                                                    <asp:DropDownList ID="SersatBasvuruTuru" runat="server" CssClass="form-control border-radius-0">
                                                        <asp:ListItem Value="0">Başvuru Türünü Seçiniz</asp:ListItem>
                                                        <asp:ListItem Value="1">Servis Başvurusu</asp:ListItem>
                                                        <asp:ListItem Value="2">Satıcı Başvurusu</asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                            </div>
                                            <div class="col-lg-4 pb-2" style="font-size: 12px">
                                                <a href="#" style="font-size: 12px" class="btn btn-primary border-radius-0 btn-block">Başvuru Formu İndir</a>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <div class="row">
                                                    <div class="col-lg-8">
                                                        <div class="row">
                                                            <div class="col-lg-6">
                                                                <div class="form-group">
                                                                    <asp:TextBox ID="sersatAd" CssClass="form-control border-radius-0" placeholder="Ad" runat="server"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-6">
                                                                <div class="form-group">
                                                                    <asp:TextBox ID="sersatSoyad" CssClass="form-control border-radius-0" placeholder="Soyadınız" runat="server"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-6">
                                                                <div class="form-group">
                                                                    <asp:TextBox ID="sersatMail" CssClass="form-control border-radius-0" placeholder="Mail Adresi" runat="server"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-6">
                                                                <div class="form-group">
                                                                    <asp:TextBox ID="sersatTel" CssClass="form-control border-radius-0" placeholder="Telefon Numarası" runat="server"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-6">
                                                                <div class="form-group">
                                                                    <asp:DropDownList ID="SersatIl" runat="server" CssClass="form-control border-radius-0" AutoPostBack="true" AppendDataBoundItems="true" OnSelectedIndexChanged="SersatIl_SelectedIndexChanged" OnLoad="SersatIl_Load">
                                                                        <asp:ListItem Value="0">İl</asp:ListItem>
                                                                    </asp:DropDownList>
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-6">
                                                                <div class="form-group">
                                                                    <asp:DropDownList ID="SersatIlce" runat="server" CssClass="form-control border-radius-0" AutoPostBack="true" AppendDataBoundItems="true">
                                                                        <asp:ListItem Value="0">İlçe</asp:ListItem>
                                                                    </asp:DropDownList>
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-12">
                                                                <div class="form-group">
                                                                    <asp:TextBox ID="SersatFirmaUnvani" CssClass="form-control border-radius-0 " placeholder="Firma Ünvanı" runat="server"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-12">
                                                                <div class="form-group">
                                                                    <textarea id="SersatFirmaAdresi" runat="server" cols="20" rows="2" placeholder="Firma Adresi" class="form-control border-radius-0"></textarea>
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-12">
                                                                <div class="form-group">
                                                                    <textarea id="SersatBasvuruNotu" runat="server" cols="20" rows="2" placeholder="Başvuru Notu" class="form-control border-radius-0"></textarea>
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-12">
                                                                <div class="form-group">
                                                                    <i style="font-size: 13px">* Formsuz gönderilen başvurular dikkate alınmayacaktır </i>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-4">
                                                        <div class="form-group">
                                                            <div runat="server" id="ServisPhotoDIV" style="opacity: 0.9; background-position: center; background-size: cover" class="image_radius">
                                                                <asp:FileUpload ID="SersatBelge" class="dropify-servisform image_radius" runat="server" />
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-12 pt-3">
                                                <div class="form-group">
                                                    <button class="btn btn-primary btn-xs border-radius-0" id="ServisBasvur" runat="server" onserverclick="ServisBasvur_ServerClick"><i class="icon-mail5 mr-2"></i>Formu Gönder</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row" runat="server" id="InsanKaynaklari" visible="false">
                            <div class="col-lg-12">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-lg-8">
                                                <div class="form-group">
                                                    <h5 class="mb-2" style="text-transform: capitalize">İŞ BAŞVURUSU</h5>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-lg-8">
                                                <div class="row">
                                                    <div class="col-lg-6">
                                                        <div class="form-group">
                                                            <asp:TextBox ID="ikadsoyad" CssClass="form-control border-radius-0" placeholder="Adınız Soyadınız" runat="server"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-6">
                                                        <div class="form-group">
                                                            <asp:DropDownList ID="ikdepartman" runat="server" CssClass="form-control border-radius-0" AutoPostBack="true" AppendDataBoundItems="true">
                                                                <asp:ListItem Value="0">Departman</asp:ListItem>
                                                                <asp:ListItem Value="1">VRF Satış</asp:ListItem>
                                                                <asp:ListItem Value="2">Rac Satış</asp:ListItem>
                                                                <asp:ListItem Value="3">SSH</asp:ListItem>
                                                                <asp:ListItem Value="4"> Bilgi İşlem</asp:ListItem>
                                                                <asp:ListItem Value="5">Muhasebe</asp:ListItem>
                                                                <asp:ListItem Value="6">İnsan Kaynakları</asp:ListItem>
                                                            </asp:DropDownList>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-6">
                                                        <div class="form-group">
                                                            <asp:DropDownList ID="IkIl" runat="server" CssClass="form-control border-radius-0" AutoPostBack="true" AppendDataBoundItems="true" OnSelectedIndexChanged="IkIl_SelectedIndexChanged" OnLoad="IkIl_Load">
                                                                <asp:ListItem Value="0">İl</asp:ListItem>
                                                            </asp:DropDownList>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-6">
                                                        <div class="form-group">
                                                            <asp:DropDownList ID="IkIlce" runat="server" CssClass="form-control border-radius-0" AppendDataBoundItems="true">
                                                                <asp:ListItem Value="0">İlçe</asp:ListItem>
                                                            </asp:DropDownList>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-12">
                                                        <div class="form-group">
                                                            <textarea id="ikadres" runat="server" cols="20" rows="2" placeholder="Adres" class="form-control border-radius-0"></textarea>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-12">
                                                        <div class="form-group">
                                                            <i style="font-size: 13px">* Formsuz gönderilen başvurular dikkate alınmayacaktır </i>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-12 pt-5">
                                                        <div class="form-group">
                                                            <button class="btn btn-primary border-radius-0 btn-xs" id="isbasvurus" runat="server" onserverclick="isbasvurus_ServerClick"><i class="icon-mail5"></i>Formu Gönder</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="col-lg-12 pb-2" style="font-size: 12px">
                                                    <a href="#" style="font-size: 12px" class="btn btn-primary border-radius-0 btn-block">Başvuru Formu İndir</a>
                                                </div>
                                                <div class="col-lg-12 pb-2" style="font-size: 12px">
                                                    <div class="form-group">
                                                        <div runat="server" id="Div2" style="opacity: 0.9; background-position: center; background-size: cover" class="image_radius">
                                                            <asp:FileUpload ID="ikbelgeup" class="dropify-servisform image_radius" runat="server" />
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>


                    </div>

                </div>
            </div>
        </div>
    </div>

    <div style="height: 200px"></div>
</asp:Content>
