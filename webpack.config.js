var path = require('path');

var config = {
 	devtool: 'source-map',
	entry: path.join(__dirname, 'main.js'),
	output: {
		path: path.join(__dirname, '/dist'),
		filename: '[name].js',
	},
	stats: {
		colors: true
	},
	module: {
		loaders: [
			{
				test: /\.cjsx$/, 
				loaders: ['coffee-loader', 'cjsx-loader']
			},	
		]
	}
};

module.exports = config;