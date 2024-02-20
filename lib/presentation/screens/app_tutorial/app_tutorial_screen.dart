import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SlideInfo {
  final String title;
  final String caption;
  final String image;

  const SlideInfo(
      {required this.title, required this.caption, required this.image});
}

final slides = <SlideInfo>[
  const SlideInfo(
      title: 'Busca la comida',
      caption: 'lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      image: 'assets/images/1.png'),
  const SlideInfo(
      title: 'Selecciona tu comida',
      caption: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      image: 'assets/images/2.png'),
  const SlideInfo(
      title: 'Recibe tu comida',
      caption: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      image: 'assets/images/3.png'),
];

class AppTutorialScreen extends StatefulWidget {
  static const String routeName = 'app_tutorial_screen';

  const AppTutorialScreen({super.key});

  @override
  State<AppTutorialScreen> createState() => _AppTutorialScreenState();
}

class _AppTutorialScreenState extends State<AppTutorialScreen> {
  final PageController pageViewController = PageController();
  bool isLastPage = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageViewController.addListener(
      () {
        final page = pageViewController.page ?? 0;
        if (!isLastPage && page >= slides.length - 1.5) {
          isLastPage = true;
          setState(() {});
        }
      },
    );
  }

  @override
  void dispose() {
    pageViewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            PageView(
              controller: pageViewController,
              physics: const BouncingScrollPhysics(),
              children: slides
                  .map((slideData) => _Slide(
                      slideData.title, slideData.caption, slideData.image))
                  .toList(),
            ),
            Positioned(
              right: 20,
              top: 50,
              child: TextButton(
                onPressed: () {
                  context.pop();
                },
                child: const Text('Saltar'),
              ),
            ),
            isLastPage
                ? Positioned(
                    bottom: 30,
                    right: 30,
                    child: FadeInRight(
                      from: 15,
                      delay: const Duration(milliseconds: 500),
                      child: FilledButton(
                        onPressed: () {
                          context.pop();
                        },
                        child: const Text('Comenzar'),
                      ),
                    ),
                  )
                : const SizedBox()
          ],
        ));
  }
}

class _Slide extends StatelessWidget {
  final String title;
  final String caption;
  final String image;

  const _Slide(this.title, this.caption, this.image);

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.bodySmall;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(image),
            // Image(image: AssetImage(image)), // This line is equivalent to the previous line
            const SizedBox(height: 20),
            Text(title, style: titleStyle),
            const SizedBox(height: 10),
            Text(caption, style: captionStyle),
          ],
        ),
      ),
    );
  }
}
