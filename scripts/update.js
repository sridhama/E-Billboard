function startTime(){var g=new Date();var c=g.getHours();var b=g.getMinutes();if(c>18){document.getElementById("food").innerHTML="Dinner Menu"}else{if(c<9){document.getElementById("food").innerHTML="Breakfast Menu"}else{if(c>9&&c<14){document.getElementById("food").innerHTML="Lunch Menu"}else{document.getElementById("food").innerHTML="Snack Menu"}}}var d=new Array(7);d[0]="Sunday";d[1]="Monday";d[2]="Tuesday";d[3]="Wednesday";d[4]="Thursday";d[5]="Friday";d[6]="Saturday";var a=d[g.getDay()];var e=new Array();e[0]="January";e[1]="February";e[2]="March";e[3]="April";e[4]="May";e[5]="June";e[6]="July";e[7]="August";e[8]="September";e[9]="October";e[10]="November";e[11]="December";var e=e[g.getMonth()];var f=g.getFullYear();var i=g.getDate();document.getElementById("date").innerHTML=a+", "+i+" "+e+" "+f;var k=g.getSeconds();b=checkTime(b);if(c>12){document.getElementById("time").innerHTML=c-12+":"+b+" P.M."}else{if(c==0){document.getElementById("time").innerHTML=12+":"+b+" A.M."}else{document.getElementById("time").innerHTML=c+":"+b+" A.M."}}var j=setTimeout(startTime,500)}function checkTime(a){if(a<10){a="0"+a}return a};
    setInterval(function(){
      $.ajax({
            type: "POST",
            url: "jsonencode.php",
            success: function (data) {
                var result = $.parseJSON(data);
                if (result.status){
                   $('#greeting').text("Hello, "+result.name);
                   $('#menu').replaceWith(result.menu);
                  $('#timetable').replaceWith(result.timetable);
                }else{
                if($('#menu').innerHTML != "<li>Please Scan Face</li>"){
                $('#greeting').replaceWith("<h3 id='greeting'><span id='time'></span><span>•</span><span id='date'></span></h3>");
                startTime();
                $('#menu').replaceWith("<ul id=menu><li>Please Scan Face</li></ul>");
                $('#timetable').replaceWith("<ul id=timetable><li>Please Scan Face</li></ul>");
                }
                 }
              time = result.time;
            }
        });
      },2000);
