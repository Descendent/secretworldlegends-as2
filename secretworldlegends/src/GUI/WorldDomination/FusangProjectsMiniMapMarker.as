import com.Utils.ID32;
import com.Utils.Format;
import com.Utils.Signal;
import mx.utils.Delegate;
intrinsic class GUI.WorldDomination.FusangProjectsMiniMapMarker extends MovieClip
{
	static private var UNCONTROLLED_ICON_RDB_ID : Number;
	static private var DRAGON_ICON_RDB_ID : Number;
	static private var TEMPLARS_ICON_RDB_ID : Number;
	static private var ILLUMINATI_ICON_RDB_ID : Number;
	static private var MARKER_ICON_SCALE : Number;
	public var SignalAllIconsLoaded : Signal;
	private var m_UncontrolledIcon : MovieClip;
	private var m_DragonIcon : MovieClip;
	private var m_TemplarsIcon : MovieClip;
	private var m_IlluminatiIcon : MovieClip;
	private var m_Faction : Number;
	private var m_MarkersArray : Array;
	private var m_CompleteCount : Number;

	public function get faction() : Number;
	public function set faction(value:Number) : Void;


	public function FusangProjectsMiniMapMarker();

	private function Init() : Void;

	private function CreateIcon(instanceName:String, RDBInstance:Number) : MovieClip;

	private function CenterRegisterIcon(target:MovieClip) : Void;

}