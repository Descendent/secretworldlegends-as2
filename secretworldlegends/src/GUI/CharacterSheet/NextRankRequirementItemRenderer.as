import gfx.controls.ListItemRenderer;
intrinsic class GUI.CharacterSheet.NextRankRequirementItemRenderer extends ListItemRenderer
{
	private var m_Background : MovieClip;
	private var m_RequirementLabel : TextField;
	private var m_RequirementData : MovieClip;
	private var m_IsConfigured : Boolean;
	public var m_RequirementDone : Boolean;

	public function NextRankRequirementItemRenderer();

	private function configUI();

	public function setData(data:Object) : Void;

	private function UpdateLayout();

}