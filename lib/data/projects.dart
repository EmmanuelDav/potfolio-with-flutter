class Project {
  final String? name;
  final String? description;
  final String? image;
  final String? url;
  final List<String>? skills;

  Project({this.name, this.description, this.image, this.url, this.skills});
}

// ignore: non_constant_identifier_names
List<Project> PROJECTS = [
  Project(
    name: 'CHOOYA',
    description:
        'Chooya is a virtual platform where people and businesses can host groups of friends, colleagues, or customers to pay or buy things together (products, services, or bills) as a group to save money',

    image: 'images/projects/omran.png',
    url: 'https://play.google.com/store/apps/details?id=ng.com.rad5.chooya.revues',
    skills: [
      'Java',
      'Kotlin',
      'Android',
      'Git',
      'Retrofit',
      'Rxjava',
      'MVVM',
      'Data Binding',
    ],
  ),
  Project(
    name: 'HELENE SME',
    description: 'Helene Income is an expense manager and a personal finance app. It aims to help small Businesses and services keep track of daily income and expenses.',
    image: 'images/projects/topfood.png',
    url: 'https://play.google.com/store/apps/details?id=com.pca.helene',
    skills: [
      'Kotlin',
      'LiveData',
      'Coroutine',
      'MVVM',
      'DataBinding',
      'ViewModel',
      'Dagger2',
    ],
  ),
  Project(
    name: 'MEGA SURE ODDS',
    description: 'MEGA SURE 2 ODDS Is an online app that uses AI and artificial intelligence to predict the odds of a Soccer match using their Past performance',
    image: 'images/projects/toptaxi.png',
    url: 'https://play.google.com/store/apps/details?id=com.ekene.mega_sure_2_odds_user',
    skills: [
      'Java',
      'Rxjava',
      'ViewModel',
      'LiveData',
      'Navigation',
    ],
  ),
  Project(
    name: 'HELENE INVOICE',
    description:
        'Helene Invoice makes invoicing effortless. Send customised invoice statements to your clients and receive payment in an instant',
    image: 'images/projects/nataloe.png',
    url: 'https://play.google.com/store/apps/details?id=com.helene.invoice',
    skills: [
      'Kotlin',
      'DataBinding',
      'ViewModel',
      'Dagger2',
      'MVVM',
    ],
  ),
  Project(
    name: 'KIDDASH',
    description: 'KidDash is an Educational Platform designed to make learning fun for kids and young adults. It engages them with educational content that can keep them learning while also making learning fun and Inspiring.',
    image: 'images/projects/juda.png',
    url: 'https://play.google.com/store/apps/details?id=com.rad5TechHub.kiddash',
    skills: [
      'Flutter',
      'BloC',
      'Provider',
      'Dart',
    ],
  ),
];
