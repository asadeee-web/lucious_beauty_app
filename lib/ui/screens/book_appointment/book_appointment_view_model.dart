import 'package:lucious_beauty_app/core/view_model/base_view_model.dart';

class BookAppointmentViewModel extends BaseViewModel {
  bool isSelect = false;
  bool unSeclect = false;

  void homeToggle() {
    isSelect = true;
    unSeclect = false;
    notifyListeners();
  }

  void salonToggle() {
    isSelect = false;
    unSeclect = true;
    notifyListeners();
  }
}
