import 'package:ex11_01/my_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:ex11_01/my_textfield.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 80,
              ),
              Image.asset(
                'images/codingchef.png',
                width: 150,
                height: 150,
              )
                  .animate()
                  .fade()
                  .slideY(begin: -3, end: 0)
                  .animate(
                    onPlay: (controller) =>
                        controller.repeat,
                  )
                  .shake(
                    hz: 4,
                    curve: Curves.easeInCubic,
                    duration: 1800.ms,
                  ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'Welcome back!',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              )
                  .animate()
                  .fade(delay: 500.ms)
                  .slideX(
                    begin: 2,
                    end: 0,
                  )
                  .tint(
                    color: Colors.purple,
                    delay: 1000.ms,
                  ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'Sign in to continue',
                style: TextStyle(
                  color: Colors.grey[700],
                ),
              )
                  .animate()
                  .fade(
                    delay: 500.ms,
                  )
                  .slideX(
                    begin: 2,
                    end: 0,
                  ),
              const SizedBox(
                height: 25,
              ),
              const MyTextField(
                      hintText: 'Username',
                      obscureText: false)
                  .animate()
                  .fade()
                  .slideX(
                      begin: -3, end: 0, duration: 900.ms),
              // Padding(
              //   padding: const EdgeInsets.symmetric(
              //       horizontal: 25),
              //   child: TextField(
              //     decoration: InputDecoration(
              //         enabledBorder: OutlineInputBorder(
              //           borderSide: BorderSide(
              //             color: Colors.grey.shade400,
              //           ),
              //         ),
              //         fillColor: Colors.grey.shade200,
              //         filled: true,
              //         hintText: 'Username',
              //         hintStyle: TextStyle(
              //             color: Colors.grey[500])),
              //   ),
              // ),
              const SizedBox(
                height: 25,
              ),
              const MyTextField(
                      hintText: 'Password',
                      obscureText: true)
                  .animate()
                  .fade()
                  .slideX(
                      begin: 3, end: 0, duration: 900.ms),
              // Padding(
              //   padding: const EdgeInsets.symmetric(
              //       horizontal: 25),
              //   child: TextField(
              //     obscureText: true,
              //     decoration: InputDecoration(
              //         enabledBorder:
              //             const OutlineInputBorder(
              //           borderSide: BorderSide(
              //             color: Colors.white,
              //           ),
              //         ),
              //         fillColor: Colors.grey.shade200,
              //         filled: true,
              //         hintText: 'Password',
              //         hintStyle: TextStyle(
              //             color: Colors.grey[500])),
              //   ),
              // ),
              const SizedBox(
                height: 25,
              ),
              MyCotaniner(
                width: 120,
                height: 50,
                backgroundColor: Colors.orange[200],
                radius: 20,
                icon: const Icon(Icons.arrow_forward),
              ).animate().fade(delay: 1000.ms),
              // Container(
              //   width: 120,
              //   height: 50,
              //   decoration: BoxDecoration(
              //     border: Border.all(color: Colors.white),
              //     borderRadius: BorderRadius.circular(20),
              //     color: Colors.orange[300],
              //   ),
              //   child: const Icon(Icons.arrow_forward)
              //       .animate()
              //       .fade(delay: 1000.ms),
              // ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Not a member?',
                    style: TextStyle(
                      color: Colors.grey[700],
                    ),
                  ).animate().fade().slideX(
                        begin: -3,
                        end: 0,
                        duration: 300.ms,
                      ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Register Now',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold),
                    ),
                  ).animate().fade().slideX(
                      begin: -3, end: 0, duration: 300.ms),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                      //
                      ),
                  Row(
                    mainAxisAlignment:
                        MainAxisAlignment.end,
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        'Powered by CodingChef',
                        style: TextStyle(fontSize: 11),
                      ).animate().fade().slideX(
                            begin: -3,
                            end: 0,
                            delay: 300.ms,
                          )
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  MyCotaniner(
                    width: 50,
                    height: 50,
                    backgroundColor: Colors.orange[300],
                    imagePath: 'images/codingchef3.png',
                    radius: 16,
                  ).animate().fade(delay: 1000.ms),
                  // Container(
                  //   width: 50,
                  //   height: 50,
                  //   decoration: BoxDecoration(
                  //     border:
                  //         Border.all(color: Colors.white),
                  //     borderRadius:
                  //         BorderRadius.circular(16),
                  //     color: Colors.grey[200],
                  //     image: const DecorationImage(
                  //       image: AssetImage(
                  //         'images/codingchef3.png',
                  //       ),
                  //       fit: BoxFit.fill,
                  //     ),
                  //   ),
                  // )
                  //     .animate()
                  //     .slideX(
                  //       begin: -3,
                  //       end: 0,
                  //       duration: 300.ms,
                  //     )
                  //     .animate(
                  //         onPlay: (controller) =>
                  //             controller.repeat)
                  //     .shimmer(
                  //       delay: 1000.ms,
                  //       duration: 1800.ms,
                  //     ),
                  const SizedBox(
                    width: 20,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
