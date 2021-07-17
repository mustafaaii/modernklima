<%@ Page Title="" Language="C#" MasterPageFile="~/panel/panel.master" AutoEventWireup="true" CodeBehind="referanslar.aspx.cs" Inherits="ModernProje.panel.referanslar" %>

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
                                <a href="referanslar" class="btn btn-outline-primary  btn-sm" runat="server" id="ReferansListeDiv" style="border-radius: 0px"><i class="icon-menu mr-1"></i>Referans Listesi</a>
                                <a href="referans-ekle" class="btn btn-outline-success  btn-sm" runat="server" id="ReferansEkleDiv" style="border-radius: 0px"><i class="icon-add mr-1"></i>Referans Ekle</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <asp:Label ID="Uyari" runat="server"></asp:Label>
        <div class="row" runat="server" id="Referans_Liste" visible="false">
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
                                <asp:Repeater ID="ReferansListesi" runat="server">
                                    <ItemTemplate>
                                        <tbody>
                                            <tr runat="server" id="TableKontrol">
                                                <td><a href="#"><i class="icon-eye"></i></a></td>
                                                <td>
                                                    <img src="<%#Eval("referans_resim") %>" height="70" /></td>
                                                <td>
                                                    <asp:Label ID="ReferansId" runat="server" Text='<%#Eval("referans_id") %>' Visible="false"></asp:Label><%#Eval("referans_baslik") %></td>
                                                <td><%#Eval("referans_konusu") %></td>
                                                <td>
                                                    <asp:Label ID="ReferansDurumu" runat="server"></asp:Label></td>
                                                <td style="width: 290px">
                                                    <asp:Label ID="pasif" runat="server" Visible="false"><a href="/panel/referanslar?pasif=tamam&referans_id=<%#Eval("referans_id") %>" class="btn btn-warning btn-sm" style="height: 25px; font-size: 10px"><i class="note-icon-close mr-2"></i>Pasif Yap</a></asp:Label>
                                                    <asp:Label ID="aktif" runat="server" Visible="false"><a href="/panel/referanslar?aktif=tamam&referans_id=<%#Eval("referans_id") %>" class="btn btn-success btn-sm" style="height: 25px; font-size: 10px"><i class="note-icon-chain-broken mr-2"></i>Aktif Yap</a></asp:Label>
                                                    <a href="referans-ekle?referans_edit=<%#Eval("referans_id") %>" class="btn btn-primary btn-sm mr-2" style="height: 25px; font-size: 10px"><i class="note-icon-pencil mr-2"></i>Düzenle</a>
                                                    <asp:Label ID="ReferansSilme" runat="server"><a href="#" class="btn btn-danger btn-sm"  style="height: 25px; font-size: 10px" data-toggle="modal" data-target="#menu<%#Eval("referans_id") %>"><i class="note-icon-trash mr-2" ></i>Sil</a></asp:Label>
                                                    <div class="modal fade" id="menu<%#Eval("referans_id") %>" role="dialog" aria-labelledby="defaultModalLabel" aria-hidden="true">
                                                        <div class="modal-dialog">
                                                            <div class="modal-content">
                                                                <div class="modal-header">
                                                                    <h4 class="modal-title" id="defaultModalLabel"><%#Eval("referans_baslik") %> Silme İşlemi</h4>
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
                                                                    <a href="referanslar?silme=tamam&referans_sil=<%#Eval("referans_id") %>" class="btn btn-light">Sil</a>
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

        <div class="row" runat="server" id="Referans_Icerik" visible="false">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-lg-4">
                                <div class="form-group">
                                    <div runat="server" id="ReferansResimDIV" style="opacity: 0.9; background-position: center; background-size: cover" class="image_radius">
                                        <asp:FileUpload ID="ReferansResim" class="dropify-resim image_radius" runat="server" />
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
                                            <asp:DropDownList ID="ReferansDurum" runat="server" CssClass="form-control" AppendDataBoundItems="true">
                                                <asp:ListItem>Durum</asp:ListItem>
                                                <asp:ListItem Value="0">Pasif</asp:ListItem>
                                                <asp:ListItem Value="1">Aktif</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <asp:TextBox ID="ReferansKonu" CssClass="form-control" runat="server" placeholder="Konusu" Style="border-radius: 0px"></asp:TextBox>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <asp:TextBox ID="ReferansBaslik" CssClass="form-control" runat="server" placeholder="Başlık" Style="border-radius: 0px"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <textarea id="ReferansIcerik" rows="4" cols="4" class="ckeditor" runat="server"></textarea>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <button class="btn btn-primary btn-sm" id="ReferansEkle" runat="server" onserverclick="ReferansEkle_ServerClick">Kaydet</button>
                                    <button class="btn btn-primary btn-sm" id="ReferansGuncelle" runat="server" visible="false" onserverclick="ReferansGuncelle_ServerClick">Güncelle</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
