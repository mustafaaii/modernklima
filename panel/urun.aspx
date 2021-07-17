<%@ Page Title="" Language="C#" MasterPageFile="~/panel/panel.master" AutoEventWireup="true" CodeBehind="urun.aspx.cs" Inherits="ModernProje.panel.urun" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        function leftTrim(sString) {
            while (sString.substring(0, 1) == ' ') {
                sString = sString.substring(1, sString.length);
            }
            return sString;
        }
        function rightTrim(sString) {
            while (sString.substring(sString.length - 1, sString.length) == ' ') {
                sString = sString.substring(0, sString.length - 1);
            }
            return sString;
        }
        function trimAll(sString) {
            while (sString.substring(0, 1) == ' ') {
                sString = sString.substring(1, sString.length);
            }
            while (sString.substring(sString.length - 1, sString.length) == ' ') {
                sString = sString.substring(0, sString.length - 1);
            }
            return sString;
        }
        function onlyNumbers(evt) {
            var charCode = (evt.which) ? evt.which : event.keyCode
            if (charCode > 31 && (charCode < 48 || charCode > 57) && charCode != 46)
                return false;
            return true;
        }
        var patterns = new Array(
            "##,###,###,###",  // US/British
            "############" // no formatting
        );
        function formatInteger(integer, pattern) {
            var result = '';
            integerIndex = integer.length - 1;
            patternIndex = pattern.length - 1;
            while ((integerIndex >= 0) && (patternIndex >= 0)) {
                var digit = integer.charAt(integerIndex);
                integerIndex--;
                if ((digit < '0') || (digit > '9')) continue;
                while (patternIndex >= 0) {
                    var patternChar = pattern.charAt(patternIndex);
                    patternIndex--;
                    if (digit == '.')
                        break;
                    else if (patternChar == '#') {
                        result = digit + result;
                        break;
                    }
                    else {
                        result = patternChar + result;
                    }
                }
            }
            return result;
        }
        function appendDollar(id) {
            var amount = document.getElementById(id).value;
            var decimalval = amount.split(".")[1];
            if (decimalval == null) decimalval = ".00"
            else {
                decimalval = "." + decimalval;
                amount = amount.split(".")[0];
            }
            if (trimAll(amount) != "") {
                document.getElementById(id).value = formatInteger(amount, '###,###,###,###') + decimalval;
            }
        }


        function leftTrim(sString) {
            while (sString.substring(0, 1) == ' ') {
                sString = sString.substring(1, sString.length);
            }
            return sString;
        }
        function rightTrim(sString) {
            while (sString.substring(sString.length - 1, sString.length) == ' ') {
                sString = sString.substring(0, sString.length - 1);
            }
            return sString;
        }
        function trimAll(sString) {
            while (sString.substring(0, 1) == ' ') {
                sString = sString.substring(1, sString.length);
            }
            while (sString.substring(sString.length - 1, sString.length) == ' ') {
                sString = sString.substring(0, sString.length - 1);
            }
            return sString;
        }
        function onlyNumbers(evt) {
            var charCode = (evt.which) ? evt.which : event.keyCode
            if (charCode > 31 && (charCode < 48 || charCode > 57) && charCode != 46)
                return false;
            return true;
        }
        var patterns = new Array(
            "##,###,###,###",  // US/British
            "############" // no formatting
        );
        function formatInteger(integer, pattern) {
            var result = '';
            integerIndex = integer.length - 1;
            patternIndex = pattern.length - 1;
            while ((integerIndex >= 0) && (patternIndex >= 0)) {
                var digit = integer.charAt(integerIndex);
                integerIndex--;
                if ((digit < '0') || (digit > '9')) continue;
                while (patternIndex >= 0) {
                    var patternChar = pattern.charAt(patternIndex);
                    patternIndex--;
                    if (digit == '.')
                        break;
                    else if (patternChar == '#') {
                        result = digit + result;
                        break;
                    }
                    else {
                        result = patternChar + result;
                    }
                }
            }
            return result;
        }
        function appendDakika(id) {
            var amount = document.getElementById(id).value;
            var decimalval = amount.split(".")[1];
            if (decimalval == null) decimalval = ""
            else {
                decimalval = "." + decimalval;
                amount = amount.split(".")[0];
            }
            if (trimAll(amount) != "") {
                document.getElementById(id).value = formatInteger(amount, '###,###,###,###') + decimalval + ' ' + 'Dakika';
            }
        }

    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>



    <div class="content">

        <div class="card">
            <div class="card-body">
                <div class="row">
                    <div class="col-lg-12">
                        <a href="urun-ekle" class="btn btn-outline-success  btn-sm mr-4" runat="server" id="UrunEkleDiv" style="border-radius: 0px"><i class="icon-bag mr-1"></i>Ürün EKle</a>
                        <a href="urun" class="btn btn-outline-warning  btn-sm mr-4" runat="server" id="UrunListeDiv" style="border-radius: 0px"><i class="icon-list mr-1"></i>Ürün Listesi</a>
                        <a href="marka-ekle" class="btn btn-outline-primary btn-sm mr-1" runat="server" id="MarkaEkleDiv" style="border-radius: 0px"><i class="icon-brain mr-1"></i>Marka EKle</a>
                        <a href="grup-ekle" class="btn btn-outline-primary btn-sm mr-1" runat="server" id="GrupEkleDiv" style="border-radius: 0px"><i class="icon-grab mr-1"></i>Grup EKle</a>
                        <a href="tur-ekle" class="btn btn-outline-primary btn-sm mr-1" runat="server" id="TurEkleDiv" style="border-radius: 0px"><i class="icon-typewriter mr-1"></i>Tür EKle</a>
                        <a href="cins-ekle" class="btn btn-outline-primary btn-sm mr-1" runat="server" id="CinsEkleDiv" style="border-radius: 0px"><i class="icon-safe mr-1"></i>Cins EKle</a>
                        <a href="kapasite-ekle" class="btn btn-outline-primary btn-sm mr-1" runat="server" id="KapasiteEkleDiv" style="border-radius: 0px"><i class="icon-cabinet mr-1"></i>Kapasite EKle</a>
                        <a href="tip-ekle" class="btn btn-outline-primary btn-sm mr-1" runat="server" id="TipEkleDiv" style="border-radius: 0px"><i class="icon-cabinet mr-1"></i>Tip EKle</a>
                    </div>
                </div>
            </div>
        </div>
        <asp:Label ID="Uyari" runat="server"></asp:Label>

        <div class="row" runat="server" id="Urun_Listesi">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <th>Ürün Resmi</th>
                                        <th>Ürün Adı</th>
                                        <th>Ürün Markası</th>
                                        <th>Ürün Grubu</th>
                                        <th>Ürün Fiyatı</th>
                                        <th>Durumu</th>
                                        <th>İşlemler</th>
                                    </tr>
                                </thead>
                                <asp:Repeater ID="UrunListesi" runat="server">
                                    <ItemTemplate>
                                        <tbody>
                                            <tr runat="server" id="TableKontrol">
                                                <td>
                                                    <img src="<%#Eval("urun_resim") %>" height="70" /></td>
                                                <td>
                                                    <asp:Label ID="UrunId" runat="server" Text='<%#Eval("urun_id") %>' Visible="false"></asp:Label><%#Eval("urun_adi") %></td>
                                                <td><%#Eval("urun_marka_adi") %></td>
                                                <td><%#Eval("urun_grup_adi") %></td>
                                                <td><%#Eval("urun_fiyati") %> &#x20BA;</td>
                                                <td><asp:Label ID="UrurnDurumu" runat="server"></asp:Label></td>
                                                <td>
                                                    <asp:Label ID="pasif" runat="server" Visible="false"><a href="/panel/urun?pasif=tamam&urun_id=<%#Eval("urun_id") %>" class="btn btn-warning btn-sm" style="height: 25px; font-size: 10px"><i class="note-icon-close mr-2"></i>Pasif Yap</a></asp:Label>
                                                    <asp:Label ID="aktif" runat="server" Visible="false"><a href="/panel/urun?aktif=tamam&urun_id=<%#Eval("urun_id") %>" class="btn btn-success btn-sm" style="height: 25px; font-size: 10px"><i class="note-icon-chain-broken mr-2"></i>Aktif Yap</a></asp:Label>
                                                    <a href="urun-ekle?urun_id=<%#Eval("urun_id") %>" class="btn btn-primary btn-sm mr-4" style="height: 25px; font-size: 10px"><i class="note-icon-pencil mr-2"></i>Düzenle</a>
                                                    <asp:Label ID="UrunSilme" runat="server"><a href="#" class="btn btn-danger btn-sm"  style="height: 25px; font-size: 10px" data-toggle="modal" data-target="#urun<%#Eval("urun_id") %>"><i class="icon-trash icon-1x mr-2" ></i>Sil</a></asp:Label>
                                                    <div class="modal fade" id="urun<%#Eval("urun_id") %>" role="dialog" aria-labelledby="defaultModalLabel" aria-hidden="true">
                                                        <div class="modal-dialog">
                                                            <div class="modal-content">
                                                                <div class="modal-header">
                                                                    <h4 class="modal-title" id="defaultModalLabel"><%#Eval("urun_adi") %> Silme İşlemi</h4>
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
                                                                    <a href="urun?silme=tamam&urun_sil=<%#Eval("urun_id") %>" class="btn btn-light">Sil</a>
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

        <div class="row" runat="server" id="Urun_Ekleme" visible="false">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="alert alert-info">
                                    <b>Ürün Kategori Seçimi</b>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="form-group">
                                    <asp:DropDownList ID="GrupList" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="GrupList_SelectedIndexChanged" AppendDataBoundItems="true">
                                        <asp:ListItem Value="0">Grup</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-lg-2" runat="server" id="SV_Tur_Liste" visible="false">
                                <div class="form-group">
                                    <asp:DropDownList ID="SVTurList" runat="server" CssClass="form-control" AppendDataBoundItems="true">
                                        <asp:ListItem Value="0">Tür</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-lg-2" runat="server" id="Split_Tip_Liste" visible="false">
                                <div class="form-group">
                                    <asp:DropDownList ID="SplitTipListesi" runat="server" CssClass="form-control" AppendDataBoundItems="true">
                                        <asp:ListItem Value="0">Tip</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-lg-2" runat="server" id="Split_Cins_Liste" visible="false">
                                <div class="form-group">
                                    <asp:DropDownList ID="SplitCinsListesi" runat="server" CssClass="form-control" AppendDataBoundItems="true">
                                        <asp:ListItem Value="0">Cins</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>

                            <div class="col-lg-2" runat="server" id="SV_Kapasite_Liste" visible="false">
                                <div class="form-group">
                                    <asp:DropDownList ID="SVKapasiteListesi" runat="server" CssClass="form-control" AppendDataBoundItems="true">
                                        <asp:ListItem Value="0">Kapasite</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-4">
                                <div class="form-group">
                                    <div runat="server" id="UrunResimPrev" style="opacity: 0.9; background-position: center; background-size: cover" class="image_radius">
                                        <asp:FileUpload ID="UrunResmi" class="dropify-urun image_radius" runat="server" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-8">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="alert alert-info">
                                            <b>Ürün Temel Bilgileri</b>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <asp:TextBox ID="UrunAdi" CssClass="form-control" runat="server" placeholder="Ürün Adı" Style="border-radius: 0px"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="form-group row">
                                            <div class="col-lg-12">
                                                <div class="input-group">
                                                    <span class="input-group-prepend">
                                                        <span class="input-group-text" style="font-size: 12.6px">Ürün Fiyatı </span>
                                                    </span>
                                                    <asp:TextBox ID="UrunUcreti" runat="server" CssClass="form-control para" name="money" onkeypress="return onlyNumbers(event);" MaxLength="10" onblur="appendDollar(this.id);"></asp:TextBox>
                                                    <span class="input-group-prepend">
                                                        <span class="input-group-text" style="font-size: 12.6px"><b>&#x20BA;</b></span>
                                                    </span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="input-group">
                                            <div class="d-flex justify-content-center">
                                                <asp:FileUpload ID="brosur" runat="server" />
                                                <a id="brslibk" runat="server" visible="false"><i class="icon-eye mr-1"></i>Broşürü Gör</a>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <asp:DropDownList ID="UrunMarkasi" runat="server" CssClass="form-control" AppendDataBoundItems="true">
                                                <asp:ListItem Value="0">Markası</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <asp:DropDownList ID="UrunDurumu" runat="server" CssClass="form-control">
                                                <asp:ListItem Value="0">Pasif</asp:ListItem>
                                                <asp:ListItem Value="1">Aktif</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <div class="alert alert-info">
                                        <b>Ürün Slide Resimleri</b>
                                    </div>
                                </div>
                            </div>

                            <asp:Repeater ID="SlideUp" runat="server" Visible="false">
                                <ItemTemplate>
                                    <div class="col-lg-3">
                                        <div class="form-group">
                                            <div style="opacity: 0.9; background-position: center; background-size: cover" class="image_radius">
                                                <asp:FileUpload ID="SlideResimYukle" class="dropify-urun1 image_radius" runat="server" />
                                            </div>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>

                            <asp:Repeater ID="SlideResim" runat="server">
                                <ItemTemplate>
                                    <div class="col-lg-3">
                                        <asp:Label ID="UrunSlideId" runat="server" Text='<%#Eval("urun_slide_id") %>' Visible="false"></asp:Label>
                                        <div class="form-group">
                                            <div style="background-image: url('<%#Eval("urun_slide_resim") %>'); opacity: 0.9; background-position: center; background-size: cover" class="image_radius">
                                                <asp:FileUpload ID="UrunResimGuncelle" class="dropify-urun1 image_radius" runat="server" />
                                            </div>
                                            <div class="pt-1">
                                                <a runat="server" id="UrunLinkId" class="btn btn-primary btn-sm font-size-xs" style="height: 25px; padding-left: 5px; padding-right: 5px; padding-bottom: 7px"><i class="note-icon-trash mr-1"></i>Resmi Sil</a>
                                            </div>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>

                            <div class="col-lg-12">
                                <div class="form-group">
                                    <div class="alert alert-info">
                                        <b>Ürün Kısa Açıklaması</b>
                                    </div>
                                    <textarea id="UrunKisaAciklamasi" rows="2" cols="4" class="ckeditor" runat="server"></textarea>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <div class="alert alert-info">
                                        <b>Ürün Detay Açıklaması</b>
                                    </div>
                                    <textarea id="UrunAciklamasi" rows="2" cols="4" class="ckeditor" runat="server"></textarea>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <div class="alert alert-info">
                                        <b>Ürün Tablosu</b>
                                    </div>
                                    <textarea id="UrunTablosu" rows="2" cols="4" class="ckeditor" runat="server"></textarea>
                                </div>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <button class="btn btn-primary btn-sm" id="UrunEkle" runat="server" onserverclick="UrunEkle_ServerClick">Ürünü Ekle</button>
                                    <button class="btn btn-primary btn-sm" id="UrunGuncelle" runat="server" visible="false" onserverclick="UrunGuncelle_ServerClick">Ürünü Güncelle</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="row" runat="server" id="Marka_Ekleme" visible="false">
            <div class="col-lg-6">
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
                                    <button class="btn btn-primary btn-sm float-right" runat="server" id="MarkaGuncelle" onserverclick="MarkaGuncelle_ServerClick" visible="false"><i class="icon-upload10 mr-2"></i>Güncelle</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6">
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
                                                    <asp:Label ID="MarkaId" runat="server" Text='<%#Eval("marka_id") %>' Visible="false"></asp:Label><%#Eval("urun_marka_adi") %></td>
                                                <td>
                                                    <asp:Label ID="MarkaDurumu" runat="server"></asp:Label></td>
                                                <td>
                                                    <asp:Label ID="pasif" runat="server" Visible="false"><a href="/panel/marka-ekle?pasif=tamam&marka_id=<%#Eval("marka_id") %>" class="btn btn-warning btn-sm" style="height: 25px; font-size: 10px"><i class="icon-check icon-1x mr-2"></i>Pasif Yap</a></asp:Label>
                                                    <asp:Label ID="aktif" runat="server" Visible="false"><a href="/panel/marka-ekle?aktif=tamam&marka_id=<%#Eval("marka_id") %>" class="btn btn-success btn-sm" style="height: 25px; font-size: 10px"><i class="icon-check icon-1x mr-2"></i>Aktif Yap</a></asp:Label>
                                                    <a href="marka-ekle?marka_edit=<%#Eval("marka_id") %>" class="btn btn-primary btn-sm mr-4" style="height: 25px; font-size: 10px"><i class="icon-pen icon-1x mr-2"></i>Düzenle</a>
                                                    <asp:Label ID="MarkaSilme" runat="server"><a href="#" class="btn btn-danger btn-sm"  style="height: 25px; font-size: 10px" data-toggle="modal" data-target="#marka<%#Eval("marka_id") %>"><i class="icon-trash icon-1x mr-2" ></i>Sil</a></asp:Label>
                                                    <div class="modal fade" id="marka<%#Eval("marka_id") %>" role="dialog" aria-labelledby="defaultModalLabel" aria-hidden="true">
                                                        <div class="modal-dialog">
                                                            <div class="modal-content">
                                                                <div class="modal-header">
                                                                    <h4 class="modal-title" id="defaultModalLabel"><%#Eval("urun_marka_adi") %> Silme İşlemi</h4>
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
                                                                    <a href="marka-ekle?silme=tamam&marka_sil=<%#Eval("marka_id") %>" class="btn btn-light">Sil</a>
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
        <div class="row" runat="server" id="Grup_Ekleme" visible="false">
            <div class="col-lg-6">
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
                                    <button class="btn btn-primary btn-sm float-right" runat="server" id="GrupGuncelle" onserverclick="GrupGuncelle_ServerClick" visible="false"><i class="icon-upload10 mr-2"></i>Güncelle</button>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <div class="col-lg-6">
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
                                                    <asp:Label ID="GrupId" runat="server" Text='<%#Eval("grup_id") %>' Visible="false"></asp:Label><%#Eval("urun_grup_adi") %></td>
                                                <td>
                                                    <asp:Label ID="GrupDurumu" runat="server"></asp:Label></td>
                                                <td>
                                                    <asp:Label ID="pasif" runat="server" Visible="false"><a href="/panel/grup-ekle?pasif=tamam&grup_id=<%#Eval("grup_id") %>" class="btn btn-warning btn-sm" style="height: 25px; font-size: 10px"><i class="icon-check icon-1x mr-2"></i>Pasif Yap</a></asp:Label>
                                                    <asp:Label ID="aktif" runat="server" Visible="false"><a href="/panel/grup-ekle?aktif=tamam&grup_id=<%#Eval("grup_id") %>" class="btn btn-success btn-sm" style="height: 25px; font-size: 10px"><i class="icon-check icon-1x mr-2"></i>Aktif Yap</a></asp:Label>

                                                    <a href="grup-ekle?grup_edit=<%#Eval("grup_id") %>" class="btn btn-primary btn-sm mr-4" style="height: 25px; font-size: 10px"><i class="icon-pen icon-1x mr-2"></i>Düzenle</a>
                                                    <asp:Label ID="GrupSilme" runat="server"><a href="#" class="btn btn-danger btn-sm"  style="height: 25px; font-size: 10px" data-toggle="modal" data-target="#grup<%#Eval("grup_id") %>"><i class="icon-trash icon-1x mr-2" ></i>Sil</a></asp:Label>

                                                    <div class="modal fade" id="grup<%#Eval("grup_id") %>" role="dialog" aria-labelledby="defaultModalLabel" aria-hidden="true">
                                                        <div class="modal-dialog">
                                                            <div class="modal-content">
                                                                <div class="modal-header">
                                                                    <h4 class="modal-title" id="defaultModalLabel"><%#Eval("urun_grup_adi") %> Silme İşlemi</h4>
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
                                                                    <a href="grup-ekle?silme=tamam&grup_sil=<%#Eval("grup_id") %>" class="btn btn-light">Sil</a>
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
        <div class="row" runat="server" id="Tur_Ekleme" visible="false">
            <div class="col-lg-6">
                <div class="card">
                    <div class="card-body">

                        <div class="row">

                            <div class="col-lg-12">
                                <div class="form-group">
                                    <asp:TextBox ID="TurAdi" CssClass="form-control" runat="server" placeholder="Tür Adı" Style="border-radius: 0px"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <button class="btn btn-primary btn-sm" runat="server" id="TurAdiEkle" onserverclick="TurAdiEkle_ServerClick"><i class="icon-plus22 mr-2"></i>Ekle</button>
                                    <button class="btn btn-primary btn-sm float-right" runat="server" id="TurGuncelle" onserverclick="TurGuncelle_ServerClick" visible="false"><i class="icon-upload10 mr-2"></i>Güncelle</button>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="card">
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <th>Tur Adı</th>
                                        <th>Durumu</th>
                                        <th>İşlem</th>
                                    </tr>
                                </thead>
                                <asp:Repeater ID="TurRepet" runat="server">
                                    <ItemTemplate>
                                        <tbody>
                                            <tr id="TurListesi" runat="server">
                                                <td>
                                                    <asp:Label ID="TurId" runat="server" Text='<%#Eval("tur_id") %>' Visible="false"></asp:Label><%#Eval("urun_tur_adi") %></td>
                                                <td>
                                                    <asp:Label ID="TurDurumu" runat="server"></asp:Label></td>
                                                <td>
                                                    <asp:Label ID="pasif" runat="server" Visible="false"><a href="/panel/tur-ekle?pasif=tamam&tur_id=<%#Eval("tur_id") %>" class="btn btn-warning btn-sm" style="height: 25px; font-size: 10px"><i class="icon-check icon-1x mr-2"></i>Pasif Yap</a></asp:Label>
                                                    <asp:Label ID="aktif" runat="server" Visible="false"><a href="/panel/tur-ekle?aktif=tamam&tur_id=<%#Eval("tur_id") %>" class="btn btn-success btn-sm" style="height: 25px; font-size: 10px"><i class="icon-check icon-1x mr-2"></i>Aktif Yap</a></asp:Label>

                                                    <a href="tur-ekle?tur_edit=<%#Eval("tur_id") %>" class="btn btn-primary btn-sm mr-4" style="height: 25px; font-size: 10px"><i class="icon-pen icon-1x mr-2"></i>Düzenle</a>
                                                    <asp:Label ID="TurSilme" runat="server"><a href="#" class="btn btn-danger btn-sm"  style="height: 25px; font-size: 10px" data-toggle="modal" data-target="#grup<%#Eval("tur_id") %>"><i class="icon-trash icon-1x mr-2" ></i>Sil</a></asp:Label>

                                                    <div class="modal fade" id="grup<%#Eval("tur_id") %>" role="dialog" aria-labelledby="defaultModalLabel" aria-hidden="true">
                                                        <div class="modal-dialog">
                                                            <div class="modal-content">
                                                                <div class="modal-header">
                                                                    <h4 class="modal-title" id="defaultModalLabel"><%#Eval("urun_tur_adi") %> Silme İşlemi</h4>
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
                                                                    <a href="tur-ekle?silme=tamam&tur_sil=<%#Eval("tur_id") %>" class="btn btn-light">Sil</a>
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
        <div class="row" runat="server" id="Cins_Ekleme" visible="false">
            <div class="col-lg-6">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <asp:TextBox ID="CinsAdi" CssClass="form-control" runat="server" placeholder="Cins Adı" Style="border-radius: 0px"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <button class="btn btn-primary btn-sm" runat="server" id="CinsEkle" onserverclick="CinsEkle_ServerClick"><i class="icon-plus22 mr-2"></i>Ekle</button>
                                    <button class="btn btn-primary btn-sm float-right" runat="server" id="CinsGuncelle" onserverclick="CinsGuncelle_ServerClick" visible="false"><i class="icon-upload10 mr-2"></i>Güncelle</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="card">
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <th>Cins Adı</th>
                                        <th>Durumu</th>
                                        <th>İşlem</th>
                                    </tr>
                                </thead>
                                <asp:Repeater ID="CinsRepet" runat="server">
                                    <ItemTemplate>
                                        <tbody>
                                            <tr id="CinsListesi" runat="server">
                                                <td>
                                                    <asp:Label ID="CinsId" runat="server" Text='<%#Eval("cins_id") %>' Visible="false"></asp:Label><%#Eval("urun_cins_adi") %></td>
                                                <td>
                                                    <asp:Label ID="CinsDurumu" runat="server"></asp:Label></td>
                                                <td>
                                                    <asp:Label ID="pasif" runat="server" Visible="false"><a href="/panel/cins-ekle?pasif=tamam&cins_id=<%#Eval("cins_id") %>" class="btn btn-warning btn-sm" style="height: 25px; font-size: 10px"><i class="icon-check icon-1x mr-2"></i>Pasif Yap</a></asp:Label>
                                                    <asp:Label ID="aktif" runat="server" Visible="false"><a href="/panel/cins-ekle?aktif=tamam&cins_id=<%#Eval("cins_id") %>" class="btn btn-success btn-sm" style="height: 25px; font-size: 10px"><i class="icon-check icon-1x mr-2"></i>Aktif Yap</a></asp:Label>

                                                    <a href="cins-ekle?cins_edit=<%#Eval("cins_id") %>" class="btn btn-primary btn-sm mr-4" style="height: 25px; font-size: 10px"><i class="icon-pen icon-1x mr-2"></i>Düzenle</a>
                                                    <asp:Label ID="CinsSilme" runat="server"><a href="#" class="btn btn-danger btn-sm"  style="height: 25px; font-size: 10px" data-toggle="modal" data-target="#grup<%#Eval("cins_id") %>"><i class="icon-trash icon-1x mr-2" ></i>Sil</a></asp:Label>

                                                    <div class="modal fade" id="grup<%#Eval("cins_id") %>" role="dialog" aria-labelledby="defaultModalLabel" aria-hidden="true">
                                                        <div class="modal-dialog">
                                                            <div class="modal-content">
                                                                <div class="modal-header">
                                                                    <h4 class="modal-title" id="defaultModalLabel"><%#Eval("urun_cins_adi") %> Silme İşlemi</h4>
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
                                                                    <a href="cins-ekle?silme=tamam&cins_sil=<%#Eval("cins_id") %>" class="btn btn-light">Sil</a>
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
        <div class="row" runat="server" id="Kapasite_Ekleme" visible="false">
            <div class="col-lg-6">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <asp:TextBox ID="KapasiteAdi" CssClass="form-control" runat="server" placeholder="Kapasite Adı" Style="border-radius: 0px"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <asp:DropDownList ID="KapasiteTuru" runat="server" CssClass="form-control">
                                        <asp:ListItem Value="0">Kapasite Türü</asp:ListItem>
                                        <asp:ListItem Value="1">HP</asp:ListItem>
                                        <asp:ListItem Value="2">BTU</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <button class="btn btn-primary btn-sm" runat="server" id="KapasiteEkle" onserverclick="KapasiteEkle_ServerClick"><i class="icon-plus22 mr-2"></i>Ekle</button>
                                    <button class="btn btn-primary btn-sm float-right" runat="server" id="KapasiteGuncelle" onserverclick="KapasiteGuncelle_ServerClick"><i class="icon-upload10 mr-2"></i>Güncelle</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="card">
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <th>Kapasite Adı</th>
                                        <th>Durumu</th>
                                        <th>İşlem</th>
                                    </tr>
                                </thead>
                                <asp:Repeater ID="KapasiteRepet" runat="server">
                                    <ItemTemplate>
                                        <tbody>
                                            <tr id="KapasiteListesi" runat="server">
                                                <td>
                                                    <asp:Label ID="KapasiteId" runat="server" Text='<%#Eval("kapasite_id") %>' Visible="false"></asp:Label><%#Eval("urun_kapasite_adi") %>
                                                </td>
                                                <td>
                                                    <asp:Label ID="KapasiteDurumu" runat="server"></asp:Label></td>
                                                <td>
                                                    <asp:Label ID="pasif" runat="server" Visible="false"><a href="/panel/kapasite-ekle?pasif=tamam&kapasite_id=<%#Eval("kapasite_id") %>" class="btn btn-warning btn-sm" style="height: 25px; font-size: 10px"><i class="icon-check icon-1x mr-2"></i>Pasif Yap</a></asp:Label>
                                                    <asp:Label ID="aktif" runat="server" Visible="false"><a href="/panel/kapasite-ekle?aktif=tamam&kapasite_id=<%#Eval("kapasite_id") %>" class="btn btn-success btn-sm" style="height: 25px; font-size: 10px"><i class="icon-check icon-1x mr-2"></i>Aktif Yap</a></asp:Label>

                                                    <a href="kapasite-ekle?kapasite_edit=<%#Eval("kapasite_id") %>" class="btn btn-primary btn-sm mr-4" style="height: 25px; font-size: 10px"><i class="icon-pen icon-1x mr-2"></i>Düzenle</a>
                                                    <asp:Label ID="KapasiteSilme" runat="server"><a href="#" class="btn btn-danger btn-sm"  style="height: 25px; font-size: 10px" data-toggle="modal" data-target="#kapasite<%#Eval("kapasite_id") %>"><i class="icon-trash icon-1x mr-2" ></i>Sil</a></asp:Label>

                                                    <div class="modal fade" id="kapasite<%#Eval("kapasite_id") %>" role="dialog" aria-labelledby="defaultModalLabel" aria-hidden="true">
                                                        <div class="modal-dialog">
                                                            <div class="modal-content">
                                                                <div class="modal-header">
                                                                    <h4 class="modal-title" id="defaultModalLabel"><%#Eval("urun_kapasite_adi") %> Silme İşlemi</h4>
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
                                                                    <a href="kapasite-ekle?silme=tamam&kapasite_sil=<%#Eval("kapasite_id") %>" class="btn btn-light">Sil</a>
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
        <div class="row" runat="server" id="Tip_Ekleme" visible="false">
            <div class="col-lg-6">
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
                                    <button class="btn btn-primary btn-sm float-right" runat="server" id="TipGuncelle" onserverclick="TipGuncelle_ServerClick" visible="false"><i class="icon-upload10 mr-2"></i>Güncelle</button>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <div class="col-lg-6">
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
                                                    <asp:Label ID="TipId" runat="server" Text='<%#Eval("tip_id") %>' Visible="false"></asp:Label><%#Eval("urun_tip_adi") %></td>
                                                <td>
                                                    <asp:Label ID="TipDurumu" runat="server"></asp:Label></td>
                                                <td>
                                                    <asp:Label ID="pasif" runat="server" Visible="false"><a href="/panel/tip-ekle?pasif=tamam&tip_id=<%#Eval("tip_id") %>" class="btn btn-warning btn-sm" style="height: 25px; font-size: 10px"><i class="icon-check icon-1x mr-2"></i>Pasif Yap</a></asp:Label>
                                                    <asp:Label ID="aktif" runat="server" Visible="false"><a href="/panel/tip-ekle?aktif=tamam&tip_id=<%#Eval("tip_id") %>" class="btn btn-success btn-sm" style="height: 25px; font-size: 10px"><i class="icon-check icon-1x mr-2"></i>Aktif Yap</a></asp:Label>
                                                    <a href="tip-ekle?tip_edit=<%#Eval("tip_id") %>" class="btn btn-primary btn-sm mr-4" style="height: 25px; font-size: 10px"><i class="icon-pen icon-1x mr-2"></i>Düzenle</a>
                                                    <asp:Label ID="TipSilme" runat="server"><a href="#" class="btn btn-danger btn-sm"  style="height: 25px; font-size: 10px" data-toggle="modal" data-target="#tip<%#Eval("tip_id") %>"><i class="icon-trash icon-1x mr-2" ></i>Sil</a></asp:Label>

                                                    <div class="modal fade" id="tip<%#Eval("tip_id") %>" role="dialog" aria-labelledby="defaultModalLabel" aria-hidden="true">
                                                        <div class="modal-dialog">
                                                            <div class="modal-content">
                                                                <div class="modal-header">
                                                                    <h4 class="modal-title" id="defaultModalLabel"><%#Eval("urun_tip_adi") %> Silme İşlemi</h4>
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
                                                                    <a href="tip-ekle?silme=tamam&tip_sil=<%#Eval("tip_id") %>" class="btn btn-light">Sil</a>
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
