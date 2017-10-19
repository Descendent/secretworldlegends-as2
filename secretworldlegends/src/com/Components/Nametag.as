import com.Utils.GlobalSignal;
import flash.filters.GlowFilter;
import mx.transitions.easing.*;
import mx.utils.Delegate;
import flash.geom.Point;
import flash.geom.Matrix;
import com.GameInterface.Game.Character;
import com.GameInterface.Game.Dynel;
import com.GameInterface.Game.TeamInterface;
import com.GameInterface.Nametags;
import com.GameInterface.DistributedValue;
import com.Components.StatBar;
import com.Components.CastBar;
import com.Utils.ID32;
import gfx.core.UIComponent;
import gfx.controls.Label;
import com.Utils.Signal;
import com.Utils.Colors;
import com.Utils.LDBFormat;
import com.GameInterface.Lore;
import com.GameInterface.LoreNode;
intrinsic class com.Components.Nametag extends UIComponent
{
	private var m_Name : TextField;
	private var m_NameBarArt : MovieClip;
	private var m_Title : MovieClip;
	private var m_Guild : MovieClip;
	private var m_Level : MovieClip;
	private var m_DistanceToNPC : MovieClip;
	private var m_FactionRankIcon : MovieClip;
	private var m_HealthBar : MovieClip;
	private var m_CastBar : MovieClip;
	private var m_MonsterBand : MovieClip;
	private var m_ConLoading : MovieClip;
	private var m_LockedIcon : MovieClip;
	private var m_CinematicIcon : MovieClip;
	private var m_MemberIcon : MovieClip;
	private var m_NpcIcon : MovieClip;
	private var m_IsNPC : Boolean;
	private var m_IsSimpleDynel : Boolean;
	private var m_CheckDistance : Boolean;
	private var m_LeftAlignXCollapsed : Number;
	private var m_LeftAlignXExpanded : Number;
	private var m_MonsterBandPush : Number;
	private var m_IconTextPadding : Number;
	private var m_Distance : Number;
	private var m_IsTarget : Boolean;
	private var m_AggroStanding : Number;
	private var m_ForceAlive : Boolean;
	private var m_DetailedComponents : Array;
	private var m_IsLocked : Boolean;
	private var m_IsHostileTarget : Boolean;
	private var m_HateListCreated : Boolean;
	private var m_ComponentsLoaded : Boolean;
	private var m_ShowHealthBarCollapsed : Boolean;
	private var m_ForceHealthBar : Boolean;
	private var m_MaxScale : Number;
	private var m_MinScale : Number;
	private var m_TweenTime : Number;
	private var m_DistanceY : Number;
	private var GRADE_NORMAL : Number;
	private var GRADE_SWARM : Number;
	private var GRADE_ELITE : Number;
	private var m_HealthBarWidth : Number;
	private var m_Character : Character;
	private var m_Dynel : Dynel;
	private var m_DynelID : ID32;
	private var m_NametagCategory : Number;
	private var m_NametagColor : Number;
	private var m_NametagIconColor : Number;
	private var m_ClientCharacter : Character;
	private var m_RemoveOnDeselect : Object;
	private var m_TextColor : Number;
	private var m_CastBarText : MovieClip;
	public var SignalRemoveNametag : Signal;
	static public var SHOW_HEALTHBAR_NONE : Object;
	static public var SHOW_HEALTHBAR_FRIENDS : Object;
	static public var SHOW_HEALTHBAR_ENEMIES : Object;
	static public var SHOW_HEALTHBAR_ALL : Object;
	static public var SHOW_HOSTILE_NAMETAG_NONE : Object;
	static public var SHOW_HOSTILE_NAMETAG_PARTIAL : Object;
	static public var SHOW_HOSTILE_NAMETAG_FULL : Object;

	public function Nametag();

	public function SlotSignalCommandStarted(name:String, progressBarType:Number, uninterruptable:Boolean) : Void;

	public function SlotSignalCommandAborted() : Void;

	public function SlotSignalCommandEnded() : Void;

	public function SetDynelID(dynelID:ID32);

	public function UpdateCinematicIcon();

	public function UpdateFactionRankIcon();

	public function UpdateNametagGroupSize(encounterType:Number);

	public function UpdateNametagMonsterbandColor(isNightmare:Boolean);

	public function GetDynelID();

	public function GetDistance() : Number;

	public function IsTarget() : Boolean;

	public function configUI();

	public function Compare(otherTag:Nametag) : Number;

	public function onEnterFrame();

	public function Update();

	public function SlotClientCharacterStatChanged(statId:Number);

	public function SlotLockedToTarget(targetID:ID32);

	public function SlotMemberStatusUpdated(member:Boolean);

	public function SlotDynelStatChanged(statID:Number);

	public function SlotCharacterDied();

	public function SlotCharacterAlive();

	public function UpdateAggro(aggro:Number);

	public function UpdateNametagCategory();

	public function UpdateName();

	public function SetRemoveOnDeselect(remove:Boolean);

	public function AddHealthBar();

	public function SetAsTarget(target:Boolean);

	public function SetAsHostileTarget(hostileTarget:Boolean, hatelistCreated:Boolean);

	public function StupidDistanceHack();

	public function GetHatelistCreated() : Boolean;

	public function GetIsHostileTarget() : Boolean;

}