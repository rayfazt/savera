import 'package:bloc/bloc.dart';
import '../pages/homepage.dart';
import '../pages/profilepage.dart';
import '../pages/contact.dart';

enum NavigationEvents {
  HomePageClickedEvent,
  ProfileClickedEvent,
  ContactClickedEvent,
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
      case NavigationEvents.ContactClickedEvent:
        yield ContactPage();
        break;
    }
  }
}