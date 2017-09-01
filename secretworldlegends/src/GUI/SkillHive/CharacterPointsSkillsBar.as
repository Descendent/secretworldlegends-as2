import com.Utils.LDBFormat;
import com.Utils.Colors;
import flash.geom.Matrix;
import flash.geom.Rectangle;
intrinsic class GUI.SkillHive.CharacterPointsSkillsBar extends MovieClip
{
	static private var MAXIMUM_SLOTS : Number;
	static private var MIN_SLOT_WIDTH : Number;
	static private var MAX_BAR_WIDTH : Number;
	static private var INCREASED_SLOT_WIDTH : Number;
	static private var GAP : Number;
	static private var MELEE_PURCHASED_LEFT_COLOR : Number;
	static private var MELEE_PURCHASED_RIGHT_COLOR : Number;
	static private var MELEE_UNLOCKED_COLOR : Number;
	static private var RANGED_PURCHASED_LEFT_COLOR : Number;
	static private var RANGED_PURCHASED_RIGHT_COLOR : Number;
	static private var RANGED_UNLOCKED_COLOR : Number;
	static private var MAGIC_PURCHASED_LEFT_COLOR : Number;
	static private var MAGIC_PURCHASED_RIGHT_COLOR : Number;
	static private var MAGIC_UNLOCKED_COLOR : Number;
	static private var CHAKRAS_PURCHASED_LEFT_COLOR : Number;
	static private var CHAKRAS_PURCHASED_RIGHT_COLOR : Number;
	static private var CHAKRAS_UNLOCKED_COLOR : Number;
	static private var AUXILLIARY_PURCHASED_LEFT_COLOR : Number;
	static private var AUXILLIARY_PURCHASED_RIGHT_COLOR : Number;
	static private var AUXILLIARY_UNLOCKED_COLOR : Number;
	static private var DAMAGE_AUGMENT_PURCHASED_LEFT_COLOR : Number;
	static private var DAMAGE_AUGMENT_PURCHASED_RIGHT_COLOR : Number;
	static private var DAMAGE_AUGMENT_UNLOCKED_COLOR : Number;
	static private var SUPPORT_AUGMENT_PURCHASED_LEFT_COLOR : Number;
	static private var SUPPORT_AUGMENT_PURCHASED_RIGHT_COLOR : Number;
	static private var SUPPORT_AUGMENT_UNLOCKED_COLOR : Number;
	static private var HEALING_AUGMENT_PURCHASED_LEFT_COLOR : Number;
	static private var HEALING_AUGMENT_PURCHASED_RIGHT_COLOR : Number;
	static private var HEALING_AUGMENT_UNLOCKED_COLOR : Number;
	static private var SURVIVABILITY_AUGMENT_PURCHASED_LEFT_COLOR : Number;
	static private var SURVIVABILITY_AUGMENT_PURCHASED_RIGHT_COLOR : Number;
	static private var SURVIVABILITY_AUGMENT_UNLOCKED_COLOR : Number;
	static private var AEGIS_PURCHASED_LEFT_COLOR : Number;
	static private var AEGIS_PURCHASED_RIGHT_COLOR : Number;
	static private var AEGIS_UNLOCKED_COLOR : Number;
	private var m_Label : TextField;
	private var m_PurchasedBar : MovieClip;
	private var m_UnlockedBar : MovieClip;
	private var m_PurchasedTotal : Number;
	private var m_PurchasedLeftColor : Number;
	private var m_PurchasedRightColor : Number;
	private var m_UnlockedColor : Number;
	private var m_Levels : Number;
	private var m_MinSlotWidth : Number;
	private var m_Id : Number;

	public function CharacterPointsSkillsBar();

	private function AdjustColor() : Void;

	private function AdjustBarWidth(target:MovieClip, value:Number) : Void;

	public function SetCategory(value:String) : Void;

	public function SetLevels(levels:Number) : Void;

	public function SetId(id:Number) : Void;

	public function SetLabel(value:String) : Void;

	public function SetLabelAlpha(value:Number) : Void;

	public function SetPurchasedTotal(value:Number) : Void;

}