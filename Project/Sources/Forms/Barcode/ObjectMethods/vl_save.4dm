var $vl_index; $vl_typ : Integer

If (Form event code:C388=On Clicked:K2:4)
	
	$vl_index:=Form:C1466.types.index
	$vl_typ:=Form:C1466.types.internalCollection[$vl_index].symbology
	
	QUERY:C277([Barcode_Descriptions:3]; [Barcode_Descriptions:3]Barcode_ID:2=$vl_typ)
	
	If (Records in selection:C76([Barcode_Descriptions:3])=1)
		
		[Barcode_Descriptions:3]Description:3:=Form:C1466.description
		[Barcode_Descriptions:3]Demo_Input:4:=Form:C1466.input
		[Barcode_Descriptions:3]Demo_Input_Primary:5:=Form:C1466.primary
		SAVE RECORD:C53([Barcode_Descriptions:3])
		UNLOAD RECORD:C212([Barcode_Descriptions:3])
		
	Else 
		
		CREATE RECORD:C68([Barcode_Descriptions:3])
		[Barcode_Descriptions:3]Barcode_ID:2:=$vl_typ
		[Barcode_Descriptions:3]Description:3:=Form:C1466.description
		[Barcode_Descriptions:3]Demo_Input:4:=Form:C1466.input
		[Barcode_Descriptions:3]Demo_Input_Primary:5:=Form:C1466.primary
		SAVE RECORD:C53([Barcode_Descriptions:3])
		UNLOAD RECORD:C212([Barcode_Descriptions:3])
		
	End if 
	
End if 
