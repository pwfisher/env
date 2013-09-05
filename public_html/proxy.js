/*global require */
require('http-proxy').createServer({
	hostnameOnly: true,
	router: {
		'pwfisher.com': '127.0.0.1:8081',
		'ranx.us': '127.0.0.1:8082'
	}
}).listen(8080);
