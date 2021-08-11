import 'package:equatable/equatable.dart';

///* Class Model EventPromo
/// Model untuk mengelola data collection event dan promo yang diadakan rumah sakit

class EventPromo extends Equatable {
  final String title;
  final String imageURL;
  final String type;
  final String date;
  final List<String> content;

  EventPromo({
    this.title,
    this.imageURL,
    this.type,
    this.date,
    this.content,
  });

  @override
  List<Object> get props => [
    title, 
    imageURL, 
    type, 
    date, 
    content,
  ];
}