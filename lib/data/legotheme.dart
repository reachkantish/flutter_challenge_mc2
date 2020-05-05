class LegoTheme {
  String title;
  String description;
  String themeImgPath;
  String longdesc;
  String legoSetListKey;

  LegoTheme(
      {this.title,
      this.description,
      this.themeImgPath,
      this.longdesc,
      this.legoSetListKey});
}

List legoThemes = [
  LegoTheme(
      title: "Lego Architecture",
      description:
          "Lego Architecture offers iconic buildings from around the world.",
      themeImgPath: "assets/images/legoarc.jpg",
      legoSetListKey: "Architecture",
      longdesc:
          "LEGO Architecture presents some of the icoic buildings of world architecture, all perfectly realized as LEGO models.  From well-known buildings to more imaginative choices that still reflect architectural excellence, these will make a great addition to any desk or home or playroom."),
  LegoTheme(
      title: "Lego City",
      description:
          "Lego City is a realistic Lego world to explore and stimulate creativity.",
      themeImgPath: "assets/images/legocty.jpg",
      legoSetListKey: "City",
      longdesc:
          "LEGO City is a realistic LEGO world for your child to explore.  Iconic vehicles and buildings form the backdrop to this bustling city, with everyday heroes catching bad guys and putting out fires.  This is a world full of humor and charm that will really stimulate their creative imaginations."),
  LegoTheme(
      title: "Lego Creator",
      description:
          "Lego Creator lets your child experiment with houses, cars, planes and creatures.",
      themeImgPath: "assets/images/legocreator.jpg",
      legoSetListKey: "Creator",
      longdesc:
          "The LEGO Creator series lets your child experiment with houses, cars, planes and creatures.  Sets can be rebuilt many ways, so there's no limit to the fun.  With LEGO Creator sets, your child also gets to choose between multiple builds for even more build and play fun.  There is also an advanced LEGO Creator Expert series including collectable Modular Houses, Cars, World Buildings and Seasonal Sets - guranteeing hours of fun."),
  LegoTheme(
      title: "Lego Technic",
      description:
          "Lego Technic provides a challenge for experienced LEGO builders.",
      themeImgPath: "assets/images/legotechnic.jpg",
      legoSetListKey: "Technic",
      longdesc:
          "LEGO Technic provides a real challenge for experienced LEGO builders.  With LEGO Technic elements, your child can build advanced, real-life functions like gearboxes, working piston engines, steering systems and working crane arms.  These exciting sets will take their imaginations to the next level."),
];
