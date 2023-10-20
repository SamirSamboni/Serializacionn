
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Agregar video</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<style>
html, body {
  height: 100%;
  margin: 0;
  padding: 0;
}

body {
  background-image: url('https://cdn.pixabay.com/photo/2017/06/21/07/33/background-2426328_1280.jpg'); /* Cambiamos la URL de la imagen de fondo */
  background-size: cover;
  background-repeat: no-repeat;
  background-attachment: fixed;
  color: white; /* Cambiamos el color del texto a blanco */
  text-align: center; /* Centramos el contenido */
}

.ocean {
  height: 5%;
  width: 100%;
  position: absolute;
  bottom: 0;
  left: 0;
  background: #015871;
}

.wave {
  /* Eliminamos las propiedades relacionadas con las olas */
}
</style>
</head>
<body>

<div class="container">
  <div class="container-fluid">
    <a class="navbar-brand" href="index.jsp" >
      <h1> Musica </h1>
    </a>
    <a class="navbar-brand" href="index.jsp">
      <h1>Inicio</h1>
    </a>
  </div>
</div>

<section class="container bajar">
  <h1>Ingrese aqui los datos de su cancion deseada </h1>
  <form action="SvVideo" method="POST">
    <label for="idVideo">idVideo: </label>
    <input class="form-control" type="text" name="idVideo"><br>

    <label for="titulo">Titulo: </label>
    <input class="form-control" type="text" name="titulo"><br>

    <label for="autor">Autor: </label>
    <input class="form-control" type="text" name="autor"><br>

    <label for="aniho">Año: </label>
    <input class="form-control" type="text" name="aniho"><br>

    <label for="categoria">Seleccion categoria del video</label>
    <select class="form-select" type="text" name="categoria">
      <option value="Country">Country</option>
      <option value="pop">Pop</option>
      <option value="Rock">Rock</option>
      <option value="Hip hop">Hip hop</option>
      <option value="Blues">Blues</option>
      <option value="Opera">Opera</option>
      <option value="Electronica">Electronica</option>
      <option value="Jazz">Jazz</option>
    </select> <br>

    <label for="url">url</label>
    <input class="form-control" type="text" name="url"><br>
    
    <label for="Letra">Letra</label>
    <textarea class="form-control" id="id" name="letra" rows="5" cols="10"></textarea><br>
    
    <input class='btn btn-primary' type="submit" value="Agregar Video">
  </form>
</section>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</body>
</html>
