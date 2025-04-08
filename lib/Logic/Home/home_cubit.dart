import 'package:bloc/bloc.dart';
import 'package:frist_projact/Data/TransactionModel.dart';
import 'package:meta/meta.dart';
part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  void addTransaction(String title, double amount, String source) {
    var list = state.list;
    list.add(TransactionModel(title: title, amount: amount, source: source));
    var total = state.total;
    for (var i in list) {
      total += i.amount!;
    }
    emit(HomeUpdate(total: total, list: list));
  }
}
