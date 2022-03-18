class CategoryImgItems {
  final String cimageurl;

  const CategoryImgItems({
    required this.cimageurl,
  });
}

class ImgItems {
  final String imageurl;
  final String title;

  const ImgItems({
    required this.imageurl,
    required this.title,
  });
}

class CoImgItems {
  final String coImageurl;
  final String coTitle;
  final String coSubTitle;

  const CoImgItems({
    required this.coImageurl,
    required this.coTitle,
    required this.coSubTitle,
  });
}

List<CategoryImgItems> citems = const [
  CategoryImgItems(
    cimageurl:
        'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1311999970l/172763.jpg',
  ),
  CategoryImgItems(
    cimageurl:
        'https://s18670.pcdn.co/wp-content/uploads/the-name-jar-396x512.jpg',
  ),
  CategoryImgItems(
    cimageurl:
        'https://s18670.pcdn.co/wp-content/uploads/the-name-jar-396x512.jpg',
  ),
  CategoryImgItems(
    cimageurl:
        'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1311999970l/172763.jpg',
  ),
  CategoryImgItems(
    cimageurl:
        'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1311999970l/172763.jpg',
  ),
  CategoryImgItems(
    cimageurl:
        'https://s18670.pcdn.co/wp-content/uploads/the-name-jar-396x512.jpg',
  ),
  CategoryImgItems(
    cimageurl:
        'https://s18670.pcdn.co/wp-content/uploads/the-name-jar-396x512.jpg',
  ),
];

List<ImgItems> items = const [
  ImgItems(
      imageurl:
          'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1311999970l/172763.jpg',
      title: 'Manga BestSellers'),
  ImgItems(
      imageurl:
          'https://s18670.pcdn.co/wp-content/uploads/the-name-jar-396x512.jpg',
      title: 'Free Shipping'),
  ImgItems(
      imageurl:
          'https://s18670.pcdn.co/wp-content/uploads/the-name-jar-396x512.jpg',
      title: 'Coming Soon'),
  ImgItems(
      imageurl:
          'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1311999970l/172763.jpg',
      title: 'Popular in your country')
];

List<CoImgItems> coItems = const [
  CoImgItems(
      coImageurl:
          'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1311999970l/172763.jpg',
      coTitle: 'Blog',
      coSubTitle: 'for book lovers'),
  CoImgItems(
    coImageurl:
        'https://s18670.pcdn.co/wp-content/uploads/the-name-jar-396x512.jpg',
    coTitle: 'Special offers',
    coSubTitle: 'discounts & bargains',
  ),
  CoImgItems(
    coImageurl:
        'https://s18670.pcdn.co/wp-content/uploads/the-name-jar-396x512.jpg',
    coTitle: 'Book recommendations',
    coSubTitle: 'reading lists',
  ),
];

List<String> Btitle = const [
  'Art & Photography',
  'Audio Books',
  'Biography',
  'Business , Finance & Law',
  "Children's Books",
  'Computing',
  'Crime & Thriller',
  'Dictionaries & Languages',
  'Entertainment',
  'Fiction',
  'Food & Drink',
  'Graphicnovels',
];

class CoImgItems2 {
  final String coImageurl;
  final String coTitle;
  final String coSubTitle;

  const CoImgItems2({
    required this.coImageurl,
    required this.coTitle,
    required this.coSubTitle,
  });
}

List<CoImgItems2> coItems2 = const [
  CoImgItems2(
    coImageurl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTAw3wxALx9tBKOCBO4MnjnAV3PEYkce33nqw&usqp=CAU',
    coTitle: 'Manga box sets',
    coSubTitle: '',
  ),
  CoImgItems2(
    coImageurl:
        'https://www.solodev.com/core/fileparse.php/131/urlt/Search_951x561_v1.jpg',
    coTitle: 'Beutiful Books',
    coSubTitle: '',
  ),
  CoImgItems2(
    coImageurl:
        'https://images-na.ssl-images-amazon.com/images/I/914iT-1PMSL.jpg',
    coTitle: 'Harry Potter',
    coSubTitle: 'best sellers',
  ),
];

List<String> rBTitle1 = const [
  'Fiction',
  'Religion',
  'Romance',
  'Biography',
  "Children's Books",
  'Medical',
  'Crime & Thriller',
  'Computing',
];

List<String> payLink = const [
  'https://www.nicepng.com/png/detail/826-8264463_paypal-logo-png-paypal-svg.png',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSi2v0Tmi834juUti-rd5ULZVlbW6X3FJZWn9rCFG-2h1To-SfCLEa3Ria9jJ1gV_vNz-M&usqp=CAU',
  'https://www.companieshistory.com/wp-content/uploads/2014/01/MasterCard1.png',
  'https://challengepost-s3-challengepost.netdna-ssl.com/photos/production/software_photos/000/735/310/datas/original.jpg',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSh4DwKqIyMHKjRc3Z6aof1iNgBxnSv4t1v3sFB75zN6-YfZV5sPnZPmorcsjXMEcGylc&usqp=CAU',
];

// List<String> poplist2 = [
//   'Scan ISBN',
//   'Recently viewed',
//   'Advanced Search',
//   'Invite friends',
//   'About app',
//   'App language',
// ];

class Menu {
  final String title;

  Menu({required this.title});
}

List<Menu> menuItem = [
  Menu(title: 'Scan ISBN'),
  Menu(title: 'Recently viewed'),
  Menu(title: 'Advanced Search'),
  Menu(title: 'Invite friends'),
  Menu(title: 'About app'),
  Menu(title: 'App language'),
];
