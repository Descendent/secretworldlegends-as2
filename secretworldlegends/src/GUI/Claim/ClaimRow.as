import mx.utils.Delegate;
import com.Utils.Colors;
import com.Utils.GlobalSignal;
import com.Utils.Signal;
intrinsic class GUI.Claim.ClaimRow extends MovieClip
{
	static private var SELECTED_COLOR : Number;
	static private var DESELECTED_COLOR : Number;
	private var m_Item : MovieClip;
	private var m_Name : MovieClip;
	private var m_Recurrent : MovieClip;
	private var m_Expires : MovieClip;
	private var m_Origin : MovieClip;
	private var m_CategoriesArray : Array;
	private var m_IsSelected : Boolean;
	private var m_ID : Number;
	public var SignalSelectedClaimRow : Signal;

	public function get selected() : Boolean;

	public function get ID() : Number;
	public function set ID(value:Number) : Void;


	public function ClaimRow();

	private function ReleaseEventHandler() : Void;

	public function SlotClaimRowSelected() : Void;

}