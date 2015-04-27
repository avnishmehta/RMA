var render = function(theme, data, meta, require) {
	theme('login', {
		header : [{
			partial:'header',
			context:data.header
		}]
		/*footer : [{
			partial:'footer',
			contxt:data.footer
		}]*/
	});
};
