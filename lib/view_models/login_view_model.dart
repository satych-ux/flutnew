import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<String?> {
  LoginCubit() : super(null); // Initial state is no error

  void validateEmail(String email) {
    if (email.isEmpty) {
      // print("Email can't be empty");
      emit("Email can't be empty");
    } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(email)) {
      // print("Invalid email format");
      emit("Invalid email format");
    } else {
      // print("Email is valid");

      emit('Email is valid'); // Null means no error
    }
  }
}
