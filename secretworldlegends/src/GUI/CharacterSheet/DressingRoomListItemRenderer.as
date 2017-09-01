import gfx.controls.ListItemRenderer;
intrinsic class GUI.CharacterSheet.DressingRoomListItemRenderer extends ListItemRenderer
{
	private var m_ItemLabel : TextField;
	private var m_IsEquippedMark : MovieClip;
	private var m_IsConfigured : Boolean;

	public function DressingRoomListItemRenderer();

	private function configUI();

	public function setData(data:Object) : Void;

	private function UpdateVisuals();

}