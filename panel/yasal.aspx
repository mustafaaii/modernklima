<%@ Page Title="" Language="C#" MasterPageFile="~/panel/panel.master" AutoEventWireup="true" CodeBehind="yasal.aspx.cs" Inherits="ModernProje.panel.yasal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      <div class="content">

        <div class="card">
            <div class="card-body">
                <div class="row">
                    <div class="col-lg-12">
                        <a href="/panel/yasal" class="btn btn-outline-primary  btn-sm" runat="server" id="YasalDiv" style="border-radius: 0px"><i class="icon-list mr-1"></i>KVKK Metni</a>
                      </div>
                </div>
            </div>
        </div>

        <asp:Label ID="Uyari" runat="server"></asp:Label>
        <div class="row" runat="server" id="Yasal" visible="false">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <asp:TextBox ID="KvkkBaslik" CssClass="form-control" runat="server" placeholder="Başlık" Style="border-radius: 0px"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <textarea id="KvkkIcerik" rows="4" cols="4" class="ckeditor" runat="server"></textarea>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <button class="btn btn-primary btn-sm" id="KvkkKaydet" runat="server" onserverclick="KvkkKaydet_ServerClick" >Kaydet</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
      
      

   

    </div>


</asp:Content>
