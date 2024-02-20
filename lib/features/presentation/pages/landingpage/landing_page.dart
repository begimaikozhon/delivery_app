import 'package:delivery_app/features/presentation/bloc/landing_page_bloc/bloc/landing_page_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

List<BottomNavigationBarItem> bottomNavItems = const <BottomNavigationBarItem>[
  BottomNavigationBarItem(
    icon: Icon(Icons.search),
    label: 'Поиск',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.add_circle_outline),
    label: 'Создать',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.local_taxi_outlined),
    label: 'Поездки',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.person),
    label: 'Профиль',
  ),
];

const List<Widget> bottomNavScreen = <Widget>[
  Text('Index 0 : Search'),
  Text('Index 1 : Home'),
  Text('Index 2 : History'),
  Text('Index 3 : Profile'),
];

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LandingPageBloc, LandingPageState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          body: Center(
            child: bottomNavScreen.elementAt(state.tabIndex),
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: bottomNavItems,
            currentIndex: state.tabIndex,
            selectedItemColor: Theme.of(context).colorScheme.primary,
            unselectedItemColor: Colors.grey,
            onTap: (index) {
              BlocProvider.of<LandingPageBloc>(context)
                  .add(TabChange(tabIndex: index));
            },
          ),
        );
      },
    );
  }
}
