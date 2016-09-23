window.onload = function(){
	new Vue({
	  el: "#app",
	  data: {
		  todos:[
             { text: "Learn Javascript" },
             { text: "Learn Vue.js" },
             { text: "Build something Awesome" }
		  ]
	   }
	})
}