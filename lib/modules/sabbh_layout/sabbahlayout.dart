import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sabbah/modules/sabbh_layout/cubit/cubit.dart';

import 'cubit/state.dart';
class SabbahLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create:(context)=>SabbahLayoutCubit(),
      child: BlocConsumer<SabbahLayoutCubit,SabbahLayoutState>(
        listener: (context,state){},
        builder: (context,state)=>Scaffold(
          body: SabbahLayoutCubit.get(context).widgets[SabbahLayoutCubit.get(context).currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedItemColor:Colors.white,
            unselectedItemColor: Colors.grey,
            backgroundColor: Colors.black,
            elevation: 0.7,
            onTap: (int index){
              SabbahLayoutCubit.get(context).changeNavigation(index);
            },
            currentIndex: SabbahLayoutCubit.get(context).currentIndex,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.ad_units),
                label: 'theme 1',
                backgroundColor: Colors.blue,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.ad_units),
                label: 'theme 2',
              ),
            ],
          ),
        ),
      ),
    );
  }
}