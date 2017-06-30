<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title></title>
    <meta name="viewport" content=" width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/estilos.css">
  </head>
  <body>
      <header>
        <div class="container">
            <h1>Bienvenido al hospital comunal</h1>
        </div>
      </header>

     <div class="container">
  <br>
    <div class="borde main row jumbotron ">
      <div class="col-xs-12 col-sm-8 col-md-7 col-lg-7 text-justify">
        <form name="form" action="validarUsuario.php" method="POST" class="form-inline">
          <table>
          <h2>Inicie Sesión</h2>
          <p>
          <br>
            Ingrese su Rut: 
            <tr><input type="text" class="form-control" name="txtRut" id="Rut" maxlength="8" required></tr>
            -
            <tr><input type="text" class="form-control" name="txtDV" style="width:40px" id="DV" required=""></tr>
          </p>
          <br>
          <p>
            Ingrese su Clave: 
            <tr><input type="password" class="form-control" name="txtPass" required></tr>
          </p>
          <br>
          <input type="submit" name="btnIniciar" class="btn btn-success" value="Iniciar Sesión">
        </form> 
        </table>
        </div>
      <div class="col-xs-12 col-sm-4 col-md-5 col-lg5 text-justify">
        <form name="form1" action="controlCRUD.php?op=1" method="POST" onsubmit="return validaClave()" class="form-inline">
          <h2>Registrate</h2>
          <p>
          <br>
            Rut:
            <input type="text" class="form-control" name="txtRut_a" id="Rut_a" maxlength="8" required>
            -
            <input type="text" class="form-control" name="txtDv_a" style="width:40px" id="DV_a" required readonly>
          </p>
          <p>
            Nombre Completo:
            <input type="text" class="form-control" name="txtNombrecompleto" required>
          </p>
          <p>
            Fecha nacimiento:
            <input type="date" class="form-control" name="txtFechanac" required>
          </p>
          <p>
            Genero:
            <select name="cbbSexo">
                  <option>Seleccionar</option>
                  <option value="1">Masculino</option>
                  <option value="2">Femenino</option>
             </select>
          </p>
            <input type="hidden" name="txtTipoU" value="2">
          <p>
           <p>
            Dirección:
            <input type="text" class="form-control" name="txtDireccion" required>
          </p>
            <input type="hidden" name="txtTipoU" value="2">
          <p>
           <p>
            Telefono:
            <input type="text" class="form-control" name="txtATelefono" required>
          </p>
            <input type="hidden" name="txtTipoU" value="2">
          <p>
            Contraseña:
            <input type="password" class="form-control" name="txtPassword" id="Contra" required>
          </p>
          <p>
            Repetir Contraseña:
            <input type="password" class="form-control" name="txtRePassword" id="Recontra" required>
          </p>
          <input type="submit" name="btnRegistrar" class="btn btn-success" value="Registrarse">
          <input type="reset" name="btnBorrar" class="btn btn-warning" value="Borrar">
          
        </form>
      </div>
    </div>
  </div>



      <script src="js/jquery.js"></script>
      <script src="js/bootstrap.min.js"></script>
  </body>
</html>
