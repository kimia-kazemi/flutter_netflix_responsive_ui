import 'package:flutter/material.dart';
import 'package:flutter_netflix_responsive_ui/assets.dart';
import 'package:flutter_netflix_responsive_ui/models/content_model.dart';
import 'package:flutter_netflix_responsive_ui/models/models.dart';

final Content darkposter = Content(
    name: 'Dark',
    imageUrl: Assets.dark,
    titleImageUrl: Assets.darTitle,
    videoUrl: Assets.sintelVideoUrl,
    description:
        'The first season begins in 2019, but later grows to include 1986 and 1953 via time travel, when members of the show\'s central families become aware of a wormhole in the cave system beneath the local nuclear power plant. The wormhole is under the control of the influential Tiedemann family. During the first season, secrets are revealed concerning the Kahnwald, ');

final Content sintelContent = Content(
  name: 'Sintel',
  imageUrl: Assets.sintel,
  titleImageUrl: Assets.sintelTitle,
  videoUrl: Assets.sintelVideoUrl,
  description:
      'A lonely young woman, Sintel, helps and befriends a dragon,\nwhom she calls Scales. But when he is kidnapped by an adult\ndragon, Sintel decides to embark on a dangerous quest to find\nher lost friend Scales.',
);
final List<Content> suggesteds = const [
  Content(
    name: 'Withcer',
    imageUrl: 'https://i.ebayimg.com/images/g/LmQAAOSwu~FalsVi/s-l400.jpg',
  ),
  Content(
    name: 'The Crown',
    imageUrl:
        'https://i.pinimg.com/originals/0c/63/71/0c6371e2a28eea1e908e2150da77c000.jpg',
  ),
  Content(
    name: 'Stranger things',
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLAEhMFb_flPa2kEMEfW829L5XhCmRdcSBWg&usqp=CAU',
  )
];

final List<Content> previews = const [
  Content(
      name: 'wicher series netflix',
      imageUrl: Assets.myWIcher,
      color: Colors.orange,
      titleImageUrl: Assets.blackMirrorTitle),
  Content(
    name: 'crown sereis',
    imageUrl: Assets.crown,
    color: Colors.redAccent,
    titleImageUrl: Assets.crownTitle,
  ),
  Content(
    name: 'Avatar The Last Airbender',
    imageUrl: Assets.myava,
    color: Colors.yellowAccent,
    titleImageUrl: Assets.atlaTitle,
  ),
  Content(
    name: 'dark seris',
    imageUrl: Assets.dark,
    color: Colors.orange,
    titleImageUrl: Assets.darTitle,
  ),
  Content(
    name: 'Avatar The Last Airbender',
    imageUrl: Assets.atla,
    color: Colors.orange,
    titleImageUrl: Assets.atlaTitle,
  ),
  Content(
    name: 'The Crown',
    imageUrl: Assets.crown,
    color: Colors.red,
    titleImageUrl: Assets.crownTitle,
  ),
  Content(
    name: 'The Umbrella Academy',
    imageUrl: Assets.umbrellaAcademy,
    color: Colors.yellow,
    titleImageUrl: Assets.umbrellaAcademyTitle,
  ),
  Content(
    name: 'Carole and Tuesday',
    imageUrl: Assets.caroleAndTuesday,
    color: Colors.lightBlueAccent,
    titleImageUrl: Assets.caroleAndTuesdayTitle,
  ),
  Content(
    name: 'Black Mirror',
    imageUrl: Assets.blackMirror,
    color: Colors.green,
    titleImageUrl: Assets.blackMirrorTitle,
  ),
  Content(
    name: 'Avatar The Last Airbender',
    imageUrl: Assets.atla,
    color: Colors.orange,
    titleImageUrl: Assets.atlaTitle,
  ),
  Content(
    name: 'The Crown',
    imageUrl: Assets.crown,
    color: Colors.red,
    titleImageUrl: Assets.crownTitle,
  ),
  Content(
    name: 'The Umbrella Academy',
    imageUrl: Assets.umbrellaAcademy,
    color: Colors.yellow,
    titleImageUrl: Assets.umbrellaAcademyTitle,
  ),
  Content(
    name: 'Carole and Tuesday',
    imageUrl: Assets.caroleAndTuesday,
    color: Colors.lightBlueAccent,
    titleImageUrl: Assets.caroleAndTuesdayTitle,
  ),
  Content(
    name: 'Black Mirror',
    imageUrl: Assets.blackMirror,
    color: Colors.green,
    titleImageUrl: Assets.blackMirrorTitle,
  ),
];

final List<Content> myList = const [
  Content(
      name: 'Violet Evergarden',
      imageUrl: Assets.violetEvergarden,
      linkur: 'https://www.youtube.com/watch?v=uOvWB-I7fN8'),
  Content(
      name: 'How to Sell Drugs Online (Fast)',
      imageUrl: Assets.htsdof,
      linkur: 'https://www.youtube.com/watch?v=uOvWB-I7fN8'),
  Content(
      name: 'Kakegurui',
      imageUrl: Assets.kakegurui,
      linkur: 'https://www.youtube.com/watch?v=uOvWB-I7fN8'),
  Content(
      name: 'Carole and Tuesday',
      imageUrl: Assets.caroleAndTuesday,
      linkur: 'https://www.youtube.com/watch?v=uOvWB-I7fN8'),
  Content(
      name: 'Black Mirror',
      imageUrl: Assets.blackMirror,
      linkur: 'https://www.youtube.com/watch?v=uOvWB-I7fN8'),
  Content(
      name: 'Violet Evergarden',
      imageUrl: Assets.violetEvergarden,
      linkur: 'https://www.youtube.com/watch?v=uOvWB-I7fN8'),
  Content(
      name: 'How to Sell Drugs Online (Fast)',
      imageUrl: Assets.htsdof,
      linkur: 'https://www.youtube.com/watch?v=uOvWB-I7fN8'),
  Content(
      name: 'Kakegurui',
      imageUrl: Assets.kakegurui,
      linkur: 'https://www.youtube.com/watch?v=uOvWB-I7fN8'),
  Content(
      name: 'Carole and Tuesday',
      imageUrl: Assets.caroleAndTuesday,
      linkur: 'https://www.youtube.com/watch?v=uOvWB-I7fN8'),
  Content(
      name: 'Black Mirror',
      imageUrl: Assets.blackMirror,
      linkur: 'https://www.youtube.com/watch?v=uOvWB-I7fN8'),
];

final List<Content> suggestedListMovie = const [
  Content(
    name: 'The Witcher',
    imageUrl: Assets.witcher,
  ),
  Content(name: 'Stranger Things', imageUrl: Assets.atla),
  Content(name: 'Crown', imageUrl: Assets.crown),
];

final List<Content> suggestedListMovie2 = const [
  Content(
    name: 'The Witcher',
    imageUrl: Assets.dogs,
  ),
  Content(name: 'Stranger Things', imageUrl: Assets.umbrellaAcademy),
  Content(name: 'Crown', imageUrl: Assets.htsdof),
];
final List<Content> suggestedListMovie3 = const [
  Content(
    name: 'blckMirror',
    imageUrl: Assets.blackMirror,
  ),
  Content(name: 'breaking bad', imageUrl: Assets.explained),
  Content(name: 'tiger king', imageUrl: Assets.tigerKing),
];

final List<Content> originals = const [
  Content(name: 'Stranger Things', imageUrl: Assets.strangerThings),
  Content(name: 'The Witcher', imageUrl: Assets.witcher),
  Content(name: 'The Umbrella Academy', imageUrl: Assets.umbrellaAcademy),
  Content(name: '13 Reasons Why', imageUrl: Assets.thirteenReasonsWhy),
  Content(name: 'The End of the F***ing World', imageUrl: Assets.teotfw),
  Content(name: 'Stranger Things', imageUrl: Assets.strangerThings),
  Content(name: 'The Witcher', imageUrl: Assets.witcher),
  Content(name: 'The Umbrella Academy', imageUrl: Assets.umbrellaAcademy),
  Content(name: '13 Reasons Why', imageUrl: Assets.thirteenReasonsWhy),
  Content(name: 'The End of the F***ing World', imageUrl: Assets.teotfw),
];

final List<Content> trending = const [
  Content(name: 'Explained', imageUrl: Assets.explained),
  Content(name: 'Avatar The Last Airbender', imageUrl: Assets.atla),
  Content(name: 'Tiger King', imageUrl: Assets.tigerKing),
  Content(name: 'The Crown', imageUrl: Assets.crown),
  Content(name: 'Dogs', imageUrl: Assets.dogs),
  Content(name: 'Explained', imageUrl: Assets.explained),
  Content(name: 'Avatar The Last Airbender', imageUrl: Assets.atla),
  Content(name: 'Tiger King', imageUrl: Assets.tigerKing),
  Content(name: 'The Crown', imageUrl: Assets.crown),
  Content(name: 'Dogs', imageUrl: Assets.dogs),
];
