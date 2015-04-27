var render = function(theme, data, meta, require){
	theme('home',  {
		userheader:[{
			partial:'userheader',
			context:data.userheader
		}],

		title:[{
			partial:'title',
			context:data.title
		}],

		sidenav:[{
			partial:'sidenav',
			context:data.sidenav
		}],

		main:[{
			partial:'searchclients',
			context:data.searchclients
		}],

		/*footer:[{
			partial:'footer',
			context:data.footer
		}]*/
	});
};
