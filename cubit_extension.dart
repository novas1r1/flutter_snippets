import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Needed to check whether a Cubit is already closed and therefore shouldnt emit
/// https://github.com/felangel/bloc/issues/3069
extension CubitMaybeEmit<T> on Cubit<T> {
  @protected
  void maybeEmit(T state) {
    if (!isClosed) {
      // ignore: invalid_use_of_protected_member, invalid_use_of_visible_for_testing_member
      emit(state);
    }
  }
}
