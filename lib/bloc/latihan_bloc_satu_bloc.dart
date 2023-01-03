import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'latihan_bloc_satu_state.dart';
part 'latihan_bloc_satu_event.dart';

class LatihanBlocSatuBloc
    extends Bloc<EventPerubahanText, LatihanBlocSatuState> {
  final List<String> textList = [
    'Text Awal',
    'Text Berubah',
    'Text Berubah Lagi',
  ];

  LatihanBlocSatuBloc() : super(const LatihanBlocSatuState.empty()) {
    on<EventPerubahanText>((event, emit) {
      // TODO: implement event handler
      try {
        int newIndex = state.index + 1;
        if (newIndex >= textList.length) {
          newIndex = 0;
        }
        emit(
          LatihanBlocSatuState(
            index: newIndex,
            text: textList[newIndex],
          ),
        );
      } on Exception catch (e) {
        print(e);
      }
    });
  }
}