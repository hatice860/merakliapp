class ProfileMenuModel {
  String icon;
  String text;
  String description;
  Function? onTap;
  ProfileMenuModel({
    required this.icon,
    required this.text,
    required this.description,
    this.onTap,
  });
}
