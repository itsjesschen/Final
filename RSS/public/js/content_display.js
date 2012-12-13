document.getElementById('RSSFeedsList').onmouseover = function(e){
	//console.log('MousedOver on this link :' + e.target);

	var URL = "../../public/showfeed/showRSS?PAGELINK=" + e.target.id;
	var xhr = new XMLHttpRequest();
	xhr.open('GET', URL, true);

	//document.getELementById('articles').innerHTML
	
	xhr.onreadystatechange = function(){
		if(xhr.readyState === 4 && xhr.status === 200){
			//console.log(xhr.responseText);
			document.getElementById('RSSPages').innerHTML = xhr.responseText;
			console.log('ready!');
		}else if (xhr.status >= 400){
			console.log('There was an error!');
		}
	}
	xhr.send(null);
};



// document.getElementById('ListofTweeters').onclick = function(e){

// 	console.log("Clicked on this link:" + e.target.id);
// 	// var URL = "../../public/showfeed/showTweets?USERID=" + e.target.id;
// 	var URL = "../../public/showfeed/showTweets?USERID=" + e.target.id;
// 	var xhr = new XMLHttpRequest();
// 	console.log(xhr);
// 	xhr.open('GET', URL, true);

// 	xhr.onreadystatechange = function(){
// 		if(xhr.readyState === 4 && xhr.status === 200){
// 			document.getElementById('Tweets').innerhtml = xhr.responseText;

// 		}else if (xhr.status >= 400){
// 			console.log("there was an error!");
// 		}
// 	}
// 	xhr.send(null);
// };

