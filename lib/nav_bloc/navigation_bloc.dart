import 'package:bloc/bloc.dart';
import '../pages/homepage.dart';
import '../pages/profilepage.dart';

enum NavigationEvents {
  HomePageClickedEvent,
  ProfileClickedEvent,
}

abstract class NavigationStates {}

class NavigationBloc extends Bloc<NavigationEvents, NavigationStates> {
  @override
  NavigationStates get initialState => HomePage();

  @override
  Stream<NavigationStates> mapEventToState(NavigationEvents event) async* {
    switch (event) {
      case NavigationEvents.HomePageClickedEvent:
        yield HomePage();
        break;
      case NavigationEvents.ProfileClickedEvent:
        yield ProfilePage();
        break;
    }
  }
}