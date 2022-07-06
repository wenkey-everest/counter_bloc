import 'package:bloc/bloc.dart';

class CounterObserver extends BlocObserver {
  //BlocObserver overrides methods are onCreate, onEvent, onTransistion and many more

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    print('${bloc.runtimeType} $change');
    //print is used to show details in debug console
  }
}
