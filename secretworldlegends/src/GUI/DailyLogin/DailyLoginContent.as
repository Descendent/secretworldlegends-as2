import com.Components.WindowComponentContent;
import gfx.controls.Button;
import com.GameInterface.Claim;
import com.GameInterface.Utils;
import com.Utils.LDBFormat;
intrinsic class GUI.DailyLogin.DailyLoginContent extends WindowComponentContent
{
	private var m_NumTracks : Number;
	private var m_CurrentTrack : Number;
	private var m_StartTrack : Number;
	private var m_Skin : MovieClip;
	private var m_PrevButton : Button;
	private var m_NextButton : Button;

	public function DailyLoginContent();

	private function configUI();

	private function SetLabels();

	private function SlotRewardsUpdated(trackNum:Number);

	private function SlotRewardClaimed(trackNum:Number);

	private function PreviousTrack();

	private function NextTrack();

	private function SetTrack(trackNum:Number, forceRefresh:Boolean);

	private function UpdatePagination();

	private function DisplayNews();

}