<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AjouterOuvrage.aspx.cs" Inherits="WebApplication10.AjouterOuvrage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 29px;
        }
        #shadowBox1{
            display:none;
            background-color:rgba(255,255,255,0);
            position:absolute;
            top:0px;
            left:0px;
            width:100%;
            height:100%;
        }
        #messageBox1{
              background-color:white;
            width:300px;
            height:200px;
            border:solid 2px black;
            padding:20px;
            padding-top:100px;
            text-align:center;
            margin:auto;
            margin-top:200px;
            box-shadow: 12px 12px 20px black;
            border-radius: 12px;

            
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style1">ISBN</td>
                    <td class="auto-style1"></td>
                    <td class="auto-style1">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        <br />
                        <asp:Label ID="lblErrNum" runat="server" ForeColor="#FF3300" Text="Code existant" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Titre</td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Le titre est obligatoire" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Année</td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="L'anée doit être un nombre de de 4 chiffres" ForeColor="#FF3300" ValidationExpression="(D-)?\d{4}"></asp:RegularExpressionValidator>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="L'année est obligatoire" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Classification</td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Editeur</td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="btnValider" runat="server" OnClick="btnValider_Click" Text="Valider" />
                    </td>
                    <td>
                        <asp:Button ID="btnAnnuler" runat="server" Text="Annuler" />
                    </td>
                </tr>
            </table>
        </div>  
        <div id="shadowBox1"  runat="server" >
        
        <div id="messageBox1">
 Enregistrement effectué


            <asp:Button ID="btnOk" OnClick="btnOk_Click" runat="server" Text="Ok" />

        </div>
        </div>


    </form>

 

   

</body>
</html>
