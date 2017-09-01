import com.GameInterface.PvPMinigame.PvPMinigame;
import GUI.WorldDomination.FusangProjectsMiniMapMarker;
intrinsic class GUI.WorldDomination.FusangProjectsMiniMap extends MovieClip
{
	static private var SOUTH_DISTRICT : String;
	static private var EAST_DISTRICT : String;
	static private var WEST_DISTRICT : String;
	static private var CENTER_DISTRICT : String;
	private var m_SouthMarker : MovieClip;
	private var m_EastMarker : MovieClip;
	private var m_WestMarker : MovieClip;
	private var m_CenterMarker : MovieClip;
	private var m_DimensionID : Number;

	public function FusangProjectsMiniMap();

	private function Init() : Void;

	private function CreateMarker(instanceName:String, x:Number, y:Number) : MovieClip;

	private function InitializeMarkerFaction(target:MovieClip) : Void;

	private function SlotUpdateWorldStats(statName:String, value:Number, type1:Number, type2:Number, dimensionID:Number) : Void;

}