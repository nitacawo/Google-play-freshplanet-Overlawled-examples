package  
{
	
	import flash.display.MovieClip;
	import com.google.api.games.Games;
	import com.google.api.games.SignIn;
    import com.google.api.games.GameIds;
	import flash.events.*;
	
	import JustForExampleClasses.FastButton;
	import JustForExampleClasses.StaticTextField;
	
	public class alexExample extends MovieClip 
	{
		
		public function alexExample() 
		{
			//Games.initialize();
			
            // some config commands, for example, Games.promptUserToSignInOnStartup()
           // Games.start();
			// constructor code
			
			StaticTextField.init();
			stage.addChild(StaticTextField.feedback);
			
			this.addEventListener(Event.ADDED_TO_STAGE, addedToStageHandler, false, 0, true);
		}
		private function addedToStageHandler(e:Event):void
		{
			this.removeEventListener(Event.ADDED_TO_STAGE, addedToStageHandler);
			trace("huj");
			Games.initialize();
			trace("huj2");
			StaticTextField.feedback.text = "initialize";
			//Games.promptUserToSignInOnStartup(true);
			
			//Games.addStatusEventListener(function listener(e:StatusEvent){trace("HUJ");});
			///Games.setSignInSuccessListener(function listener2(e:StatusEvent){trace("HUJ2");});
			//Games.setSignInFailListener(function listener3(e:StatusEvent){trace("HUJ3");});
			
			
			Games.setSignInSuccessListener(success);
			Games.setSignInFailListener(fail);
			Games.addStatusEventListener(status);
			
			Games.promptUserToSignInOnStartup(true);
			Games.start();
			
			
			//Games.beginUserInitiatedSignIn();
			trace("huj3");
		}
		function status(e:StatusEvent):void
		{
			//trace("status " + Games.isSignedIn());
			//Games.beginUserInitiatedSignIn();
			switch (e.code)
				{
					case SignIn.SUCCESS:
					trace("SUCCESS");
					StaticTextField.feedback.text = "SUCCESS";
					//Games.Leaderboards.showAll();
					Games.Leaderboards.show("CgkIyea20ZAQEAIQAQ");
					break;
					case SignIn.FAIL:
					trace("FAIL");
					StaticTextField.feedback.text = "FAIL";
					break;
				}   
		}
		function success():void
		{
			trace("and it worked ?");
			StaticTextField.feedback.text = "and it worked ?";
		}
		function fail():void
		{
			trace("and it failed?");
			StaticTextField.feedback.text = "and it failed?";
		}
		
		
	}
	
}
