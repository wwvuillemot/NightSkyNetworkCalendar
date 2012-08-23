# Night Sky Network Calendar

Add a [NightSky](http://nightsky.jpl.nasa.gov/) calendar of events for your astronomy club quickly and easily to your blog or website (purely client-side code).

Here is an [example screenshot](https://github.com/wwvuillemot/NightSkyNetworkCalendar/blob/master/nsn-calendar.png).

Also, you can [read more on our wiki](https://github.com/wwvuillemot/NightSkyNetworkCalendar/wiki) about how to configure, et cetera.

# How to Setup

First, download a copy of the latest version of the Javascript and CSS here:

* [Calenadr Javascript](https://github.com/wwvuillemot/NightSkyNetworkCalendar/blob/master/public/assets/application.js)
* [Calendar CSS](https://github.com/wwvuillemot/NightSkyNetworkCalendar/blob/master/public/assets/application.css)
* Calendar is dependent on [Jquery](http://jquery.com/download/); if you not already using this then you will need to include this in your page `head`

Second, add the Javascript and CCS along with your configuration to the HTML page.

	<!DOCTYPE html>
		<html>
		<head>
		 	<title>NightSkyNetworkCalendar</title>
			<link href="calendars.css" media="all" rel="stylesheet" type="text/css" />
		 	<script src="jquery.js" type="text/javascript"></script>
			<script src="calendars.js" type="text/javascript"></script>
		</head>
		<body>
		   <!--
		    Calendar looks for a div tag with id='calendar'
		    You can override this; please refer to Configuration for more information.
		
		    The only thing required is to pass your club's Night Sky ID; otherwise, it
		    will work out-of-the-box.
 		    -->
			<script type="text/javascript>
			        var calendar;
				$(document).ready( function() {

				  configuration = { 
				    nightsky_club_id: 1438
				  };
					var calendar = new Calendar();
				  calendar.configure(configuration);
				  calendar.generate();
				});
			</script>
			<div id='calendar'></div>
		</body>
	</html>

Please read [how to further configure](NightSkyNetworkCalendar/wiki/Configuration).