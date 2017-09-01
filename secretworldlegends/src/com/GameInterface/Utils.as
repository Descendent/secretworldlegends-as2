import com.GameInterface.DistributedValue;
import com.GameInterface.UtilsBase;
import com.GameInterface.Log;
import com.GameInterface.HTMLFont;
import com.Utils.Colors;
intrinsic class com.GameInterface.Utils extends com.GameInterface.UtilsBase
{
	static public function ParseHTMLColor(name:String) : flash.geom.ColorTransform;

	static public function ParseHTMLFont(name:String) : Object;

	static public function ParseHTMLFontFinal(name:String) : HTMLFont;

	static public function CreateResourceString(resourceId:com.Utils.ID32) : String;

	static public function SetupHtmlHyperLinks(htmlText:String, hyperLinkFunction:String, addFormat:Boolean) : String;

	static public function TruncateText(textField:TextField) : Void;

	static public function TruncateHTMLText(textField:TextField) : Void;

	static public function CreateHTMLString(text:String, parameters:Object);

}