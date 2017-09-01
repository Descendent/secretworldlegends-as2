import flash.geom.Point;
import flash.geom.Rectangle;
import com.Utils.LDBFormat;
import com.Utils.ID32;
import com.GameInterface.Tooltip.*;
import com.GameInterface.DistributedValue;
import com.GameInterface.ProjectUtils;
import com.Utils.Faction;
import com.GameInterface.Lore;
import com.GameInterface.LoreBase;
import com.GameInterface.LoreNode;
import com.GameInterface.Game.Character;
import com.GameInterface.Game.CharacterBase;
import com.GameInterface.Quests;
import com.GameInterface.QuestsBase;
import gfx.utils.Delegate;
import gfx.core.UIComponent;
import gfx.motion.Tween;
import mx.transitions.easing.*;
import gfx.controls.Button;
import gfx.controls.UILoader;
import gfx.controls.ProgressBar;
import gfx.controls.Label;
intrinsic class GUI.CharacterSheet.FactionRankComponent extends UIComponent
{
	static private var BATTLE_RANK_ICON_ID : Number;
	public var m_CloseButton : MovieClip;
	private var m_Character : Character;
	private var m_Background : MovieClip;
	private var m_Header : TextField;
	private var m_CurrentRankIcon : UILoader;
	private var m_CurrentRankName : TextField;
	private var m_CurrentRankNumber : TextField;
	private var m_CurrentFactionXP : TextField;
	private var m_FactionRankRewardIcon : MovieClip;
	private var m_NextRankView : MovieClip;
	private var m_CurrentXPValue : Number;
	private var m_TotalXPValue : Number;
	private var m_NextRankRequiredXPValue : Number;
	private var m_FactionRankProgressBar : ProgressBar;
	private var m_Padding : Number;
	private var m_Width : Number;
	private var m_Height : Number;
	private var m_BattleRankIcon : UILoader;
	private var m_BattleRankTextField : TextField;
	private var m_BattleXPTextField : TextField;
	private var m_BattleRankProgressBar : ProgressBar;

	public function FactionRankComponent();

	public function configUI();

	private function RemoveFocus();

	private function SetData();

	private function ActivateRewardTooltip(icon:MovieClip);

	public function GetWidth() : Number;

	public function GetHeight() : Number;

}