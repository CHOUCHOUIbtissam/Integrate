String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";

class ClubLIST{
  late final String image,title,description;
  late final int id ;

  ClubLIST({
    required this.id,
    required this.image,
    required this.title,
    required this.description,
  });
}

List<ClubLIST> clublist = [
  ClubLIST(
    id: 1,
    title: "CSE-ESI",
    description: dummyText,
    image: "img/CSE.png",
  ),
  ClubLIST(
    id: 2,
    title: "CELEC-USTHB",
    description: dummyText,
    image: "img/CELEC.png",

  ),
  ClubLIST(
    id: 3,
    title: "ETIC-ESI",
    description: dummyText,
    image: "img/Etic.png",
  ),
  ClubLIST(
    id: 4,
    title: "Micro club-USTH",
    description: dummyText,
    image: "img/MC.png",
  ),
  ClubLIST(
    id: 5,
    title: "CAP-ENP",
    description: dummyText,
    image: "img/CAP.png",

  ),
  ClubLIST(
    id: 6,
    title: "English speakers-USTHB",
    description: dummyText,
    image: "img/En_speaker.png",

  ),
];

