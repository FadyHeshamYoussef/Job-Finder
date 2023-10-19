class SearchData{
  late bool status = true;
  late List<SearchModel> list;
}


class SearchModel{
late String  name,image,jobTime,jobType,jobDescription,jobSkill;
late int jobLevel,salary;
SearchModel(Map<String,dynamic>json){
  name = json ["name"];
  image = json["image"];
  jobTime = json["job_time_type"];
  jobType = json["job_type"];


}
}