// class CompanyModel {
//   CompanyModel({
//     required this.data,
//   });
//   late final List<Data> data;
//
//   CompanyModel.fromJson(Map<String, dynamic> json){
//     data = List.from(json['data']).map((e)=>Data.fromJson(e)).toList();
//   }
//
//   Map<String, dynamic> toJson() {
//     final _data = <String, dynamic>{};
//     _data['data'] = data.map((e)=>e.toJson()).toList();
//     return _data;
//   }
// }
//
// class Data {
//   Data({
//     required this.id,
//     required this.name,
//     this.image,
//     required this.email,
//     required this.website,
//     required this.about,
//     required this.location,
//     required this.createdAt,
//     required this.updatedAt,
//   });
//   late final int id;
//   late final String name;
//   late final String? image;
//   late final String email;
//   late final String website;
//   late final String about;
//   late final String location;
//   late final String createdAt;
//   late final String updatedAt;
//
//   Data.fromJson(Map<String, dynamic> json){
//     id = json['id'];
//     name = json['name'];
//     image = null;
//     email = json['email'];
//     website = json['website'];
//     about = json['about'];
//     location = json['location'];
//     createdAt = json['created_at'];
//     updatedAt = json['updated_at'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final _data = <String, dynamic>{};
//     _data['id'] = id;
//     _data['name'] = name;
//     _data['image'] = image;
//     _data['email'] = email;
//     _data['website'] = website;
//     _data['about'] = about;
//     _data['location'] = location;
//     _data['created_at'] = createdAt;
//     _data['updated_at'] = updatedAt;
//     return _data;
//   }
// }

class CompanyData{
  late List<DataModel> list;
}
class DataModel{
  late int id;
  late String name,about,location,email,website;
  DataModel(Map<String,dynamic>json){
    id = json["id"];
    name = json["name"];
    email = json["email"];
    website = json["website"];
    about = json["about"];
    location = json["location"];
  }
}