import 'package:lucious_beauty_app/core/view_model/base_view_model.dart';

class ServicesDetailViewModel extends BaseViewModel {
  bool _isFirstIcon = true;

  bool get isFirstIcon => _isFirstIcon;

  void toggleIcon() {
    _isFirstIcon = !_isFirstIcon;
    notifyListeners();
  }
}
