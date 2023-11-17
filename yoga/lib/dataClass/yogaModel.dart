class YogaModel {
  static String IDName = 'ID';
  static String yogaName = 'YogaNAme';
  static String secondOrNot = 'secontOrNot';
  static String imageName = 'imageName';
}

class Yoga {
  int? id;
  bool second;
  String yogaTitle;
  String yogaImageUrl;

  Yoga({
    this.id, 
    required this.second, 
    required this.yogaTitle, 
    required this.yogaImageUrl, 
  });  

  Yoga copy({ 
 
    int? id,
    bool? second, 
    String? yogaTitle, 
    String? yogaImageUrl
  }){
    return Yoga(id: id! ,second: second!, yogaTitle: yogaTitle!, yogaImageUrl: yogaImageUrl!);
  }

  
}
