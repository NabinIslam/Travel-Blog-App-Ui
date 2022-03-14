class Travel {
  String name;
  String location;
  String url;

  Travel(this.name,this.location,this.url);
  static List<Travel> generateTravelBlog(){
    return[
      Travel('Spain, ES', 'Balearic Islands', 'images/top1.jpg'),
      Travel('Spain, ES', 'Balearic Islands', 'images/top2.jpg'),
      Travel('Spain, ES', 'Balearic Islands', 'images/top3.jpg'),
      Travel('Spain, ES', 'Balearic Islands', 'images/top4.jpg'),
    ];
  }
  static List<Travel> mostPopular(){
    return[
      Travel('Spain, ES', 'Balearic Islands', 'images/top1.jpg'),
      Travel('Spain, ES', 'Balearic Islands', 'images/top2.jpg'),
      Travel('Spain, ES', 'Balearic Islands', 'images/top3.jpg'),
      Travel('Spain, ES', 'Balearic Islands', 'images/top4.jpg'),
    ];
  }
}