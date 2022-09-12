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

    image: 'images/projects/chooya.png',
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
    name: 'HELENE PAY',
    description: 'Helene Income is an expense manager and a personal finance app. It aims to help small Businesses and services keep track of daily income and expenses.',
    image: 'images/projects/SME.png',
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
    image: 'images/projects/mega.png',
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
        'Helene Invoice app is designed to help business-inclined individuals track and keep account of their customer details, notes, invoices, earnings, and business expenses in one app. making it easy and accessible across multiple devices. ',
    image: 'images/projects/invoice.png',
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
    name: 'Document Reader',
    description: 'Document Reader is an app designed to open any type of document file such as Word (doc, docx), Sheet (xls, xlsx), Slide (ppt, pptx) , PDF,TXT,ZIP, RAR and RTF. with over 5M+ downloads it has topped playStore as one of the trusted apps for viewing documents.',
    image: 'images/projects/doc_reader.png',
    url: 'https://play.google.com/store/apps/details?id=com.united.office.reader',
    skills: [
      'MVVM',
      'Dependency injection.',
      'Coroutine',
      'DataBinding',
      'Kotlin',
      'LiveData',
      'Dagger2',
      'Dart',
    ],
  ),
];
