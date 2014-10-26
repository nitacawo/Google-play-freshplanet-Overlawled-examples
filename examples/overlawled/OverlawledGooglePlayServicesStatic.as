package  
{
	
	import com.freshplanet.ane.AirGooglePlayGames.AirGooglePlayGames;
	import com.freshplanet.ane.AirGooglePlayGames.AirGooglePlayGamesEvent;
	import flash.events.Event;
	import flash.events.*;
	
	
	import JustForExampleClasses.StaticTextField;//remove it just for example
	
	//@author Nitacawo twitter.com/nitacawo
	//fill free to follow me on twitter:)
	public class OverlawledGooglePlayServicesStatic 
	{
		private static var LeaderBoardId:String = "CgkI-uf1o7oCEAIQBg";
		public static var dispatcher:EventDispatcher = new EventDispatcher();

		public function OverlawledGooglePlayServicesStatic() 
		{
		}
		public static function initialiseGoogle():void
		{
			if(AirGooglePlayGames.isSupported)
			{
				StaticTextField.feedback.text = "initialising Google Play";//remove it just for example
				trace("initialising Google Play");
				AirGooglePlayGames.getInstance().addEventListener(AirGooglePlayGamesEvent.ON_SIGN_IN_SUCCESS, onSignInSuccess);
				AirGooglePlayGames.getInstance().addEventListener(AirGooglePlayGamesEvent.ON_SIGN_OUT_SUCCESS, onSignOutSuccess);
				AirGooglePlayGames.getInstance().addEventListener(AirGooglePlayGamesEvent.ON_SIGN_IN_FAIL, onSignInFail);
				//AirGooglePlayGames.getInstance().startAtLaunch();
				AirGooglePlayGames.getInstance().signIn();
			}
			else
			{
				StaticTextField.feedback.text = "google play is not supported";//remove it just for example
				trace("google play is not supported");
			}
		}
		private static function onSignInSuccess(e:AirGooglePlayGamesEvent):void
		{
			StaticTextField.feedback.text = "Google play logged in";//remove it just for example
			trace("Google play logged in");
			dispatcher.dispatchEvent(new Event("GoogleConnected",true,true));
			RemoveListeners();
		}
		private static function onSignOutSuccess(e:AirGooglePlayGamesEvent):void
		{
			StaticTextField.feedback.text = "logout";//remove it just for example
			trace("logout");
			RemoveListeners();
		}
		private static function onSignInFail(e:AirGooglePlayGamesEvent):void
		{
			StaticTextField.feedback.text = "Google failed" + e.toString();//remove it just for example
			trace("Google failed");
			trace("event " + e);
			RemoveListeners();
		}
		public static function Score(number:int):void
		{
			StaticTextField.feedback.text = "GooglePlay score sent " + number;//remove it just for example
			trace("GooglePlay score sent " + number);
			AirGooglePlayGames.getInstance().reportScore(LeaderBoardId, number);
		}
		public static function ShowLeaderBoard():void
		{
			AirGooglePlayGames.getInstance().showLeaderboard(LeaderBoardId);
		}
		private static function RemoveListeners():void
		{
			AirGooglePlayGames.getInstance().removeEventListener(AirGooglePlayGamesEvent.ON_SIGN_IN_SUCCESS, onSignInSuccess);
			AirGooglePlayGames.getInstance().removeEventListener(AirGooglePlayGamesEvent.ON_SIGN_OUT_SUCCESS, onSignOutSuccess);
			AirGooglePlayGames.getInstance().removeEventListener(AirGooglePlayGamesEvent.ON_SIGN_IN_FAIL, onSignInFail);
		}
	}
}
