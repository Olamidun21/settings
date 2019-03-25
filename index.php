<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="bootstrap/dist/css/bootstrap.css">
    <script type="text/javascript" src="bootstrap/dist/js/popper.js"></script>
    <script type="text/javascript" src="Bootstrap/dist/js/jquery 3.3.1.js"></script>
    <script type="text/javascript" src="Bootstrap/dist/js/bootstrap.js"></script>
    <script>
            $(document).ready(function(){
                $.get("settings.php",(resp)=>{
                    $d = JSON.parse(resp)
                    for(i=0;i<=$d.length; i++){
                         if($d[i].default=="Y"){
                            if($d[i].visibility=="Y"){
                            if($d[i].settings_id==1 ||$d[i].settings_id==6 ||$d[i].settings_id==7 ){
                                $('tr').append("<td><input type='hidden' id='id' name='id"+i+"' style='' value='"+$d[i].settings_id+"'><input type='checkbox' name='vis"+i+"' id='nam"+i+"' class='check' checked><input type='text' value='"+ $d[i].settings_name +"' name='name"+i+"' id='nam' ><input type='number' name='val"+i+"' value='"+$d[i].value1+"' id='v1' hidden><br><br></td>");   
                            }else {
                            $('tr').append("<td><input type='hidden' id='id' name='id"+i+"' value='"+$d[i].settings_id+"'><input type='checkbox' name='vis"+i+"' id='nam"+i+"' class='check' checked><input type='text' value='"+ $d[i].settings_name +"' name='name"+i+"' id='nam' ><input type='number' name='val"+i+"' value='"+$d[i].value1+"' id='v1'></td>");
                             }
                            }
                             else if($d[i].visibility=="N"){
                                if($d[i].settings_id==1 ||$d[i].settings_id==6 ||$d[i].settings_id==7 ){
                                $('tr').append("<td><input type='hidden' id='id' name='id"+i+"' style='' value='"+$d[i].settings_id+"'><input type='checkbox' name='vis"+i+"' id='nam"+i+"' class='check'><input type='text' value='"+ $d[i].settings_name +"' name='name"+i+"' id='nam' ><input type='number' name='val"+i+"' value='"+$d[i].value1+"' id='v1' hidden><br><br></td>");   
                            }else {
                            $('tr').append("<td><input type='hidden' id='id' name='id"+i+"' value='"+$d[i].settings_id+"'><input type='checkbox' name='vis"+i+"' id='nam"+i+"' class='check' ><input type='text' value='"+ $d[i].settings_name +"' name='name"+i+"' id='nam' ><input type='number' name='val"+i+"' value='"+$d[i].value1+"' id='v1'></td>");
                             }
                             }
                            }else if($d[i].default=="N"){

                         }
                    }
                })   

            });
        </script> 
</head>
<body>
    <div class="container">
            <?php
         
            if(isset($msg) ){
               echo "<p>".$msg."</p>";
            }
               ?>
        <form action="set.php" method="POST">
        <table>
        <thead>

        </thead>
        <tbody>
           
        </tbody>
            <tr>
            </tr>
        </table>
        <input type="submit" name="sub" id="sub" value="Save" class="btn-success">
    </form>
    </div>
</body>
</html>