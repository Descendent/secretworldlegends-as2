import flash.filters.BevelFilter;
import flash.filters.BlurFilter;
import flash.filters.GlowFilter;
import flash.geom.Point;
import mx.utils.Delegate;
import flash.filters.DropShadowFilter;
import com.Components.ItemSlot;
import com.GameInterface.Quests;
import com.GameInterface.Quest;
import com.GameInterface.Log;
import com.GameInterface.DistributedValue;
import com.Utils.Draw;
import com.GameInterface.Game.Character;
import com.GameInterface.Inventory;
import com.Utils.Signal;
import com.Utils.ID32;
import com.Utils.LDBFormat;
import com.Utils.Text;
import com.Components.ItemComponent;
import com.Components.WindowComponentContent;
import gfx.controls.Button;
import gfx.motion.Tween;
import mx.transitions.easing.*;
import com.GameInterface.Utils;
intrinsic class GUI.Mission.MissionRewardWindow extends WindowComponentContent
{
	private var m_Height : Number;
	private var m_Width : Number;
	public var SignalClose : Signal;
	private var m_Character : Character;
	private var m_Faction : Number;
	private var m_Inventory : Inventory;
	private var m_Mission : Quest;
	private var m_ContentY : Number;
	private var m_RewardSize : Number;
	public var m_QuestID : Number;
	public var m_MainQuestID : Number;
	private var m_InnerPadding : Number;
	private var m_DescriptionBackground : MovieClip;
	private var m_RewardBackground : MovieClip;
	private var m_RewardArray : Array;
	private var m_OptionalRewardArray : Array;
	private var m_OptionalSelectedIcon : MovieClip;
	private var m_Notifier : MovieClip;
	private var m_XPReward : MovieClip;
	private var m_CashReward : MovieClip;
	private var m_CollectButton : Button;
	private var m_FactionLogo : MovieClip;
	private var m_From : TextField;
	private var m_To : TextField;
	private var m_Subject : TextField;
	private var m_FromText : TextField;
	private var m_ToText : TextField;
	private var m_SubjectText : TextField;
	private var m_MissionDescription : TextField;
	private var m_RewardHeader : TextField;
	private var m_OptionalRewardHeader : TextField;
	private var m_RewardDivider : MovieClip;
	private var m_MemberBonusHeader : TextField;
	private var m_BonusXPReward : MovieClip;
	private var m_BonusCashReward : MovieClip;
	private var m_MemberIcon : MovieClip;
	private var m_InvisibleShopButton : MovieClip;

	public function MissionRewardWindow();

	public function configUI();

	public function SetData(rewardObject:Object);

	private function AddRewards(awardsArray:Array, instanceName:String, selectable:Boolean) : Void;

	private function Layout();

	private function SlotMemberStatusUpdated(member:Boolean) : Void;

	public function GetSize() : Point;

	public function SetSize(width:Number, height:Number);

	private function OptionalRewardsClickHandler() : Void;

	private function GetFactionLogo(faction:Number) : String;

	public function GetMissionObject(id:Number) : Quest;

	private function CollectRewardsHandler(event:Object) : Void;

	private function ShopButtonReleaseHandler() : Void;

	public function Close();

	public function GetID();

}