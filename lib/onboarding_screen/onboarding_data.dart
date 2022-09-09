class OnBoarding {
  final String title;
  final String image;
  final String detail;

  OnBoarding({
    required this.title,
    required this.image,
    required this.detail,
  });
}

List<OnBoarding> onboardingContents = [
  OnBoarding(
    title: 'Integrate',
    image: 'icons/int.png',
    detail: ' Make adaptation to your environment\n '
               ' esier and less overwhelming',
  ),
  OnBoarding(
    title: 'Resouces',
    image: 'icons/src.png',
    detail: '  Take advantage of multiple resources \n'
                ' that help you with your new life ',

  ),
  OnBoarding(
    title: 'Experiences',
    image: 'icons/EX.png',
    detail: 'Find previous experiences '
        'and \n guidance from experts',
  ),

];