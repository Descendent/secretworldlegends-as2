import gfx.core.UIComponent;
import gfx.controls.Button;
import mx.utils.Delegate;
import com.Utils.LDBFormat;
import com.GameInterface.Game.Character;
import com.GameInterface.Claim;
import com.GameInterface.Inventory;
import com.GameInterface.InventoryItem;
import com.GameInterface.Tooltip.*;
import com.GameInterface.DistributedValue;
import com.Components.ItemComponent;
intrinsic class GUI.DailyLogin.Skin extends UIComponent
{
	private var m_CurrentReward : MovieClip;
	private var m_Key : MovieClip;
	private var m_Plus : MovieClip;
	private var m_MemberText : TextField;
	private var m_TodayText : TextField;
	private var m_ClaimButton : Button;
	private var m_PatronHitArea : MovieClip;
	private var m_TrackNum : Number;
	private var m_TrackLength : Number;
	private var m_TrackPos : Number;
	private var m_Initialized : Boolean;
	private var m_Tooltip : TooltipInterface;
	private var m_Character : Character;
	private var m_ClaimTimeout : Number;

	public function Skin();

	private function configUI() : Void;

	private function SetLabels();

	private function ClaimReward();

	private function SlotRewardClaimed(trackNum:Number);

	public function SetTrack(trackNum:Number);

	private function PopulateRewards();

	private function UpdateClaim();

	private function FillRewardClip(rewardClip:MovieClip, trackPos:Number);

	private function ClearRewardClip(rewardClip:MovieClip);

	private function CloseTooltip();

	private function BuyPatron();

	private function onUnload();

}