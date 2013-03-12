
<html>
    <head> 
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
     <link href="main.css" type="text/css" media="screen" rel="stylesheet">
    </head>
    <?php $stats = $_POST['stats']; 
 error_reporting(0);
$name_stat = array(
'armor' => 'Броня',
'block' => 'Блок',
    'toch' => 'Точность',
    'uvorot' => 'Уворот',
    'uron' => 'Урон',
    'lvl'=>'Уровень',
    'health'=>'Здоровье',
    'glush' => 'Оглушение',
    'iznos' => 'Износ',
);
    ?>
    
        <div class="back">
            <div class="backd">
                 
                <div class="cont_kart">
                    <div class="kart"><img src="http://mobitva.ucoz.ru/images/img39.jpg" width="60" height="60"></div>
                </div>
                <div class="stat_nazv">
               <div class="nazv"><b><?print $_POST['name']?></b></div><!--Название шмота-->
               <div class="stat"><!--Статы-->
                  <table>
<?php foreach ($stats as $stat_name => $stat): ?>                   
                      
    <?php if ($stat > 0): ?>
         <?php if ($stat_name=='iznos'): ?>
      <tr>
          <td class="td"><?php echo $name_stat[$stat_name];?>:</td>
          <td><?php echo $stat;?></td>                         
      </tr>
           <?php else:?> 
   <tr>
    <td class="td"><?php echo $name_stat[$stat_name];?>:</td>
      <td><img src="http://mobitva.ucoz.ru/table/<?php echo $stat_name; ?>.jpg"></td>
      <td><?php echo $stat; ?></td>
    </tr>         
    <?php endif; ?>
    <?php endif; ?>
   <?php endforeach;?>
                      </table>  
                     
                   </div>
               </div>
                <div class="effect_up"></div>
                <div class="effect"> <!--Эффекты Шмота-->                    
            <?php echo $_POST['effect'] ?>
                </div>
            </div>   
        </div>
        <br><br>    



