import com.Utils.LDBFormat;
import com.Utils.Colors;
intrinsic class GUI.SkillHive.CharacterPointsSubSkillsBar extends MovieClip
{
	static private var MAXIMUM_SLOTS : Number;
	static private var MELEE_PURCHASED_COLOR : Number;
	static private var MELEE_UNLOCKED_COLOR : Number;
	static private var RANGED_PURCHASED_COLOR : Number;
	static private var RANGED_UNLOCKED_COLOR : Number;
	static private var MAGIC_PURCHASED_COLOR : Number;
	static private var MAGIC_UNLOCKED_COLOR : Number;
	static private var CHAKRAS_PURCHASED_COLOR : Number;
	static private var CHAKRAS_UNLOCKED_COLOR : Number;
	static private var AUXILLIARY_PURCHASED_COLOR : Number;
	static private var AUXILLIARY_UNLOCKED_COLOR : Number;
	static private var DAMAGE_AUGMENT_PURCHASED_COLOR : Number;
	static private var DAMAGE_AUGMENT_UNLOCKED_COLOR : Number;
	static private var SUPPORT_AUGMENT_PURCHASED_COLOR : Number;
	static private var SUPPORT_AUGMENT_UNLOCKED_COLOR : Number;
	static private var HEALING_AUGMENT_PURCHASED_COLOR : Number;
	static private var HEALING_AUGMENT_UNLOCKED_COLOR : Number;
	static private var SURVIVABILITY_AUGMENT_PURCHASED_COLOR : Number;
	static private var SURVIVABILITY_AUGMENT_UNLOCKED_COLOR : Number;
	static private var AEGIS_PURCHASED_COLOR : Number;
	static private var AEGIS_UNLOCKED_COLOR : Number;
	private var m_Category : String;
	private var m_PurchasedTotal : Number;
	private var m_PurchasedColor : Number;
	private var m_UnlockedColor : Number;
	private var m_Levels : Number;
	private var m_Slots : Array;
	private var m_ParentId : Number;

	public function CharacterPointsSubSkillsBar();

	public function Update() : Void;

	private function CreateSlots();

	private function AdjustSlot(index:Number, color:Number) : Void;

	public function SetCategory(value:String) : Void;

	public function SetParentId(id:Number) : Void;

	public function SetLevels(levels:Number) : Void;

	public function SetPurchasedTotal(value:Number) : Void;

}