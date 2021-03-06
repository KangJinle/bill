import 'package:bill/stores/limit.dart';
import 'package:bill/stores/reminder.dart';
import 'package:bill/stores/task.dart';
import 'package:bill/stores/user.dart';

LimitStore _limitStore;
ReminderStore _reminderStore;
TaskStore _taskStore;
UserStore _userStore;

class AppStores {
  static get userStore => _userStore;

  static get limitStore => _limitStore;

  static get reminderStore => _reminderStore;

  static get taskStore => _taskStore;

  static initStores() {
    _userStore = new UserStore();
    _limitStore = new LimitStore();
    _taskStore = new TaskStore();
    _reminderStore = new ReminderStore();

    _userStore.ensureLogin();
  }
}
