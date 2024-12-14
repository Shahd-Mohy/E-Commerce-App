class UnboadingModel {
  String image;
  String title;
  String discreption;

  UnboadingModel(
      {required this.image, required this.discreption, required this.title});
}

List<UnboadingModel> contents = [
  UnboadingModel(
      image: 'assets/images/fashion shop-rafiki 1.svg',
      title: 'Choose Products',
      discreption: "Amet minim mollit non deserunt ullamco est"
          " sit aliqua dolor do amet sint. Velit "
          " officia consequat duis enim velit mollit."),
  UnboadingModel(
      image: 'assets/images/Sales consulting-pana 1.svg',
      title: 'Make Payment',
      discreption: "Amet minim mollit non deserunt ullamco est"
          " sit aliqua dolor do amet sint. Velit "
          " officia consequat duis enim velit mollit."),
  UnboadingModel(
      image: 'assets/images/Shopping bag-rafiki 1.svg',
      title: 'Make Payment',
      discreption: "Amet minim mollit non deserunt ullamco est"
          " sit aliqua dolor do amet sint. Velit "
          " officia consequat duis enim velit mollit."),
];
