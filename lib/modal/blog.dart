class Blog {
  final String id;
  final String title;
  final String desc;
  

  Blog(
      {required this.id,
      required this.title,
      required this.desc,
      });

  factory Blog.fromJson(Map<String, dynamic> json) {
    return Blog(
      id: json['data']['id'],
      title: json['data']['title'],
      desc: json['data']['desc'],
      
    );
  }
}
