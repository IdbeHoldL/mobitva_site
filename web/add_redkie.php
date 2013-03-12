<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
     <table width=400>
               <tr>
                   <td align=right>
                       <form action="code.php" method="post">
                       Название вещи:<br>
                       <input type="text" NAME="name" size="20" maxlength="30">
                       <br>                       
                       Уровень:<br>
                       <input type="text" name="stats[lvl]" size="20" maxlength="30">
                       <br>
                       Износ:<br>
                       <input type="text" name="stats[iznos]" size="20" maxlength="30">
                       <br>
                       Точность:<br>
                        <input type="text" name="stats[toch]" size="20" maxlength="30">
                       <br>
                       Урон:<br>
                        <input type="text" name="stats[uron]" size="20" maxlength="30">
                       <br>
                        Блок:<br>
                        <input type="text" name="stats[block]" size="20" maxlength="30">
                       <br>
                        Оглушение:<br>
                        <input type="text" name="stats[glush]" size="20" maxlength="30">
                       <br>
                        Уворот:<br>
                        <input type="text" name="stats[uvorot]" size="20" maxlength="30">
                       <br>
                        Броня:<br>
                        <input type="text" name="stats[armor]" size="20" maxlength="30">
                       <br>
                        Здоровье:<br>
                        <input type="text" name="stats[health]" size="20" maxlength="30">
                       <br>
                         Эффекты:<br>
                        <input type="text" name="effect" size="20" maxlength="150">
                       <br>
                       
                       <input type="submit" value="Отправить запрос!">
                       </form>
                       
                           
                   </td>
               </tr>
           </table>
    </body>
</html>
