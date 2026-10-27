<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Dodavanje novog peciva.aspx.cs" Inherits="Pekara.Dodavanje_novog_peciva" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            width: 100vw;
            max-width: none;
            margin: 0;
        }
        .glass-form {
          --bg-color: rgba(255, 255, 255, 0.15);
          --highlight: rgba(255, 255, 255, 0.75);
          --text: #ffffff;
          --input-bg: rgba(255, 255, 255, 0.1);
          --input-border: rgba(255, 255, 255, 0.2);
          --input-focus: rgba(255, 255, 255, 0.3);
  
          position: relative;
          width: 500px;
          min-height: 450px;
          border-radius: 20px;
          overflow: hidden;
          box-shadow: 0 6px 24px rgba(0, 0, 0, 0.2);
        }

        .glass-filter,
        .glass-overlay,
        .glass-specular {
          position: absolute;
          inset: 0;
          border-radius: inherit;
        }

        .glass-filter {
          z-index: 1;
          backdrop-filter: blur(4px);
          filter: url(#glass-distortion) saturate(120%) brightness(1.2);
        }

        .glass-overlay {
          z-index: 2;
          background: var(--bg-color);
        }

        .glass-specular {
          z-index: 3;
          box-shadow: inset 1px 1px 1px var(--highlight);
        }

        .glass-content {
          position: relative;
          z-index: 4;
          padding: 30px;
          color: var(--text);
          height: 100%;
        }

        .form-group {
          position: relative;
          margin-bottom: 20px;
        }


        .form-group input {
          max-width: none;
          width: 100%;
          padding: 12px 15px 12px 45px;
          background: var(--input-bg);
          border: 1px solid var(--input-border);
          border-radius: 10px;
          color: var(--text);
          font-size: 16px;
          transition: border-color 0.3s ease, background 0.3s ease;

          &::placeholder {
            color: var(--text);
          }
        }

        .glass-button {
            position: relative;
            width: 100%;
            height: 50px;
            border-radius: 10px;
            overflow: hidden;
            --bg-color: rgba(255, 255, 255, 0.25);
            --highlight: rgba(255, 255, 255, 0.75);
            --text: #ffffff;
            transition: .3s;
            &:hover {
              background: rgba(255, 255, 255, 0.3);
              border-color: rgba(255, 255, 255, 0.4);
            }
        }

        
        .form-group input:focus {
          outline: none;
          background: var(--input-focus);
          border-color: var(--highlight);
        }


        input[type=submit] {
            position: relative;
            width: 100%;
            padding: 12px;
            color: var(--text);
            font-size: 16px;
            cursor: pointer;
            background: transparent;
            outline: none;
            border: none;
            transition: background 0.3s ease, border-color 0.3s ease;
            z-index: 4;
            max-width: none;
        }
    </style>
    <svg style="display: none">
      <filter id="glass-distortion">
        <feTurbulence type="turbulence" baseFrequency="0.008" numOctaves="2" result="noise" />
        <feDisplacementMap in="SourceGraphic" in2="noise" scale="77" />
      </filter>
    </svg>
    <div class="glass-form">
        <div class="glass-filter"></div>
        <div class="glass-overlay"></div>
        <div class="glass-specular"></div>
        <div class="glass-content">
            <div class="form-group">
                <input type="text" placeholder="Šifra peciva:" id="sifraPeciva" runat="server" required>
            </div>
            <div class="form-group">
                <input type="text" placeholder="Naziv pekare:" id="nazivPekare" runat="server" required>
            </div>
            <div class="form-group">
                <input type="text" placeholder="Naziv peciva:" id="nazivPeciva" runat="server" required>
            </div>
            <div class="form-group">
                <input type="text" placeholder="Vrsta peciva:" id="vrstaPeciva" runat="server" required>
            </div>
            <div class="form-group">
                <input type="text" placeholder="Tip brašna:" id="tipBrasna" runat="server" required>
            </div>
            <div class="form-group">
                <input type="text" placeholder="Cena:" id="cena" runat="server" required>
            </div>
            <div class="glass-button">
                <div class="glass-filter"></div>
                <div class="glass-overlay"></div>
                <div class="glass-specular"></div>
                <asp:Button ID="sacuvaj" runat="server" OnClick="odustani_Click" Text="Odustani" />                
            </div>
       </div>
    </div>


</asp:Content>
