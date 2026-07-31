import '../models/user_model.dart';

class UserRepository {
  Future<UserModel> fetchCurrentUser() async {
    return const UserModel(id: '1', name: 'Guest');
  }
}
