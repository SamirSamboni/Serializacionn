<%@page import="java.util.List"%>
<%@page import="com.umariana.mundo.Video"%>
<!DOCTYPE html>
<html>
<head>
<title>ver</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<link rel="stylesheet" href="style.css">
<style>  
html, body { 
  height: 100%; 
  margin: 0;
  padding: 0;
}
body {
  background-image: url('https://cdn.pixabay.com/photo/2017/06/21/07/33/background-2426328_1280.jpg');
  background-size: cover;
  background-repeat: no-repeat;
  background-attachment: fixed;
  color: white; /* Cambiamos el color del texto a blanco */
  text-align: center; /* Centramos el texto */
}

.ocean { 
  height: 5%;
  width:100%;
  position:absolute;
  bottom:0;
  left:0;
  background: #015871;
}

.wave {
  /* Eliminamos las propiedades relacionadas con las olas */
}
</style>
</head>
<body>
<div class="container" style="z-index: 100">
  <div class="container-fluid">
    <a class="navbar-brand" href="index.jsp" >
      <h1> Musica </h1>
    </a>
    <a class="navbar-brand" href="agregarVideo.jsp">
      <h1> Agregar video</h1> 
    </a>
  </div>
</div>
<section class="container">
  <h2 class="titulo-2">Lista de videos</h2>
  <%
  // Obtener los datos de la solicitud
  List<Video> videos = (List<Video>) request.getAttribute("videos");

  if (videos == null) {
      // Mostrar un mensaje de error al usuario
      request.setAttribute("error", "La lista de videos está vacía.");
      request.getRequestDispatcher("error.jsp").forward(request, response);
  }
  %>
  <% for (Video video : videos) { %>
  <div>
    <div>
      <%= video.getUrl()%>
    </div>
    <br>
    <div>
      <h5><%= video.getTitulo() %></h5>
      <p><strong>Autor: </strong><%= video.getAutor()%><br></p> 
      <p><strong>Año: </strong><%= video.getAniho() %></p> 
      <p><strong>Categoria: </strong><%= video.getCategoria() %></p>
    </div>
  </div>
  <% } %>
  <section class="posicion">
    <div class="container2">
      <section>
        <div class= "music-loader">
          <div class="line line1"></div>
          <div class="line line2"></div>
          <div class="line line3"></div>
        </div>
      </section>
    </div>
  </section>
</section>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
<script src="Script.js"></script>
</body>
</html>
