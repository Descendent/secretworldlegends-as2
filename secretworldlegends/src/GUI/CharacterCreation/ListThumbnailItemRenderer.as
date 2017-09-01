import gfx.controls.ListItemRenderer;
import gfx.controls.UILoader;
intrinsic class GUI.CharacterCreation.ListThumbnailItemRenderer extends ListItemRenderer
{
	public var m_ImageLoader : UILoader;
	public var m_ImageMask : MovieClip;
	public var m_NamedImage : MovieClip;

	private function ListThumbnailItemRenderer();

	public function setData(data:Object) : Void;

	private function configUI();

	private function UpdateControls();

}