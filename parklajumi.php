<?php
/**
 * Created by PhpStorm.
 * User: talivaldis.olekss
 * Date: 11.06.2017
 * Time: 15:32
 */



?>

<div id="edit">
    <table id="tabula_parkl">
        <tr>
            <td id="t_kol1"><input type="submit" name="parkl_add" value="Pievienot"></td>
            <td id="t_kol1">  <input type="text" id="tab_ievads" name="id" value="" title="ID" placeholder="" disabled ></td>
            <td id="t_kol2"> <input type="text" id="tab_ievads" name="parklajums" value="" title="Pārklājums" placeholder="Pārklājums" ></td>
            <td id="t_kol3"> <input type="text" id="tab_ievads" name="tab_ievads" value="" title="Akīvs" placeholder="" disabled></td>
        </tr>
    </table>

</div>
<div id="alert">

</div>
<div id="tab_galva">
    <table id="tabula_title">
        <tr>
            <td id="t_kol1"></td>
            <td id="t_kol1"><span id="tab_title"> ID</span></td>
            <td id="t_kol2"><span id="tab_title"> Pārklājuma apzīmējums</span> </td>
            <td id="t_kol3"><span id="tab_title"> Aktīvs ?</span> </td>
        </tr>
    </table>

</div>
<?php
$sparkl=sqltoarray(' * ','parklajumi',' status=1 ',$db)
?>
<div id="saraksts">
    <table id="tabula_list">
        <?php foreach( $sparkl as $oneparkl ) { ?>
        <tr>
            <td id="t_kol1"></span></td>
            <td id="t_kol1"><span id="tab_list"><?php echo $oneparkl['ID']; ?></span></td>
            <td id="t_kol2"><span id="tab_list"> <?php echo $oneparkl['parklajums']; ?></span> </td>
            <td id="t_kol3"><span id="tab_list"> <?php echo $oneparkl['status']; ?> </td>
        </tr>
        <?php } ?>
    </table>

</div>
