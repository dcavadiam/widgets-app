import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

final themeProvider = StateProvider<bool>((ref) => false);

// immutable color list
final colorListProvider = Provider((ref) => colorList);

// a simple int
final selectedColorProvider = StateProvider((ref) => 0);
