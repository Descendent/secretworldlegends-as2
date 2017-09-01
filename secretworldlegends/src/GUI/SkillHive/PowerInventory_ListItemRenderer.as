import com.GameInterface.ProjectSpell;
import com.GameInterface.SpellData;
import com.GameInterface.Spell;
import com.GameInterface.Game.Shortcut;
import com.GameInterface.Game.Character;
import com.GameInterface.FeatData;
import com.GameInterface.Utils;
import com.GameInterface.Tooltip.TooltipUtils;
import com.GameInterface.Tooltip.*;
import com.GameInterface.DistributedValue;
import com.Utils.DragObject;
import GUI.HUD.AbilityBase;
import GUI.SkillHive.SkillHiveSignals;
import GUI.SkillHive.BuyButton;
import com.Utils.Signal;
import com.Utils.LDBFormat;
import com.Utils.Colors;
import gfx.utils.Constraints;
import gfx.controls.ListItemRenderer;
import gfx.controls.CheckBox;
import mx.utils.Delegate;
import flash.geom.ColorTransform;
import flash.geom.Transform;
import flash.geom.Matrix;
import flash.geom.Point;
intrinsic class GUI.SkillHive.PowerInventory_ListItemRenderer extends ListItemRenderer
{
	public var m_Pos : MovieClip;
	public var m_Icon : MovieClip;
	public var m_Name : TextField;
	public var m_Category : TextField;
	public var m_Type : TextField;
	public var m_SubTypes : TextField;
	public var m_Effects : TextField;
	public var m_WeaponIcon : MovieClip;
	public var m_BuyButton : BuyButton;
	public var m_PassiveStripes : MovieClip;
	public var m_BgColor : MovieClip;
	public var m_Hit : MovieClip;
	public var m_Symbol : MovieClip;
	public var m_SubTypesArray : Array;
	public var m_EffectsArray : Array;
	private var m_Tooltip : TooltipInterface;
	private var m_WasHit : Boolean;
	private var m_HitPos : Point;

	private function PowerInventory_ListItemRenderer();

	public function setData(data:Object) : Void;

	public function SlotMouseUp();

	public function onMousePress(buttonIdx:Number, clickCount:Number);

	public function SlotMouseMove();

	public function SlotBuyClicked();

	private function configUI() : Void;

	public function SlotRollOverIcon();

	public function SlotRollOutIcon();

	private function CloseTooltip() : Void;

	public function SlotSelectAbility() : Void;

	private function SetupIcon();

	private function SetSubTypes();

	private function SetEffects();

	private function GetCategory() : String;

}