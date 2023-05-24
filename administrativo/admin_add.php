<?php
function conectar_admin_add(){
    $host="localhost";
    $user="root";
    $pass="";

    $db="db_sistema";
    $con=mysqli_connect($host,$user,$pass);

    mysqli_select_db($con,$db);
    return $con;
}
$con = conectar_admin_add();

$us_id = $_GET['us_id'];

$sql = "SELECT * FROM tb_usuario WHERE us_id='$us_id'";
$query = mysqli_query($con, $sql);

$row = mysqli_fetch_array($query);

$sql_tb = "select * from tb_usuario";
$query_tb = mysqli_query($con, $sql_tb);
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sistema Escuela</title>
    <link rel="stylesheet" href="../css/styleForms.css">
</head>
<body>
    <?php
        $url = "../extensiones/head.php";
        include_once ($url);
    ?>
    <h1 class="title-modules">BIENVENIDO AL PANEL DE CONTROL</h1>
    <div id="main-container">
        <div class="conteiner-add">
            <h1>Ingresar datos</h1> 
            <form action="insert.php" method="POST">
                <input type="hidden" name="id" value="<?php echo $row['us_id'] ?>">
                <input type="text" name="Nombre" placeholder="Nombre">
                <input type="text"  name="Telefono" placeholder="Teléfono">
                <input type="text"  name="Usuario" placeholder="Usuario">
                <input type="password"  name="Contra" placeholder="Contraseña">
                <input type="password"  name="Contra" placeholder="Confirmar contraseña">
                <input type="text"  name="Privilegio" placeholder="Privilegio">
                <input type="submit" value="Registrar">
            </form>
        </div>
        <div class="conteiner-btn">
            
        </div>
    </div>
    
    <script>
        const btn = document.querySelector('#menu-btn');
        const menu = document.querySelector('#sidemenu');
        btn.addEventListener('click', e => {
            menu.classList.toggle("menu-expanded");
            menu.classList.toggle("menu-collapsed");

            document.querySelector('body').classList.toggle('body-expanded');
        });
    </script>
    <div class="capa"></div>
</body>

</html>