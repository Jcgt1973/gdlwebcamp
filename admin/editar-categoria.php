<?php

        $id = $_GET['id'];

        if(!filter_var($id, FILTER_VALIDATE_INT)) {
            die("Error!");
        }

      include_once 'funciones/sesiones.php';

      include_once 'funciones/funciones.php';

      include_once 'templates/header.php';

      include_once 'templates/barra.php';

      include_once 'templates/navegacion.php';


      


?>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Editar Categorias de Eventos
        <small>Llena el formulario para editar una categoría</small>
      </h1>
      
    </section>

    <!-- Main content -->
    <div class="row">
      <div class ="col-md-8">
        <section class="content">

  <!-- Default box -->
        <div class="box">
          <div class="box-header with-border">
            <h3 class="box-title">Editar categoria de Evento</h3>
          </div>
          <div class="box-body">

            <?php
                $sql = "SELECT * FROM categoria_evento WHERE id_categoria = $id";
                $resultado = $conn->query($sql);
                $categoria = $resultado->fetch_assoc();


            ?>
            <!-- form start -->
            <form role="form" name="guardar-registro" id="guardar-registro" method="post" action="modelo-categoria.php">
                <div class="box-body">
                  <div class="form-group">
                    <label for="nombre">Nombre:</label>
                    <input type="text" class="form-control" id="exampleInputEmail1" name="nombre_categoria" placeholder="Nombre Categoría" value="<?php echo $categoria['cat_evento']?>">
                  </div>
                  <div class="form-group">
                    <label for="">Iconos:</label>
                    <div class="input-group">
                      <div class="input-group-addon">
                        <i class="fa fa-address-book"></i>
                      </div>
                      <input type="text" id="icono" name="icono" class="form-control pull-right" placeholder="fa-icon" value="<?php echo $categoria['icono']?>">
                    </div>
                  </div>                       
                </div>
                <!-- /.box-body -->

                <div class="box-footer">
                  <input type="hidden" name="registro" value="actualizar">
                  <input type="hidden" name="id_registro" value="<?php echo $id; ?>">
                  <button type="submit" class="btn btn-primary" id="crear_registro">Actualizar</button>
                </div>
            </form>
          </div>
        <!-- /.box-body -->
      </div>
      <!-- /.box -->

      </section>
      <!-- /.content -->
            </div>
          </div>
    
  </div>
  <!-- /.content-wrapper -->

  <?php
      include_once 'templates/footer.php';
  ?>

<script src="js/app.js"></script>
 
  

