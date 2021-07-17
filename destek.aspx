<%@ Page Title="" Language="C#" MasterPageFile="~/front.master" AutoEventWireup="true" CodeBehind="destek.aspx.cs" Inherits="ModernProje.destek" %>

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
                padding: 9px 8px;
                color: #808080;
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
            width: 385px;
            overflow-x: auto;
            white-space: nowrap;
            padding: 10px;
            box-shadow: 0.1px 0.1px 1px 0.001px
        }
    </style>

    <script>
        document.addEventListener("DOMContentLoaded", function (event) {


            var acc = document.getElementsByClassName("accordion");
            var panel = document.getElementsByClassName('panel');

            for (var i = 0; i < acc.length; i++) {
                acc[i].onclick = function () {
                    var setClasses = !this.classList.contains('active');
                    setClass(acc, 'active', 'remove');
                    setClass(panel, 'show', 'remove');

                    if (setClasses) {
                        this.classList.toggle("active");
                        this.nextElementSibling.classList.toggle("show");
                    }
                }
            }

            function setClass(els, className, fnName) {
                for (var i = 0; i < els.length; i++) {
                    els[i].classList[fnName](className);
                }
            }

        });
    </script>

    <style>
        p.accordion {
            background-color: #eee;
            color: #444;
            cursor: pointer;
            padding: 10px;
            width: 100%;
            text-align: left;
            border: none;
            outline: none;
            transition: 0.4s;
            margin-bottom: -5px;
        }

            p.accordion.active, p.accordion:hover {
                background-color: #0088cc;
                color:white;
            }

            p.accordion:after {
                content: '\2795';
                font-size: 12px;
                color: #777;
                float: right;
                margin-left: 5px;
            }

            p.accordion.active:after {
                content: "\2796";
            }


        div.panel {
            padding: 0 18px;
            background-color: white;
            max-height: 0;
            overflow: hidden;
            transition: 0.4s ease-in-out;
            opacity: 0;
            
        }

            div.panel.show {
                opacity: 1;
                max-height: 800px; 
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div style="height: 10px"></div>

    <div class="container py-2">
        <div class="row mt-5">
            <div class="col">
                <div class="row">
                    <div class="col-lg-3">
                        <div class="tabs tabs-vertical tabs-right tabs-navigation tabs-navigation-simple sidebar" id="sidebar" data-plugin-sticky data-plugin-options="{'minWidth': 991, 'containerSelector': '.container', 'padding': {'top': 110}}">
                            <ul class="nav nav-tabs col-sm-3">
                                <li class="nav-item" runat="server" id="sssliactive"><a class="nav-link" href="/sss">SSS</a></li>

                                <asp:Repeater ID="MenuRepet" runat="server">
                                    <ItemTemplate>
                                        <asp:Label ID="MenuKodu" runat="server" Text='<%#Eval("menu_kodu") %>' Visible="false"></asp:Label>
                                        <asp:Label ID="MenuLink" runat="server" Text='<%#Eval("menu_linki") %>' Visible="false"></asp:Label>
                                        <li id='navmenus' runat="server">
                                            <a class="nav-link" href="/destek/<%#Eval("menu_kodu") %>/<%#Eval("menu_linki") %>"><%#Eval("menu_adi") %></a>
                                        </li>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                        </div>
                    </div>


                    <div class="col-lg-9">
                        <div role="main" class="main" runat="server" id="ssslisteleri" visible="false">
                            <div class="content">
                                <div class="row" style="font-size: 12px;">
                                    <asp:Repeater ID="ssslist" runat="server">
                                        <ItemTemplate>
                                            <div class="col-lg-12 mb-4 mb-lg-0  pb-2">
                                                <p class="accordion" style="font-size:12px"><%#Eval("ss_sirasi") %>. <%#Eval("sss_adi") %></p>
                                                <div class="panel">
                                                    <br />
                                                    <%#Eval("sss_icerik") %>
                                                    <br />
                                                </div>
                                            </div>
                                            <br />
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </div>
                            </div>
                        </div>

                        <div role="main" class="main" runat="server" id="IcerikListesi" visible="false">
                            <div class="content">
                                <div class="row" style="font-size: 11px;">
                                    <asp:Repeater ID="IcerikListe" runat="server">
                                        <ItemTemplate>
                                            <div class="col-lg-4 pb-4" style="font-size: 12px;">
                                                <a href="/destek/<%#Eval("destek_linki_kodu") %>/<%#Eval("destek_linki") %>/<%#Eval("destek_id") %>/<%#Eval("destek_icerik_linki") %>" style="text-decoration: none">
                                                    <img src="/<%#Eval("destek_resmi") %>" class="img-fluid" /></a>
                                                <div class="card">
                                                    <div class="card-body" style="height: 100px">
                                                        <a href="tanitim-filimleri?video_id=<%#Eval("destek_id") %>" style="text-decoration: none">
                                                            <div style="text-transform: capitalize">
                                                                <a href="/destek/<%#Eval("destek_linki_kodu") %>/<%#Eval("destek_linki") %>/<%#Eval("destek_id") %>/<%#Eval("destek_icerik_linki") %>" style="text-decoration: none">
                                                                    <h4><b><%#Eval("destek_adi") %></b></h4>
                                                                </a>
                                                            </div>
                                                        </a>
                                                        <div style="font-size: 10px; margin-top: -13px"><%#Eval("destek_linki_adi") %> / <%#Eval("destek_adi") %></div>
                                                    </div>
                                                    <div class="card-footer">
                                                        <div class="row">
                                                            <div class="col-lg-6">
                                                                <a href="/destek/<%#Eval("destek_linki_kodu") %>/<%#Eval("destek_linki") %>/<%#Eval("destek_id") %>/<%#Eval("destek_icerik_linki") %>" style="text-decoration: none"></i><asp:Label ID="IcerikAdi" runat="server"></asp:Label></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </div>
                            </div>
                        </div>

                        <div role="main" class="main" runat="server" id="IcerikDetay" visible="false">
                            <div class="container">
                                <asp:Repeater ID="IcerikDetaylari" runat="server">
                                    <ItemTemplate>
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <div class="video-container">
                                                    <img src="/<%#Eval("destek_resmi") %>" class="img-fluid" />
                                                </div>
                                                <div>
                                                    <h4 class="text-color-dark font-weight-bold mb-0 pt-4 mt-0"><%#Eval("destek_adi") %></h4>
                                                    <p style="font-size: 12px; color: #808080"><%#Eval("destek_konusu") %></p>
                                                </div>
                                                <p><%#Eval("destek_icerigi") %></p>
                                                <hr>
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
    </div>
    <div style="height: 200px"></div>

</asp:Content>
