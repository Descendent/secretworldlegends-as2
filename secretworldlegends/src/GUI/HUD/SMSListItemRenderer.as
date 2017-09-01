import gfx.controls.ListItemRenderer;
intrinsic class GUI.HUD.SMSListItemRenderer extends ListItemRenderer
{
	private var m_Name : TextField;
	private var m_Text : TextField;
	private var m_Icon : MovieClip;

	public function SMSListItemRenderer();

	public function setData(data:Object) : Void;

}