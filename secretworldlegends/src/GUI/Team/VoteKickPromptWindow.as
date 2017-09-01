import com.Utils.LDBFormat;
import com.Utils.ID32;
import com.GameInterface.Game.TeamInterface;
intrinsic class GUI.Team.VoteKickPromptWindow extends MovieClip
{
	private var m_HeaderLabel : TextField;
	private var m_DescriptionLabel : TextField;
	private var m_OfflineButton : MovieClip;
	private var m_AFKButton : MovieClip;
	private var m_HarassmentButton : MovieClip;
	private var m_WarningLabel : TextField;
	private var m_ConfirmButton : MovieClip;
	private var m_CancelButton : MovieClip;
	private var m_TargetID : ID32;
	private var m_TargetName : String;

	public function VoteKickPromptWindow();

	public function onLoad() : Void;

	private function SetTarget(targetID:ID32, targetName:String) : Void;

	private function Position() : Void;

	private function RadioButtonClickEventHandler() : Void;

	private function ConfirmEventHandler() : Void;

	private function CancelEventHandler() : Void;

}