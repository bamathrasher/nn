<?php
require_once("config.php");
require_once(WWW_DIR."/lib/content.php");
require_once(WWW_DIR."/lib/releases.php");
require_once(WWW_DIR."/lib/releaseimage.php");
$releases = new Releases();
$myfive = $releases->get5Movies();
$fiveconsole = $releases->get5Console();
$fivemp3 = $releases->get5MP3s();
$fivebooks = $releases->get5Books();
$page->smarty->assign('get5movies', $myfive);
$page->smarty->assign('get5console', $fiveconsole);
$page->smarty->assign('get5mp3s', $fivemp3);
$page->smarty->assign('get5books', $fivebooks);
$contents = new Contents();

$role=0;
if ($page->userdata != null)
	$role = $page->userdata["role"];

$contentid = 0;
if (isset($_GET["id"]))
	$contentid = $_GET["id"];

if ($contentid == 0)
	$content = $contents->getIndex();
else
	$content = $contents->getByID($contentid, $role);

if ($content == null)
	$page->show404();
	
$page->smarty->assign('content',$content);	
$page->meta_title = $content["title"];
$page->meta_keywords = $content["metakeywords"];
$page->meta_description = $content["metadescription"];

$page->content = $page->smarty->fetch('content.tpl');
$page->render();

