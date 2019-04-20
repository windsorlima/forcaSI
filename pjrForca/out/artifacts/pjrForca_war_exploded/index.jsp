<%--
  Created by IntelliJ IDEA.
  User: windsor
  Date: 08/04/19
  Time: 22:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%   String palavra = "Windsor Lima";%>
<html>
  <head>
      <!-- Required meta tags-->
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <meta name="description" content="au theme template">
      <meta name="author" content="Hau Nguyen">
      <meta name="keywords" content="au theme template">


      <!-- Fontfaces CSS-->
      <link href="css/font-face.css" rel="stylesheet" media="all">
      <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
      <link href="vendor/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all">
      <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">

      <!-- Bootstrap CSS-->
      <link href="vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet" media="all">

      <!-- Vendor CSS-->
      <link href="vendor/animsition/animsition.min.css" rel="stylesheet" media="all">
      <link href="vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet" media="all">
      <link href="vendor/wow/animate.css" rel="stylesheet" media="all">
      <link href="vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet" media="all">
      <link href="vendor/slick/slick.css" rel="stylesheet" media="all">
      <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
      <link href="vendor/perfect-scrollbar/perfect-scrollbar.css" rel="stylesheet" media="all">

      <!-- Main CSS-->
      <link href="css/theme.css" rel="stylesheet" media="all">


      <title>Forca do Wind</title>
      <script>
          //Script para fazer a contagem de chances e preenhcer a palavra escolhida sem atualizar a página.
          var contagem = 7;
          function atribuirPalava(letra){
              var forcaSorteada = '<%=palavra%>';

              var flg = false;
              for(var i=1;i<=forcaSorteada.length;i++){
                  var idLabel = "letra" + (i-1);
                  if(letra.toUpperCase() == forcaSorteada.charAt(i-1).toUpperCase()) {
                      document.getElementById(idLabel).textContent = letra;
                      flg = true;
                  }
                  else{
                      document.getElementById(letra).disabled = true;
                  }
              }
              console.log(flg);
              if(flg==false) {
                  contagem--;
              }
              if(contagem==0){
                  alert("Game Over");
                  location.reload();

              }
          }
      </script>
  </head>
  <body>

            <div style="width: 600px; margin: 0 auto; margin-top:20%;  ">
                <div style="width:500px; margin 0 auto;">
                <%
                    //Laço for para gerar labels para cada letra da palavra selecionada
                    char vet[] = palavra.toCharArray();
                    for(int i=1;i<=vet.length;i++){
                        if(vet[i-1] == ' ') {
                        vet[i - 1] = '-';
                    }
                    if(vet[i-1] == '-'){%>
                        <a id="letra<%=i-1%>" style="border-left: 10px;"  > - </a>
                    <%} else {%>
                        <a id="letra<%=i-1%>" style="border-left: 10px;"  > __  </a>

                    <%}
                    }%>
            <br>
                </div>
            <% //Laço for para gerar teclas da forca
             for(char i='A';i<='Z';i++ ) {%>
            <button type="button" class="btn btn-sucess" style="width: 50px;"  id="<%=i%>" onclick="atribuirPalava('<%=i%>')"  > <%=i%> </button>

                <% if(i=='J' || i =='T'){%>
                    <br>
                <%}
            }%>
         </div>

  </body>
</html>