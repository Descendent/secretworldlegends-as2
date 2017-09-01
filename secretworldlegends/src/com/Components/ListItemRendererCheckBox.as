import gfx.controls.ListItemRenderer;
import gfx.controls.CheckBox;
intrinsic class com.Components.ListItemRendererCheckBox extends ListItemRenderer
{
	public var chkBox : CheckBox;
	public var isLoaded : Boolean;

	private function ListItemRendererCheckBox();

	private function onLoad() : Void;

	public function setData(dataObj:Object);

	private function updateAfterStateChange() : Void;

	private function updateUI() : Void;

}