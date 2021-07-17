<%@ Page Title="" Language="C#" MasterPageFile="~/front.master" AutoEventWireup="true" CodeBehind="guncel.aspx.cs" Inherits="ModernProje.guncel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div style="height: 50px"></div>
    <div class="container py-2">
        <div role="main" class="main" runat="server" id="HaberListesi" visible="false">
            <section class=" m-0 pb-3">
                <div class="container container-lg">
                    <div class="row pb-1">
                        <asp:Repeater ID="HaberListele" runat="server">
                            <ItemTemplate>
                                <div class="col-sm-6 col-lg-4 mb-4 pb-2">
                                    <a href="haberler?haber_id=<%#Eval("haber_id") %>"  style="text-decoration:none">
                                        <article>
                                            <div class="thumb-info thumb-info-no-borders thumb-info-bottom-info border-radius-0">

                                                <div class="card">
                                                    <div class="card-body">
                                                        <div class="thumb-info-wrapper thumb-info-wrapper-opacity-6" style="height: 200px">
                                                            <img src="<%#Eval("haber_resim") %>" class="img-fluid">
                                                        </div>

                                                        <div class="thumb-info-inner mt-1">
                                                            <div class="thumb-info-type bg-color-primary px-2 mb-1" style="color:white"><%#Eval("haber_konusu") %></div>
                                                        </div>
                                                        <div class="thumb-info-inner mt-1">
                                                            <h2 class="line-height-2 text-4 font-weight-bold mb-0 text-decoration-none"><%#Eval("haber_baslik") %></h2>
                                                        </div>
                                                    </div>
                                                </div>

                                            </div>
                                        </article>
                                    </a>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
            </section>
        </div>
        <div role="main" class="main" runat="server" id="HaberDetay" visible="false">
            <div class="row">
                <div class="col-lg-3">
                    <div class="sidebar sidebar-light bg-transparent sidebar-component sidebar-component-right border-0 shadow-0 order-1 order-md-2 sidebar-expand-md">
                        <div class="card">
                            <div class="pt-3"></div>
                            <section class=" m-0 pb-3">
                                <div class="container container-lg">
                                    <div class="pt-3"></div>
                                    <div>
                                        <b class="pb-2" style="text-align: justify; line-height: 16px">Enson Eklenenler Haberler ve Daha Fazlası</b>
                                        <p style="font-size: 13px; color: #808080; text-align: justify; line-height: 18px">Modern Klima teknolojilerinde yaşanan teknolojik gelişmelere yeni gündem maddelerin ve içeriklerden haberdar olabilirsiniz.</p>
                                        <div class="mw-100">
                                            <div class="input-group">
                                                <input class="form-control border-radius-0" placeholder="Mail Adresiniz..." name="newsletterEmail" id="newsletterEmail" type="text">
                                                <span class="input-group-append">
                                                    <button class="btn btn-primary border-radius-0 btn-sm" type="submit"><strong>Abone Ol !</strong></button>
                                                </span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="pb-4 pt-4">
                                        <img src="img/ads.jpg" class="img-fluid" />
                                    </div>
                                    <div class="pt-3"></div>
                                    <div class="row pb-1">
                                        <asp:Repeater ID="NavbarHaber" runat="server">
                                            <ItemTemplate>
                                                <div class="col-sm-6 col-lg-12 mb-4">
                                                    <a href="haberler?haber_id=<%#Eval("haber_id") %>">
                                                        <article>
                                                            <div class="thumb-info thumb-info-no-borders thumb-info-bottom-info thumb-info-bottom-info-dark thumb-info-bottom-info-show-more thumb-info-no-zoom border-radius-0">
                                                                <div class="thumb-info-wrapper thumb-info-wrapper-opacity-6" style="height: 130px">
                                                                    <img src="<%#Eval("haber_resim") %>" class="img-fluid" alt="How To Take Better Concert Pictures in 30 Seconds">
                                                                    <div class="thumb-info-title bg-transparent p-4">
                                                                        <div class="thumb-info-type" style="font-size: 10px; text-transform: capitalize"><%#Eval("haber_konusu") %></div>
                                                                        <div class="thumb-info-inner">
                                                                            <h2 class="text-color-light line-height-2 text-2 font-weight-bold mb-0"><%#Eval("haber_baslik") %></h2>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </article>
                                                    </a>
                                                </div>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </div>
                                </div>
                            </section>
                        </div>
                    </div>



                </div>
                <div class="col-lg-9">
                    <div class="container">
                        <asp:Repeater ID="HaberDetaylari" runat="server">
                            <ItemTemplate>
                                <div class="single-post">
                                    <article class="post post-large blog-single-post m-0">
                                        <div class="post-image ml-0">
                                            <a href="#">
                                                <img src="<%#Eval("haber_resim") %>" class="img-fluid rounded-0" alt="" />
                                            </a>
                                        </div>
                                        <div class="post-date ml-0">
                                            <span class="day"><%#Eval("haber_ay_sayi") %></span>
                                            <span class="month"><%#Eval("haber_ay_yazi") %></span>
                                        </div>
                                        <div class="post-content ml-0">
                                            <h2 class="font-weight-bold"><a href="blog-post.html"><%#Eval("haber_baslik") %></a></h2>
                                            <div class="post-meta"><span><i class="far fa-folder"></i><%#Eval("haber_konusu") %></span></div>
                                            <div><%#Eval("haber_icerik") %></div>
                                        </div>
                                    </article>
                                </div>

                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div style="height: 200px"></div>

</asp:Content>


