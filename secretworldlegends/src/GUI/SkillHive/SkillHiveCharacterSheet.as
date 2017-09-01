import com.GameInterface.DistributedValue;
import com.Info.CharacterSheet.CharacterStats;
import mx.utils.Delegate;
import com.Utils.ImageLoader;
import com.GameInterface.Log;
intrinsic class GUI.SkillHive.SkillHiveCharacterSheet
{
	public var m_Name : String;
	private var m_TDB_PaperDollName : String;
	private var m_TDB_StatPageName : String;
	private var m_TDB_FactionPageName : String;
	private var m_TDB_GearManagementPageName : String;
	private var m_TDB_ReputationPageName : String;
	private var m_TDB_TotalSkillpoint : String;
	private var m_TDB_HiveCompletion : String;
	private var m_Pages : Array;
	private var i_Content : MovieClip;
	public var m_StatPage : MovieClip;

	public function SkillHiveCharacterSheet(characterSheet:MovieClip);

	public function init();

	public function SlotCharacterLoaded(url:String, succeded:Boolean);

	public function SetTotalSkillpoints(newSkillPoints:Number);

	public function SetSkillHiveCompletion(newCompletion:Number);

	public function SetName(newName:String) : String;

	public function GetWidth();

	public function GetLeftMenuIndex(name:String) : Number;

	public function UpdateMenuSize(fromIndex:Number, toY:Number, speed:Number) : Void;

}