class Todo{
  int _id = 0;
  String _title = '';
  String _description = '';

  Todo(this._title, this._description);
  //from map menarik dari database
  //to map  menyimpan ke database

  Todo.fromMap(Map<String, dynamic> map){
    this._id = map["id"];
    this._title = map["title"];
    this._description = map["description"];
  } 

  int get id => _id;
  String get title => _title;
  String get description => _description;

  set title(String value){
    _title = value;
  }
  set description(String value){
    _description = value;
  }
  Map<String, dynamic> toMap(){
    Map<String, dynamic> map = Map<String, dynamic>();
    map["title"] = title;
    map["description"] = description;
    return map;
  }
}