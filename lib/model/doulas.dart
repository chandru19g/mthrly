class Doulas {
  String name;
  String imageUrl;
  String exp;
  double ratings;

  Doulas(this.name, this.imageUrl, this.ratings, this.exp);

  static List<Doulas> sampleData = [
    Doulas("Lakshmi . K", "assets/data_image/data1_img.png", 4.5,
        "4 Yrs of Experience"),
    Doulas("Arti Singh", "assets/data_image/data2_img.png", 4.5,
        "4 Yrs of Experience"),
    Doulas("Rahima Kaul", "assets/data_image/data3_img.png", 4.5,
        "4 Yrs of Experience"),
    Doulas("Sakshi Jain", "assets/data_image/data4_img.png", 4.5,
        "4 Yrs of Experience"),
  ];
}
