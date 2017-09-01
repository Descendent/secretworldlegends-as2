import com.Utils.Colors;
import com.GameInterface.Log;
import mx.utils.Delegate;
import com.GameInterface.InventoryItem;
intrinsic class com.Components.ItemComponent extends MovieClip
{
	private var DECORATION_STRIPES : Number;
	private var DECORATION_CIRCLES : Number;
	private var DECORATION_GRID : Number;
	private var DECORATION_NONE : Number;
	private var DECORATION_AEGIS : Number;
	private var PLAIN : Number;
	private var CHAKRA1 : Number;
	private var CHAKRA2 : Number;
	private var CHAKRA3 : Number;
	private var CHAKRA4 : Number;
	private var CHAKRA5 : Number;
	private var CHAKRA6 : Number;
	private var CHAKRA7 : Number;
	private var AEGIS1 : Number;
	private var AEGIS2 : Number;
	private var m_ItemShape : Number;
	private var m_StackSize : Number;
	private var m_Alpha : Number;
	private var m_Locked : Boolean;
	private var m_InventoryItem : InventoryItem;
	private var m_Content : MovieClip;
	private var m_Background : MovieClip;
	private var m_Stroke : MovieClip;
	private var m_Decoration : MovieClip;
	private var m_Glow : MovieClip;
	private var m_Icon : MovieClip;
	private var m_StackSizeClip : MovieClip;
	private var m_LevelClip : MovieClip;
	private var m_DurabilityBackground : MovieClip;
	private var m_Pips : MovieClip;
	private var m_BackgroundColor : Number;
	private var m_IconLoader : MovieClipLoader;
	private var m_StackSizeScale : Number;
	private var m_ShowCanUse : Boolean;
	private var m_CooldownIntervalID : Number;
	private var m_Increments : Number;
	private var m_ExpireTime : Number;
	private var m_HasCooldown : Boolean;
	private var m_TotalDuration : Number;
	private var m_CooldownTimer : MovieClip;
	private var m_CooldownTint : Number;
	private var m_IconLoadInterval : Number;

	public function ItemComponent();

	public function PrintStats();

	public function SetData(inventoryItem:InventoryItem, iconLoadDelay:Number);

	private function SetIcon() : Void;

	private function SetRarity();

	private function SetPips();

	private function SetCanUse();

	private function GetRarityColor() : Number;

	private function SetType();

	private function SetColorLine();

	private function SetItemShape(index:Number);

	public function SetShowCanUse(show:Boolean);

	public function SetStackSize(stackSize:Number);

	public function SetLevel();

	private function ShouldShowLevel() : Boolean;

	public function SetStackSizeScale(scale:Number);

	public function SetAlpha(alpha:Number);

	public function GetAlpha() : Number;

	public function SetLocked(locked:Boolean);

	public function Glow(glow:Boolean);

	public function SetThrottle(throttle:Boolean);

	public function HasThrottle();

	private function SetDecoration(index:Number);

	private function SetBackgroundColor(color:Number);

	private function SetStrokeColor(color:Number);

	private function SetTypeCrafting();

	private function SetTypeMission();

	private function SetTypeMissionUsable();

	private function SetTypeWeapons();

	private function SetTypeChakras();

	private function SetTypeConsumable();

	private function SetTypeGadget();

	private function SetTypeAegis();

	private function SetTypeNone();

	public function UnloadIcon();

	public function GetIcon() : MovieClip;

	public function SetCooldown(cooldownEnd:Number, cooldownStart, showTimer:Boolean);

	public function RemoveCooldown();

	private function UpdateTimer() : Void;

}