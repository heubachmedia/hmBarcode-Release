//%attributes = {}
var $i; $vl_typ; $vl_index : Integer
var $vp_tt_option1; $vp_tt_option2; $vp_tt_option3; $vp_tl_option1; $vp_tl_option2; $vp_tl_option3 : Pointer

$vl_index:=Form:C1466.types.index
$vl_typ:=Form:C1466.types.internalCollection[$vl_index].symbology

QUERY:C277([Barcode_Descriptions:3]; [Barcode_Descriptions:3]Barcode_ID:2=$vl_typ)

Form:C1466.description:=[Barcode_Descriptions:3]Description:3
Form:C1466.input:=[Barcode_Descriptions:3]Demo_Input:4
Form:C1466.primary:=[Barcode_Descriptions:3]Demo_Input_Primary:5

$vp_tt_option1:=OBJECT Get pointer:C1124(Object named:K67:5; "tt_option1")
$vp_tl_option1:=OBJECT Get pointer:C1124(Object named:K67:5; "tl_option1")

$vp_tt_option2:=OBJECT Get pointer:C1124(Object named:K67:5; "tt_option2")
$vp_tl_option2:=OBJECT Get pointer:C1124(Object named:K67:5; "tl_option2")

$vp_tt_option3:=OBJECT Get pointer:C1124(Object named:K67:5; "tt_option3")
$vp_tl_option3:=OBJECT Get pointer:C1124(Object named:K67:5; "tl_option3")

ARRAY TEXT:C222($vp_tt_option1->; 0)
ARRAY LONGINT:C221($vp_tl_option1->; 0)

APPEND TO ARRAY:C911($vp_tt_option1->; "None")
APPEND TO ARRAY:C911($vp_tl_option1->; 0)

ARRAY TEXT:C222($vp_tt_option2->; 0)
ARRAY LONGINT:C221($vp_tl_option2->; 0)

APPEND TO ARRAY:C911($vp_tt_option2->; "None")
APPEND TO ARRAY:C911($vp_tl_option2->; 0)

ARRAY TEXT:C222($vp_tt_option3->; 0)
ARRAY LONGINT:C221($vp_tl_option3->; 0)

APPEND TO ARRAY:C911($vp_tt_option3->; "None")
APPEND TO ARRAY:C911($vp_tl_option3->; 0)

$vp_tt_option1->:=1
$vp_tt_option2->:=1
$vp_tt_option3->:=1

OBJECT SET ENABLED:C1123(*; "tt_option1"; False:C215)
OBJECT SET ENABLED:C1123(*; "tt_option2"; False:C215)
OBJECT SET ENABLED:C1123(*; "tt_option3"; False:C215)

OBJECT SET TITLE:C194(*; "vt_option_text1"; "")
OBJECT SET TITLE:C194(*; "vt_option_text2"; "")
OBJECT SET TITLE:C194(*; "vt_option_text3"; "")

Case of 
	: ($vl_typ=hmBC_Datamatrix)
		
		$vp_tt_option2->{1}:="Automatic"
		
		APPEND TO ARRAY:C911($vp_tt_option2->; "10 x 10")
		APPEND TO ARRAY:C911($vp_tl_option2->; 1)
		APPEND TO ARRAY:C911($vp_tt_option2->; "12 x 12")
		APPEND TO ARRAY:C911($vp_tl_option2->; 2)
		APPEND TO ARRAY:C911($vp_tt_option2->; "14 x 14")
		APPEND TO ARRAY:C911($vp_tl_option2->; 3)
		APPEND TO ARRAY:C911($vp_tt_option2->; "16 x 16")
		APPEND TO ARRAY:C911($vp_tl_option2->; 4)
		APPEND TO ARRAY:C911($vp_tt_option2->; "18 x 18")
		APPEND TO ARRAY:C911($vp_tl_option2->; 5)
		APPEND TO ARRAY:C911($vp_tt_option2->; "20 x 20")
		APPEND TO ARRAY:C911($vp_tl_option2->; 6)
		APPEND TO ARRAY:C911($vp_tt_option2->; "22 x 22")
		APPEND TO ARRAY:C911($vp_tl_option2->; 7)
		APPEND TO ARRAY:C911($vp_tt_option2->; "24 x 24")
		APPEND TO ARRAY:C911($vp_tl_option2->; 8)
		APPEND TO ARRAY:C911($vp_tt_option2->; "26 x 26")
		APPEND TO ARRAY:C911($vp_tl_option2->; 9)
		APPEND TO ARRAY:C911($vp_tt_option2->; "32 x 32")
		APPEND TO ARRAY:C911($vp_tl_option2->; 10)
		APPEND TO ARRAY:C911($vp_tt_option2->; "36 x 36")
		APPEND TO ARRAY:C911($vp_tl_option2->; 11)
		APPEND TO ARRAY:C911($vp_tt_option2->; "40 x 40")
		APPEND TO ARRAY:C911($vp_tl_option2->; 12)
		APPEND TO ARRAY:C911($vp_tt_option2->; "44 x 44")
		APPEND TO ARRAY:C911($vp_tl_option2->; 13)
		APPEND TO ARRAY:C911($vp_tt_option2->; "48 x 48")
		APPEND TO ARRAY:C911($vp_tl_option2->; 14)
		APPEND TO ARRAY:C911($vp_tt_option2->; "52 x 52")
		APPEND TO ARRAY:C911($vp_tl_option2->; 15)
		APPEND TO ARRAY:C911($vp_tt_option2->; "64 x 64")
		APPEND TO ARRAY:C911($vp_tl_option2->; 16)
		APPEND TO ARRAY:C911($vp_tt_option2->; "72 x 72")
		APPEND TO ARRAY:C911($vp_tl_option2->; 17)
		APPEND TO ARRAY:C911($vp_tt_option2->; "80 x 80")
		APPEND TO ARRAY:C911($vp_tl_option2->; 18)
		APPEND TO ARRAY:C911($vp_tt_option2->; "88 x 88")
		APPEND TO ARRAY:C911($vp_tl_option2->; 19)
		APPEND TO ARRAY:C911($vp_tt_option2->; "96 x 96")
		APPEND TO ARRAY:C911($vp_tl_option2->; 20)
		APPEND TO ARRAY:C911($vp_tt_option2->; "104 x 104")
		APPEND TO ARRAY:C911($vp_tl_option2->; 21)
		APPEND TO ARRAY:C911($vp_tt_option2->; "120 x 120")
		APPEND TO ARRAY:C911($vp_tl_option2->; 22)
		APPEND TO ARRAY:C911($vp_tt_option2->; "132 x 132")
		APPEND TO ARRAY:C911($vp_tl_option2->; 23)
		APPEND TO ARRAY:C911($vp_tt_option2->; "144 x 144")
		APPEND TO ARRAY:C911($vp_tl_option2->; 24)
		APPEND TO ARRAY:C911($vp_tt_option2->; "8 x 18")
		APPEND TO ARRAY:C911($vp_tl_option2->; 25)
		APPEND TO ARRAY:C911($vp_tt_option2->; "8 x 32")
		APPEND TO ARRAY:C911($vp_tl_option2->; 26)
		APPEND TO ARRAY:C911($vp_tt_option2->; "12 x 26")
		APPEND TO ARRAY:C911($vp_tl_option2->; 27)
		APPEND TO ARRAY:C911($vp_tt_option2->; "12 x 36")
		APPEND TO ARRAY:C911($vp_tl_option2->; 28)
		APPEND TO ARRAY:C911($vp_tt_option2->; "16 x 36")
		APPEND TO ARRAY:C911($vp_tl_option2->; 29)
		APPEND TO ARRAY:C911($vp_tt_option2->; "16 x 48")
		APPEND TO ARRAY:C911($vp_tl_option2->; 30)
		APPEND TO ARRAY:C911($vp_tt_option2->; "8 x 48")
		APPEND TO ARRAY:C911($vp_tl_option2->; 31)
		APPEND TO ARRAY:C911($vp_tt_option2->; "8 x 64")
		APPEND TO ARRAY:C911($vp_tl_option2->; 32)
		APPEND TO ARRAY:C911($vp_tt_option2->; "12 x 64")
		APPEND TO ARRAY:C911($vp_tl_option2->; 33)
		APPEND TO ARRAY:C911($vp_tt_option2->; "16 x 64")
		APPEND TO ARRAY:C911($vp_tl_option2->; 34)
		APPEND TO ARRAY:C911($vp_tt_option2->; "24 x 32")
		APPEND TO ARRAY:C911($vp_tl_option2->; 35)
		APPEND TO ARRAY:C911($vp_tt_option2->; "24 x 36")
		APPEND TO ARRAY:C911($vp_tl_option2->; 36)
		APPEND TO ARRAY:C911($vp_tt_option2->; "24 x 48")
		APPEND TO ARRAY:C911($vp_tl_option2->; 37)
		APPEND TO ARRAY:C911($vp_tt_option2->; "24 x 64")
		APPEND TO ARRAY:C911($vp_tl_option2->; 38)
		APPEND TO ARRAY:C911($vp_tt_option2->; "26 x 32")
		APPEND TO ARRAY:C911($vp_tl_option2->; 39)
		APPEND TO ARRAY:C911($vp_tt_option2->; "26 x 40")
		APPEND TO ARRAY:C911($vp_tl_option2->; 40)
		APPEND TO ARRAY:C911($vp_tt_option2->; "26 x 48")
		APPEND TO ARRAY:C911($vp_tl_option2->; 41)
		APPEND TO ARRAY:C911($vp_tt_option2->; "26 x 64")
		APPEND TO ARRAY:C911($vp_tl_option2->; 42)
		
		OBJECT SET TITLE:C194(*; "vt_option_text2"; "Symbol Size")
		OBJECT SET ENABLED:C1123(*; "tt_option2"; True:C214)
		
		APPEND TO ARRAY:C911($vp_tt_option3->; "Force only to use square symbols")
		APPEND TO ARRAY:C911($vp_tl_option3->; hmBC_DM_SQUARE)
		
		APPEND TO ARRAY:C911($vp_tt_option3->; "Use Rectangular Extension (DMRE)")
		APPEND TO ARRAY:C911($vp_tl_option3->; hmBC_DM_DMRE)
		
		OBJECT SET TITLE:C194(*; "vt_option_text3"; "Options")
		OBJECT SET ENABLED:C1123(*; "tt_option3"; True:C214)
		
	: ($vl_typ=hmBC_Code 39)
		
		APPEND TO ARRAY:C911($vp_tt_option2->; "Add modulo-43 check digit")
		APPEND TO ARRAY:C911($vp_tl_option2->; 1)
		
		OBJECT SET TITLE:C194(*; "vt_option_text2"; "Options")
		OBJECT SET ENABLED:C1123(*; "tt_option2"; True:C214)
		
	: ($vl_typ=hmBC_Aztec)
		
		APPEND TO ARRAY:C911($vp_tt_option1->; ">10% + 3 codewords")
		APPEND TO ARRAY:C911($vp_tl_option1->; 1)
		
		APPEND TO ARRAY:C911($vp_tt_option1->; ">23% + 3 codewords")
		APPEND TO ARRAY:C911($vp_tl_option1->; 2)
		
		APPEND TO ARRAY:C911($vp_tt_option1->; ">36% + 3 codewords")
		APPEND TO ARRAY:C911($vp_tl_option1->; 3)
		
		APPEND TO ARRAY:C911($vp_tt_option1->; ">50% + 3 codewords")
		APPEND TO ARRAY:C911($vp_tl_option1->; 4)
		
		OBJECT SET TITLE:C194(*; "vt_option_text1"; "Error Correction Capacity")
		OBJECT SET ENABLED:C1123(*; "tt_option1"; True:C214)
		
		$vp_tt_option2->{1}:="Automatic"
		
		APPEND TO ARRAY:C911($vp_tt_option2->; "15 x 15*")
		APPEND TO ARRAY:C911($vp_tl_option2->; 1)
		APPEND TO ARRAY:C911($vp_tt_option2->; "19 x 19*")
		APPEND TO ARRAY:C911($vp_tl_option2->; 2)
		APPEND TO ARRAY:C911($vp_tt_option2->; "23 x 23*")
		APPEND TO ARRAY:C911($vp_tl_option2->; 3)
		APPEND TO ARRAY:C911($vp_tt_option2->; "27 x 27*")
		APPEND TO ARRAY:C911($vp_tl_option2->; 4)
		APPEND TO ARRAY:C911($vp_tt_option2->; "19 x 19")
		APPEND TO ARRAY:C911($vp_tl_option2->; 5)
		APPEND TO ARRAY:C911($vp_tt_option2->; "23 x 23")
		APPEND TO ARRAY:C911($vp_tl_option2->; 6)
		APPEND TO ARRAY:C911($vp_tt_option2->; "27 x 27")
		APPEND TO ARRAY:C911($vp_tl_option2->; 7)
		APPEND TO ARRAY:C911($vp_tt_option2->; "31 x 31")
		APPEND TO ARRAY:C911($vp_tl_option2->; 8)
		APPEND TO ARRAY:C911($vp_tt_option2->; "37 x 37")
		APPEND TO ARRAY:C911($vp_tl_option2->; 9)
		APPEND TO ARRAY:C911($vp_tt_option2->; "41 x 41")
		APPEND TO ARRAY:C911($vp_tl_option2->; 10)
		APPEND TO ARRAY:C911($vp_tt_option2->; "45 x 45")
		APPEND TO ARRAY:C911($vp_tl_option2->; 11)
		APPEND TO ARRAY:C911($vp_tt_option2->; "49 x 49")
		APPEND TO ARRAY:C911($vp_tl_option2->; 12)
		APPEND TO ARRAY:C911($vp_tt_option2->; "53 x 53")
		APPEND TO ARRAY:C911($vp_tl_option2->; 13)
		APPEND TO ARRAY:C911($vp_tt_option2->; "57 x 57")
		APPEND TO ARRAY:C911($vp_tl_option2->; 14)
		APPEND TO ARRAY:C911($vp_tt_option2->; "61 x 61")
		APPEND TO ARRAY:C911($vp_tl_option2->; 15)
		APPEND TO ARRAY:C911($vp_tt_option2->; "67 x 67")
		APPEND TO ARRAY:C911($vp_tl_option2->; 16)
		APPEND TO ARRAY:C911($vp_tt_option2->; "71 x 71")
		APPEND TO ARRAY:C911($vp_tl_option2->; 17)
		APPEND TO ARRAY:C911($vp_tt_option2->; "75 x 75")
		APPEND TO ARRAY:C911($vp_tl_option2->; 18)
		APPEND TO ARRAY:C911($vp_tt_option2->; "79 x 79")
		APPEND TO ARRAY:C911($vp_tl_option2->; 19)
		APPEND TO ARRAY:C911($vp_tt_option2->; "83 x 83")
		APPEND TO ARRAY:C911($vp_tl_option2->; 20)
		APPEND TO ARRAY:C911($vp_tt_option2->; "87 x 87")
		APPEND TO ARRAY:C911($vp_tl_option2->; 21)
		APPEND TO ARRAY:C911($vp_tt_option2->; "91 x 91")
		APPEND TO ARRAY:C911($vp_tl_option2->; 22)
		APPEND TO ARRAY:C911($vp_tt_option2->; "95 x 95")
		APPEND TO ARRAY:C911($vp_tl_option2->; 23)
		APPEND TO ARRAY:C911($vp_tt_option2->; "101 x 101")
		APPEND TO ARRAY:C911($vp_tl_option2->; 24)
		APPEND TO ARRAY:C911($vp_tt_option2->; "105 x 105")
		APPEND TO ARRAY:C911($vp_tl_option2->; 25)
		APPEND TO ARRAY:C911($vp_tt_option2->; "109 x 109")
		APPEND TO ARRAY:C911($vp_tl_option2->; 26)
		APPEND TO ARRAY:C911($vp_tt_option2->; "113 x 113")
		APPEND TO ARRAY:C911($vp_tl_option2->; 27)
		APPEND TO ARRAY:C911($vp_tt_option2->; "117 x 117")
		APPEND TO ARRAY:C911($vp_tl_option2->; 28)
		APPEND TO ARRAY:C911($vp_tt_option2->; "121 x 121")
		APPEND TO ARRAY:C911($vp_tl_option2->; 29)
		APPEND TO ARRAY:C911($vp_tt_option2->; "125 x 125")
		APPEND TO ARRAY:C911($vp_tl_option2->; 30)
		APPEND TO ARRAY:C911($vp_tt_option2->; "131 x 131")
		APPEND TO ARRAY:C911($vp_tl_option2->; 31)
		APPEND TO ARRAY:C911($vp_tt_option2->; "135 x 135")
		APPEND TO ARRAY:C911($vp_tl_option2->; 32)
		APPEND TO ARRAY:C911($vp_tt_option2->; "139 x 139")
		APPEND TO ARRAY:C911($vp_tl_option2->; 33)
		APPEND TO ARRAY:C911($vp_tt_option2->; "143 x 143")
		APPEND TO ARRAY:C911($vp_tl_option2->; 34)
		APPEND TO ARRAY:C911($vp_tt_option2->; "147 x 147")
		APPEND TO ARRAY:C911($vp_tl_option2->; 35)
		APPEND TO ARRAY:C911($vp_tt_option2->; "151 x 151")
		APPEND TO ARRAY:C911($vp_tl_option2->; 36)
		
		OBJECT SET TITLE:C194(*; "vt_option_text2"; "Symbol Size")
		OBJECT SET ENABLED:C1123(*; "tt_option2"; True:C214)
		
	: ($vl_typ=hmBC_Channel Code)
		
		$vp_tt_option2->{1}:="Automatic"
		
		APPEND TO ARRAY:C911($vp_tt_option2->; "3 (00-26)")
		APPEND TO ARRAY:C911($vp_tl_option2->; 3)
		APPEND TO ARRAY:C911($vp_tt_option2->; "4 (000-292)")
		APPEND TO ARRAY:C911($vp_tl_option2->; 4)
		APPEND TO ARRAY:C911($vp_tt_option2->; "5 (0000-3493)")
		APPEND TO ARRAY:C911($vp_tl_option2->; 5)
		APPEND TO ARRAY:C911($vp_tt_option2->; "6 (00000-44072)")
		APPEND TO ARRAY:C911($vp_tl_option2->; 6)
		APPEND TO ARRAY:C911($vp_tt_option2->; "7 (000000-576688)")
		APPEND TO ARRAY:C911($vp_tl_option2->; 7)
		APPEND TO ARRAY:C911($vp_tt_option2->; "8 (0000000-7742862)")
		APPEND TO ARRAY:C911($vp_tl_option2->; 8)
		
		OBJECT SET TITLE:C194(*; "vt_option_text2"; "Channels")
		OBJECT SET ENABLED:C1123(*; "tt_option2"; True:C214)
		
	: ($vl_typ=hmBC_QR Code)
		
		APPEND TO ARRAY:C911($vp_tt_option1->; "ECC Level L (default) - Approx 20% of symbol - Recovery Capacity Approx 7%")
		APPEND TO ARRAY:C911($vp_tl_option1->; 1)
		
		APPEND TO ARRAY:C911($vp_tt_option1->; "ECC Level M - Approx 37% of symbol - Recovery Capacity Approx 15%")
		APPEND TO ARRAY:C911($vp_tl_option1->; 2)
		
		APPEND TO ARRAY:C911($vp_tt_option1->; "ECC Level Q - Approx 55% of symbol - Recovery Capacity Approx 25%")
		APPEND TO ARRAY:C911($vp_tl_option1->; 3)
		
		APPEND TO ARRAY:C911($vp_tt_option1->; "ECC Level H - Approx 65% of symbol - Recovery Capacity Approx 30%")
		APPEND TO ARRAY:C911($vp_tl_option1->; 4)
		
		OBJECT SET TITLE:C194(*; "vt_option_text1"; "ECC Level")
		OBJECT SET ENABLED:C1123(*; "tt_option1"; True:C214)
		
		$vp_tt_option2->{1}:="Automatic"
		
		For ($i; 1; 40)
			APPEND TO ARRAY:C911($vp_tt_option2->; String:C10(17+($i*4))+" x "+String:C10(17+($i*4)))
			APPEND TO ARRAY:C911($vp_tl_option2->; $i)
		End for 
		
		OBJECT SET TITLE:C194(*; "vt_option_text2"; "Symbol Size")
		OBJECT SET ENABLED:C1123(*; "tt_option2"; True:C214)
		
	: ($vl_typ=hmBC_Micro QR Code)
		
		$vp_tt_option2->{1}:="Automatic"
		
		APPEND TO ARRAY:C911($vp_tt_option2->; "Version M1 11x11")
		APPEND TO ARRAY:C911($vp_tl_option2->; 1)
		APPEND TO ARRAY:C911($vp_tt_option2->; "Version M2 13x13")
		APPEND TO ARRAY:C911($vp_tl_option2->; 2)
		APPEND TO ARRAY:C911($vp_tt_option2->; "Version M3 15x15")
		APPEND TO ARRAY:C911($vp_tl_option2->; 3)
		APPEND TO ARRAY:C911($vp_tt_option2->; "Version M4 17x17")
		APPEND TO ARRAY:C911($vp_tl_option2->; 4)
		
		OBJECT SET TITLE:C194(*; "vt_option_text2"; "Symbol Size")
		OBJECT SET ENABLED:C1123(*; "tt_option2"; True:C214)
		
	: ($vl_typ=hmBC_Code One)
		
		$vp_tt_option2->{1}:="Automatic"
		
		APPEND TO ARRAY:C911($vp_tt_option2->; "A (16x18)")
		APPEND TO ARRAY:C911($vp_tl_option2->; 1)
		APPEND TO ARRAY:C911($vp_tt_option2->; "B (22x22)")
		APPEND TO ARRAY:C911($vp_tl_option2->; 2)
		APPEND TO ARRAY:C911($vp_tt_option2->; "C (28x32)")
		APPEND TO ARRAY:C911($vp_tl_option2->; 3)
		APPEND TO ARRAY:C911($vp_tt_option2->; "D (40x42)")
		APPEND TO ARRAY:C911($vp_tl_option2->; 4)
		APPEND TO ARRAY:C911($vp_tt_option2->; "E (52x54)")
		APPEND TO ARRAY:C911($vp_tl_option2->; 5)
		APPEND TO ARRAY:C911($vp_tt_option2->; "F (70x76)")
		APPEND TO ARRAY:C911($vp_tl_option2->; 6)
		APPEND TO ARRAY:C911($vp_tt_option2->; "G (104x98)")
		APPEND TO ARRAY:C911($vp_tl_option2->; 7)
		APPEND TO ARRAY:C911($vp_tt_option2->; "H (148x134)")
		APPEND TO ARRAY:C911($vp_tl_option2->; 8)
		APPEND TO ARRAY:C911($vp_tt_option2->; "S (8X height)")
		APPEND TO ARRAY:C911($vp_tl_option2->; 9)
		APPEND TO ARRAY:C911($vp_tt_option2->; "T (16X height)")
		APPEND TO ARRAY:C911($vp_tl_option2->; 10)
		
		OBJECT SET TITLE:C194(*; "vt_option_text2"; "Version")
		OBJECT SET ENABLED:C1123(*; "tt_option2"; True:C214)
		
	: ($vl_typ=hmBC_Extended Code 3 of 9)
		
		$vp_tt_option2->{1}:="No"
		
		APPEND TO ARRAY:C911($vp_tt_option2->; "Yes")
		APPEND TO ARRAY:C911($vp_tl_option2->; 1)
		
		OBJECT SET TITLE:C194(*; "vt_option_text2"; "Check Digit")
		OBJECT SET ENABLED:C1123(*; "tt_option2"; True:C214)
		
	: ($vl_typ=hmBC_Grid Matrix)
		
		$vp_tt_option1->{1}:="None"
		
		APPEND TO ARRAY:C911($vp_tt_option1->; "Approximately 10%")
		APPEND TO ARRAY:C911($vp_tl_option1->; 1)
		APPEND TO ARRAY:C911($vp_tt_option1->; "Approximately 20%")
		APPEND TO ARRAY:C911($vp_tl_option1->; 2)
		APPEND TO ARRAY:C911($vp_tt_option1->; "Approximately 30%")
		APPEND TO ARRAY:C911($vp_tl_option1->; 3)
		APPEND TO ARRAY:C911($vp_tt_option1->; "Approximately 40%")
		APPEND TO ARRAY:C911($vp_tl_option1->; 4)
		APPEND TO ARRAY:C911($vp_tt_option1->; "Approximately 50%")
		APPEND TO ARRAY:C911($vp_tl_option1->; 5)
		
		OBJECT SET TITLE:C194(*; "vt_option_text1"; "Error Correction Capacity")
		OBJECT SET ENABLED:C1123(*; "tt_option1"; True:C214)
		
		$vp_tt_option2->{1}:="Automatic"
		
		For ($i; 1; 13)
			APPEND TO ARRAY:C911($vp_tt_option2->; String:C10(6+($i*12))+"x"+String:C10(6+($i*12)))
			APPEND TO ARRAY:C911($vp_tl_option2->; $i)
		End for 
		
		OBJECT SET TITLE:C194(*; "vt_option_text2"; "Size")
		OBJECT SET ENABLED:C1123(*; "tt_option2"; True:C214)
		
	: ($vl_typ=hmBC_Han Xin)
		
		$vp_tt_option1->{1}:="None"
		
		APPEND TO ARRAY:C911($vp_tt_option1->; "Approximately 8%")
		APPEND TO ARRAY:C911($vp_tl_option1->; 1)
		APPEND TO ARRAY:C911($vp_tt_option1->; "Approximately 15%")
		APPEND TO ARRAY:C911($vp_tl_option1->; 2)
		APPEND TO ARRAY:C911($vp_tt_option1->; "Approximately 23%")
		APPEND TO ARRAY:C911($vp_tl_option1->; 3)
		APPEND TO ARRAY:C911($vp_tt_option1->; "Approximately 30%")
		APPEND TO ARRAY:C911($vp_tl_option1->; 4)
		
		OBJECT SET TITLE:C194(*; "vt_option_text1"; "RecoveryCapacity")
		OBJECT SET ENABLED:C1123(*; "tt_option1"; True:C214)
		
		$vp_tt_option2->{1}:="Automatic"
		
		For ($i; 1; 84)
			APPEND TO ARRAY:C911($vp_tt_option2->; String:C10(21+($i*2))+"x"+String:C10(21+($i*2)))
			APPEND TO ARRAY:C911($vp_tl_option2->; $i)
		End for 
		
		OBJECT SET TITLE:C194(*; "vt_option_text2"; "Size")
		OBJECT SET ENABLED:C1123(*; "tt_option2"; True:C214)
		
	: ($vl_typ=hmBC_Maxicode)
		
		$vp_tt_option1->{1}:="Automatic"
		
		APPEND TO ARRAY:C911($vp_tt_option1->; "2 (secondary only)")
		APPEND TO ARRAY:C911($vp_tl_option1->; 2)
		APPEND TO ARRAY:C911($vp_tt_option1->; "3 (secondary only)")
		APPEND TO ARRAY:C911($vp_tl_option1->; 3)
		APPEND TO ARRAY:C911($vp_tt_option1->; "4")
		APPEND TO ARRAY:C911($vp_tl_option1->; 4)
		APPEND TO ARRAY:C911($vp_tt_option1->; "5")
		APPEND TO ARRAY:C911($vp_tl_option1->; 5)
		APPEND TO ARRAY:C911($vp_tt_option1->; "6")
		APPEND TO ARRAY:C911($vp_tl_option1->; 6)
		
		OBJECT SET TITLE:C194(*; "vt_option_text1"; "Mode")
		OBJECT SET ENABLED:C1123(*; "tt_option1"; True:C214)
		
	: ($vl_typ=hmBC_MSI Code)
		
		$vp_tt_option2->{1}:="None"
		
		APPEND TO ARRAY:C911($vp_tt_option2->; "Modulo-10")
		APPEND TO ARRAY:C911($vp_tl_option2->; 1)
		APPEND TO ARRAY:C911($vp_tt_option2->; "Modulo-10 & Modulo-10")
		APPEND TO ARRAY:C911($vp_tl_option2->; 2)
		APPEND TO ARRAY:C911($vp_tt_option2->; "Modulo-11")
		APPEND TO ARRAY:C911($vp_tl_option2->; 3)
		APPEND TO ARRAY:C911($vp_tt_option2->; "Modulo-11 & Modulo-10")
		APPEND TO ARRAY:C911($vp_tl_option2->; 4)
		
		OBJECT SET TITLE:C194(*; "vt_option_text2"; "Check Digit")
		OBJECT SET ENABLED:C1123(*; "tt_option2"; True:C214)
		
	: ($vl_typ=hmBC_PDF417)
		
		$vp_tt_option2->{1}:="Automatic"
		
		For ($i; 4; 30)
			
			APPEND TO ARRAY:C911($vp_tt_option2->; String:C10($i))
			APPEND TO ARRAY:C911($vp_tl_option2->; $i-2)
			
		End for 
		
		OBJECT SET TITLE:C194(*; "vt_option_text2"; "Columns")
		OBJECT SET ENABLED:C1123(*; "tt_option2"; True:C214)
		
End case 
