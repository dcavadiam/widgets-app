import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

final themeProvider = StateProvider<bool>((ref) => false);

// immutable color list
final colorListProvider = Provider((ref) => colorList);

// a simple int
final selectedColorProvider = StateProvider((ref) => 0);

//Object type AppTheme (custom)

final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>(
  (ref) => ThemeNotifier()
);

// controller or notifier
class ThemeNotifier extends StateNotifier<AppTheme> {

  // State = Estado = new AppTheme()
  ThemeNotifier(): super(AppTheme());

  void toggleDarkMode() {
    state = state.copyWith(isDark: !state.isDark);
  }

  void updateColor(int index) {
    state = state.copyWith(selectedcolor: index);
  }
}