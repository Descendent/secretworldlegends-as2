import com.Utils.ID32;
import com.Utils.Format;
import com.GameInterface.Game.Character;
intrinsic class GUI.PvPScoreboard.AnimaFragment extends MovieClip
{
	static public var MARK_OF_PANTHEON : String;
	private var m_IconContainer : MovieClip;
	private var m_Label : TextField;

	public function AnimaFragment();

	public function SetReward(rewardType:String, rewardAmount:String) : Void;

	public function AttachAnimaFragmentIcon(RDBInstance:Number) : Void;

}