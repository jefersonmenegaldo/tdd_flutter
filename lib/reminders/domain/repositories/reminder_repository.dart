import 'package:tdd_and_clean/reminders/domain/entities/reminder.dart';

abstract class ReminderRepository {
  Future<Reminder> getReminder(int id);
}
