part of 'latihan_bloc_satu_bloc.dart';

@immutable
abstract class LatihanBlocSatuEvent {
  const LatihanBlocSatuEvent();
}

@immutable
class EventPerubahanText extends LatihanBlocSatuEvent {
  const EventPerubahanText();
}