import 'package:bloc/bloc.dart';
import 'package:savera/pages/urgentpage.dart';
import '../pages/homepage.dart';
import '../pages/profilepage.dart';
import '../pages/contact.dart';
import '../pages/panicpage.dart';

enum NavigationEvents {
  HomePageClickedEvent,
  ProfileClickedEvent,
  ContactClickedEvent,
  PanicPageClickedEvent,
  UrgentPageClickedEvent,
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
      case NavigationEvents.PanicPageClickedEvent:
        yield PanicPage();
        break;
      case NavigationEvents.UrgentPageClickedEvent:
        yield UrgentPage();
        break;
    }
  }
}