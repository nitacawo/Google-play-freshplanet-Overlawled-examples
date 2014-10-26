###UPDATE IT WORKS GOING TO UPDATE IN FEW HOURS




######Kinda good news:
First of all this 2 examples are working for my "Balalaika" project which is not published,it connects without any issues with both examples

######Bad news:
I've decided to use my "Troll" test project for example purposes which is already published in Google play but does not have google play services in it yet.(I tested ads on it)
And it does not work...and I have no idea why...I am almost certain that I checked all the buttons on google developer console and settings are the same.

######WHAT WE HAVE: 
these examples are working correctly and I believe issue lies on google side, if I swap to "Balalaika" project id and  second number id it all connects perfectly...
If i swap back to "Troll" project ids, in both examples you will see google play window offering you to sign in, afterwards
in freshplanet example you will get ON_SIGN_IN_FAIL and in overlawled example app crashes.

######TO SUM UP:
It might be that it just takes couple of days for services to get activated.I do remember having same issues then I tried to implement it for my "Balalaika" project and banging my head for couple of days...
I will check it in a few days. If someone want's to make sure that these examples actually work just contact me on twitter 
I will provide you with my "Balalaika" app ids. Sorry guys, situation seems incredibly frustrating.
twitter.com/nitacawo.

######Steps you most certainly need to take:
* 1.Well first of all run up to date air sdk :)
* 2. Upload apk with google play services implemented in console. It definetely notices that you impelemented it.
* 3.Activate test mode in game services>Testing
* 4.Make sure your Package name starst with air. in game services>Linked apps
* 5. Check if Enable anti-piracy is turned off for testing period (services>Linked apps)
* 6. Don't know if you need your google play services clicked on published. But after few hours of frustration I did so.(if your app in beta its not going to be in market anyway so no worries)

####I've added screenshots from my console and phone


