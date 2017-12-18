import com.Components.WindowComponentContent;
import gfx.controls.Button;
import mx.utils.Delegate;
import com.Utils.Archive;
import com.Utils.LDBFormat;
import com.GameInterface.Skills;
import com.GameInterface.Game.Character;
import GUI.SkillHiveSimple.Triangle;
intrinsic class GUI.SkillHiveSimple.CombatTriangle extends WindowComponentContent
{
	private var m_Triangle : Triangle;
	private var m_Blocker : MovieClip;
	private var m_CommitButton : Button;
	private var m_CommitAnim : MovieClip;
	private var m_DPSHit : MovieClip;
	private var m_TankHit : MovieClip;
	private var m_HealHit : MovieClip;
	private var m_SummaryHeader : TextField;
	private var m_DamageHeader : TextField;
	private var m_TankHeader : TextField;
	private var m_HealHeader : TextField;
	private var m_Header : TextField;
	private var m_HelpHeader1 : TextField;
	private var m_HelpText1 : TextField;
	private var m_HelpHeader2 : TextField;
	private var m_HelpText2 : TextField;
	private var m_HelpHeader3 : TextField;
	private var m_HelpText3 : TextField;
	private var m_Archive : Archive;
	private var m_TrianglePreview : Array;
	private var m_Character : Character;
	private var m_DamagePercent : TextField;
	private var m_TankPercent : TextField;
	private var m_HealPercent : TextField;
	private var m_Damage : TextField;
	private var m_Heal : TextField;
	private var m_HP : TextField;
	private var m_Protection : TextField;
	private var m_DamageSummary : TextField;
	private var m_HealSummary : TextField;
	private var m_HPSummary : TextField;
	private var m_ProtectionSummary : TextField;
	private var m_DamageChange : MovieClip;
	private var m_HealChange : MovieClip;
	private var m_HPChange : MovieClip;
	private var m_ProtectionChange : MovieClip;
	private var m_DamageChangeSummary : MovieClip;
	private var m_HealChangeSummary : MovieClip;
	private var m_HPChangeSummary : MovieClip;
	private var m_ProtectionChangeSummary : MovieClip;
	private var m_DPSFill : MovieClip;
	private var m_DPSIncrease : MovieClip;
	private var m_DPSDecrease : MovieClip;
	private var m_TankFill : MovieClip;
	private var m_TankIncrease : MovieClip;
	private var m_TankDecrease : MovieClip;
	private var m_HealFill : MovieClip;
	private var m_HealIncrease : MovieClip;
	private var m_HealDecrease : MovieClip;
	private var m_DamageBG : MovieClip;
	private var m_TankBG : MovieClip;
	private var m_HealBG : MovieClip;
	private var m_CurrentDamage : Number;
	private var m_CurrentTank : Number;
	private var m_CurrentHeal : Number;
	private var m_Timeout : Number;
	private var m_TDB_Damage : String;
	private var m_TDB_Survivability : String;
	private var m_TDB_Healing : String;
	private var m_TDB_CombatPower : String;
	private var m_TDB_HealingPower : String;
	private var m_TDB_HitPoints : String;
	private var m_TDB_Protection : String;
	static private var DAMAGE_COLOR : Number;
	static private var TANK_COLOR : Number;
	static private var HEAL_COLOR : Number;
	static private var NEGATIVE_COLOR : Number;
	static private var POSITIVE_COLOR : Number;
	static private var STAT_COMMIT_FRAME : Number;

	public function CombatTriangle();

	private function configUI() : Void;

	private function SetLabels() : Void;

	private function SetFullDamage();

	private function SetFullTank();

	private function SetFullHeal();

	private function Commit();

	private function EnableCommit();

	private function SlotValuesChanged(dPercent:Number, tPercent:Number, hPercent:Number);

	private function SlotStatChanged(statId:Number);

	private function SlotSkillsChanged();

	private function UpdateCurrentStats();

	private function UpdateStatPreview();

	private function SetStatTextColor(clip:TextField, preview:Number, current:Number, defaultColor:Number);

	private function SetStatChangeText(textClip:TextField, summaryClip:TextField, current:Number, preview:Number, statName:String);

	private function SetPreviewToCurrent();

	private function UpdateBackground();

	private function UpdateBlocker();

	private function SlotToggleCombat(isInCombat);

	public function OnModuleActivated(config:Archive) : Void;

	public function OnModuleDeactivated();

}