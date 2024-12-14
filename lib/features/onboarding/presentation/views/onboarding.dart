import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/core/utlis/app_router.dart';
import 'package:ecommerce_app/features/onboarding/presentation/view_models/content__model.dart/unboading_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  int currentIndex = 0;
  PageController _controller = PageController();

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    Text(
                      '${currentIndex + 1}',
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                    const Text(
                      '/3',
                      style: const TextStyle(
                          color: Color(0xffC4C4C4),
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    TextButton(
                        onPressed: () {
                          GoRouter.of(context).push(AppRouter.kSignInView);
                        },
                        child: const Text(
                          'Skip',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                        ))
                  ],
                ),
              ),
              Expanded(
                child: PageView.builder(
                    controller: _controller,
                    itemCount: contents.length,
                    onPageChanged: (int index) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                    itemBuilder: (_, i) {
                      return Padding(
                        padding: const EdgeInsets.only(
                            right: 20, left: 20, top: 120),
                        child: Column(
                          children: [
                            SvgPicture.asset(
                              contents[i].image,
                              height: 300,
                            ),
                            Text(
                              contents[i].title,
                              style: const TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.w900),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Text(
                                textAlign: TextAlign.center,
                                contents[i].discreption,
                                style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xffA8A8A9))),
                          ],
                        ),
                      );
                    }),
              ),
              const SizedBox(
                height: 100,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      child: TextButton(
                        onPressed: () {
                          if (currentIndex != 0) {
                            _controller.previousPage(
                                duration: const Duration(milliseconds: 100),
                                curve: Curves.bounceIn);
                          }
                        },
                        child: Text(
                          currentIndex == 0 ? '' : 'prev',
                          style: const TextStyle(
                              color: Color(0xffC4C4C4),
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        contents.length,
                        (index) => buildDot(index, context),
                      ),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    SizedBox(
                      child: TextButton(
                        onPressed: () {
                          if (currentIndex != contents.length - 1) {
                            _controller.nextPage(
                                duration: const Duration(milliseconds: 10),
                                curve: Curves.bounceIn);
                          } else {
                            GoRouter.of(context).push(AppRouter.kSignInView);
                          }
                        },
                        child: Text(
                          currentIndex == contents.length - 1
                              ? 'Get Started'
                              : 'Next',
                          style: const TextStyle(
                              color: Color(0xffF83758),
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 25 : 10,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: currentIndex == index ? Colors.black : Color(0xffC4C4C4),
      ),
    );
  }
}
