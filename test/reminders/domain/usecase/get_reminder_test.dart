import 'package:flutter_test/flutter_test.dart';
import 'package:tdd_and_clean/reminders/domain/entities/reminder.dart';
import 'package:tdd_and_clean/reminders/domain/repositories/reminder_repository.dart';
import 'package:tdd_and_clean/reminders/domain/usecases/get_reminder.dart';
import 'package:mockito/mockito.dart';

class MockReminderRepository extends Mock implements ReminderRepository {}

void main() {
  GetReminder usecase;
  MockReminderRepository repository;

  setUp(() {
    repository = MockReminderRepository();
    usecase = GetReminder(repository);
  });

  final tReminder = Reminder(id: 1, title: 'Title', description: 'Description');

  test('deve retornar a entitie Reminder', () async {
    //arrange
    when(repository.getReminder(any)).thenAnswer((_) async => tReminder);

    //acts
    final result = await usecase(2);

    //asserts
    expect(result, tReminder);
    verify(repository.getReminder(2));
    verifyNoMoreInteractions(repository);
  });
}
