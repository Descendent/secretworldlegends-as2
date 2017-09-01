import com.Components.WindowComponentContent;
import com.Utils.Signal;
import flash.geom.Point;
intrinsic class GUI.Tutorial.TutorialWindow extends WindowComponentContent
{
	static public var s_Height : Number;
	static public var s_Width : Number;
	public var SignalRedraw : Signal;

	public function TutorialWindow();

	public function SetSize(width:Number, height:Number);

	public function GetSize() : Point;

	public function ClearCanvas();

	public function GetCanvas();

	public function CreateCanvas() : MovieClip;

}