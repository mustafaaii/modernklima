<%@ Page Title="" Language="C#" MasterPageFile="~/panel/panel.master" AutoEventWireup="true" CodeBehind="destek.aspx.cs" Inherits="ModernProje.panel.destek" %>

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
                                <a href="destek-menusu" class="btn btn-outline-primary  btn-sm" runat="server" id="DestekMenuDiv" style="border-radius: 0px"><i class="icon-menu mr-1"></i>Destek Menüsü</a>
                                <a href="destek" class="btn btn-outline-primary  btn-sm" runat="server" id="DestekİcerikListesiDiv" style="border-radius: 0px"><i class="icon-list mr-1"></i>İçerik Listesi</a>
                                <a href="destek-icerigi-ekle" class="btn btn-outline-success  btn-sm mr-4" runat="server" visible="true" id="DestekEkleDiv" style="border-radius: 0px"><i class="icon-add mr-1"></i>İçerik Ekle</a>
                                <a href="sss-listesi" class="btn btn-outline-primary  btn-sm ml-4" runat="server" id="sssListeDiv" style="border-radius: 0px"><i class="icon-list mr-1"></i>SSS</a>
                                <a href="sss-ekle" class="btn btn-outline-success  btn-sm" runat="server" id="sssEkleDiv" style="border-radius: 0px" visible="false"><i class="icon-add mr-1"></i>SSS Ekle</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <asp:Label ID="Uyari" runat="server"></asp:Label>




        <div class="row" runat="server" id="Icerik_Listesi" visible="false">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <th></th>
                                        <th>İçerik Başlığı</th>
                                        <th>İçerik Konusu</th>
                                        <th>Hangi Menüde</th>
                                        <th>Durumu</th>
                                        <th>İşlemler</th>
                                    </tr>
                                </thead>
                                <asp:Repeater ID="IcerikListesi" runat="server">
                                    <ItemTemplate>
                                        <tbody>
                                            <tr runat="server" id="TableKontrol">
                                                <td><a href="#"><i class="icon-eye"></i></a></td>
                                                <td>
                                                    <asp:Label ID="DestekId" runat="server" Text='<%#Eval("destek_id") %>' Visible="false"></asp:Label><%#Eval("destek_adi") %></td>
                                                <td><%#Eval("destek_konusu") %></td>
                                                <td><%#Eval("destek_linki_adi") %></td>
                                                <td>
                                                    <asp:Label ID="DestekDurumu" runat="server"></asp:Label></td>
                                                <td style="width: 290px">
                                                    <asp:Label ID="pasif" runat="server" Visible="false"><a href="/panel/destek?pasif=tamam&destek_id=<%#Eval("destek_id") %>" class="btn btn-warning btn-sm" style="height: 25px; font-size: 10px"><i class="note-icon-close mr-2"></i>Pasif Yap</a></asp:Label>
                                                    <asp:Label ID="aktif" runat="server" Visible="false"><a href="/panel/destek?aktif=tamam&destek_id=<%#Eval("destek_id") %>" class="btn btn-success btn-sm" style="height: 25px; font-size: 10px"><i class="note-icon-chain-broken mr-2"></i>Aktif Yap</a></asp:Label>
                                                    <a href="destek?destek_edit=<%#Eval("destek_id") %>" class="btn btn-primary btn-sm mr-2" style="height: 25px; font-size: 10px"><i class="note-icon-pencil mr-2"></i>Düzenle</a>
                                                    <asp:Label ID="DestekSilme" runat="server"><a href="#" class="btn btn-danger btn-sm"  style="height: 25px; font-size: 10px" data-toggle="modal" data-target="#menu<%#Eval("destek_id") %>"><i class="note-icon-trash mr-2" ></i>Sil</a></asp:Label>
                                                    <div class="modal fade" id="menu<%#Eval("destek_id") %>" role="dialog" aria-labelledby="defaultModalLabel" aria-hidden="true">
                                                        <div class="modal-dialog">
                                                            <div class="modal-content">
                                                                <div class="modal-header">
                                                                    <h4 class="modal-title" id="defaultModalLabel"><%#Eval("destek_adi") %> Silme İşlemi</h4>
                                                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                                </div>
                                                                <div class="modal-body">
                                                                    <p>
                                                                        Eğer Bu Veriyi Silerseniz Kalıcı Olarak Silinecektir.
                                                                        <br />
                                                                        <b>Halen Silmek İstediğinizden Eminmisiniz ?</b>
                                                                    </p>
                                                                </div>
                                                                <div class="modal-footer">
                                                                    <a href="destek?silme=tamam&destek_sil=<%#Eval("destek_id") %>" class="btn btn-light">Sil</a>
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

        <div class="row" runat="server" id="DestekMenusu" visible="false">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <asp:TextBox ID="MenuAdi" CssClass="form-control" runat="server" placeholder="Menu Adı" Style="border-radius: 0px"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <button class="btn btn-primary btn-sm" runat="server" id="MenuEkle" onserverclick="MenuEkle_ServerClick"><i class="icon-plus22 mr-2"></i>Ekle</button>
                                    <button class="btn btn-primary btn-sm float-right" runat="server" id="MenuGuncelle" visible="false" onserverclick="MenuGuncelle_ServerClick"><i class="icon-upload10 mr-2"></i>Güncelle</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <th>Menu Adı</th>
                                        <th>Menu Link</th>
                                        <th>Durumu</th>
                                        <th>İşlem</th>
                                        <th>Seç</th>
                                    </tr>
                                </thead>
                                <asp:Repeater ID="MenuRepet" runat="server">
                                    <ItemTemplate>
                                        <tbody>
                                            <tr id="MenuListesi" runat="server">
                                                <td>
                                                    <asp:Label ID="MenuID" runat="server" Text='<%#Eval("menu_id") %>' Visible="false"></asp:Label><%#Eval("menu_adi") %></td>
                                                <td><%#Eval("menu_linki") %></td>
                                                <td>
                                                    <asp:Label ID="MenuDurumu" runat="server"></asp:Label></td>
                                                <td style="width: 320px">
                                                    <asp:Label ID="pasif" runat="server" Visible="false"><a href="/panel/destek-menusu?pasif=tamam&menu_id=<%#Eval("menu_id") %>" class="btn btn-warning btn-sm" style="height: 25px; font-size: 10px"><i class="icon-check icon-1x mr-2"></i>Pasif Yap</a></asp:Label>
                                                    <asp:Label ID="aktif" runat="server" Visible="false"><a href="/panel/destek-menusu?aktif=tamam&menu_id=<%#Eval("menu_id") %>" class="btn btn-success btn-sm" style="height: 25px; font-size: 10px"><i class="icon-check icon-1x mr-2"></i>Aktif Yap</a></asp:Label>
                                                    <a href="destek-menusu?menu_edit=<%#Eval("menu_id") %>" class="btn btn-primary btn-sm mr-4" style="height: 25px; font-size: 10px"><i class="icon-pen icon-1x mr-2"></i>Düzenle</a>
                                                    <asp:Label ID="MenuSilme" runat="server"><a href="#" class="btn btn-danger btn-sm"  style="height: 25px; font-size: 10px" data-toggle="modal" data-target="#menu<%#Eval("menu_id") %>"><i class="note-icon-trash mr-2" ></i>Sil</a></asp:Label>
                                                    <div class="modal fade" id="menu<%#Eval("menu_id") %>" role="dialog" aria-labelledby="defaultModalLabel" aria-hidden="true">
                                                        <div class="modal-dialog">
                                                            <div class="modal-content">
                                                                <div class="modal-header">
                                                                    <h4 class="modal-title" id="defaultModalLabel"><%#Eval("menu_adi") %> Silme İşlemi</h4>
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
                                                                    <a href="destek-menusu?silme=tamam&menu_sil=<%#Eval("menu_id") %>" class="btn btn-light">Sil</a>
                                                                    <button type="button" class="btn btn-light" data-dismiss="modal">İptal</button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <asp:CheckBox ID="SilmeCokluSecim" runat="server" CssClass="custom-checkbox" /></td>
                                            </tr>
                                        </tbody>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3">
                    <a href="#" runat="server" id="cokluislem" class="btn btn-danger btn-sm" style="height: 25px; font-size: 10px" data-toggle="modal" data-target="#menucoklusilme"><i class="note-icon-trash mr-2"></i>Çoklu Sil</a>
                    <div class="modal fade" id="menucoklusilme" role="dialog" aria-labelledby="defaultModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h4 class="modal-title" id="defaultModalLabel">Çoklu Silme İşlemi</h4>
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                </div>
                                <div class="modal-body">
                                    <p>
                                        Eğer Bu Verileri Silerseniz Bu Menülerin Altındaki İçeriklerin Üst Menüleri Olmayacak.
                                    <br />
                                        Bu Durumda İçerikler Sayfada Görünmeyecektir ve Her İçeriğe Yeni Menü Eklemek Zorunda Kalacaksınız.
                                    <br />
                                        <b>Halen Silmek İstediğinizden Eminmisiniz ?</b>
                                    </p>
                                </div>
                                <div class="modal-footer">
                                    <button class="btn btn-primary btn-sm" runat="server" id="CokluSil" onserverclick="CokluSil_ServerClick"><i class="note-icon-trash mr-2"></i>Evet</button>
                                    <button type="button" class="btn btn-light" data-dismiss="modal">İptal</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>



        <div class="row" runat="server" id="Destek_Ekleme" visible="false">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-lg-4">
                                <div class="form-group">
                                    <div runat="server" id="IcerikRerimBG" style="opacity: 0.9; background-position: center; background-size: cover" class="image_radius">
                                        <asp:FileUpload ID="IcerikRerim" class="dropify-resim image_radius" runat="server" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-8">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="alert alert-info">
                                            <b>Destek Temel Bilgileri</b>
                                        </div>
                                    </div>

                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <asp:DropDownList ID="IcerikMenusKategorisi" runat="server" CssClass="form-control" AppendDataBoundItems="true">
                                                <asp:ListItem Value="0">Hangi Menü Altında</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <asp:DropDownList ID="IcerikDurumu" runat="server" CssClass="form-control" AppendDataBoundItems="true">
                                                <asp:ListItem Value="0">İçerik Durumu</asp:ListItem>
                                                <asp:ListItem Value="1">Aktif</asp:ListItem>
                                                <asp:ListItem Value="2">Pasif</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>

                                    <div class="col-lg-12">
                                        <div class="form-group">
                                            <asp:TextBox ID="IcerikKonusu" CssClass="form-control" runat="server" placeholder="Konu" Style="border-radius: 0px"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="alert alert-info">
                                            Destek için seçilen menü hangisi ise o kategori menüsü altında listelenir.Yeni Menüleri  <b>Destek Menüsü'nü</b> ekledikten sonra içeriklerinizi ekleyiniz.
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <asp:TextBox ID="IcerikAdı" CssClass="form-control" runat="server" placeholder="İçerik Başlığı" Style="border-radius: 0px"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-lg-12">
                                <div class="form-group">
                                    <textarea id="IcerikAciklamasi" rows="2" cols="4" class="ckeditor" runat="server"></textarea>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <button class="btn btn-primary btn-sm" id="IcerikEkle" runat="server" onserverclick="IcerikEkle_ServerClick">İçeriği Ekle</button>
                                    <button class="btn btn-primary btn-sm" id="IcerikGuncelle" runat="server" visible="false" onserverclick="IcerikGuncelle_ServerClick">İçeriği Güncelle</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <div class="row" runat="server" id="ssslistesi" visible="false">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <th></th>
                                        <th>SSS Sıralama</th>
                                        <th>SSS Başlığı</th>
                                        <th>Durumu</th>
                                        <th>İşlemler</th>
                                    </tr>
                                </thead>
                                <asp:Repeater ID="sslisteleri" runat="server">
                                    <ItemTemplate>
                                        <tbody>
                                            <tr runat="server" id="TableKontrol">
                                                <td><a href="#"><i class="icon-eye"></i></a></td>
                                                <td><%#Eval("ss_sirasi") %></td>
                                                <td>
                                                    <asp:Label ID="sssid" runat="server" Text='<%#Eval("sss_id") %>' Visible="false"></asp:Label><%#Eval("sss_adi") %></td>
                                                <td>
                                                    <asp:Label ID="sssdurumu" runat="server"></asp:Label></td>
                                                <td style="width: 290px">
                                                    <asp:Label ID="pasif" runat="server" Visible="false"><a href="/panel/sss-listesi?pasif=tamam&sss_id=<%#Eval("sss_id") %>" class="btn btn-warning btn-sm" style="height: 25px; font-size: 10px"><i class="note-icon-close mr-2"></i>Pasif Yap</a></asp:Label>
                                                    <asp:Label ID="aktif" runat="server" Visible="false"><a href="/panel/sss-listesi?aktif=tamam&sss_id=<%#Eval("sss_id") %>" class="btn btn-success btn-sm" style="height: 25px; font-size: 10px"><i class="note-icon-chain-broken mr-2"></i>Aktif Yap</a></asp:Label>
                                                    <a href="sss-ekle?sss_edit=<%#Eval("sss_id") %>" class="btn btn-primary btn-sm mr-2" style="height: 25px; font-size: 10px"><i class="note-icon-pencil mr-2"></i>Düzenle</a>
                                                    <asp:Label ID="MenuSilme" runat="server"><a href="#" class="btn btn-danger btn-sm"  style="height: 25px; font-size: 10px" data-toggle="modal" data-target="#menu<%#Eval("sss_id") %>"><i class="note-icon-trash mr-2" ></i>Sil</a></asp:Label>
                                                    <div class="modal fade" id="menu<%#Eval("sss_id") %>" role="dialog" aria-labelledby="defaultModalLabel" aria-hidden="true">
                                                        <div class="modal-dialog">
                                                            <div class="modal-content">
                                                                <div class="modal-header">
                                                                    <h4 class="modal-title" id="defaultModalLabel"><%#Eval("sss_adi") %> Silme İşlemi</h4>
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
                                                                    <a href="sss-listesi?silme=tamam&sss_sil=<%#Eval("sss_id") %>" class="btn btn-light">Sil</a>
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
        <div class="row" runat="server" id="sssekle" visible="false">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="alert alert-info">
                                            <b>SSS Bilgileri</b>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <asp:DropDownList ID="sssdurumu" runat="server" CssClass="form-control" AppendDataBoundItems="true">
                                                <asp:ListItem Value="0">İçerik Durumu</asp:ListItem>
                                                <asp:ListItem Value="1">Aktif</asp:ListItem>
                                                <asp:ListItem Value="2">Pasif</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <div class="col-lg-6">
                                                <div class="form-group">
                                                    <asp:TextBox ID="SssSirasi" CssClass="form-control" runat="server" placeholder="İçerik Başlığı" OnTextChanged="SssSirasi_TextChanged" Style="border-radius: 0px" AutoPostBack="true"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <asp:TextBox ID="sssbaslik" CssClass="form-control" runat="server" placeholder="İçerik Başlığı" Style="border-radius: 0px"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-lg-12">
                                <div class="form-group">
                                    <textarea id="sssicerik" rows="2" cols="4" class="ckeditor" runat="server"></textarea>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <button class="btn btn-primary btn-sm" id="ssseklebutton" runat="server" onserverclick="ssseklebutton_ServerClick">SSS Ekle</button>
                                    <button class="btn btn-primary btn-sm" id="sssguncellebutton" runat="server" onserverclick="sssguncellebutton_ServerClick" visible="false">SSS Güncelle</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>


</asp:Content>
