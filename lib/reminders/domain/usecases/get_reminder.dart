import 'package:tdd_and_clean/reminders/domain/entities/reminder.dart';
import 'package:tdd_and_clean/reminders/domain/repositories/reminder_repository.dart';

class GetReminder {
  final ReminderRepository repository;

  GetReminder(this.repository);

  Future<Reminder> call(int id) {
    return repository.getReminder(id);
  }
}
