import GUI.SkillHive.StatPage;
import gfx.motion.Tween;
import mx.transitions.easing.*;
import com.GameInterface.Skills;
import com.GameInterface.Log;
import com.Utils.ImageLoader;
import com.Utils.LDBFormat;
intrinsic class GUI.SkillHive.CharacterStats extends StatPage
{
	private var m_StatPageItems : Array;
	private var m_LabelObject : Object;
	private var m_StatPagesObject : Object;
	private var m_CharacterStatsPane : MovieClip;
	private var m_ContentClip : MovieClip;
	private var m_StatPage : MovieClip;
	private var m_CurrentStatPageIndex : Number;
	private var m_PanelTweenSpeed : Number;
	private var m_StatPageItemHeight : Number;

	public function CharacterStats(characterStatsPane:MovieClip);

	public function SetCharacterName(name:String) : Void;

	public function SetFactionName(playerFaction:Number) : Void;

	private function CreatePaperDoll() : Void;

	/**
     * Attaches a dropdown to the m_StatPage MovieClip and draws the stats on it when requested
     */
	private function CreateStatPage() : Void;

	public function SlotCharacterLoaded(url:String, succeded:Boolean);

	private function UpdateStatPage(index:Number);

	private function OnDropdownSelection(event:Object);

	private function SlotSkillUpdated(updatedSkill:Number);

}