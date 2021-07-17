<%@ Page Title="" Language="C#" MasterPageFile="~/login/login.master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="ModernProje.login.login1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="content d-flex justify-content-center align-items-center">
        <div class="login-form">
            <div class="card mb-0"  style="background-color:#293a50">
                <div class="card-body">
                    <div class="text-center mb-3">
                        <img src="../img/logo/modernlogoicon.png" height="80" class="pb-2" />
                        <h5 class="mb-0 text-white"><b>Modern Teknoloji</b></h5>
                        <span class="d-block text-white">Dört Mevsim Yanınızda</span>
                    </div>
                    <asp:Label ID="Uyari" runat="server"></asp:Label>
                     <br />
                    <div class="form-group form-group-feedback form-group-feedback-left">
                        <asp:TextBox ID="MailAdres" runat="server"  class="form-control" placeholder="Mail Adresiniz"></asp:TextBox>
                        <div class="form-control-feedback">
                            <i class="icon-user text-muted"></i>
                        </div>
                    </div>
                    <div class="form-group form-group-feedback form-group-feedback-left">
                        <asp:TextBox id="Sifre" runat="server" class="form-control border-0" placeholder="Şifreniz" TextMode="Password"></asp:TextBox>
                        <div class="form-control-feedback">
                            <i class="icon-lock2 text-muted"></i>
                        </div>
                    </div>
                   
                    <div class="form-group">
                        <button type="submit" class="btn bg-primary btn-block" runat="server" id="GirisYap" onserverclick="GirisYap_ServerClick">Giriş Yap<i class="icon-circle-right2 ml-2"></i></button>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="UserControl" runat="server" ></asp:Label>
                        </div>

                    <div class="form-group text-center">
                        <a href="#" runat="server" id="FacebookKimlik" class="btn btn-outline bg-indigo border-white text-white btn-icon rounded-round border-2"><i class="icon-facebook"></i></a>
                        <a href="#" runat="server" id="InstagramKimlik" class="btn btn-outline bg-danger-700 border-white text-white btn-icon rounded-round border-2 ml-2"><i class="icon-instagram"></i></a>
                        <a href="#" runat="server" id="TwitterKimlik" class="btn btn-outline bg-info border-white text-white btn-icon rounded-round border-2 ml-2"><i class="icon-twitter"></i></a>
                    </div>
                
                    
                    <span class="form-text text-center text-muted">Sitede <a href="#">çerez politikası</a> uygulanır. Bilgileriniz bilgsayar üzerinde Harddiskinizde ve tarayıcınızda depolanır</span>
                </div>
            </div>
        </div>
    </div>


</asp:Content>
