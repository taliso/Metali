<?php
/**
 * Created by PhpStorm.
 * User: talivaldis.olekss
 * Date: 11.06.2017
 * Time: 15:30
 */
?>

<div id="edit">
    <table id="tabula_parkl">
        <tr>
            <td id="cenas_t_kol1">  <input type="text" id="tab_ievads" name="parklajums" value="" title="Pārklājums" placeholder="Pārklājums"></td>
            <td id="cenas_t_kol2"> <input type="text" id="tab_ievads" name="biezums" value="" title="Biezums" placeholder="Biezums" ></td>
            <td id="cenas_t_kol3"> <input type="text" id="tab_ievads" name="platums" value="" title="Platums" placeholder="Platums"></td>
            <td id="cenas_t_kol4">  <input type="text" id="tab_ievads" name="krasa" value="" title="Krāsa" placeholder="Krāsa" ></td>
            <td id="cenas_t_kol5"> <input type="text" id="tab_ievads" name="grupa" value="" title="Grupa" placeholder="Grupa" ></td>
            <td id="cenas_t_kol6"> <input type="text" id="tab_ievads" name="cena" value="" title="Cena" placeholder="Cena"></td>
            <td id="cenas_t_kol7"></td>

        </tr>
    </table>

</div>
<div id="alert">

</div>
<div id="tab_galva">
    <table id="tabula_title">
        <tr>
            <td id="cenas_t_kol1"><span id="tab_title"> Pārklājums</span></td>
            <td id="cenas_t_kol2"><span id="tab_title"> Biezums</span> </td>
            <td id="cenas_t_kol3"><span id="tab_title"> Platums</span> </td>
            <td id="cenas_t_kol1"><span id="tab_title"> Krāsa</span></td>
            <td id="cenas_t_kol2"><span id="tab_title"> Grupa</span> </td>
            <td id="cenas_t_kol3"><span id="tab_title"> Cena</span> </td>
            <td id="cenas_t_kol1"></td>
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
                <td id="cenas_t_kol1">
                    <img id="tool" src="icons\application_edit.png" alt="" title="Labot ierakstu" >
                    <img id="tool" src="icons\cancel.png" alt="" title="Dzēst ierakstu" >
                </td>
                <td id="cenas_t_kol1"><span id="tab_list"><?php echo $oneparkl['ID']; ?></span></td>
                <td id="cenas_t_kol2"><span id="tab_list"> <?php echo $oneparkl['parklajums']; ?></span> </td>
                <td id="cenas_t_kol3"><span id="tab_list"> <?php echo $oneparkl['status']; ?> </td>
            </tr>
        <?php } ?>
    </table>

</div>
