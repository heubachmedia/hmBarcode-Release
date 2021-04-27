var $i : Integer
var $vc_result : Collection

Case of 
	: (Form event code:C388=On Load:K2:1)
		
		Form:C1466.sizes:=New object:C1471
		Form:C1466.sizes.values:=New collection:C1472
		
		For ($i; 1; 20)
			Form:C1466.sizes.values.push($i)
		End for 
		
		Form:C1466.sizes.index:=4
		Form:C1466.sizes.currentValue:=5
		
		Form:C1466.input:=""
		
		Form:C1466.types:=New object:C1471
		Form:C1466.types.internalCollection:=hmBC_Get Barcode List
		Form:C1466.types.internalCollection:=Form:C1466.types.internalCollection.orderBy("name asc")
		Form:C1466.types.values:=Form:C1466.types.internalCollection.extract("name")
		$vc_result:=Form:C1466.types.internalCollection.indices("symbology == 1")
		If ($vc_result.length>0)
			Form:C1466.types.index:=$vc_result[0]
			Form:C1466.types.currentValue:=Form:C1466.types.values[Form:C1466.types.index]
		End if 
		
		Form:C1466.showHumanReadableText:=True:C214
		Form:C1466.errorText:=""
		
		Form:C1466.mode:=New object:C1471
		Form:C1466.mode.values:=New collection:C1472("Data Mode"; "Unicode Mode"; "GS1 Mode"; "Escape Mode")
		Form:C1466.mode.index:=0
		Form:C1466.mode.currentValue:=Form:C1466.mode.values[Form:C1466.mode.index]
		
		Barcode_SelectType
		Barcode_Update
		
End case 
