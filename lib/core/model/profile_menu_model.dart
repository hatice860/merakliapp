class ProfileMenuModel {
  final String icon;
  final String text;
  final String description;
  final Function? onTap;
  ProfileMenuModel({
    required this.icon,
    required this.text,
    required this.description,
    this.onTap,
  });
}
