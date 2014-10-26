package  
{
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	
	import JustForExampleClasses.FastButton;
	import JustForExampleClasses.StaticTextField;
	import flash.events.Event;

	//this class is made just to show how to handle my google play Static class
	//it handles connect, push score and parse leaderboard. However the rest of the functions are ready to be used
	//and can be checked in FreshplanetGooglePlayServicesStatic
	// I hope it helps someone, goodluck.
	
	//@author Nitacawo twitter.com/nitacawo
	//fill free to follow me on twitter:)
	public class Example extends MovieClip 
	{
		var InitialiseButton:FastButton = new FastButton("Init Google");
		var PushScoreButton:FastButton = new FastButton("Push score");
		var getLeaderBoardButton:FastButton = new FastButton("get LeaderBoard");
		var ScoreToPush:int = 100;
		var Connected:Boolean = false;
		public function Example() 
		{
			StaticTextField.init();
			stage.addChild(StaticTextField.feedback);
			
			FreshplanetGooglePlayServicesStatic.dispatcher.addEventListener("GoogleConnected", GoogleConnectedHandler);
			stage.addChild(InitialiseButton);
			InitialiseButton.y = 15;
			InitialiseButton.addEventListener(MouseEvent.CLICK , InitialiseGoogleButtonClicked);
		}
		function GoogleConnectedHandler(even:Event):void
		{
			FreshplanetGooglePlayServicesStatic.dispatcher.removeEventListener("GoogleConnected", GoogleConnectedHandler);
			Connected = true;
			
			//showing the rest of the buttons only after connection success
			stage.addChild(PushScoreButton);
			PushScoreButton.y = 100;
			PushScoreButton.addEventListener(MouseEvent.CLICK ,PushScoreButtonClicked);
			stage.addChild(getLeaderBoardButton);
			getLeaderBoardButton.y = 200;
			getLeaderBoardButton.addEventListener(MouseEvent.CLICK ,getLeaderBoardButtonClicked);
		}
		function getLeaderBoardButtonClicked(event:MouseEvent):void
		{
			StaticTextField.feedback.text = "get LeaderBoard clicked";
			FreshplanetGooglePlayServicesStatic.getLeaderBoard();
		}
		function PushScoreButtonClicked(event:MouseEvent):void
		{
			StaticTextField.feedback.text = "PushScoreButtonClicked, score" + ScoreToPush;
			FreshplanetGooglePlayServicesStatic.Score(ScoreToPush);
			
		}
		function InitialiseGoogleButtonClicked(event:MouseEvent):void
		{
			StaticTextField.feedback.text = "Google Play button Clicked";
			FreshplanetGooglePlayServicesStatic.initialiseGoogle();
		}
	}
	
}
