<?php
session_regenerate_id();
$_SESSION['WAY'] = "CLAIM";  //"CLAIM"-pretenzija, "EVENT"-notikums,"TASK"- uzdevums
$_SESSION['STATUS'] = "LIST"; // 'VIEW','EDIT','LIST'
$_SESSION['TITLE'] = "Pretenziju saraksts";
$_SESSION['FORMA'] = 'pret_list.php';
$_SESSION['FORM_TITLE'] = -1;
$_SESSION['NAVIG'] = -1;
$_SESSION['VERSIJA'] = '';
$_SESSION['URL']='http://80.233.252.58:3333/tp_pretenz/index.php';

$_SESSION['AGENTS']['VARDS'] = '';
$_SESSION['AGENTS']['PASTS'] = '';
$_SESSION['AGENTS']['ID'] = 0;
$_SESSION['AGENTS']['STRUKT'] = 0;

$_SESSION['USER']['ID'] = 0;
$_SESSION['USER']['VARDS'] = '';
$_SESSION['USER']['TIESIBAS'] = '';
$_SESSION['USER']['LOMA'] = '';
$_SESSION['USER']['STRUKT'] = '';
$_SESSION['USER']['STATUS']=0;

$_SESSION['ADMIN']['ID']=0;
$_SESSION['ADMIN']['STATUS']="LIST";
$_SESSION['ADMIN']['PSW']='';
$_SESSION['ADMIN']['SUBFORM']='';

$_SESSION['REC']['STATUS']=-6; //-1-nav saglabāts, 0-neitrāls, 1- saglabāts,bet nav ierakstīts, 2-ierakstīts uz saglabāšanu

$_SESSION['METAL']['BIEZUMS']='';
$_SESSION['METAL']['PLATUMS']='';
$_SESSION['METAL']['PARKLAJUMS']='';
$_SESSION['METAL']['RAL']='';
$_SESSION['METAL']['KVM']='';

// Attiecīgi Pretenzijās rec_status -
session_write_close();
