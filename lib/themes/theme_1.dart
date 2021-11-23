import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sabbah/cubit/cubit.dart';
import 'package:sabbah/cubit/state.dart';
import 'package:sabbah/modules/setting/seying_screen.dart';
import 'package:sabbah/network/cach-helper.dart';
class ThemeOne extends StatefulWidget {
  @override
  _ThemeOneState createState() => _ThemeOneState();
}
class _ThemeOneState extends State<ThemeOne> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=>SabbahCubit(),
      child: BlocConsumer<SabbahCubit,Sabbah>(
        listener: (context,state){},
        builder: (context,state)=>Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Image.asset(
                    'assets/image1.jpeg',
                    fit: BoxFit.cover,
                    height: 600,
                  ),
                  Center(
                    child: Container(
                      child: Center(
                        child: Text(
                          '${SabbahCubit.get(context).count}',
                          style: TextStyle(
                              color: Colors.white,
                            fontSize: 60.0
                          ),
                        ),
                      ),
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                          color:Colors.black.withOpacity(.8),
                          borderRadius: BorderRadius.circular(30.0)
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top:300,
                        left: 140
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                          color:Colors.white.withOpacity(.8),
                          borderRadius: BorderRadius.circular(40)
                      ),
                      child: MaterialButton(
                        onPressed:(){
                          SabbahCubit.get(context).change(
                            fromShared:SabbahCubit.get(context).count
                          );
                        },
                        child: Text(
                          'counter',
                          style: TextStyle(
                              fontSize: 20
                          ),
                        ),
                        highlightColor:Colors.white.withOpacity(.8),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 300,
              decoration: BoxDecoration(
                color:Colors.white,
                borderRadius: BorderRadius.circular(16.0)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 150,
                    decoration: BoxDecoration(
                        color:Colors.black.withOpacity(.8),
                        borderRadius: BorderRadius.circular(20.0)
                    ),
                    height: 100,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Icon(
                            (Icons.wifi_protected_setup),
                            color: Colors.white,
                          ),
                        ),
                        MaterialButton(
                          onPressed:(){
                            SabbahCubit.get(context).count=0;
                            setState(() {

                            });
                          },
                          child: Text(
                            'Restart',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 150,
                    decoration: BoxDecoration(
                        color:Colors.black.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(20.0)
                    ),
                    height: 100,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Icon(
                            (Icons.settings),
                            color: Colors.white,
                          ),
                        ),
                        MaterialButton(
                          onPressed:(){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context)=>SettingScreen(),
                              ),
                            );
                          },
                          child: Text(
                            'Setting',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
