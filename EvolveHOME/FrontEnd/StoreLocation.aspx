<%@ Page Title="" Language="C#" MasterPageFile="~/StylePage.master" AutoEventWireup="true" CodeBehind="StoreLocation.aspx.cs" Inherits="FrontEnd.StoreLocation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style>
      /* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
      #map {
        height: 500px;
        width: 50%;
        text-align:center;
      }

</style>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBXfWaCnv-ldNEMD-LZlFstWmgijo6C0A0&libraries=places"></script>
<script src="js/maps.js"></script>
<div id="map"></div>

<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBXfWaCnv-ldNEMD-LZlFstWmgijo6C0A0&libraries=places&callback=initMap" async defer></script>
</asp:Content>
