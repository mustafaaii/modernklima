<%@ Page Title="" Language="C#" MasterPageFile="~/panel/panel.master" AutoEventWireup="true" CodeBehind="kurumsal.aspx.cs" Inherits="ModernProje.panel.kurumsal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="content">

        <div class="card">
            <div class="card-body">
                <div class="row">
                    <div class="col-lg-12">
                        <a href="hakkimizda" class="btn btn-outline-primary  btn-sm" runat="server" id="HakkimizdaDiv" style="border-radius: 0px"><i class="icon-list mr-1"></i>Hakkımızda</a>
                        <a href="haier" class="btn btn-outline-primary  btn-sm" runat="server" id="HaierDiv" style="border-radius: 0px"><i class="icon-list mr-1"></i>Haier</a>
                        <a href="midea" class="btn btn-outline-primary  btn-sm " runat="server" id="MideaDiv" style="border-radius: 0px"><i class="icon-list mr-1"></i>Midea</a>
                        <a runat="server" class="mr-3" id="EmptyStart" visible="false"></a>
                        <a href="tanitim-flimleri" class="btn btn-outline-primary  btn-sm" runat="server" id="TanitimFlimleriDiv" style="border-radius: 0px"><i class="icon-list mr-1"></i>Tanıtım Flimleri</a>
                        <a href="tanitim-filmi-ekle" class="btn btn-outline-success  btn-sm" runat="server" id="VideoEkle" visible="false" style="border-radius: 0px"><i class="icon-list mr-1"></i>Tanıtım Filmi Ekle</a>
                        <a runat="server" class="mr-3" id="EmptyEnd" visible="false"></a>
                        <a href="belgelerimiz" class="btn btn-outline-primary  btn-sm" runat="server" id="BelgelerimizDiv" style="border-radius: 0px"><i class="icon-list mr-1"></i>Belgelerimiz</a>
                        <a href="belge-ekle" class="btn btn-outline-success  btn-sm" runat="server" id="BelgeEkleDiv" visible="false" style="border-radius: 0px"><i class="icon-list mr-1"></i>Belge Ekle</a>
                    </div>
                </div>
            </div>
        </div>

        <asp:Label ID="Uyari" runat="server"></asp:Label>
        <div class="row" runat="server" id="Hakkimizda" visible="false">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-lg-4">
                                <div class="form-group">
                                    <div runat="server" id="HakkimizdaResimBG" style="opacity: 0.9; background-position: center; background-size: cover" class="image_radius">
                                        <asp:FileUpload ID="HakkimizdaResim" class="dropify-resim image_radius" runat="server" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-8">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="alert alert-info">
                                            <b>Hakkimizda İçerik Bilgileri</b>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <asp:DropDownList ID="HakkimizdaDurum" runat="server" CssClass="form-control" AppendDataBoundItems="true">
                                                <asp:ListItem>Durum</asp:ListItem>
                                                <asp:ListItem Value="0">Pasif</asp:ListItem>
                                                <asp:ListItem Value="1">Aktif</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <asp:TextBox ID="HakkimizdaBaslik" CssClass="form-control" runat="server" placeholder="Başlık" Style="border-radius: 0px"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <textarea id="HakkimizdaIcerik" rows="4" cols="4" class="ckeditor" runat="server"></textarea>
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
        <div class="row" runat="server" id="Haier_Ekle" visible="false">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-lg-4">
                                <div class="form-group">
                                    <div runat="server" id="HaierPrevImage" style="opacity: 0.9; background-position: center; background-size: cover" class="image_radius">
                                        <asp:FileUpload ID="HaierResim" class="dropify-resim image_radius" runat="server" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-8">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="alert alert-info">
                                            <b>Haier İçerik Bilgileri</b>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <asp:DropDownList ID="HaierDurum" runat="server" CssClass="form-control" AppendDataBoundItems="true">
                                                <asp:ListItem>Durum</asp:ListItem>
                                                <asp:ListItem Value="0">Pasif</asp:ListItem>
                                                <asp:ListItem Value="1">Aktif</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <asp:TextBox ID="HaierBaslik" CssClass="form-control" runat="server" placeholder="Başlık" Style="border-radius: 0px"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <textarea id="HaierIcerik" rows="4" cols="4" class="ckeditor" runat="server"></textarea>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <button class="btn btn-primary btn-sm" id="HaierKaydet" runat="server" onserverclick="HaierKaydet_ServerClick">Kaydet</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row" runat="server" id="Midea_Ekle" visible="false">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-lg-4">
                                <div class="form-group">
                                    <div runat="server" id="MideaResimBG" style="opacity: 0.9; background-position: center; background-size: cover" class="image_radius">
                                        <asp:FileUpload ID="MideaResim" class="dropify-resim image_radius" runat="server" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-8">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="alert alert-info">
                                            <b>Midea İçerik Bilgileri</b>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <asp:DropDownList ID="MideaDurum" runat="server" CssClass="form-control" AppendDataBoundItems="true">
                                                <asp:ListItem>Durum</asp:ListItem>
                                                <asp:ListItem Value="0">Pasif</asp:ListItem>
                                                <asp:ListItem Value="1">Aktif</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <asp:TextBox ID="MideaBaslik" CssClass="form-control" runat="server" placeholder="Başlık" Style="border-radius: 0px"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <textarea id="MideaIcerik" rows="4" cols="4" class="ckeditor" runat="server"></textarea>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <button class="btn btn-primary btn-sm" id="MideaKaydet" runat="server" onserverclick="MideaKaydet_ServerClick">Kaydet</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row" runat="server" id="Tanitim_Flimleri" visible="false">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <th>Video</th>
                                        <th>Video Başlık</th>
                                        <th>Video Konusu</th>
                                        <th>Video Kategorisi</th>
                                        <th>Durumu</th>
                                        <th>İşlemler</th>
                                    </tr>
                                </thead>
                                <asp:Repeater ID="VideoListesi" runat="server">
                                    <ItemTemplate>
                                        <tbody>
                                            <tr runat="server" id="TableKontrol">
                                                <td>
                                                    <img src="<%#Eval("video_resim") %>" height="70" /></td>
                                                <td>
                                                    <asp:Label ID="VideoId" runat="server" Text='<%#Eval("video_id") %>' Visible="false"></asp:Label><%#Eval("video_baslik") %></td>
                                                <td><%#Eval("video_konusu") %></td>
                                                <td><%#Eval("video_kategorisi") %></td>
                                                <td>
                                                    <asp:Label ID="VideoDurumu" runat="server"></asp:Label></td>
                                                <td style="width: 290px">
                                                    <asp:Label ID="pasif" runat="server" Visible="false"><a href="/panel/tanitim-flimleri?pasif=tamam&video_id=<%#Eval("video_id") %>" class="btn btn-warning btn-sm" style="height: 25px; font-size: 10px"><i class="note-icon-close mr-2"></i>Pasif Yap</a></asp:Label>
                                                    <asp:Label ID="aktif" runat="server" Visible="false"><a href="/panel/tanitim-flimleri?aktif=tamam&video_id=<%#Eval("video_id") %>" class="btn btn-success btn-sm" style="height: 25px; font-size: 10px"><i class="note-icon-chain-broken mr-2"></i>Aktif Yap</a></asp:Label>
                                                    <a href="tanitim-filmi-ekle?video_id=<%#Eval("video_id") %>" class="btn btn-primary btn-sm mr-2" style="height: 25px; font-size: 10px"><i class="note-icon-pencil mr-2"></i>Düzenle</a>
                                                    <a href="#" class="btn btn-danger btn-sm" style="height: 25px; font-size: 10px"><i class="note-icon-trash mr-2"></i>Sil</a>
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
        <div class="row" runat="server" id="Tanitim_Filmi_Ekle" visible="false">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-lg-4">
                                <div class="form-group">
                                    <div runat="server" id="VideoImageBG" style="opacity: 0.9; background-position: center; background-size: cover" class="image_radius">
                                        <asp:FileUpload ID="VideoImage" class="dropify-resim image_radius" runat="server" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-8">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="alert alert-info">
                                            <b>Tanıtım Filmi İçerik Bilgileri</b>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <asp:DropDownList ID="VideoDurumu" runat="server" CssClass="form-control" AppendDataBoundItems="true">
                                                <asp:ListItem>Durum</asp:ListItem>
                                                <asp:ListItem Value="0">Pasif</asp:ListItem>
                                                <asp:ListItem Value="1">Aktif</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <asp:TextBox ID="VideoKategorisi" CssClass="form-control" runat="server" placeholder="Video Kategorisi" Style="border-radius: 0px"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="form-group">
                                            <asp:TextBox ID="VideoKonusu" CssClass="form-control" runat="server" placeholder="Video Konusu" Style="border-radius: 0px"></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="col-lg-5">
                                        <div class="input-group">
                                            <span class="input-group-prepend">
                                                <span class="input-group-text" style="font-size: 12.6px">Genişlik</span>
                                            </span>
                                            <asp:DropDownList ID="VideoGenisliks" runat="server" OnSelectedIndexChanged="VideoGenisliks_SelectedIndexChanged" CssClass="form-control" AutoPostBack="true" OnLoad="VideoGenisliks_Load" AppendDataBoundItems="true">
                                                <asp:ListItem Value="0">Genişlik Değeri</asp:ListItem>
                                            </asp:DropDownList>
                                            <span class="input-group-prepend">
                                                <span class="input-group-text" style="font-size: 12.6px"><b>Px</b></span>
                                            </span>
                                        </div>
                                    </div>

                                    <div class="col-lg-2">
                                        <div class="input-group">
                                            <span class="input-group-prepend  ml-4">
                                                <span class="input-group-text" style="font-size: 12.6px">
                                                    <b>
                                                        <a href="tanitim-filmi-ekle?baglama=tamam" runat="server" id="AktifLink"><i class=" note-icon-link"></i></a>
                                                        <a href="tanitim-filmi-ekle?bagla=tamam" runat="server" id="PasifLink" visible="false"><i class="icon-link2"></i></a>
                                                    </b>
                                                </span>
                                            </span>
                                        </div>
                                    </div>

                                    <div class="col-lg-5">
                                        <div class="input-group">
                                            <span class="input-group-prepend">
                                                <span class="input-group-text" style="font-size: 12.6px">Yükseklik</span>
                                            </span>
                                            <asp:DropDownList ID="VideoYuksekliks" runat="server" CssClass="form-control" AppendDataBoundItems="true">
                                                <asp:ListItem Value="0"> Yükseklik Değeri</asp:ListItem>
                                            </asp:DropDownList>
                                            <span class="input-group-prepend">
                                                <span class="input-group-text" style="font-size: 12.6px"><b>Px</b></span>
                                            </span>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="form-group row">
                                    <div class="col-lg-12">
                                        <div class="input-group">
                                            <span class="input-group-prepend">
                                                <span class="input-group-text" style="font-size: 12.6px">Video Linki</span>
                                            </span>
                                            <asp:TextBox ID="VideoLinki" runat="server" CssClass="form-control para" placeholder="<iframe>Content</iframe>"></asp:TextBox>
                                            <span class="input-group-prepend">
                                                <span class="input-group-text" style="font-size: 12.6px"><b><i class="icon-play3"></i></b></span>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>


                            <div class="col-lg-12">
                                <div class="form-group">
                                    <asp:TextBox ID="VideoBaslik" CssClass="form-control" runat="server" placeholder="Başlık" Style="border-radius: 0px"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <textarea id="VideoIcerik" rows="4" cols="4" class="ckeditor" runat="server"></textarea>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <button class="btn btn-primary btn-sm" id="VideoKaydet" runat="server" onserverclick="VideoKaydet_ServerClick">Kaydet</button>
                                    <button class="btn btn-primary btn-sm" id="VideoGuncelle" runat="server" onserverclick="VideoGuncelle_ServerClick" visible="false">Güncelle</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="row" runat="server" id="Belgelerimiz" visible="false">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <th></th>
                                        <th>Belge</th>
                                        <th>Belge Adı</th>
                                        <th>Belge Neden Verildi</th>
                                        <th>Belge Tarihi</th>
                                        <th>Durumu</th>
                                        <th>İşlemler</th>
                                    </tr>
                                </thead>
                                <asp:Repeater ID="BelgeListele" runat="server">
                                    <ItemTemplate>
                                        <tbody>
                                            <tr runat="server" id="TableKontrol">
                                                <td><a href="#"><i class="icon-eye"></i></a></td>
                                                <td><img src="<%#Eval("belge_resim") %>" height="70" /></td>
                                                <td><asp:Label ID="BelgeId" runat="server" Text='<%#Eval("belge_id") %>' Visible="false"></asp:Label><%#Eval("belge_adi") %></td>
                                                <td><%#Eval("belge_verilme_nedeni") %></td>
                                                <td><%#Eval("belge_tarihi") %></td>
                                                <td> <asp:Label ID="BelgeDurumu" runat="server"></asp:Label></td>
                                                <td style="width:300px">
                                                    <asp:Label ID="pasif" runat="server" Visible="false"><a href="/panel/belgelerimiz?pasif=tamam&belge_id=<%#Eval("belge_id") %>" class="btn btn-warning btn-sm" style="height: 25px; font-size: 10px"><i class="note-icon-close mr-2"></i>Pasif Yap</a></asp:Label>
                                                    <asp:Label ID="aktif" runat="server" Visible="false"><a href="/panel/belgelerimiz?aktif=tamam&belge_id=<%#Eval("belge_id") %>" class="btn btn-success btn-sm" style="height: 25px; font-size: 10px"><i class="note-icon-chain-broken mr-2"></i>Aktif Yap</a></asp:Label>
                                                    <a href="belge-ekle?belge_id=<%#Eval("belge_id") %>" class="btn btn-primary btn-sm mr-2" style="height: 25px; font-size: 10px"><i class="note-icon-pencil mr-2"></i>Düzenle</a>
                                                    <asp:Label ID="BelgeSilme" runat="server"><a href="#" class="btn btn-danger btn-sm"  style="height: 25px; font-size: 10px" data-toggle="modal" data-target="#belge<%#Eval("belge_id") %>"><i class="note-icon-trash mr-2" ></i>Sil</a></asp:Label>
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
        <div class="row" runat="server" id="Belge_Ekle" visible="false">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-lg-4">
                                <div class="form-group">
                                    <div runat="server" id="BelgeImageBG" style="opacity: 0.9; background-position: center; background-size: cover" class="image_radius">
                                        <asp:FileUpload ID="BelgeImage" class="dropify-resim image_radius" runat="server" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-8">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="alert alert-info">
                                            <b>Belge İçerik Bilgileri</b>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <asp:DropDownList ID="BelgeDurumu" runat="server" CssClass="form-control" AppendDataBoundItems="true">
                                                <asp:ListItem>Durum</asp:ListItem>
                                                <asp:ListItem Value="0">Pasif</asp:ListItem>
                                                <asp:ListItem Value="1">Aktif</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="form-group">
                                            <asp:TextBox ID="BelgeVerilme" CssClass="form-control" runat="server" placeholder="Verilme Nedeni" Style="border-radius: 0px"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="form-group">
                                            <asp:TextBox ID="BelgeTarihi" CssClass="form-control" runat="server" placeholder="Verilme Tarihi" Style="border-radius: 0px"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <asp:TextBox ID="BelgeAdi" CssClass="form-control" runat="server" placeholder="Başlık" Style="border-radius: 0px"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <textarea id="BelgeIcerik" rows="4" cols="4" class="ckeditor" runat="server"></textarea>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <button class="btn btn-primary btn-sm" id="BelgeKaydet" runat="server" onserverclick="BelgeKaydet_ServerClick">Kaydet</button>
                                    <button class="btn btn-primary btn-sm" id="BelgeGuncelle" visible="false" runat="server" onserverclick="BelgeGuncelle_ServerClick">Güncelle</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
