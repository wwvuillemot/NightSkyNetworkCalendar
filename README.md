# Night Sky Network Calendar

Add a [Nightcalendar of events for your astronomy club quickly and easily to your blog or website (purely client-side code).

You can [read more on our wiki](https://github.com/wwvuillemot/NightSkyNetworkCalendar/wiki).

# How to Setup

First, download a copy of the latest version of the Javascript and CSS here:

* [Javascript](https://github.com/wwvuillemot/NightSkyNetworkCalendar/public/assets/application.js)
* [CSS](https://github.com/wwvuillemot/NightSkyNetworkCalendar/public/assets/application.css)
* [Jquery](http://jquery.com/download/)

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
			<script type="text/javascript>
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

# Configuration

Here are the following things you can configure.

	$(document).ready( function() {
	  configuration = { 
	    language: 'en',
	    nightsky_club_id: 1438,
	    display_as_calendar: true,
	    display_holidays: true,
	    display_sunsets: true,
	    display_sunrises: true,
	    calendar_div_id: 'calendar',
	    show_event_onclick: function(event_id){
		    return "$('#calendar_navigation').hide('drop'); " +
		      "$('.calender_event').hide(); " + 
		      "$('#" + event_id + "').show('drop');";
	    },
		  show_title_onclick: function(){
			  return "$('.calender_event').hide('drop'); " +
			    "$('#calendar_navigation').show('drop');";
			},
	  };
		var calendar = new Calendar();
	  calendar.configure(configuration);
	  calendar.generate();
	});

## Language

At present only English (`en`) is supported.  But it is possible for you to add your own localization by adding to Javascript the following where `LOCALE_ID` is the locale you are localizing to.

	CALENDAR_LABELS[LOCALE_ID] = 
	{
	  months: { 
	    1: 'January', 
	    2: 'February', 
	    3: 'March', 
	    4: 'April', 
	    5: 'May', 
	    6: 'June', 
	    7: 'July',
	    8: 'August',
	    9: 'September',
	    10: 'October',
	    11: 'November',
	    12: 'December'
	  },
	  months_short: { 
	    1: 'Jan', 
	    2: 'Feb', 
	    3: 'Mar', 
	    4: 'Apr', 
	    5: 'May', 
	    6: 'Jun', 
	    7: 'Jul',
	    8: 'Aug',
	    9: 'Sep',
	    10: 'Oct',
	    11: 'Nov',
	    12: 'Dec'
	  },
	  days_of_week: {
	    0: 'Sun',
	    1: 'Mon',
	    2: 'Tue',
	    3: 'Wed',
	    4: 'Thu',
	    5: 'Fri',
	    6: 'Sat',
	  }
	};
	
## `display_as_calendar`

This is `true` by default.

Set this to `false` to have the days of the month stretch across the page without using weekday headers.

## `display_holidays`

This is `false` by default.

Set this to `true` to include any holidays included in the NSN calendar.

## `display_sunsets`

This is `false` by default.

Set this to `true` to include any sunset times included in the NSN calendar.

## `display_sunrises`

This is `false` by default.

Set this to `true` to include any sunrise times included in the NSN calendar.

## `show_event_onclick`

You can override the default behavior whenever a user clicks on a calendar date (e.g. '18').

## `show_title_onclick`

You can override the default behavior whenever a user clicks on a calendar title (e.g. September 2012).