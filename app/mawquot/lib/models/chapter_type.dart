import 'package:mawquot/models/book_type.dart';
import 'package:mawquot/models/timing.dart';

class ChapterType {
  // Attributes
  late int id;
  late String name;
  late Timing timing;
  late BookType book;

  // Methods
  ChapterType({
    required this.id, 
    required this.name,
    required this.book,
  });
}