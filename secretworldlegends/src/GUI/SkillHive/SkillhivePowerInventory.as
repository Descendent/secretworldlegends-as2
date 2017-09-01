import com.Components.FeatList.MCLItemFeat;
import com.Components.MultiColumnListView;
import com.Components.MultiColumnList.ColumnData;
import flash.geom.Point;
import GUI.SkillHive.CharacterSkillPointPanel;
import GUI.SkillHive.PowerInventoryHeader;
import GUI.SkillHive.PowerInventorySearch;
import gfx.controls.ScrollingList;
import com.GameInterface.FeatInterface;
import com.GameInterface.FeatData;
import com.GameInterface.SkillWheel.Cell;
import com.GameInterface.SkillWheel.Cluster;
import mx.utils.Delegate;
import com.Utils.LDBFormat;
import com.GameInterface.Game.Character;
import com.GameInterface.SpellData;
import com.GameInterface.Spell;
import com.GameInterface.Tooltip.TooltipUtils;
import gfx.core.UIComponent;
import com.GameInterface.Game.Shortcut;
import GUI.SkillHive.SkillHiveSignals;
import com.Utils.DragObject;
import GUI.HUD.AbilityBase;
import com.GameInterface.Utils;
import com.GameInterface.Lore;
intrinsic dynamic class GUI.SkillHive.SkillhivePowerInventory extends UIComponent
{
	static private var HEADER_NAME : Object;
	static private var HEADER_CATEGORY : Object;
	static private var HEADER_TYPE : Object;
	static private var HEADER_SUBTYPE : Object;
	static private var HEADER_EFFECT : Object;
	static private var HEADER_COST : Object;
	static private var AUXILLIARY_SLOT_ACHIEVEMENT : Number;
	private var m_MovieClip : MovieClip;
	private var m_PowerInventory_Filters : MovieClip;
	private var m_SearchResultNum : MovieClip;
	private var m_Text : TextField;
	private var m_HeaderBackground : MovieClip;
	private var m_Navigator : MovieClip;
	private var m_FeatList : MultiColumnListView;
	private var m_FilteredFeatsText : Array;
	private var m_FilteredFeats : Array;
	private var m_AvailableWeapons : Array;
	private var m_Search : PowerInventorySearch;
	private var m_ShouldUpdateSearch : Boolean;
	private var m_AutoUpdate : Boolean;
	private var m_CurrentSortedHeader : PowerInventoryHeader;
	private var m_CurrentFeatMouseDown : Number;
	private var m_CurrentFeatHitPos : Point;

	public function SkillhivePowerInventory();

	public function configUI();

	public function SlotFeatMouseDown(itemIndex:Number, buttonIndex:Number);

	public function onMouseMove();

	public function onMouseUp();

	public function SlotFeatClicked(itemIndex:Number, buttonIndex:Number);

	public function UpdateVisibility(visible:Boolean);

	public function SetSize(width:Number, height:Number);

	public function SlotSearchText(event:Object);

	public function UpdateFilterFromText();

	public function UpdateSearch();

	public function UpdateFilterFromControls();

	public function UpdateResult();

	public function UpdateNavigator();

	public function SlotAllSelected(event:Object);

	public function SlotPurchasedSelected(event:Object);

	public function SlotAvailableSelected(event:Object);

	public function SlotLockedSelected(event:Object);

	public function CheckUpdateAll();

	public function SlotCategorySelected(event:Object);

	public function SlotWeaponTypeSelected(event:Object);

	public function SlotPrevResult();

	public function SlotNextResult();

}