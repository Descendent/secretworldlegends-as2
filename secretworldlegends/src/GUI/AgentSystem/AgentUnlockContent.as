import com.Components.WindowComponentContent;
import com.Utils.LDBFormat;
import mx.utils.Delegate;
import com.GameInterface.Tooltip.*;
import com.GameInterface.SpellBase;
import com.GameInterface.SpellData;
import com.GameInterface.Game.Character;
import com.GameInterface.AgentSystem;
import com.GameInterface.AgentSystemAgent;
import com.GameInterface.DistributedValue;
import gfx.controls.Button;
import GUI.AgentSystem.RosterIcon;
intrinsic class GUI.AgentSystem.AgentUnlockContent extends WindowComponentContent
{
	private var m_FluffHeader : TextField;
	private var m_AgentIcon : RosterIcon;
	private var m_Name : TextField;
	private var m_Description : TextField;
	private var m_Level : TextField;
	private var m_Gender : MovieClip;
	private var m_Profession : MovieClip;
	private var m_Species : MovieClip;
	private var m_Age : MovieClip;
	private var m_TraitsHeader : TextField;
	private var m_TraitTooltip1 : MovieClip;
	private var m_TraitTooltip2 : MovieClip;
	private var m_Trait1Category : TextField;
	private var m_TraitIcon1 : MovieClip;
	private var m_Trait1 : TextField;
	private var m_Trait2Category : TextField;
	private var m_TraitIcon2 : MovieClip;
	private var m_Trait2 : TextField;
	private var m_StatsHeader : TextField;
	private var m_Stat1 : MovieClip;
	private var m_Stat2 : MovieClip;
	private var m_Stat3 : MovieClip;
	private var m_PassiveHeader : TextField;
	private var m_PassiveName : TextField;
	private var m_PassiveDescription : TextField;
	private var m_ConfirmButton : Button;
	private var m_AgentData : AgentSystemAgent;

	public function AgentUnlockContent();

	private function configUI();

	public function SetAgentData(agentData:AgentSystemAgent);

	private function PlayAnim();

	private function UpdatePassive();

	private function SetLabels() : Void;

	private function Confirm() : Void;

}