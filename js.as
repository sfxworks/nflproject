
	<script type="text/javascript">
		var json = '[ { "name":"Cam Newton", "number":1, "position":"QB", "team":"Carolina Panthers" }, { "name":"Luke Kuechly", "number":59, "position":"MLB", "team":"Carolina Panthers" }, { "name":"Aaron Rodgers", "number":12, "position":"QB", "team":"Green Bay Packers" }, { "name":"JJ Watt", "number":99, "position":"DE", "team":"Houston Texans" }, { "name":"Josh Norman", "number":24, "position":"CB", "team":"Washington Redskins" }, { "name":"Jordy Nelson", "number":87, "position":"WR", "team":"Green Bay Packers" }, { "name":"Matt Ryan", "number":2, "position":"QB", "team":"Atlanta Falcons" }, { "name":"Julio Jones", "number":11, "position":"WR", "team":"Atlanta Falcons" }, { "name":"Devonta Freeman", "number":24, "position":"RB", "team":"Atlanta Falcons" }, { "name":"Kelvin Benjamin", "number":13, "position":"WR", "team":"Carolina Panthers" }, { "name":"Von Miller", "number":58, "position":"OLB", "team":"Denver Broncos" }, { "name":"Thomas Davis", "number":58, "position":"OLB", "team":"Carolina Panthers" }, { "name":"Drew Brees", "number":9, "position":"QB", "team":"New Orleans Saints" }, { "name":"Tom Brady", "number":12, "position":"QB", "team":"New England Patriots" }, { "name":"Rob Gronkowski", "number":87, "position":"TE", "team":"New England Patriots" }, { "name":"Greg Olsen", "number":88, "position":"TE", "team":"Carolina Panthers" }, { "name":"Leveon Bell", "number":26, "position":"TE", "team":"Pittsburgh Steelers" }, { "name":"Antonio Brown", "number":84, "position":"WR", "team":"Pittsburgh Steelers" }, { "name":"Dak Prescott", "number":4, "position":"QB", "team":"Dallas Cowboys" }, { "name":"Ezekiel Elliot", "number":"21", "position":"RB", "team":"Dallas Cowboys" } ]';
		var players = JSON.parse(json);
		for (var i=0; i < players.length; i++)
		{
			document.getElementById("listings").innerHTML += '<div class="listing">';
			document.getElementById("listings").innerHTML += '<canvas class="bars" id="bar' + i +'"></canvas>';
			document.getElementById("listings").innerHTML += '<div class="position">' + players[i].position + '</div>';
			document.getElementById("listings").innerHTML += '<div class="name">' + players[i].name + '</div>';
			document.getElementById("listings").innerHTML += '<div class="number">' + players[i].number + '</div>';
			document.getElementById("listings").innerHTML += '<div class="team">' + players[i].team + '</div> </div>';
			
			var color1 = "n";
			var color2 = "n";
			var color3 = "n";
			switch(players[i].team)
			{
				case "Carolina Panthers":
					color1 = "#0085CA";
					color2 = "#101820";
					color3 = "#A5ACAF";
					break;
				case "Green Bay Packers":
					color1 = "#175E22";
					color2 = "#FFB81C";
					break;
				case "Houston Texans":
					color1 = "#02253A";
					color2 = "#B31B34";
					break;
				case "Washington Redskins":
					color1 = "#773141";
					color2 = "#FFB612";
					color3 = "#FFFFFF";
					break;
				case "Atlanta Falcons":
					color1 = "#A6192D";
					color2 = "#000000";
					break;
				case "Denver Broncos":
					color1 = "#FC4C02";
					color2 = "#0C2340";
					break;
				case "New Orleans Saints":
					color1 = "#D2B887";
					color2 = "#D3A205";
					break;
				case "New England Patriots":
					color1 = "#0D254C";
					color2 = "#C80815";
					color3 = "#D6D6D6";
					break;
				case "Pittsburgh Steelers":
					color1 = "#FFB81C";
					color2 = "#101820";
					color3 = "#FFFFFF";
					break;
				case "Dallas Cowboys":
					color1 = "#0D254C";
					color2 = "#87909B";
					color3 = "#FFFFFF";
					break;
				default:
					console.log("No selection");
					break;
			}
			
			
			console.log("Color 1 = " + color1);
			console.log("Color 2 = " + color2);
			
			(function (canvas)
			{
				var context = canvas.getContext('2d');
				context.beginPath();
				context.moveTo(-5, 25);
				context.lineTo(25, -5);
				context.lineWidth = 10;
				context.strokeStyle = color1;
				context.stroke();
				
				context.beginPath();
				context.moveTo(-5, 50);
				context.lineTo(50, -5);
				context.lineWidth = 10;
				context.strokeStyle = color2;
				context.stroke();
			})(document.getElementById("bar" + i));
			
		}
	</script>