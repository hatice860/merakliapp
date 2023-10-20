import 'package:flutter_merakli/core/model/gender_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GenderManager extends StateNotifier<GenderModel> {
  GenderManager() : super(GenderModel(""));
}
