import 'package:daily_page/data/exception/auth_exception.dart';
import 'package:daily_page/ui/auth_view_model.dart';
import 'package:daily_page/ui/snack_bar/snack_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

class AuthPage extends StatefulHookWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _buttonController = RoundedLoadingButtonController();
  bool _isSignUp = true;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _toggleAuthType() {
    setState(() {
      _isSignUp = !_isSignUp;
    });
  }

  Future<void> _signUp() async {
    await context.read(authViewModelProvider).signUp(
        email: _emailController.text, password: _passwordController.text);
    showSuccessSnackBar(context: context, message: 'Signed up');
  }

  Future<void> _signIn() async {
    final vm = context.read(authViewModelProvider);
    await vm.signIn(
        email: _emailController.text, password: _passwordController.text);
  }

  Future<User?> _submit() async {
    if (_formKey.currentState?.validate() != true) {
      _buttonController.reset();
      return null;
    }
    try {
      await (_isSignUp ? _signUp() : _signIn());
      _buttonController.success();
    } on AuthException catch (e) {
      showErrorSnackBar(context: context, message: e.message);
    } finally {
      _buttonController.reset();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(_isSignUp ? 'Sign up' : 'Sign in'),
          actions: [SizedBox(width: 100, child: _toggleButton())],
        ),
        body: _body());
  }

  Widget _toggleButton() {
    return TextButton(
        onPressed: _toggleAuthType,
        child: Text(_isSignUp ? 'Sign in' : 'Sign up'));
  }

  Widget _body() {
    return Container(
        alignment: Alignment.topCenter,
        child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            constraints: const BoxConstraints(
              maxWidth: 500,
            ),
            child: SingleChildScrollView(
                child: Column(
              children: [
                const Gap(32),
                _form(),
              ],
            ))));
  }

  Widget _form() {
    return Form(
        key: _formKey,
        child: Column(children: [
          TextFormField(
            controller: _emailController,
            autofocus: true,
            decoration: const InputDecoration(
                labelText: 'Email', labelStyle: TextStyle(height: 0.1)),
            validator: (val) => val?.isEmpty == true ? 'cannot be empty' : null,
          ),
          const Gap(24),
          TextFormField(
            controller: _passwordController,
            decoration: const InputDecoration(
                labelText: 'Password', labelStyle: TextStyle(height: 0.1)),
            validator: (val) => val?.isEmpty == true ? 'cannot be empty' : null,
            obscureText: true,
          ),
          Gap(32),
          RoundedLoadingButton(
              controller: _buttonController,
              onPressed: _submit,
              child: Text(_isSignUp ? 'Register' : 'Login'))
        ]));
  }
}
