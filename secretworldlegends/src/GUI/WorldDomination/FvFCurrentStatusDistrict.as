import com.Utils.LDBFormat;
import GUI.WorldDomination.FvFStatus;
intrinsic class GUI.WorldDomination.FvFCurrentStatusDistrict extends MovieClip
{
	private var m_UncontrolledIcon : MovieClip;
	private var m_IlluminatiIcon : MovieClip;
	private var m_DragonIcon : MovieClip;
	private var m_TemplarsIcon : MovieClip;
	private var m_DistrictName : TextField;
	private var m_FactionName : TextField;
	private var m_FactionsArray : Array;

	public function FvFCurrentStatusDistrict();

	private function Init() : Void;

	/**
    *   This function uses the Faction global enum to reveal one of the faction icons while hiding the others and to set the faction's name.
    *  
    *   @param  faction:Number
    *           0:  uncontrolled district
    *           1:  _global.Enums.Factions.e_FactionDragon
    *           2:  _global.Enums.Factions.e_FactionTemplar
    *           3:  _global.Enums.Factions.e_FactionIlluminati  
    **/
	public function SetFaction(faction:Number) : Void;

	/**
    *   This function sets the district name.
    *  
    *   @param  name:String
    *           Sets the text property of the m_DistrictName TextField
    **/
	public function SetDistrict(name:String) : Void;

}