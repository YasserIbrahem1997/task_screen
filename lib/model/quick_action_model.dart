class QuickActionModel {
  final String title;
  final String iconPath;

  QuickActionModel({
    required this.title,
    required this.iconPath,
  });
}

final List<QuickActionModel> quickActions = [
  QuickActionModel(title: "Orders", iconPath: "assets/icons/cart.svg"),
  QuickActionModel(title: "Products", iconPath: "assets/icons/box.svg"),
  QuickActionModel(title: "Offers", iconPath: "assets/icons/offers.svg"),
  QuickActionModel(title: "Spotlight", iconPath: "assets/icons/spotligh.svg"),
  QuickActionModel(title: "Coupons", iconPath: "assets/icons/coupons.svg"),
  QuickActionModel(
      title: "Complaints", iconPath: "assets/icons/complaints.svg"),
];
