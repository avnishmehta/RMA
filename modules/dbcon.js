var DB_SESSION = "rmadb";
var log = new Log();
var getDatabase = function() {
	var db = application.getDatabase(DB_SESSION);
	try{
		db = new Database("rmadb");
		application.put(DB_SESSION, db);
	} catch(e){
		log.error(e);
	}
	return db;
};
