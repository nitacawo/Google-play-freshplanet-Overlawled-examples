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
======
======
##### Goto Game details scroll down to API CONSOLE PROJECT and click your project name
![](/screenshots/2.png?raw=true)
======
======
##### Check if in api & auth>Credentials> **package name** is the same as in the developer console 
![](/screenshots/3.png?raw=true)
======
======
##### if it is not like showed on the screen you need to ad game services again but use **I already use GOOGLE APIS in my game** button find your app and add. Check if it shows up properly this time.
![](/screenshots/4.png?raw=true)
##if you have questions twitter.com/nitacawo
####I've added screenshots from my console and phone


