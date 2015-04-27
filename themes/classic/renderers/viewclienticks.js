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
			partial:'viewclienticks',
			context:data.viewclienticks
		}],

		/*footer:[{
			partial:'footer',
			context:data.footer
		}]*/
	});
};
