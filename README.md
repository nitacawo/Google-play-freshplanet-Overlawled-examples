###Instructions
* Well first of all run up to date air sdk :)
* Connect your game with game services(In google developer console>game services>add a new game)
* ## Modify your-app.xml file 

![](/screenshots/1.png?raw=true)

Package name in console must be with air. and be the same as your app id in xml
 ```xml
  <id>TrollBootman</id>
 ```

 ```xml
    <android>
        <manifestAdditions><![CDATA[<manifest>
<uses-sdk android:minSdkVersion="9"></uses-sdk>
<application>

				<!-- GooglePlay Games Services -->
				<meta-data android:name="com.google.android.gms.games.APP_ID" android:value="\ 84364063738" />
				<meta-data android:name="com.google.android.gms.version" android:value="@integer/google_play_services_version" />
				<activity android:name="com.freshplanet.googleplaygames.SignInActivity" android:theme="@android:style/Theme.Translucent.NoTitleBar.Fullscreen" />
            </application>	
</manifest>]]></manifestAdditions>
    </android>
 ```
* Upload apk with google play services implemented in console. You must use the same certificate.
* Make sure your Package name starst with air. in game services>Linked apps
* 5. Check if Enable anti-piracy is turned off for testing period (services>Linked apps)

##Questions  twitter.com/nitacawo
####I've added screenshots from my console and phone


