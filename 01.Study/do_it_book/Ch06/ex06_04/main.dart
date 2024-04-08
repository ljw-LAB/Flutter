// class MyClass{
//   factory MyClass(){
//  // error not return
//   }
// }

// class MyClass {
//   factory MyClass() {
//     return null;
//     // error not null return
//   }
// }

/*
class MyClass {
  MyClass._instatnce();
  factory MyClass() {
    return MyClass._instatnce();
  }
}

void main(List<String> args) {
  var obj = MyClass();
}
*/

class Image {
  late String url;
  static Map<String, Image> _cache = <String, Image>{};
  Image._instatnce(this.url);
  factory Image(String url) {
    if (_cache[url] == null) {
      var obj = Image._instatnce(url);
    }
    return _cache[url]!;
  }
}

void main(List<String> args) {
  var image1 = Image('a.jpg');
  var image2 = Image('a.jpg');

  print('image1 == image2 : ${image1 == image2}');
}
