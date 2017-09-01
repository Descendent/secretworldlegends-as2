intrinsic class GUI.WorldDomination.PvPLatestResultsLeader extends MovieClip
{
	private var m_DragonIcon : MovieClip;
	private var m_TemplarsIcon : MovieClip;
	private var m_IlluminatiIcon : MovieClip;
	private var m_FactionIconsArray : Array;

	public function PvPLatestResultsLeader();

	private function Init() : Void;

	/**
    *  This function uses the Faction global enum to reveal one of the faction icons while hiding the others.
    *  
    *  @param   faction:Number
    *           1:  _global.Enums.Factions.e_FactionDragon
    *           2:  _global.Enums.Factions.e_FactionTemplar
    *           3:  _global.Enums.Factions.e_FactionIlluminati
    **/
	public function SetLeader(faction:Number) : Void;

}