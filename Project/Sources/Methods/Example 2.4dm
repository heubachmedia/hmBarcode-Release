//%attributes = {}
var $vo_status; $vo_barcode : Object

$vo_barcode:=New object:C1471
$vo_barcode.showtext:=True:C214
$vo_barcode.mode:=hmBC_Input_GS1 Mode
$vo_barcode.text:="[01]98898765432106[3202]012345[15]991231"
$vo_barcode.symbology:=hmBC_GS1 128

$vo_status:=hmBC_Generate Barcode($vo_barcode)

If ($vo_status.success)
	WRITE PICTURE FILE:C680("test.svg"; $vo_status.picture)
End if 
