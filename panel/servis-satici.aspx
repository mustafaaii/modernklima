<%@ Page Title="" Language="C#" MasterPageFile="~/panel/panel.master" AutoEventWireup="true" CodeBehind="servis-satici.aspx.cs" Inherits="ModernProje.panel.servis_satici" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
        .inputWithIcon input[type="text"] {
            padding-left: 40px;
        }

        .inputWithIcon {
            position: relative;
        }

            .inputWithIcon i {
                position: absolute;
                left: 0;
                top: 8px;
                padding: 5px 8px;
                color: #000000;
                transition: 0.3s;
            }

            .inputWithIcon input[type="text"]:focus + i {
                color: dodgerBlue;
            }

            .inputWithIcon.inputIconBg i {
                background-color: #000000;
                color: #fff;
                padding: 9px 4px;
                border-radius: 4px 0 0 4px;
            }

            .inputWithIcon.inputIconBg input[type="text"]:focus + i {
                color: #fff;
                background-color: dodgerBlue;
            }

        .centertext {
            margin: auto;
            padding-top: 60px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="content">

        <div class="card">
            <div class="card-body">
                <div class="row">
                    <div class="col-lg-12">
                        <a href="servis-satici-ekle" class="btn btn-outline-success  btn-sm mr-4" runat="server" id="ServisSaticiEkleDiv" style="border-radius: 0px"><i class="icon-section mr-1"></i>Servis & Satıcı Ekle</a>
                        <a href="servis-ve-satici" class="btn btn-outline-warning  btn-sm mr-2" runat="server" id="ServisSaticiListeDiv" style="border-radius: 0px"><i class="icon-list mr-1"></i>Servis & Satıcı Listesi</a>
                        <a href="servis-satici-grup-ekle" class="btn btn-outline-primary  btn-sm mr-0" runat="server" id="TipGrupDiv" style="border-radius: 0px"><i class="icon-list mr-1"></i>Ürün Grubu Ekle</a>
                        <a href="servis-satici-tipi-ekle" class="btn btn-outline-primary  btn-sm mr-0" runat="server" id="TipEkleDiv" style="border-radius: 0px"><i class="icon-list mr-1"></i>Firma Tipi</a>
                        <a href="servis-satici-marka-ekle" class="btn btn-outline-primary  btn-sm mr-0" runat="server" id="MarkaEkleDiv" style="border-radius: 0px"><i class="icon-list mr-1"></i>Marka Ekle</a>
                    </div>
                </div>
            </div>
        </div>

        <asp:Label ID="Uyari" runat="server"></asp:Label>
        <div class="row" runat="server" id="Servis_Satici_Listesi" visible="true">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <div class="inputWithIcon border">
                            <i class="fa fa-search fa-lg fa-fw" aria-hidden="true"></i>
                            <asp:TextBox ID="FirmaAra" OnTextChanged="FirmaAra_TextChanged" runat="server"  maxlength="100" style="height: 45px; border-radius: 0px"  class="form-control border-0" name="name" placeholder="Firma Ara..." AutoPostBack="true"></asp:TextBox>
                        </div>
                    </div>
                    <div class="card-body">


                        <div class="table-responsive">
                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <th></th>
                                        <th>Firma Resmi</th>
                                        <th>Firma Adı</th>
                                        <th>Firma Tip</th>
                                        <th>Firma Yetkili Durumu</th>
                                        <th>Firma Durumu</th>
                                        <th>İşlemler</th>
                                    </tr>
                                </thead>
                                <asp:Repeater ID="SersatListesi" runat="server">
                                    <ItemTemplate>
                                        <tbody>
                                            <tr runat="server" id="TableKontrol">
                                                <td><a href="#"><i class="icon-eye2"></i></a></td>
                                                <td>
                                                    <img src="<%#Eval("sersat_resim") %>" height="70" /></td>
                                                <td>
                                                    <asp:Label ID="SersatId" runat="server" Text='<%#Eval("sersat_id") %>' Visible="false"></asp:Label><%#Eval("sersat_adi") %></td>
                                                <td><%#Eval("sersat_tip") %></td>
                                                <td><%#Eval("sersat_yetkili_durumu") %></td>
                                                <td>
                                                    <asp:Label ID="SersatDurumu" runat="server"></asp:Label></td>
                                                <td style="width: 300px">
                                                    <asp:Label ID="pasif" runat="server" Visible="false"><a href="/panel/servis-ve-satici?pasif=tamam&sersat_id=<%#Eval("sersat_id") %>" class="btn btn-warning btn-sm" style="height: 25px; font-size: 10px"><i class="note-icon-close mr-2"></i>Pasif Yap</a></asp:Label>
                                                    <asp:Label ID="aktif" runat="server" Visible="false"><a href="/panel/servis-ve-satici?aktif=tamam&sersat_id=<%#Eval("sersat_id") %>" class="btn btn-success btn-sm" style="height: 25px; font-size: 10px"><i class="note-icon-chain-broken mr-2"></i>Aktif Yap</a></asp:Label>
                                                    <a href="servis-satici-ekle?sersat_id=<%#Eval("sersat_id") %>" class="btn btn-primary btn-sm mr-2" style="height: 25px; font-size: 10px"><i class="note-icon-pencil mr-1"></i>Düzenle</a>
                                                    <asp:Label ID="SersatSilme" runat="server"><a href="#" class="btn btn-danger btn-sm"  style="height: 25px; font-size: 10px" data-toggle="modal" data-target="#marka<%#Eval("sersat_id") %>"><i class="icon-trash icon-1x mr-2" ></i>Sil</a></asp:Label>
                                                    <div class="modal fade" id="marka<%#Eval("sersat_id") %>" role="dialog" aria-labelledby="defaultModalLabel" aria-hidden="true">
                                                        <div class="modal-dialog">
                                                            <div class="modal-content">
                                                                <div class="modal-header">
                                                                    <h4 class="modal-title" id="defaultModalLabel"><%#Eval("sersat_adi") %> Silme İşlemi</h4>
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
                                                                    <a href="servis-ve-satici?sil=sersatsil&sersat_sil=<%#Eval("sersat_id") %>" class="btn btn-light">Sil</a>
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

                            <div class="col-xl-12 col-sm-12 pb-4 text-center  pt-5">
                                <button class="btn btn-primary btn-sm" style="border-radius: 0px" runat="server" id="DahaCokUrun" onserverclick="DahaCokUrun_ServerClick">Daha Fazla Göster <i class="icon-command"></i></button>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row" runat="server" id="Servis_Satici_Ekle" visible="false">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="alert alert-info">
                                    <b>Servis & Satıcı Kategori Seçimi</b>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="form-group">
                                    <asp:DropDownList ID="ServisSaticiYetkili" runat="server" CssClass="form-control" AppendDataBoundItems="true">
                                        <asp:ListItem Value="0">Ürün Grubu</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="form-group">
                                    <asp:DropDownList ID="ServisSaticiTip" runat="server" CssClass="form-control" AppendDataBoundItems="true">
                                        <asp:ListItem Value="0">Firma Tipi</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="form-group">
                                    <asp:DropDownList ID="ServisSaticiDurum" runat="server" CssClass="form-control" AppendDataBoundItems="true">
                                        <asp:ListItem>Durum</asp:ListItem>
                                        <asp:ListItem Value="0">Pasif</asp:ListItem>
                                        <asp:ListItem Value="1">Aktif</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="form-group">
                                    <asp:DropDownList ID="ServisSaticiMarka" runat="server" CssClass="form-control" AppendDataBoundItems="true">
                                        <asp:ListItem Value="0">Marka</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-4">
                                <div class="form-group">
                                    <div runat="server" id="ResimBackground" style="opacity: 0.9; background-position: center; background-size: cover" class="image_radius">
                                        <asp:FileUpload ID="ServisResimUp" class="dropify-servis image_radius" runat="server" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-8">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="alert alert-info">
                                            <b>Servis & Satıcı Temel Bilgileri</b>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <asp:TextBox ID="ServisAdi" CssClass="form-control" runat="server" placeholder="Servis Adı" Style="border-radius: 0px"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <asp:TextBox ID="ServisTelefon" CssClass="form-control" runat="server" placeholder="Telefon Numarası" Style="border-radius: 0px"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-lg-4">
                                        <div class="form-group">
                                            <asp:DropDownList ID="ServisSaticiIl" runat="server" CssClass="form-control" AppendDataBoundItems="true" OnSelectedIndexChanged="ServisSaticiIl_SelectedIndexChanged" OnLoad="ServisSaticiIl_Load" AutoPostBack="true">
                                                <asp:ListItem Value="0">İl</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-lg-4">
                                        <div class="form-group">
                                            <asp:DropDownList ID="ServisSaticiIlce" runat="server" CssClass="form-control" AppendDataBoundItems="true">
                                                <asp:ListItem Value="0">İlçe</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-lg-4">
                                        <div class="form-group">
                                            <asp:DropDownList ID="ServisSaticiGosterilecekIl" runat="server" CssClass="form-control" AppendDataBoundItems="true">
                                                <asp:ListItem Value="0">Gösterilecek İl</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="form-group row">
                                            <div class="col-lg-12">
                                                <div class="input-group">
                                                    <span class="input-group-prepend">
                                                        <span class="input-group-text" style="font-size: 12.6px">Google Maps Servis</span>
                                                    </span>
                                                    <asp:TextBox ID="ServisSaticiMaps" runat="server" CssClass="form-control para" name="money" onkeypress="return onlyNumbers(event);" MaxLength="10" onblur="appendDollar(this.id);"></asp:TextBox>
                                                    <span class="input-group-prepend">
                                                        <span class="input-group-text" style="font-size: 12.6px"><b><i class="icon-map5"></i></b></span>
                                                    </span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <div class="alert alert-info">
                                        <b>Servis & Satıcı Adres</b>
                                    </div>
                                    <textarea id="ServisSaticiAdres" rows="4" cols="4" class="form-control" runat="server"></textarea>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <button class="btn btn-primary btn-sm" id="ServisSaticiEkle" runat="server" onserverclick="ServisSaticiEkle_ServerClick">Servis Ekle</button>
                                    <button class="btn btn-primary btn-sm" id="ServisSaticiGuncelle" runat="server" visible="false" onserverclick="ServisSaticiGuncelle_ServerClick">Servis Güncelle</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row" runat="server" id="Tip_Ekle" visible="false">
            <div class="col-lg-4">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <asp:TextBox ID="TipAdi" CssClass="form-control" runat="server" placeholder="Tip Adı" Style="border-radius: 0px"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <button class="btn btn-primary btn-sm" runat="server" id="TipEkle" onserverclick="TipEkle_ServerClick"><i class="icon-plus22 mr-2"></i>Ekle</button>
                                    <button class="btn btn-primary btn-sm float-right" runat="server" id="TipGuncelle" visible="false" onserverclick="TipGuncelle_ServerClick"><i class="icon-upload10 mr-2"></i>Güncelle</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-8">
                <div class="card">
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <th>Tip Adı</th>
                                        <th>Durumu</th>
                                        <th>İşlem</th>
                                    </tr>
                                </thead>
                                <asp:Repeater ID="TipRepet" runat="server">
                                    <ItemTemplate>
                                        <tbody>
                                            <tr id="TipListesi" runat="server">
                                                <td>
                                                    <asp:Label ID="TipId" runat="server" Text='<%#Eval("sersat_tip_id") %>' Visible="false"></asp:Label><%#Eval("sersat_tip_adi") %></td>
                                                <td>
                                                    <asp:Label ID="TipDurumu" runat="server"></asp:Label></td>
                                                <td style="width: 400px">
                                                    <asp:Label ID="pasif" runat="server" Visible="false"><a href="/panel/servis-satici-tipi-ekle?pasif=tamam&tip_id=<%#Eval("sersat_tip_id") %>" class="btn btn-warning btn-sm" style="height: 25px; font-size: 10px"><i class="icon-check icon-1x mr-2"></i>Pasif Yap</a></asp:Label>
                                                    <asp:Label ID="aktif" runat="server" Visible="false"><a href="/panel/servis-satici-tipi-ekle?aktif=tamam&tip_id=<%#Eval("sersat_tip_id") %>" class="btn btn-success btn-sm" style="height: 25px; font-size: 10px"><i class="icon-check icon-1x mr-2"></i>Aktif Yap</a></asp:Label>
                                                    <a href="servis-satici-tipi-ekle?tip_edit=<%#Eval("sersat_tip_id") %>" class="btn btn-primary btn-sm mr-4" style="height: 25px; font-size: 10px"><i class="icon-pen icon-1x mr-2"></i>Düzenle</a>
                                                    <asp:Label ID="TipSilme" runat="server"><a href="#" class="btn btn-danger btn-sm"  style="height: 25px; font-size: 10px" data-toggle="modal" data-target="#marka<%#Eval("sersat_tip_id") %>"><i class="icon-trash icon-1x mr-2" ></i>Sil</a></asp:Label>
                                                    <div class="modal fade" id="marka<%#Eval("sersat_tip_id") %>" role="dialog" aria-labelledby="defaultModalLabel" aria-hidden="true">
                                                        <div class="modal-dialog">
                                                            <div class="modal-content">
                                                                <div class="modal-header">
                                                                    <h4 class="modal-title" id="defaultModalLabel"><%#Eval("sersat_tip_adi") %> Silme İşlemi</h4>
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
                                                                    <a href="servis-satici-tipi-ekle?silme=tamam&tip_sil=<%#Eval("sersat_tip_id") %>" class="btn btn-light">Sil</a>
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
        <div class="row" runat="server" id="Marka_Ekle" visible="false">
            <div class="col-lg-4">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <asp:TextBox ID="MarkaAdi" CssClass="form-control" runat="server" placeholder="Marka Adı" Style="border-radius: 0px"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <button class="btn btn-primary btn-sm" runat="server" id="MarkaEkle" onserverclick="MarkaEkle_ServerClick"><i class="icon-plus22 mr-2"></i>Ekle</button>
                                    <button class="btn btn-primary btn-sm float-right" runat="server" id="MarkaGuncelle" visible="false" onserverclick="MarkaGuncelle_ServerClick"><i class="icon-upload10 mr-2"></i>Güncelle</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-8">
                <div class="card">
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <th>Marka Adı</th>
                                        <th>Durumu</th>
                                        <th>İşlem</th>
                                    </tr>
                                </thead>
                                <asp:Repeater ID="MarkaRepet" runat="server">
                                    <ItemTemplate>
                                        <tbody>
                                            <tr id="MarkaListesi" runat="server">
                                                <td>
                                                    <asp:Label ID="MarkaId" runat="server" Text='<%#Eval("sersat_marka_id") %>' Visible="false"></asp:Label><%#Eval("sersat_marka_adi") %></td>
                                                <td>
                                                    <asp:Label ID="MarkaDurumu" runat="server"></asp:Label></td>
                                                <td style="width: 400px">
                                                    <asp:Label ID="pasif" runat="server" Visible="false"><a href="/panel/servis-satici-marka-ekle?pasif=tamam&marka_id=<%#Eval("sersat_marka_id") %>" class="btn btn-warning btn-sm" style="height: 25px; font-size: 10px"><i class="icon-check icon-1x mr-2"></i>Pasif Yap</a></asp:Label>
                                                    <asp:Label ID="aktif" runat="server" Visible="false"><a href="/panel/servis-satici-marka-ekle?aktif=tamam&marka_id=<%#Eval("sersat_marka_id") %>" class="btn btn-success btn-sm" style="height: 25px; font-size: 10px"><i class="icon-check icon-1x mr-2"></i>Aktif Yap</a></asp:Label>
                                                    <a href="servis-satici-marka-ekle?marka_edit=<%#Eval("sersat_marka_id") %>" class="btn btn-primary btn-sm mr-4" style="height: 25px; font-size: 10px"><i class="icon-pen icon-1x mr-2"></i>Düzenle</a>
                                                    <asp:Label ID="MarkaSilme" runat="server"><a href="#" class="btn btn-danger btn-sm"  style="height: 25px; font-size: 10px" data-toggle="modal" data-target="#marka<%#Eval("sersat_marka_id") %>"><i class="icon-trash icon-1x mr-2" ></i>Sil</a></asp:Label>
                                                    <div class="modal fade" id="marka<%#Eval("sersat_marka_id") %>" role="dialog" aria-labelledby="defaultModalLabel" aria-hidden="true">
                                                        <div class="modal-dialog">
                                                            <div class="modal-content">
                                                                <div class="modal-header">
                                                                    <h4 class="modal-title" id="defaultModalLabel"><%#Eval("sersat_marka_adi") %> Silme İşlemi</h4>
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
                                                                    <a href="servis-satici-marka-ekle?silme=tamam&marka_sil=<%#Eval("sersat_marka_id") %>" class="btn btn-light">Sil</a>
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

        <div class="row" runat="server" id="Grup_Ekle" visible="false">
            <div class="col-lg-4">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <asp:TextBox ID="GrupAdi" CssClass="form-control" runat="server" placeholder="Grup Adı" Style="border-radius: 0px"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <button class="btn btn-primary btn-sm" runat="server" id="GrupEkle" onserverclick="GrupEkle_ServerClick"><i class="icon-plus22 mr-2"></i>Ekle</button>
                                    <button class="btn btn-primary btn-sm float-right" runat="server" id="GrupGuncelle" visible="false" onserverclick="GrupGuncelle_ServerClick"><i class="icon-upload10 mr-2"></i>Güncelle</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-8">
                <div class="card">
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <th>Grup Adı</th>
                                        <th>Durumu</th>
                                        <th>İşlem</th>
                                    </tr>
                                </thead>
                                <asp:Repeater ID="GrupRepet" runat="server">
                                    <ItemTemplate>
                                        <tbody>
                                            <tr id="GrupListesi" runat="server">
                                                <td>
                                                    <asp:Label ID="GrupId" runat="server" Text='<%#Eval("sersat_grup_id") %>' Visible="false"></asp:Label><%#Eval("sersat_grup_adi") %></td>
                                                <td>
                                                    <asp:Label ID="GrupDurumu" runat="server"></asp:Label></td>
                                                <td style="width: 400px">
                                                    <asp:Label ID="pasif" runat="server" Visible="false"><a href="/panel/servis-satici-grup-ekle?pasif=tamam&grup_id=<%#Eval("sersat_grup_id") %>" class="btn btn-warning btn-sm" style="height: 25px; font-size: 10px"><i class="icon-check icon-1x mr-2"></i>Pasif Yap</a></asp:Label>
                                                    <asp:Label ID="aktif" runat="server" Visible="false"><a href="/panel/servis-satici-grup-ekle?aktif=tamam&grup_id=<%#Eval("sersat_grup_id") %>" class="btn btn-success btn-sm" style="height: 25px; font-size: 10px"><i class="icon-check icon-1x mr-2"></i>Aktif Yap</a></asp:Label>
                                                    <a href="servis-satici-grup-ekle?grup_edit=<%#Eval("sersat_grup_id") %>" class="btn btn-primary btn-sm mr-4" style="height: 25px; font-size: 10px"><i class="icon-pen icon-1x mr-2"></i>Düzenle</a>
                                                    <asp:Label ID="GrupSilme" runat="server"><a href="#" class="btn btn-danger btn-sm"  style="height: 25px; font-size: 10px" data-toggle="modal" data-target="#grup<%#Eval("sersat_grup_id") %>"><i class="icon-trash icon-1x mr-2" ></i>Sil</a></asp:Label>
                                                    <div class="modal fade" id="grup<%#Eval("sersat_grup_id") %>" role="dialog" aria-labelledby="defaultModalLabel" aria-hidden="true">
                                                        <div class="modal-dialog">
                                                            <div class="modal-content">
                                                                <div class="modal-header">
                                                                    <h4 class="modal-title" id="defaultModalLabel"><%#Eval("sersat_grup_adi") %> Silme İşlemi</h4>
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
                                                                    <a href="servis-satici-grup-ekle?silme=tamam&grup_sil=<%#Eval("sersat_grup_id") %>" class="btn btn-light">Sil</a>
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
