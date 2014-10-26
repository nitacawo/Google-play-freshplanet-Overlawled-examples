###Instructions
* Well first of all run up to date air sdk :)
* Upload apk with google play services implemented in console. You must use the same certificate.
* Connect your game with game services(In google developer console>game services>add a new game)
![](/screenshots/1.png?raw=true)
* Modify your-app.xml file 
**Package name** in console must be with **air.** and be the same as your app **id** in xml
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
========================
========================
========================
========================
##### if your app shows the google play window but fails to connect or crashes check out the issue which might happen
##### Goto Game details scroll down to API CONSOLE PROJECT and click your project name
![](/screenshots/2.png?raw=true)
========================
========================
##### Check if in api & auth>Credentials> **package name** is the same as in the developer console 
![](/screenshots/3.png?raw=true)
========================
========================
##### it must be the same as in developer console if it is not go back and add game services again but this time use  **I already use GOOGLE APIS in my game** button, find your app and add.Check again if it shows up properly this time.
![](/screenshots/4.png?raw=true)

==========================================
==========================================

*you don't need to publish game services to test it with your own account.




