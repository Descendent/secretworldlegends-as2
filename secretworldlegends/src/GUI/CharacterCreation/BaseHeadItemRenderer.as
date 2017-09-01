import gfx.controls.ListItemRenderer;
import gfx.controls.UILoader;
intrinsic class GUI.CharacterCreation.BaseHeadItemRenderer extends ListItemRenderer
{
	public var m_ImageLoader : UILoader;

	private function BaseHeadItemRenderer();

	public function setData(data:Object) : Void;

	private function configUI();

}