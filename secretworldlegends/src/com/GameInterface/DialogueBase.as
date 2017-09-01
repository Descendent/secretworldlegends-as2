import com.Utils.Signal;
import com.Utils.ID32;
intrinsic class com.GameInterface.DialogueBase
{
	static public var SignalDialogueEnterVicinity : Signal;
	static public var SignalDialogueLeaveVicinity : Signal;
	static public var SignalOpenChatWindow : Signal;
	static public var SignalCloseChatWindow : Signal;
	static public var SignalNPCChatTextReceived : Signal;
	static public var SignalNPCChatQuestionListReceived : Signal;
	static public var SignalConversationInfoReceived : Signal;
	static public var SignalVoiceStarted : Signal;
	static public var SignalVoiceFinished : Signal;
	static public var SignalVoiceAborted : Signal;

	static public function StartConversation(npcID:ID32);

	static public function EndConversation(npcID:ID32);

	static public function ChooseTopic(npcID:ID32, topicIndex:Number);

	static public function JumpToTopic(npcID:ID32, topicIndex:Number, topicNum:Number);

}