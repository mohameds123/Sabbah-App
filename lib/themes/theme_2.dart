import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sabbah/cubit/cubit.dart';
import 'package:sabbah/cubit/state.dart';
import 'package:sabbah/modules/setting/seying_screen.dart';
class ThemeTwo extends StatefulWidget {
  @override
  _Theme_twoState createState() => _Theme_twoState();
}

class _Theme_twoState extends State<ThemeTwo> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=>SabbahCubit(),
      child: BlocConsumer<SabbahCubit,Sabbah>(
        listener: (context,state){},
        builder: (context,state)=>Scaffold(
          body:Container(
            color: Colors.white,
            child: Column(
              children: [
                Padding(
                  padding:  const EdgeInsets.only(top: 100.0),
                  child: Image.asset(
                    'assets/imagetheme2.png',
                    fit: BoxFit.cover,
                    width: 300,
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 100.0),
                    child: Container(
                      width: 250.0,
                      height: 200.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.deepOrange,
                            offset: Offset(0.0, 2.0),
                            blurRadius: 2.0,
                          ),
                        ],
                      ),
                      child: MaterialButton(
                        onPressed: (){
                          SabbahCubit.get(context).change(
                              fromShared:SabbahCubit.get(context).count);
                        },
                        child: Text(
                            '${SabbahCubit.get(context).count}',
                          style: TextStyle(
                            fontSize: 60.0
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 70.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 120.0,
                      height: 80.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.deepOrange,
                            offset: Offset(0.0, 2.0),
                            blurRadius: 2.0,
                          ),
                        ],
                      ),
                      child: MaterialButton(
                        onPressed: (){
                          SabbahCubit.get(context).count=0;
                          setState(() {
                          });
                        },
                        child: Icon(
                          Icons.wifi_protected_setup_outlined,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 30.0,
                    ),
                    Container(
                      width: 120.0,
                      height: 80.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.deepOrange,
                            offset: Offset(0.0, 2.0),
                            blurRadius: 2.0,
                          ),
                        ],
                      ),
                      child: MaterialButton(
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context)=>SettingScreen(),
                              ),
                            );
                          },
                          child:Icon(
                              Icons.settings
                          )
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
