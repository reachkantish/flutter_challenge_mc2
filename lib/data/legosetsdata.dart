class LegoSet {
  String setName;
  String price;
  String setImgPath;
  String legoSetListKey;

  LegoSet({this.setName, this.price, this.setImgPath, this.legoSetListKey});
}

class LegoSetBuilder {
  List getLegoSets() {
    return [
      LegoSet(
          setName: "Empire State Building",
          price: "\$100",
          setImgPath: "assets/images/empirestate.jpg",
          legoSetListKey: "Architecture"),
      LegoSet(
          setName: "Dubai Skyline",
          price: "\$110",
          setImgPath: "assets/images/dubai.jpg",
          legoSetListKey: "Architecture"),
      LegoSet(
          setName: "London City",
          price: "\$120",
          setImgPath: "assets/images/london.jpg",
          legoSetListKey: "Architecture"),
      LegoSet(
          setName: "Police Station",
          price: "\$80",
          setImgPath: "assets/images/policestn.jpg",
          legoSetListKey: "City"),
      LegoSet(
          setName: "Pizza Van",
          price: "\$70",
          setImgPath: "assets/images/pizzavan.jpg",
          legoSetListKey: "City"),
      LegoSet(
          setName: "Fire Plane",
          price: "\$90",
          setImgPath: "assets/images/fireplan.jpg",
          legoSetListKey: "City"),
      LegoSet(
          setName: "Space Shuttle",
          price: "\$95",
          setImgPath: "assets/images/spaceshuttle.jpg",
          legoSetListKey: "City"),
      LegoSet(
          setName: "Dragon",
          price: "\$40",
          setImgPath: "assets/images/dragon.jpg",
          legoSetListKey: "Creator"),
      LegoSet(
          setName: "Cruise Ship",
          price: "\$90",
          setImgPath: "assets/images/cruiseship.jpg",
          legoSetListKey: "Creator"),
      LegoSet(
          setName: "Taj Mahal",
          price: "\$390",
          setImgPath: "assets/images/tajmahal.jpg",
          legoSetListKey: "Creator"),
      LegoSet(
          setName: "Aston Martin",
          price: "\$175",
          setImgPath: "assets/images/astonmartin.jpg",
          legoSetListKey: "Creator"),
      LegoSet(
          setName: "Roller Coaster",
          price: "\$240",
          setImgPath: "assets/images/rollercoaster.jpg",
          legoSetListKey: "Creator"),
      LegoSet(
          setName: "Land Rover",
          price: "\$235",
          setImgPath: "assets/images/landrover.jpg",
          legoSetListKey: "Technic"),
      LegoSet(
          setName: "Racing Yatch",
          price: "\$115",
          setImgPath: "assets/images/racingyatch.jpg",
          legoSetListKey: "Technic"),
      LegoSet(
          setName: "Harley Davidson",
          price: "\$185",
          setImgPath: "assets/images/harley.jpg",
          legoSetListKey: "Creator"),
      LegoSet(
          setName: "Excavator",
          price: "\$265",
          setImgPath: "assets/images/excavator.jpg",
          legoSetListKey: "Technic"),
      LegoSet(
          setName: "Bugatti Chiron",
          price: "\$295",
          setImgPath: "assets/images/bugatti.jpg",
          legoSetListKey: "Technic"),
      LegoSet(
          setName: "ForkLift",
          price: "\$155",
          setImgPath: "assets/images/forklift.jpg",
          legoSetListKey: "Technic"),
    ];
  }
}
