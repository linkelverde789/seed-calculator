<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Calculadora</title>
    <link rel="stylesheet" href="styles.css">
</head>

<body>
    <div>
<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $options = $_POST["options"];
    $season = ucfirst(strtolower($_POST["season"]));
    try {
        $con = new PDO('pgsql:host=192.168.1.201;dbname=stardew', 'app', 'app');
        $con->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $statement = $con->prepare("select * from consulta where estacion=?");
        $statement->execute([$season]);
        $result = $statement->fetchAll(PDO::FETCH_ASSOC);

        echo "<table border='1'>";
        echo "<tr>
        <th>Nombre</th>
        <th>Precio por Semilla</th>
        <th>Número de Cosechas</th>
        <th>Semillas por Cosecha</th>
        <th>Número final de semillas</th>
        <th>Valor unitario al día</th>
        <th>Valor general al día</th>
        <th>Ganancia por Unidad</th>
        <th>Ganancia por cosecha</th>
        <th>Ganancia Bruta</th>
        <th>Ganancia Neta</th>
        </tr>";

        foreach ($result as $item) {
            if ($options == "oro") {
                if ($item["precio_base"] == 0 || ($_POST["gold"] / $item["precio_base"]) < 1) {
                    $semilla = 0;
                } else {
                    $semilla = floor($_POST["gold"] / $item["precio_base"]);
                }
            } else {
                $semilla = $_POST["gold"];
            }
            echo "<tr>";
            echo "<td>" . htmlspecialchars($item["nombre"]) . "</td>";
            if($item['precio_base']==0){
                echo "<td>No se puede comprar</td>";
            }else{
                echo "<td>" . number_format(htmlspecialchars($item["precio_base"]),0,',','.') . "</td>";
            }
            echo "<td>" . htmlspecialchars($item["numero_de_cosechas"]) . "</td>";

            if ($item["precio_base"] == 0 || $semilla == 0) {
                for($i=0; $i<8;$i++){
                    echo "<td>0</td>";
                }
                
            } else {

                echo "<td>" . $semilla . "</td>";
                if($item["multiple"]=="true"){
                    echo "<td>" .$semilla. "</td>";
                }else{
                    echo "<td>" . intval(htmlspecialchars($item["numero_de_cosechas"])) * $semilla . "</td>";
                }
                echo "<td>" . number_format(htmlspecialchars($item["valor_por_dia"]),2,',','.') . "</td>";
                echo "<td>" . number_format(htmlspecialchars($item["valor_por_dia"]) * $semilla,2,',','.') . "</td>";
                echo "<td>" . number_format(htmlspecialchars($item["precio_cosecha_individual"]),2,',','.') . "</td>";
                echo "<td>" . number_format(htmlspecialchars($item["precio_cosecha_individual"])* $semilla,0,',','.') . "</td>";

                echo "<td>" . number_format(htmlspecialchars($item["precio_cosecha_individual"]) * $semilla * htmlspecialchars($item["numero_de_cosechas"]),0,',','.') . "</td>";

                if($item["multiple"]=="true"){
                    echo "<td>" . number_format(htmlspecialchars($item["precio_cosecha_individual"]) * $semilla * htmlspecialchars($item["numero_de_cosechas"])- htmlspecialchars($item["precio_base"]) * $semilla,0,',','.'). "</td>";

                }else{
                    echo "<td>" . number_format(htmlspecialchars($item["precio_cosecha_individual"]) * $semilla * htmlspecialchars($item["numero_de_cosechas"])- htmlspecialchars($item["precio_base"]) * $semilla * htmlspecialchars($item["numero_de_cosechas"]),0,',','.'). "</td>";

                }

                echo "</tr>";
            }
        }
        echo "</table>";
    } catch (Exception $e) {
        echo "Error: " . $e->getMessage();
    }
}
?>
</div>
</body>