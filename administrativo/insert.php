<?php
    include("conexion.php");
    $con=conectar();

    $id = $_POST['id'];

    $nombre = $_POST['Nombre'];
    $telefono = $_POST['Telefono'];
    $usuario = $_POST['Usuario'];
    $contra = $_POST['Contra'];
    $privilegio = $_POST['Privilegio'];

    $telefonoError = '';

    if (!preg_match('/^\d{9}$/', $telefono)) {
        $telefonoError = 'El número de teléfono debe tener exactamente 10 dígitos.';
    } else {
        $sql = "INSERT INTO tb_usuario VALUES(NULL,'$usuario','$contra','$nombre','$telefono','$privilegio')";
        $query = mysqli_query($con, $sql);

        if ($query) {
            // Operación exitosa
        } else {
            // Manejar el caso de error en la inserción en la base de datos
        }
    }

    

    // $sql="INSERT INTO tb_usuario VALUES(NULL,'$usuario','$contra','$nombre','$telefono','$privilegio')";
    // $query= mysqli_query($con,$sql);

    // if($query){
    //     $url = './administradores.php?us_id='. $id;
    //     header('Location: ' . $url);
    // }else {
    // }
?>

<!DOCTYPE html>
<html>
<head>
    <title>Formulario de Registro</title>
    <style>
        .error {
            color: red;
            font-size: 12px;
            display: block;
            margin-top: 5px;
        }
    </style>
</head>
<body>
    <h1>Formulario de Registro</h1>

    <form action="insert.php" method="POST">
        <input type="text" name="Telefono" placeholder="Teléfono">
        <span class="error"><?php echo $telefonoError; ?></span>
        <input type="submit" value="Registrar">
    </form>
</body>
</html>