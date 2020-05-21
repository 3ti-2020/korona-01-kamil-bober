<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Kamil_Bober</title>
</head>
<body>
  <div class="cont">
        <div class="head">
          <h1>Kamil Bober</h1>
          <h2>Kolekcja Bogdana</h2>
          <h3>Na AMG przyjdzie pora</h3>
          
        </div>
      <div class="left">
        <h1>Szybkie Samochody</h1>
        <ul>
          <li><a href="pod.html">SZYBKI</a></li>
          <li><a href="pod2.html">SZYBKI 2</a></li>
          <li><a href="pod3.html">SZYBKI 3</a></li>
          <button class="num" >BMW</button>
          <button class="num2">MERCTEDES</button>
        </ul>
      </div>
        <div class="main">
          <?php
            $conn=new mysqli('localhost','bogdan','123','bober');
            $sql=('SELECT * FROM europejskie');
            $result=$conn->query($sql);

            echo("<table>");
            echo("<tr>
            <th>Model</th>
            <th>Moc</th>
            <th>Rocznik</th>
            </tr>");
                while($wiersz=$result->fetch_assoc()){
                    echo("<tr>");
                    echo("<td>".$wiersz['model']."</td><td>".$wiersz['moc']."</td><td>".$wiersz['rocznik']."</td>");
                    echo("</tr>");
             }
            echo("</table>");


            ?>
            <?php
            $conn1=new mysqli('localhost','bogdan','123','bober');
            $sql1=('SELECT * FROM japonskie');
            $result1=$conn1->query($sql1);

            echo("<table>");
            echo("<tr>
            <th>Model</th>
            <th>Moc</th>
            </tr>");
                while($wiersz1=$result1->fetch_assoc()){
                    echo("<tr>");
                    echo("<td>".$wiersz1['Model_j']."</td><td>".$wiersz1['Moc_j']."</td>");
                    echo("</tr>");
             }
            echo("</table>");
            ?>

        </div>
   </div>
  
</body>
<script src="main.js"></script>
</html>