<%@ Page Title="" Language="C#" MasterPageFile="~/panel/panel.master" AutoEventWireup="true" CodeBehind="servis-destek.aspx.cs" Inherits="ModernProje.panel.servis_destek" %>

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
                                <a href="vldestek" class="btn btn-outline-primary  btn-sm" runat="server" id="desteklist" style="border-radius: 0px"><i class="icon-menu mr-1"></i>Destek</a>
                                <a href="destek-olustur" class="btn btn-outline-success  btn-sm mr-4" runat="server" visible="false" id="Destekekleme" style="border-radius: 0px"><i class="icon-add mr-1"></i>Destek Olustur</a>

                                <a href="vltalep" class="btn btn-outline-primary  btn-sm" runat="server" id="Taleplist" style="border-radius: 0px"><i class="icon-list mr-1"></i>Talep</a>
                                <a href="talep-olustur" class="btn btn-outline-success  btn-sm" runat="server" visible="false" id="Talepekleme" style="border-radius: 0px"><i class="icon-add mr-1"></i>Talep Olustur</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <asp:Label ID="Uyari" runat="server"></asp:Label>
        <div class="row" runat="server" id="DestekListesiDIV" visible="false">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <th></th>
                                        <th>Destek Başlığı</th>
                                        <th>Tarih</th>
                                        <th>Destek Durumu</th>
                                        <th>İşlem</th>
                                        <th>İşlemler</th>
                                    </tr>
                                </thead>
                                <asp:Repeater ID="DestekListele" runat="server">
                                    <ItemTemplate>
                                        <tbody>
                                            <tr runat="server" id="TableKontrol">
                                                <td><a href="#"><i class="icon-eye"></i></a></td>
                                                <td><asp:Label ID="DestekId" runat="server" Text='<%#Eval("vldestek") %>' Visible="false"></asp:Label><%#Eval("vldestek_baslik") %></td>
                                                <td><%#Eval("vldestek_tarihi") %></td>
                                                <td><asp:Label ID="DestekDurumu" runat="server"></asp:Label></td>
                                                <td><asp:Label ID="DestekYapildimi" runat="server" Text="Yapılmadı"></asp:Label></td>
                                                <td style="width: 290px" >
                                                    <asp:Label ID="pasif" runat="server" Visible="false"><a href="/panel/sss-listesi?pasif=tamam&sss_id=<%#Eval("vldestek") %>" class="btn btn-warning btn-sm" style="height: 25px; font-size: 10px"><i class="note-icon-close mr-2"></i>Pasif Yap</a></asp:Label>
                                                    <asp:Label ID="aktif" runat="server" Visible="false"><a href="/panel/sss-listesi?aktif=tamam&sss_id=<%#Eval("vldestek") %>" class="btn btn-success btn-sm" style="height: 25px; font-size: 10px"><i class="note-icon-chain-broken mr-2"></i>Aktif Yap</a></asp:Label>
                                                    <a href="sss-ekle?sss_edit=<%#Eval("vldestek") %>" class="btn btn-primary btn-sm mr-2" style="height: 25px; font-size: 10px"><i class="note-icon-pencil mr-2"></i>Düzenle</a>
                                                    <asp:Label ID="MenuSilme" runat="server"><a href="#" class="btn btn-danger btn-sm"  style="height: 25px; font-size: 10px" data-toggle="modal" data-target="#menu<%#Eval("vldestek") %>"><i class="note-icon-trash mr-2" ></i>Sil</a></asp:Label>
                                                    <div class="modal fade" id="menu<%#Eval("vldestek") %>" role="dialog" aria-labelledby="defaultModalLabel" aria-hidden="true">
                                                        <div class="modal-dialog">
                                                            <div class="modal-content">
                                                                <div class="modal-header">
                                                                    <h4 class="modal-title" id="defaultModalLabel"><%#Eval("vldestek_baslik") %> Silme İşlemi</h4>
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
                                                                    <a href="vldestek?silme=tamam&destek_sil=<%#Eval("vldestek") %>" class="btn btn-light">Sil</a>
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
        <div class="row" runat="server" id="TalepListesiDIV" visible="false">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <th></th>
                                        <th>Talep Başlığı</th>
                                        <th>Tarih</th>
                                        <th>Talep Durumu</th>
                                        <th>İşlem</th>
                                        <th>İşlemler</th>
                                    </tr>
                                </thead>
                                <asp:Repeater ID="TalepListele" runat="server">
                                    <ItemTemplate>
                                        <tbody>
                                            <tr runat="server" id="TableKontrol">
                                                <td><a href="#"><i class="icon-eye"></i></a></td>
                                                <td><asp:Label ID="TalepId" runat="server" Text='<%#Eval("vltalep_id") %>' Visible="false"></asp:Label><%#Eval("vltalep_baslik") %></td>
                                                <td><%#Eval("vltalep_tarihi") %></td>
                                                <td><asp:Label ID="TalepDurumu" runat="server"></asp:Label></td>
                                                <td><asp:Label ID="TalepYapildimi" runat="server"></asp:Label></td>
                                                <td style="width: 290px" >
                                                    <i><asp:Label ID="Gorev" runat="server" Visible="false"></asp:Label></i>
                                                    <div id="yapılınca" runat="server">
                                                    <asp:Label ID="pasif" runat="server" Visible="false"><a href="/panel/vltalep?pasif=tamam&talep_id=<%#Eval("vltalep_id") %>" class="btn btn-warning btn-sm" style="height: 25px; font-size: 10px"><i class="note-icon-close mr-2"></i>Pasif Yap</a></asp:Label>
                                                    <asp:Label ID="aktif" runat="server" Visible="false"><a href="/panel/vltalep?aktif=tamam&talep_id=<%#Eval("vltalep_id") %>" class="btn btn-success btn-sm" style="height: 25px; font-size: 10px"><i class="note-icon-chain-broken mr-2"></i>Aktif Yap</a></asp:Label>
                                                    <a href="talep-olustur?talep_edit=<%#Eval("vltalep_id") %>" class="btn btn-primary btn-sm mr-2" style="height: 25px; font-size: 10px"><i class="note-icon-pencil mr-2"></i>Düzenle</a>
                                                    <asp:Label ID="TalepSilme" runat="server"><a href="#" class="btn btn-danger btn-sm"  style="height: 25px; font-size: 10px" data-toggle="modal" data-target="#menu<%#Eval("vltalep_id") %>"><i class="note-icon-trash mr-2" ></i>Sil</a></asp:Label>
                                                    <div class="modal fade" id="menu<%#Eval("vltalep_id") %>" role="dialog" aria-labelledby="defaultModalLabel" aria-hidden="true">
                                                        <div class="modal-dialog">
                                                            <div class="modal-content">
                                                                <div class="modal-header">
                                                                    <h4 class="modal-title" id="defaultModalLabel"><%#Eval("vltalep_baslik") %> Silme İşlemi</h4>
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
                                                                    <a href="vltalep?silme=tamam&talep_sil=<%#Eval("vltalep_id") %>" class="btn btn-light">Sil</a>
                                                                    <button type="button" class="btn btn-light" data-dismiss="modal">İptal</button>
                                                                </div>
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

        <div class="row" runat="server" id="DestekOlustur" visible="false">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <asp:TextBox ID="DestekBasligi" CssClass="form-control" runat="server" placeholder="Destek Başlığı" Style="border-radius: 0px"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <textarea id="DestekAciklamasi" rows="2" cols="4" class="ckeditor" runat="server"></textarea>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <button class="btn btn-primary btn-sm" id="DestekEkle" runat="server" onserverclick="DestekEkle_ServerClick">Ekle</button>
                                    <button class="btn btn-primary btn-sm" id="DestekGuncelle" runat="server" visible="false" onserverclick="DestekGuncelle_ServerClick">İçeriği Güncelle</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row" runat="server" id="TalepOlustur" visible="false">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <asp:TextBox ID="TalepBasligi" CssClass="form-control" runat="server" placeholder="Destek Başlığı" Style="border-radius: 0px"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <textarea id="TalepIcerigi" rows="2" cols="4" class="ckeditor" runat="server"></textarea>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <button class="btn btn-primary btn-sm" id="talepolusturma" runat="server" onserverclick="talepolusturma_ServerClick">Ekle</button>
                                    <button class="btn btn-primary btn-sm" id="talepguncelleme" runat="server" visible="false" onserverclick="talepguncelleme_ServerClick">İçeriği Güncelle</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>



</asp:Content>
