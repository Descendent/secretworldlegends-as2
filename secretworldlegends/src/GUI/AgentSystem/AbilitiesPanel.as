import gfx.core.UIComponent;
import com.Utils.LDBFormat;
import com.GameInterface.LoreBase;
import GUI.AgentSystem.EquippedAbility;
intrinsic class GUI.AgentSystem.AbilitiesPanel extends UIComponent
{
	private var m_Ability_0 : EquippedAbility;
	private var m_Ability_1 : EquippedAbility;
	private var m_Ability_2 : EquippedAbility;
	private var m_Locked : MovieClip;
	static private var NUM_ABILITIES : Number;
	static private var UNLOCK_SUPPORT_ABILITIES : Number;

	public function AbilitiesPanel();

	private function configUI();

	private function SlotTagAdded(tagId:Number);

}