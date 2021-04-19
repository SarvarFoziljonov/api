class Post {
  int id;
  String name;
  int salary;
  int age;
  Post ({this.id, this.name, this.age, this.salary});

  Post.fromJson(Map<String,dynamic> json):
        name=json['name'],
        salary=json['salary'],
        age=json['age'];
  Map<String,dynamic> toJson(){
    return {
      'name':this.name,
      'salary':this.salary,
      'age':this.age,
    };
  }
  }

