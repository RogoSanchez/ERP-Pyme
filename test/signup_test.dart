import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:formz/formz.dart';
import 'package:pyme_erp/features/login/Presentation/bloc/login_bloc/login_bloc.dart';
import 'package:pyme_erp/features/login/data/repositories/autentication_repository.dart';
import 'package:pyme_erp/features/login/domain/entities/formz/username.dart';
import 'package:pyme_erp/features/login/domain/entities/formz/password.dart';

class MockAuthenticationRepository extends Mock
    implements AuthenticationRepository {}

void main() {
  group('LoginBloc SignUp Tests', () {
    late LoginBloc loginBloc;
    late MockAuthenticationRepository mockAuthenticationRepository;

    setUp(() {
      mockAuthenticationRepository = MockAuthenticationRepository();
      loginBloc = LoginBloc(
        authenticationRepository: mockAuthenticationRepository,
      );
    });

    tearDown(() {
      loginBloc.close();
    });

    blocTest<LoginBloc, LoginState>(
      'emits success when signUp succeeds',
      build: () {
        when(
          () => mockAuthenticationRepository.signUp(
            email: any(named: 'email'),
            password: any(named: 'password'),
          ),
        ).thenAnswer((_) async {});
        return loginBloc;
      },
      act: (bloc) {
        bloc.add(LoginEvent.usernameChanged('test@example.com'));
        bloc.add(LoginEvent.passwordChanged('password123'));
        bloc.add(LoginEvent.signUpSubmitted());
      },
      expect: () => [
        // Username changed
        LoginState(
          username: Username.dirty('test@example.com'),
          password: Password.pure(),
          status: FormzSubmissionStatus.initial,
          isValid: false,
        ),
        // Password changed
        LoginState(
          username: Username.dirty('test@example.com'),
          password: Password.dirty('password123'),
          status: FormzSubmissionStatus.initial,
          isValid: true,
        ),
        // Sign up in progress
        LoginState(
          username: Username.dirty('test@example.com'),
          password: Password.dirty('password123'),
          status: FormzSubmissionStatus.inProgress,
          isValid: true,
        ),
        // Sign up success
        LoginState(
          username: Username.dirty('test@example.com'),
          password: Password.dirty('password123'),
          status: FormzSubmissionStatus.success,
          isValid: true,
        ),
      ],
    );

    blocTest<LoginBloc, LoginState>(
      'emits failure when signUp fails',
      build: () {
        when(
          () => mockAuthenticationRepository.signUp(
            email: any(named: 'email'),
            password: any(named: 'password'),
          ),
        ).thenThrow(Exception('Sign up failed'));
        return loginBloc;
      },
      act: (bloc) {
        bloc.add(LoginEvent.usernameChanged('test@example.com'));
        bloc.add(LoginEvent.passwordChanged('password123'));
        bloc.add(LoginEvent.signUpSubmitted());
      },
      expect: () => [
        // Username changed
        LoginState(
          username: Username.dirty('test@example.com'),
          password: Password.pure(),
          status: FormzSubmissionStatus.initial,
          isValid: false,
        ),
        // Password changed
        LoginState(
          username: Username.dirty('test@example.com'),
          password: Password.dirty('password123'),
          status: FormzSubmissionStatus.initial,
          isValid: true,
        ),
        // Sign up in progress
        LoginState(
          username: Username.dirty('test@example.com'),
          password: Password.dirty('password123'),
          status: FormzSubmissionStatus.inProgress,
          isValid: true,
        ),
        // Sign up failure
        LoginState(
          username: Username.dirty('test@example.com'),
          password: Password.dirty('password123'),
          status: FormzSubmissionStatus.failure,
          isValid: true,
        ),
      ],
    );
  });
}
