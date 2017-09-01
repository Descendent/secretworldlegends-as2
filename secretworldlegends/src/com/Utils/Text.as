import com.GameInterface.DistributedValue;
intrinsic class com.Utils.Text
{
	/**
     * Method that tries to mimic the getTextExtent method in the TextFormat class, for now it only returns an object with the width and height property set
     * @param text:String - the knubot string or any other string
     * @param format:TextFormat - the textformat to use when getting the text extent
     * @param context:MovieClip - the context to create the textfield in, useful to get the textformat
     * @return Object - an object with the property, width and height set
     */
	static public function GetTextExtent(text:String, format:TextFormat, context:MovieClip) : Object;

	/**
	* This method returns a string of formatted numbers with commas inserted in the
	* thousands place for readability.
	*/
	static public function AddThousandsSeparator(inputNum:Number) : String;

}