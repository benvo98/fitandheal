class ListWorkout {
  final String title;
  final String imageUrl1;
  final String imageUrl2;

  ListWorkout({this.title, this.imageUrl1, this.imageUrl2});
}

List<ListWorkout> listWorkout = [
  ListWorkout(
      title: 'Workout 1', imageUrl1: 'Sub3.png', imageUrl2: 'Workout1.png'),
  ListWorkout(
      title: 'Workout 2', imageUrl1: 'Sub4.png', imageUrl2: 'Workout2.png'),
  ListWorkout(
      title: 'Workout 3', imageUrl1: 'Sub5.png', imageUrl2: 'Workout3.png')
];
