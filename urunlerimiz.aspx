<%@ Page Title="" Language="C#" MasterPageFile="~/front.master" AutoEventWireup="true" CodeBehind="urunlerimiz.aspx.cs" Inherits="ModernProje.urunlerimiz" %>

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
    <script>
        $(function () {
            var ct = $('#text'),
                cboxes = $('input[type="checkbox"]', ct),
                lastChecked = null;

            cboxes.click(function () {
                if (!lastChecked || this == lastChecked) {
                    lastChecked = this;
                }

                var _current = $(this),
                    _last = $(lastChecked),
                    cindex = cboxes.index(_current),
                    lindex = cboxes.index(_last),
                    t = null;

                //next
                if (cindex >= lindex) {
                    t = $(cboxes[cindex + 1]);
                    if (t) ct.animate({ scrollTop: ct.scrollTop() + t.height() * 9.5 }, 500);

                    //prev
                } else if (cindex < lindex) {
                    t = $(cboxes[cindex - 1]);
                    if (t) ct.animate({ scrollTop: ct.scrollTop() - t.height() * 1.5 }, 500);
                }

                lastChecked = this;
            });
        });
    </script>
    <style>
        /* Style the tab */
        .tab {
            overflow: hidden;
            background-color: #fff;
            height: 40px;
            border: 1px solid rgba(0, 0, 0, 0.06);
            border: none;
        }

            .tab a {
                background-color: inherit;
                float: left;
                border: none;
                outline: none;
                cursor: pointer;
                padding: 7px 16px;
                transition: 0.3s;
                font-size: 14px;
                text-decoration: none;
                color: #000000;
                width: 180px;
            }

                .tab a:hover {
                    background-color: #0088cc !important;
                    color: #fff;
                }

                .tab a.active {
                    background-color: #0088cc !important;
                    color: #fff;
                }

        .tabcontent {
            display: none;
            padding: 6px 12px;
            border: 1px solid #ccc;
        }

        @media screen and (max-width: 480px) {
            .centerimage {
                display: block;
                margin-left: auto;
                margin-right: auto;
                width: 80%;
                padding-top: 30px;
            }

            .imagesize {
                height: 300px;
            }

            .mobilenav {
                display: block;
            }

            .destoknav {
                display: none;
            }

            .mobiletable {
                width: 345px;
                overflow-x: auto;
                white-space: nowrap;
                padding: 10px;
                box-shadow: 0.1px 0.1px 1px 0.001px
            }
        }

        @media screen and (min-width: 1220px) {
            .centerimage {
                display: block;
                margin-left: auto;
                margin-right: auto;
                width: 40%;
                padding-top: 30px;
            }

            .imagesize {
                height: 600px;
            }

            .mobilenav {
                display: none;
            }

            .destoknav {
                display: block;
            }
        }
    </style>



    <script type="text/javascript">
        function SetUniqueRadioButton(match, current) {
            re = new RegExp(match);
            for (i = 0; i < document.forms[0].elements.length; i++) {
                elm = document.forms[0].elements[i]
                if (elm.type == "radio"
                    && elm.checked) {
                    elm.checked = false;
                }
            }
            current.checked = true;
        }
    </script>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <asp:Label ID="MarkaSay" runat="server" Visible="false"></asp:Label>
    <asp:Label ID="GrupSay" runat="server" Visible="false"></asp:Label>
    <asp:Label ID="TurSay" runat="server" Visible="false"></asp:Label>
    <asp:Label ID="TipSay" runat="server" Visible="false"></asp:Label>
    <asp:Label ID="KapasiteSay" runat="server" Visible="false"></asp:Label>
    <asp:Label ID="CinsSay" runat="server" Visible="false"></asp:Label>

    <div style="height: 10px"></div>

    <div class="container py-2">
        <div class="row mt-5">
            <div class="col">
                <div class="row">
                    <div class="col-lg-12">
                        <asp:Label ID="IdTasi" runat="server" Visible="false"></asp:Label>
                    </div>
                    <div class="col-lg-3">
                        <div class="sidebar sidebar-light bg-transparent sidebar-component sidebar-component-right border-0 shadow-0 order-1 order-md-2 sidebar-expand-md">
                            <div class="card">
                                <div class="card-filter-body">
                                    <div class="inputWithIcon border">
                                        <i class="fa fa-search fa-lg fa-fw" aria-hidden="true"></i>
                                        <asp:TextBox ID="UrunAra" runat="server" MaxLength="100" Style="height: 35px; border-radius: 0px" class="form-control border-0" name="name" placeholder="Ürün Ara..." AutoPostBack="true" OnTextChanged="UrunAra_TextChanged"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="card-filter-body">
                                    <div class="form-group">

                                        <div id="MarkaDiv" runat="server" visible="false">
                                            <div class="font-size-xs text-uppercase text-muted mb-0" style="font-size: 10px">MARKA</div>
                                            <asp:Repeater ID="MarkaRepet" runat="server">
                                                <ItemTemplate>
                                                    <div class="form-check">
                                                        <asp:Label ID="MarkaId" runat="server" Text='<%#Eval("marka_id") %>' Visible="false"></asp:Label>
                                                        <asp:Label ID="MarkaKodu" runat="server" Text='<%#Eval("urun_marka_kodu") %>' Visible="false"></asp:Label>
                                                        <label class="form-check-label" style="font-size: 13px">
                                                            <input type="checkbox" id="MarkaCheck" runat="server" onserverchange="MarkaCheck_ServerChange" onclick="javascript: form1.submit();" class="form-input-styled mr-5"><label class="mr-3"></label><%#Eval("urun_marka_adi") %>
                                                        </label>
                                                    </div>
                                                </ItemTemplate>
                                            </asp:Repeater>
                                            <div class="pt-4"></div>
                                        </div>


                                        <div id="GrupDiv" runat="server">
                                            <div class="font-size-xs text-uppercase text-muted mb-0" style="font-size: 10px">GRUP</div>
                                            <asp:Repeater ID="GrupRepet" runat="server">
                                                <ItemTemplate>
                                                    <div class="form-check">
                                                        <asp:Label ID="GrupId" runat="server" Text='<%#Eval("grup_id") %>' Visible="false"></asp:Label>
                                                        <asp:Label ID="GrupKodu" runat="server" Text='<%#Eval("urun_grup_kodu") %>' Visible="false"></asp:Label>
                                                        <label class="form-check-label" style="font-size: 13px">
                                                            <input type="radio" id="GrupCheck" runat="server" onserverchange="GrupCheck_ServerChange" value='<%#Eval("urun_grup_kodu") %>' onclick="javascript: form1.submit();" class="form-input-styled mr-5"><label class="mr-3"></label><%#Eval("urun_grup_adi") %>
                                                        </label>
                                                    </div>
                                                </ItemTemplate>
                                            </asp:Repeater>
                                            <div class="pt-4"></div>
                                        </div>



                                        <div id="TipDIV" runat="server">
                                            <div class="font-size-xs text-uppercase text-muted mb-0" style="font-size: 10px">TİP</div>
                                            <asp:Repeater ID="TipRepet" runat="server">
                                                <ItemTemplate>
                                                    <div class="form-check">
                                                        <asp:Label ID="TipId" runat="server" Text='<%#Eval("tip_id") %>' Visible="false"></asp:Label>
                                                        <asp:Label ID="TipKodu" runat="server" Text='<%#Eval("urun_tip_kodu") %>' Visible="false"></asp:Label>
                                                        <label class="form-check-label" style="font-size: 13px">
                                                            <input type="radio" id="TipCheck" name="tip" runat="server" onserverchange="TipCheck_ServerChange" value='<%#Eval("urun_tip_kodu") %>' onclick="javascript: form1.submit();" class="form-input-styled mr-5"><label class="mr-3"></label><%#Eval("urun_tip_adi") %>
                                                        </label>
                                                    </div>
                                                </ItemTemplate>
                                            </asp:Repeater>
                                            <div class="pt-4"></div>
                                        </div>

                                        <div id="TurDIV" runat="server">
                                            <div class="font-size-xs text-uppercase text-muted mb-0" style="font-size: 10px">TÜR</div>
                                            <asp:Repeater ID="TurRepet" runat="server">
                                                <ItemTemplate>
                                                    <div class="form-check">
                                                        <asp:Label ID="TurId" runat="server" Text='<%#Eval("tur_id") %>' Visible="false"></asp:Label>
                                                        <asp:Label ID="TurKodu" runat="server" Text='<%#Eval("urun_tur_kodu") %>' Visible="false"></asp:Label>
                                                        <label class="form-check-label" style="font-size: 13px">
                                                            <input type="radio" id="TurCheck" runat="server" onserverchange="TurCheck_ServerChange" value='<%#Eval("urun_tur_kodu") %>' onclick="javascript: form1.submit();" class="form-input-styled mr-5"><label class="mr-3"></label><%#Eval("urun_tur_adi") %>
                                                        </label>
                                                    </div>
                                                </ItemTemplate>
                                            </asp:Repeater>
                                            <div class="pt-4"></div>
                                        </div>


                                        <div id="CinsDIV" runat="server" visible="false">
                                            <div class="font-size-xs text-uppercase text-muted mb-0" style="font-size: 10px">CİNS</div>
                                            <asp:Repeater ID="CinsRepet" runat="server">
                                                <ItemTemplate>
                                                    <div class="form-check">
                                                        <asp:Label ID="CinsId" runat="server" Text='<%#Eval("cins_id") %>' Visible="false"></asp:Label>
                                                        <asp:Label ID="CinsKodu" runat="server" Text='<%#Eval("urun_cins_kodu") %>' Visible="false"></asp:Label>
                                                        <label class="form-check-label" style="font-size: 13px">
                                                            <input type="radio" id="CinsCheck" runat="server" onserverchange="CinsCheck_ServerChange" value='<%#Eval("urun_cins_kodu") %>' onclick="javascript: form1.submit();" class="form-input-styled mr-5"><label class="mr-3"></label><%#Eval("urun_cins_adi") %>
                                                        </label>
                                                    </div>
                                                </ItemTemplate>
                                            </asp:Repeater>
                                            <div class="pt-4"></div>
                                        </div>


                                        <div id="KapasiteDIV" runat="server" visible="false">
                                            <div class="font-size-xs text-uppercase text-muted mb-0" style="font-size: 10px">KAPASİTE</div>
                                            <asp:Repeater ID="KapasiteRepet" runat="server">
                                                <ItemTemplate>
                                                    <div class="form-check">
                                                        <asp:Label ID="KapsiteId" runat="server" Text='<%#Eval("kapasite_id") %>' Visible="false"></asp:Label>
                                                        <asp:Label ID="KapasiteKodu" runat="server" Text='<%#Eval("urun_kapasite_kodu") %>' Visible="false"></asp:Label>
                                                        <label class="form-check-label" style="font-size: 13px">
                                                            <input type="radio" id="KapasiteCheck" runat="server" onserverchange="KapasiteCheck_ServerChange" value='<%#Eval("urun_kapasite_kodu") %>' onclick="javascript: form1.submit();" class="form-input-styled mr-5"><label class="mr-3"></label><%#Eval("urun_kapasite_adi") %>
                                                        </label>
                                                    </div>
                                                </ItemTemplate>
                                            </asp:Repeater>
                                            <div class="pt-4"></div>
                                        </div>

                                        <div class=" pt-4">
                                            <button class="btn btn-primary btn-sm btn-block border-radius-0" id="FilitreReset" runat="server" onserverclick="FilitreReset_ServerClick"><i class="note-icon-redo mr-2"></i>Filtreyi Sıfırla</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-9">
                        <div id="UrunListesi" runat="server">
                            <div class="row">
                                <asp:Repeater ID="UrunListele" runat="server">
                                    <ItemTemplate>
                                        <div class="col-xl-4 col-sm-3 pb-4" style="font-size: 12px; text-decoration: none">
                                            <div class="card border-radius-0" style="box-shadow: 0.1px 0.1px 1px 0.001px">
                                                <div class="pb-0" style="padding: 10px;">
                                                    <div style="border: 0.9px solid  #efefef">
                                                        <a href="/urunlerimiz/<%# String.Format("{0}/{1}",Eval("urun_id"),urlolustur(Eval("urun_adi").ToString())) %>">
                                                            <img src="/<%#Eval("urun_resim") %>" class="card-img" alt="">
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="card-body  bg-light text-center">
                                                    <div class="mb-3">
                                                        <h6 class="font-weight-semibold mb-0">
                                                            <a href="/urunlerimiz/<%# String.Format("{0}/{1}",Eval("urun_id"),urlolustur(Eval("urun_adi").ToString())) %>" style="text-decoration: none"><%#Eval("urun_adi") %></a>
                                                        </h6>
                                                        <div class="text-muted"><%#Eval("urun_marka_adi") %></div>
                                                    </div>
                                                    <a href="/urunlerimiz/<%# String.Format("{0}/{1}",Eval("urun_id"),urlolustur(Eval("urun_adi").ToString())) %>" class="btn btn-primary btn-sm border-radius-0"><i class="icon-eye mr-2"></i>Ürünü İncele</a>
                                                </div>
                                                <div class="card-footer">
                                                    <div class="row">
                                                        <div class="col-lg-12 float-right">
                                                             <asp:Label ID="fiyatgoster" runat="server">Montaj Dahil <%#Eval("urun_fiyati") %><asp:Label ID="fiyati" runat="server" Text='<%#Eval("urun_fiyati") %>' Visible="false"></asp:Label>&#x20BA;</asp:Label>&nbsp;

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </ItemTemplate>
                                </asp:Repeater>
                                <div class="col-lg-12 pt-5"></div>
                                <div class="col-lg-12 pt-5"></div>
                                <div class="col-lg-12 pt-5"></div>
                                <div class="col-lg-2"></div>
                                <div class="col-lg-8 pt-5">
                                    <asp:Label ID="Uyari" runat="server" Visible="false">
                                        <p class="text-center pb-2">Aradığınız kriterlere göre ürün bulunamadı. Daha fazla bilgi almak için <a href="/iletisim-formu" target="_blank" ><b>Bize Ulaşın</b></a><br /><br />
                                        
                                        </p>
                                    </asp:Label>
                                </div>
                                <div class="col-lg-2"></div>

                            </div>
                            <div class="col-xl-12 col-sm-12 text-center">
                                <img src="/img/loadings.svg" height="100" id="Yukleyici" runat="server" visible="false" />
                            </div>
                            <div class="col-xl-12 col-sm-12 pb-4 text-center">
                                <button class="btn btn-primary btn-xs border-radius-0" runat="server" id="DahaCokUrun" onserverclick="DahaCokUrun_ServerClick">Daha Fazla Ürün Göster <i class="icon-cart"></i></button>
                            </div>
                        </div>
                        <div class="row" id="UrunDetay" runat="server" visible="false">
                            <div class="col-lg-6 col-12 pb-5 border-radius-0">
                                <div style="background: linear-gradient(to right, #0088cc 5%, #ffffff 95%); padding: 10px">
                                    <a href="/urunlerimiz">
                                        <h5 class="mb-0" style="color: #fff"><i class="icon-arrow-left52 mr-2"></i>LİSTEYE GERİ DÖN</h5>
                                    </a>
                                </div>
                            </div>
                            <div class="col-lg-12 col-12"></div>
                            <div class="col-lg-6 col-12 pb-2 border-radius-0" style="margin-top: -20px">

                                <div class="block block-slider">
                                    <ul class="home-slider kt-bxslider">
                                        <asp:Repeater ID="urunslider" runat="server">
                                            <ItemTemplate>
                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#imgid<%#Eval("urun_slide_id") %>">
                                                        <img src="/<%#Eval("urun_slide_resim") %>" alt="Slider" class="pull-left border-radius-0" />
                                                    </a>
                                                </li>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </ul>
                                </div>

                                <asp:Repeater ID="urunsliderzoom" runat="server">
                                    <ItemTemplate>
                                        <div class="modal fade" id="imgid<%#Eval("urun_slide_id") %>" role="dialog" tabindex="-1" aria-labelledby="defaultModalLabel" aria-hidden="true">
                                            <div class="modal-dialog centerimage">
                                                <img src="/<%#Eval("urun_slide_resim") %>" alt="Slider" class="pull-left imagesize">
                                            </div>
                                        </div>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </div>
                            <div class="col-lg-6 col-12">
                                <asp:Repeater ID="UrunDetaylari" runat="server">
                                    <ItemTemplate>
                                        <h4 class="mb-0"><%#Eval("urun_adi") %></h4>
                                        <h5 class="mb-0"><%#Eval("urun_marka_adi") %></h5>
                                        <p style="font-size: 12px">
                                            <asp:Label ID="GrupAdi" runat="server" Text='<%#Eval("urun_grup_adi") %>' Visible="false"></asp:Label><asp:Label ID="cizgi1" runat="server" Text=" / " Visible="true"></asp:Label>

                                            <asp:Label ID="CinsAdi" runat="server" Text='<%#Eval("urun_cins_adi") %>' Visible="false"></asp:Label><asp:Label ID="cizgi2" runat="server" Text=" / " Visible="false"></asp:Label>
                                            <asp:Label ID="TurAdi" runat="server" Text='<%#Eval("urun_tur_adi") %>' Visible="false"></asp:Label>
                                            <asp:Label ID="cizgi3" runat="server" Text=" / " Visible="false"></asp:Label>
                                            <asp:Label ID="TipAdi" runat="server" Text='<%#Eval("urun_tip_adi") %>' Visible="false"></asp:Label>
                                        </p>
                                        <b style="font-size: 22px;" id="FiyatKismi" runat="server">
                                            <div id="FiyatBirim" runat="server">
                                                <asp:Label ID="urunfiyati" runat="server" Text='<%#Eval("urun_fiyati") %>'></asp:Label>
                                                &#x20BA;
                                            </div>
                                        </b>
                                        <div class="pt-4" style="font-size: 12px; color: #000000; text-align: justify"><%#Eval("urun_kisa_aciklamasi") %></div>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </div>
                            <div class="col-lg-6 col-12 pb-3"></div>
                            <asp:Repeater ID="UrunDetaylarialtkisim" runat="server">
                                <ItemTemplate>
                                    <div class="col-lg-12 col-12">
                                        <%--MOBİL ACORDİON--%>
                                        <div class="toggle toggle-primary border-radius-0 mobilenav" data-plugin-toggle data-plugin-options="{ 'isAccordion': true }">
                                            <section class="toggle active">
                                                <label>Ürün Açıklaması</label>
                                                <div class="toggle-content">
                                                    <div class="mobiletable"><%#Eval("urun_aciklamasi") %></div>
                                                </div>
                                            </section>
                                            <section class="toggle">
                                                <label>Ürün Tablosu</label>
                                                <div class="toggle-content">
                                                    <div class="mobiletable"><%#Eval("urun_tablosu") %></div>
                                                </div>
                                            </section>
                                            
                                            <asp:Label ID="mobil" runat="server">
                                                <section class="toggle" id="DokumanTab" runat="server">
                                                    <a href="/pdf-read.aspx?urun_id=<%#Eval("urun_id") %>" target="_blank"><i class="fas fa-download mr-2"></i>Ürün Dökumanı</a>
                                                    <div class="toggle-content">
                                                    </div>
                                                </section>
                                            </asp:Label>
                                        </div>
                                        <%--MOBİL ACORDİON--%>
                                        <asp:Label ID="Label1" runat="server" Text='<%#Eval("urun_pdf") %>' Visible="false"></asp:Label>
                                        <%--DESTOP TABS--%>
                                        <div class="tabs destoknav">
                                            <div class="nav tabs tab border-radius-0" style="box-shadow: 0.1px 0.1px 1px 0.001px">
                                                <a class="tablinks active" href="#urunaciklamasi" data-toggle="tab">Ürün Açıklaması</a>
                                                <a class="tablinks " href="#uruntablosu" data-toggle="tab">Teknik Bilgiler</a>
                                                <asp:Label ID="desktop" runat="server">
                                                    <a class="tablinks " href="/pdf-read.aspx?urun_id=<%#Eval("urun_id") %>" target="_blank"><i class="fas fa-download mr-2"></i>Ürün Dökümanı</a>
                                                </asp:Label>
                                            </div>
                                            <br />
                                            <div class="tab-content " style="box-shadow: 0.1px 0.1px 1px 0.001px">
                                                <div class="tab-pane p-2 active" id="urunaciklamasi">
                                                    <p><%#Eval("urun_aciklamasi") %></p>
                                                </div>

                                                <div class="tab-pane " id="uruntablosu">
                                                    <%#Eval("urun_tablosu") %>
                                                </div>
                                            </div>
                                            <%--DESTOP TABS--%>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div style="height: 200px"></div>


</asp:Content>
