<%@ Page Title="" Language="C#" MasterPageFile="~/panel/panel.master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="ModernProje.panel.bize_ulasin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="content">
        <asp:Label ID="Uyari" runat="server"></asp:Label>
        <div class="row" runat="server" id="Iletisim" visible="false">
            <div class="col-lg-5">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="alert alert-info">
                                            <b>İletişim Bölümü Firma Ekle</b>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <div runat="server" id="IletisimResimBG" style="opacity: 0.9; background-position: center; background-size: cover" class="image_radius">
                                        <asp:FileUpload ID="IletisimResim" class="dropify-resim image_radius" runat="server" />
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-12">
                                <label><b>Firma Durumu</b> </label>
                            </div>
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <asp:DropDownList ID="FirmaDurumu" runat="server" CssClass="form-control">
                                        <asp:ListItem Value="0">Pasif</asp:ListItem>
                                        <asp:ListItem Value="1">Aktif</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <label><b>Firma Adı</b> </label>
                            </div>
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <asp:TextBox ID="FirmaAdi" CssClass="form-control" runat="server" placeholder="Firma Adı" Style="border-radius: 0px"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <label><b>Firma Adresi</b> </label>
                            </div>
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <textarea id="FirmaAdres" rows="4" cols="4" class="form-control" runat="server"></textarea>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <label><b>Firma Telefonu</b> </label>
                            </div>
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <asp:TextBox ID="FirmaTel1" CssClass="form-control" runat="server" placeholder="Firma Telefonu" Style="border-radius: 0px"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <asp:TextBox ID="FirmaTel2" CssClass="form-control" runat="server" placeholder="Firma Telefonu" Style="border-radius: 0px"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <asp:TextBox ID="FirmaTel3" CssClass="form-control" runat="server" placeholder="Firma Telefonu" Style="border-radius: 0px"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-lg-12">
                                <label><b>Firma Fax</b> </label>
                            </div>
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <asp:TextBox ID="FirmaFax" CssClass="form-control" runat="server" placeholder="Firma Fax" Style="border-radius: 0px"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <label><b>Firma Harita Kodu</b> </label>
                            </div>
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <asp:TextBox ID="FirmaHarita" CssClass="form-control" runat="server" placeholder="Firma Harita Kodu" Style="border-radius: 0px"></asp:TextBox>
                                </div>
                            </div>

                        </div>
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <button class="btn btn-primary btn-sm" id="FirmaKayedet" runat="server" onserverclick="FirmaKayedet_ServerClick">Kaydet</button>
                                    <button class="btn btn-primary btn-sm" id="FirmaGuncelle" runat="server" visible="false" onserverclick="FirmaGuncelle_ServerClick">Güncelle</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-7">
                <div class="card">
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <th>Firma Adı</th>
                                        <th>İşlemler</th>
                                    </tr>
                                </thead>
                                <asp:Repeater ID="IletisimFirmalar" runat="server">
                                    <ItemTemplate>
                                        <tbody>
                                            <tr runat="server" id="TableKontrol">
                                                <td><asp:Label ID="FirmaID" runat="server" Text='<%#Eval("firma_id") %>' Visible="false"></asp:Label><%#Eval("firma_adi") %></td>
                                               <%-- <asp:Label ID="FirmaDurum" runat="server" Visible="false"></asp:Label>--%>
                                                <td style="width:300px">
                                                    <asp:Label ID="pasif" runat="server" Visible="false"><a href="/panel/iletisim?pasif=tamam&firma_id=<%#Eval("firma_id") %>" class="btn btn-warning btn-sm" style="height: 25px; font-size: 10px"><i class="note-icon-close mr-2"></i>Pasif Yap</a></asp:Label>
                                                    <asp:Label ID="aktif" runat="server" Visible="false"><a href="/panel/iletisim?aktif=tamam&firma_id=<%#Eval("firma_id") %>" class="btn btn-success btn-sm" style="height: 25px; font-size: 10px"><i class="note-icon-chain-broken mr-2"></i>Aktif Yap</a></asp:Label>
                                                    <a href="iletisim?firma_edit=<%#Eval("firma_id") %>" class="btn btn-primary btn-sm" style="height: 25px; font-size: 10px"><i class="note-icon-pencil mr-2"></i>Düzenle</a>
                                                    <asp:Label ID="firmasil" runat="server"><a href="#" class="btn btn-danger btn-sm"  style="height: 25px; font-size: 10px" data-toggle="modal" data-target="#menu<%#Eval("firma_id") %>"><i class="note-icon-trash mr-2" ></i>Sil</a></asp:Label>
                                                    <div class="modal fade" id="menu<%#Eval("firma_id") %>" role="dialog" aria-labelledby="defaultModalLabel" aria-hidden="true">
                                                        <div class="modal-dialog">
                                                            <div class="modal-content">
                                                                <div class="modal-header">
                                                                    <h4 class="modal-title" id="defaultModalLabel"><%#Eval("firma_adi") %> Silme İşlemi</h4>
                                                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                                </div>
                                                                <div class="modal-body">
                                                                    <p>
                                                                        Eğer Bu Veriyi Silerseniz Bu Menü Altındaki İçeriklerin Üst Menüleri Olmayacak.Bu Durumda İçerikler Sayfada Görünmeyecektir ve Her İçeriğe Yeni Menü Eklemek Zorunda Kalacaksınız.
                                                                        <br />
                                                                        <b>Halen Silmek İstediğinizden Eminmisiniz ?</b>
                                                                    </p>
                                                                </div>
                                                                <div class="modal-footer">
                                                                    <a href="iletisim?silme=tamam&firma_sil=<%#Eval("firma_id") %>" class="btn btn-light">Sil</a>
                                                                    <button type="button" class="btn btn-light" data-dismiss="modal">İptal</button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </td>
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
</asp:Content>
