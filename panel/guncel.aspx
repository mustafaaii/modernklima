<%@ Page Title="" Language="C#" MasterPageFile="~/panel/panel.master" AutoEventWireup="true" CodeBehind="guncel.aspx.cs" Inherits="ModernProje.panel.guncel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="content">
        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-lg-12">
                                <a href="guncel" class="btn btn-outline-primary  btn-sm" runat="server" id="HaberListeDiv" style="border-radius: 0px"><i class="icon-menu mr-1"></i>Haber Listesi</a>
                                <a href="guncel-ekle" class="btn btn-outline-success  btn-sm" runat="server" id="HaberEkleDiv" style="border-radius: 0px"><i class="icon-add mr-1"></i>Haber Ekle</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <asp:Label ID="Uyari" runat="server"></asp:Label>

        <div class="row" runat="server" id="Guncel_Liste" visible="false">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <th></th>
                                        <th>Resim</th>
                                        <th>Başlığı</th>
                                        <th>Konusu</th>
                                        <th>Durumu</th>
                                        <th>İşlemler</th>
                                    </tr>
                                </thead>
                                <asp:Repeater ID="HaberListesi" runat="server">
                                    <ItemTemplate>
                                        <tbody>
                                            <tr runat="server" id="TableKontrol">
                                                <td><a href="#"><i class="icon-eye"></i></a></td>
                                                <td>
                                                    <img src="<%#Eval("haber_resim") %>" height="70" /></td>
                                                <td>
                                                    <asp:Label ID="HaberId" runat="server" Text='<%#Eval("haber_id") %>' Visible="false"></asp:Label><%#Eval("haber_baslik") %></td>
                                                <td><%#Eval("haber_konusu") %></td>
                                                <td>
                                                    <asp:Label ID="HaberDurumu" runat="server"></asp:Label></td>
                                                <td style="width: 290px">
                                                    <asp:Label ID="pasif" runat="server" Visible="false"><a href="/panel/guncel?pasif=tamam&haber_id=<%#Eval("haber_id") %>" class="btn btn-warning btn-sm" style="height: 25px; font-size: 10px"><i class="note-icon-close mr-2"></i>Pasif Yap</a></asp:Label>
                                                    <asp:Label ID="aktif" runat="server" Visible="false"><a href="/panel/guncel?aktif=tamam&haber_id=<%#Eval("haber_id") %>" class="btn btn-success btn-sm" style="height: 25px; font-size: 10px"><i class="note-icon-chain-broken mr-2"></i>Aktif Yap</a></asp:Label>
                                                    <a href="guncel?guncel_edit=<%#Eval("haber_id") %>" class="btn btn-primary btn-sm mr-2" style="height: 25px; font-size: 10px"><i class="note-icon-pencil mr-2"></i>Düzenle</a>
                                                    <asp:Label ID="GuncelSilme" runat="server"><a href="#" class="btn btn-danger btn-sm"  style="height: 25px; font-size: 10px" data-toggle="modal" data-target="#urun<%#Eval("haber_id") %>"><i class="icon-trash icon-1x mr-2" ></i>Sil</a></asp:Label>
                                                    <div class="modal fade" id="urun<%#Eval("haber_id") %>" role="dialog" aria-labelledby="defaultModalLabel" aria-hidden="true">
                                                        <div class="modal-dialog">
                                                            <div class="modal-content">
                                                                <div class="modal-header">
                                                                    <h4 class="modal-title" id="defaultModalLabel"><%#Eval("haber_baslik") %> Silme İşlemi</h4>
                                                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                                </div>
                                                                <div class="modal-body">
                                                                    <p>
                                                                        Eğer Bu Veriyi Silerseniz Bir daha geri Alamassınız.
                                                                        <br />
                                                                        <b>Halen Silmek İstediğinizden Eminmisiniz ?</b>
                                                                    </p>
                                                                </div>
                                                                <div class="modal-footer">
                                                                    <a href="guncel?silme=tamam&guncel_sil=<%#Eval("haber_id") %>" class="btn btn-light">Sil</a>
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

        <div class="row" runat="server" id="Guncel_Icerik" visible="false">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-lg-4">
                                <div class="form-group">
                                    <div runat="server" id="GuncelResimDIV" style="opacity: 0.9; background-position: center; background-size: cover" class="image_radius">
                                        <asp:FileUpload ID="GuncelResim" class="dropify-resim image_radius" runat="server" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-8">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="alert alert-info">
                                            <b>Haber İçerik Bilgileri</b>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <asp:DropDownList ID="GuncelDurum" runat="server" CssClass="form-control" AppendDataBoundItems="true">
                                                <asp:ListItem>Durum</asp:ListItem>
                                                <asp:ListItem Value="0">Pasif</asp:ListItem>
                                                <asp:ListItem Value="1">Aktif</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <asp:TextBox ID="GuncelKonu" CssClass="form-control" runat="server" placeholder="Konusu" Style="border-radius: 0px"></asp:TextBox>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <asp:TextBox ID="GuncelBaslik" CssClass="form-control" runat="server" placeholder="Başlık" Style="border-radius: 0px"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <textarea id="GuncelIcerik" rows="4" cols="4" class="ckeditor" runat="server"></textarea>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <button class="btn btn-primary btn-sm" id="GuncelEkle" runat="server" onserverclick="GuncelEkle_ServerClick">Kaydet</button>
                                    <button class="btn btn-primary btn-sm" id="GuncelGuncelle" runat="server" onserverclick="GuncelGuncelle_ServerClick" visible="false">Güncelle</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


</asp:Content>
