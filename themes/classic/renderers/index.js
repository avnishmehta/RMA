var render = function(theme, data, meta, require){
	theme('index',  {
		header:[{
			partial:'header',
			context:data.header
		}],

		title:[{
			partial:'title',
			context:data.title
		}],

		sidenavi:[{
			partial:'sidenavi',
			context:data.sidenavi
		}],

		main:[{
			partial:'index',
			context:data.index
		}],

		/*footer:[{
			partial:'footer',
			context:data.footer
		}]*/
	});
};
