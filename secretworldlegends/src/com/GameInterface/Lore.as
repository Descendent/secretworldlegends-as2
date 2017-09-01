import com.Utils.Signal;
import com.GameInterface.LoreNode;
import com.GameInterface.Utils;
import com.Utils.LDBFormat;
import com.GameInterface.DistributedValue;
import com.GameInterface.ACGItem;
import com.GameInterface.Tooltip.*;
intrinsic class com.GameInterface.Lore extends com.GameInterface.LoreBase
{
	static private var s_LoreCache : Object;
	static private var s_FilteredLoreCache : Object;

	static private function GetCachedNode(node:LoreNode, factionFilter:Boolean);

	static public function ClearCache() : Void;

	static public function GetLoreTree() : LoreNode;

	static public function GetAchievementTree(factionFilter:Boolean) : LoreNode;

	static public function GetTitleTree(factionFilter:Boolean) : LoreNode;

	static public function GetTutorialTree() : LoreNode;

	static public function GetPetTree() : LoreNode;

	static public function GetSeasonalAchievementTree() : LoreNode;

	static public function GetMountTree() : LoreNode;

	static public function GetTeleportTree() : LoreNode;

	static public function GetEmoteTree() : LoreNode;

	static public function RecursiveLoadNode(node:LoreNode, factionFilter:Boolean) : Void;

	static public function GetCountForNodeId(nodeId:Number) : Number;

	static public function GetTitleArray() : Array;

	static private function RecursiveFillTitleArray(node:LoreNode, array:Array);

	static public function GetFactionRankArray(factionFilter:Boolean) : Array;

	static private function RecursiveFillFactionTitleArray(node:LoreNode, array:Array);

	static public function IsLeafNode(node:LoreNode) : Boolean;

	static public function GetFirstNonLeafNode(node:LoreNode) : LoreNode;

	static public function GetDataNodeById(id:Number) : LoreNode;

	static private function RecursiveFindNode(id:Number, haystack:LoreNode) : LoreNode;

	static public function GetTagCategory(tagId:Number) : Number;

	static public function GetRewardItemNameArray(id:Number) : Array;

	static public function GetDepth(id:Number) : Number;

	static public function IsSeasonalAchievementAvailable(tagId:Number) : Boolean;

	static public function ShouldShowGetAnimation(tagId:Number) : Boolean;

	static public function GetCurrentFactionRankNode() : LoreNode;

	static public function GetNextFactionRankNode() : LoreNode;

}