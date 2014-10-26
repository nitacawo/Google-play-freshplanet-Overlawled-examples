package  
{
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	
	import JustForExampleClasses.FastButton;
	import JustForExampleClasses.StaticTextField;
	import flash.events.Event;

	//this class is made just to show how to handle my google play Static class
	//it handles connect, push score and parse leaderboard. However the rest of the functions are ready to be used
	//and can be checked in OverlawledGooglePlayServicesStatic
	// I hope it helps someone, goodluck.
	
	//@author Nitacawo twitter.com/nitacawo
	//fill free to follow me on twitter:)
	public class OverlawledExample extends MovieClip 
	{
		var InitialiseButton:FastButton = new FastButton("Init Google");
		var PushScoreButton:FastButton = new FastButton("Push score");
		var ShowLeaderBoardButton:FastButton = new FastButton("show LeaderBoard");
		var ScoreToPush:int = 100;
		var Connected:Boolean = false;
		public function OverlawledExample() 
		{
			StaticTextField.init();
			stage.addChild(StaticTextField.feedback);
			
			OverlawledGooglePlayServicesStatic.dispatcher.addEventListener("GoogleConnected", GoogleConnectedHandler);
			stage.addChild(InitialiseButton);
			InitialiseButton.y = 15;
			InitialiseButton.addEventListener(MouseEvent.CLICK , InitialiseGoogleButtonClicked);
		}
		function GoogleConnectedHandler(even:Event):void
		{
			OverlawledGooglePlayServicesStatic.dispatcher.removeEventListener("GoogleConnected", GoogleConnectedHandler);
			Connected = true;
			
			//showing the rest of the buttons only after connection success
			stage.addChild(PushScoreButton);
			PushScoreButton.y = 100;
			PushScoreButton.addEventListener(MouseEvent.CLICK ,PushScoreButtonClicked);
			stage.addChild(ShowLeaderBoardButton);
			ShowLeaderBoardButton.y = 200;
			ShowLeaderBoardButton.addEventListener(MouseEvent.CLICK ,ShowLeaderBoardButtonClicked);
		}
		function ShowLeaderBoardButtonClicked(event:MouseEvent):void
		{
			StaticTextField.feedback.text = "get LeaderBoard clicked";
			OverlawledGooglePlayServicesStatic.ShowLeaderBoard();
		}
		function PushScoreButtonClicked(event:MouseEvent):void
		{
			StaticTextField.feedback.text = "PushScoreButtonClicked, score" + ScoreToPush;
			OverlawledGooglePlayServicesStatic.Score(ScoreToPush);
			
		}
		function InitialiseGoogleButtonClicked(event:MouseEvent):void
		{
			StaticTextField.feedback.text = "Google Play button Clicked";
			OverlawledGooglePlayServicesStatic.initialiseGoogle();
		}
	}
	
}
