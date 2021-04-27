//%attributes = {}
var $vo_status; $vo_barcode : Object

$vo_barcode:=New object:C1471
$vo_barcode.text:="this is a demo text"
$vo_barcode.symbology:=hmBC_QR Code

$vo_status:=hmBC_Generate Barcode($vo_barcode)

If ($vo_status.success)
	WRITE PICTURE FILE:C680("test.svg"; $vo_status.picture)
End if 
