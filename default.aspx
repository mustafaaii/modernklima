<%@ Page Title="" Language="C#" MasterPageFile="~/front.master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="ModernProje._default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script>
        $(document).ready(function () {
            $("div.carousel-item:first").addClass("active");
        });
    </script>



    <style>
        @media screen and (max-width: 500px) 
        {
            .mobiletabs 
            {
                display: block;
            }
        }

        @media screen and (min-width: 600px) 
        {
            .mobiletabs 
            {
                display: none;
            }
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner" role="listbox">
            <asp:Repeater ID="SlideRepet" runat="server">
                <ItemTemplate>
                    <div class='<%# Container.ItemIndex == 0 ? "carousel-item active" : "carousel-item" %>'>
                        <img class="d-block img-fluid" src="<%#Eval("slide_resim") %>" alt="First slide">
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>

        <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>

    <div class=" pt-5 pb-5 mobiletabs">
        <div class="container py-2">
            <div class="row">
                <div class="col-lg-12 col-12">
                    <div class="card border-radius-0" style="box-shadow: 0.1px 0.1px 1px 0.001px">
                        <img src="img/roomair.jpg" class="img-fluid" />
                        <div class="card-body">
                            <div style="text-transform: capitalize; font-size: 16px; font-weight: 600; text-align: justify">Ürünlerimiz</div>
                            <p style="text-transform: capitalize; font-size: 12px; font-weight: 500; text-align: justify; padding-top: 10px">
                                Dört Mevsim, Yüzlerce Ürünle, Her Sektörde Her Kategoride Ürünlerimiz Sizin İçin Burada.Modern Teknoloji Ürünlerimizi İnceleyin.Her Alanda Klima Ürünlerimiz ile Dört mevsim Dört Dörtlük Performans ile Çalışmaya Devam Ediyoruz.
                            </p>
                            <button class="btn btn-primary btn-xs border-radius-0" id="urunlersayfasi" runat="server" onserverclick="urunlersayfasi_ServerClick">Ürünlerimizi İnceleyin</button>
                        </div>
                    </div>
                </div>
                <div class="col-lg-1 col-1"></div>
            </div>
        </div>
        <div class="container py-2">
            <div class="row">
                <div class="col-lg-12 col-12">
                    <div class="card border-radius-0" style="box-shadow: 0.1px 0.1px 1px 0.001px">
                        <img src="img/servissaticiresim.jpg" class="img-fluid" />
                        <div class="card-body">
                            <div style="text-transform: capitalize; font-size: 18px; font-weight: 600; text-align: justify">Yetkili Servis Satıcılarımız</div>
                            <p style="text-transform: capitalize; font-size: 12px; font-weight: 500; text-align: justify">Her il'de , Her ilçe'de ürünlerimiz için alanında uzman yetkili bayilerimiz ile ürünlerimizin satışını satışından sonra yaşanabilecek teknik problemler için servislerimiz ile dört mevsim kesintisiz hizmet vermeye devam ediyoruz.</p>
                            <button class="btn btn-primary btn-xs border-radius-0" id="yetkiliservislerimiz" runat="server" onserverclick="yetkiliservislerimiz_ServerClick" >Servis & Satıcılarımız</button>
                        </div>
                    </div>
                </div>
                <div class="col-lg-1 col-1"></div>
            </div>
        </div>
    </div>

</asp:Content>
