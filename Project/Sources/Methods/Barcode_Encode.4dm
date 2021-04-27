//%attributes = {}
var $vl_typ; $vl_size; $vl_index; $vl_option; $vl_input_mode : Integer
var $vt_input; $vt_primary : Text
var $vo_barcode; $vo_status : Object
var $vf_show_hrt : Boolean
var $vp_tt_option1; $vp_tt_option2; $vp_tt_option3; $vp_tl_option1; $vp_tl_option2; $vp_tl_option3 : Pointer

$vl_index:=Form:C1466.types.index
$vl_typ:=Form:C1466.types.internalCollection[$vl_index].symbology
$vl_size:=Form:C1466.sizes.currentValue

$vt_input:=Form:C1466.input
$vt_primary:=Form:C1466.primary
$vf_show_hrt:=Form:C1466.showHumanReadableText

$vp_tt_option1:=OBJECT Get pointer:C1124(Object named:K67:5; "tt_option1")
$vp_tl_option1:=OBJECT Get pointer:C1124(Object named:K67:5; "tl_option1")
$vp_tt_option2:=OBJECT Get pointer:C1124(Object named:K67:5; "tt_option2")
$vp_tl_option2:=OBJECT Get pointer:C1124(Object named:K67:5; "tl_option2")
$vp_tt_option3:=OBJECT Get pointer:C1124(Object named:K67:5; "tt_option3")
$vp_tl_option3:=OBJECT Get pointer:C1124(Object named:K67:5; "tl_option3")

$vl_input_mode:=Form:C1466.mode.index+1

Case of 
	: ($vl_input_mode=1)
		$vl_input_mode:=hmBC_Input_Data Mode
		
	: ($vl_input_mode=2)
		$vl_input_mode:=hmBC_Input_Unicode Mode
		
	: ($vl_input_mode=3)
		$vl_input_mode:=hmBC_Input_GS1 Mode
		
	: ($vl_input_mode=4)
		$vl_input_mode:=hmBC_Input_Escape Mode
		
	Else 
		$vl_input_mode:=hmBC_Input_Data Mode
		
End case 

$vo_barcode:=New object:C1471
$vo_barcode.symbology:=$vl_typ
$vo_barcode.mode:=$vl_input_mode

$vl_index:=$vp_tt_option1->

If ($vl_index>0)
	$vl_option:=$vp_tl_option1->{$vl_index}
	$vo_barcode.option1:=$vl_option
End if 

$vl_index:=$vp_tt_option2->

If ($vl_index>0)
	$vl_option:=$vp_tl_option2->{$vl_index}
	$vo_barcode.option2:=$vl_option
End if 

$vl_index:=$vp_tt_option3->

If ($vl_index>0)
	$vl_option:=$vp_tl_option3->{$vl_index}
	$vo_barcode.option3:=$vl_option
End if 

$vo_barcode.showtext:=$vf_show_hrt
$vo_barcode.primary:=$vt_primary
$vo_barcode.text:=$vt_input

$vo_status:=hmBC_Generate Barcode($vo_barcode)

Form:C1466.errorText:=$vo_status.error_text

If ($vo_status.success)
	
	Form:C1466.picture:=$vo_status.picture
	Form:C1466.picture:=Form:C1466.picture*$vl_size
	
Else 
	Form:C1466.picture:=Null:C1517
End if 
