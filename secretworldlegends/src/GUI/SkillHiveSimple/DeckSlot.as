import gfx.core.UIComponent;
import gfx.controls.Button;
import com.Components.FCButton;
import com.Utils.LDBFormat;
import com.Utils.Colors;
import com.Utils.Signal;
import com.Utils.Text;
import mx.utils.Delegate;
import com.GameInterface.DialogIF;
import com.GameInterface.GearManager;
intrinsic class GUI.SkillHiveSimple.DeckSlot extends UIComponent
{
	public var m_Name : TextField;
	public var m_Background : MovieClip;
	public var m_SaveButton : FCButton;
	public var m_EquipButton : FCButton;
	public var m_DeleteButton : Button;
	public var m_LockIcon : MovieClip;
	public var m_HitArea : MovieClip;
	public var m_NewBuild : MovieClip;
	private var m_HasBuild : Boolean;
	private var m_IsLocked : Boolean;
	private var m_Selected : Boolean;
	private var m_Index : Number;
	private var m_LastClick : Number;
	public var SignalDeckSelected : Signal;
	public var SignalDeckDeleted : Signal;
	public var SignalCreateDeck : Signal;
	static private var TINT_INTENSITY : Object;

	public function DeckSlot();

	private function configUI();

	public function SetData(deckName:String, hasBuild:Boolean, isLocked:Boolean, index:Number);

	public function GetName() : String;

	private function UpdateState();

	private function EquipBuild();

	private function SaveBuild();

	private function ConfirmOverwriteBuild(buttonId:Number);

	private function DeleteBuild();

	private function ConfirmDeleteBuild(buttonId:Number);

	private function HitAreaPressHandler() : Void;

	private function HitAreaReleaseHandler() : Void;

	private function HitAreaRollOverHandler() : Void;

	private function HitAreaRollOutHandler() : Void;

	public function Deselect() : Void;

	public function Select() : Void;

	private function RemoveFocus() : Void;

}