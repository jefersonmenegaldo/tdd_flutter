import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class Reminder extends Equatable {
  final int id;
  final String title;
  final String description;

  Reminder(
      {@required this.id, @required this.title, @required this.description});

  @override
  // TODO: implement props
  List<Object> get props => [id, title, description];
}
