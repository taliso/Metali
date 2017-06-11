<?php
session_start();
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

include "\\config\\config.php";
include "funkcijas.php";
include "\\config\\konekcija.php";
if (!isset($_SESSION['USER']['STATUS'])){
    include 'sesion_list.php';
}
define("MAX_FILE_SIZE",5000000);
?>

<!DOCTYPE html>
<html>
<head>
	 <meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
	 <link rel="stylesheet" type="text/css" href="metal.css" />
	 <meta name="viewport" content="width=device-width, initial-scale=1">
	 <link rel="stylesheet" href="jquery/jquery-ui.theme.min.css">
	 <link rel="stylesheet" href="jquery/jquery-ui.structure.min.css">
	 <link rel="stylesheet" href="jquery/jquery-ui.theme.min.css">
	 <script src="jquery/jquery-3.1.1.min.js"></script>
	 <script src="jquery/jquery-ui.min.js"></script>
 
  <title>Nestandarta metāli</title>
</head>
<?php
if (isset($_POST['parkl_add'])) {

    $parklajums=$_POST['parklajums'];
    $fields='parklajums';
    $ftabula='parklajumi';
    $fwhere=' parklajums = "'.$parklajums.'"';
    $check_parkl=sqltoarray($fields, $ftabula, $fwhere, $db);
    if (count($check_parkl)==0) {
        $sql="INSERT INTO parklajumi SET ";
        $sql = $sql."
                parklajums=:parklajums,
                status=:status";
        $q = $db->prepare($sql);
        $data=array(
            ':parklajums'=>$parklajums,
            ':status'=>1);
        $q->execute($data);
    } else {
        echo 'Tāds pārklājums jau ir';
    }



}


?>
<body>
<form action="#" method="post" enctype="multipart/form-data">
<div id="divMaster"><!--divMaster    -->
	<div id="divGalva"><!--divGalva    -->
		<div id="divTitle"><!--divTitle    -->
                 <span id="span_16_yealow">Nestandarta metālu cenu aprēķins</span>
		</div><!--divTitle    -->
		<div id="divInfo"><!--divInfo    -->
        </div><!--divInfo    -->
 	</div><!--divGalva    -->

	<div id="divDarba"><!--divDarba    -->
		<div id="divFormNavig"><!--divFormNavig    -->
		</div><!--divFormNavig    -->

		<div id="divForma"><!--divForma    -->
            <div id="divMenju">

            </div>
			<div id="divView">
                <?php include 'cenas.php'; ?>

			</div><!--divView    -->
		</div><!--divForma    -->
	</div><!--divDarba    -->
</div><!--divMaster    -->
</form>	
</body>
</html>