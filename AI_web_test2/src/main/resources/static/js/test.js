$(function() {
	let id;
	let pw;
	$("#login_btn").click(function() {
		id = document.getElementById("id").value;
		pw = document.getElementById("pw").value;
		if (id != "" || pw != "") {
			alert(id + "," + pw);
			requestFetch(id, pw).then(response=>{
				alert(response.name+"님 login ok Status Success"); 
			});
			
			id.value = "";
			pw.value = "";

		} else {
			return;
		}
	});

});

async function requestFetch(id, pw) {
	return await fetch(`/data/login/?id=${id}&pw=${pw}`, { method: 'get' })
		.then(response => response.json())
		.catch(console.log)
}





