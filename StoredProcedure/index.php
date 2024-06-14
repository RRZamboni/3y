<?php
   // 1) Incluindo a conexao!!!
   include("conexao/conexao.php");

   // 2) Chamando a Procedure
   $resultado = mysqli_query($con,"CALL todosRegistros();") 
   or die("Erro na Procedure".mysqli_error()); 


?>


<!DOCTYPE html>
<html>
   <head>
      <title>Stored Procedure</title>
      <link rel="stylesheet" 
         href="bootstrap/css/bootstrap.min.css">
      <script src="bootstrap/js/bootstrap.min.js"></script>  
   </head>
   <body>
      <div class="container">
         <div class="jumbotron">
            <h1>Lista Produtos</h1>
            <p> Produtos!!!</p>
         </div>

         <table class="table table-bordered">
            <thead>
               <th>Código</th>      
               <th>Descrição</th>      
               <th>Estoque</th>      
               <th>Preço</th>      
            </thead>
               <?php
                  while($linha = mysqli_fetch_array($resultado)) 
                  {
                     echo "
                           <tr>
                              <td>".$linha['codigo']."</td>
                              <td>".$linha['descricao']."</td>
                              <td>".$linha['estoque']."</td>
                              <td>".$linha['preco']."</td>
                           </tr>
                          ";
                  }
               ?>
         </table>

      </div>
   </body>
</html>