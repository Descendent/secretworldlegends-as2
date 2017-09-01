import flash.geom.Point;
import gfx.core.UIComponent;
import com.Utils.Signal;
intrinsic dynamic class com.Components.WindowComponentContent extends UIComponent
{
	public var SignalSizeChanged : Signal;
	public var SignalLoaded : Signal;

	public function WindowComponentContent();

	public function SetSize(width:Number, height:Number);

	public function GetSize() : Point;

	public function configUI();

	public function SetData();

	public function Close();

}