import com.GameInterface.LoreNode;
import com.GameInterface.Lore;
import flash.geom.Point;
import com.Utils.Signal;
import com.GameInterface.DistributedValue;
import com.GameInterface.Game.Character;
import gfx.core.UIComponent;
intrinsic class GUI.Achievement.ViewPanelBase extends UIComponent
{
	private var m_SimpleProgressSize : Point;
	private var m_Data : LoreNode;
	private var m_MainText : MovieClip;
	private var m_Width : Number;
	private var m_Height : Number;
	private var m_Panel : MovieClip;
	private var m_Content : MovieClip;
	private var m_ContentY : Number;
	private var m_HasMedia : Boolean;
	public var ID : Number;
	public var SignalClicked : Signal;
	public var SignalMediaAdded : Signal;
	private var m_HasAchievementEntries : Boolean;
	private var m_SuperInitialized : Boolean;

	public function ViewPanelBase();

	public function SetData(data:LoreNode);

	private function SetMedia();

	public function SetSize(width:Number, height:Number);

	private function LoadImage(container:MovieClip, mediaId:Number);

	private function onLoadInit(target:MovieClip);

	private function onLoadError(target:MovieClip, errorcode:String);

	private function DrawOverlays();

	private function UpdateProgressMeters();

	private function DrawProgressMeters();

	public function GetYPos(id:Number);

	private function RepositionProgressMeters();

	private function GetBreadCrumbs(data:LoreNode) : String;

	private function ProgressMeterClickHandler(id:Number);

	private function SetProgress(progressBar:MovieClip, progressText:TextField, current:Number, max:Number);

}