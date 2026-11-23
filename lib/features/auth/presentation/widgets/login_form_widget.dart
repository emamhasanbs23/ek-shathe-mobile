import 'package:ek_shathe_mobile/core/l10n/l10n_extension.dart';
import 'package:ek_shathe_mobile/core/theme/app_size.dart';
import 'package:ek_shathe_mobile/core/theme/theme_context_extension.dart';
import 'package:material_ui/material_ui.dart';

class LoginFormWidget extends StatelessWidget {
  const LoginFormWidget({
    required this.formKey,
    required this.usernameController,
    required this.passwordController,
    required this.isSubmitting,
    required this.onSubmit,
    super.key,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController usernameController;
  final TextEditingController passwordController;
  final bool isSubmitting;
  final VoidCallback onSubmit;

  @override
  Widget build(BuildContext context) {
    final language = context.language;

    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            language.loginTitle,
            style: context.textStyle.headingMedium.copyWith(
              color: context.color.textPrimary,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: AppSize.space2xl),
          TextFormField(
            controller: usernameController,
            decoration: InputDecoration(labelText: language.loginUsernameLabel),
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            validator: (value) {
              if (value == null || value.trim().isEmpty) {
                return language.loginUsernameRequired;
              }
              return null;
            },
          ),
          SizedBox(height: AppSize.spaceLg),
          TextFormField(
            controller: passwordController,
            decoration: InputDecoration(labelText: language.loginPasswordLabel),
            obscureText: true,
            textInputAction: TextInputAction.done,
            onFieldSubmitted: (_) => onSubmit(),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return language.loginPasswordRequired;
              }
              return null;
            },
          ),
          SizedBox(height: AppSize.space2xl),
          ElevatedButton(
            onPressed: isSubmitting ? null : onSubmit,
            child: isSubmitting
                ? const SizedBox(
                    height: 20,
                    width: 20,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  )
                : Text(language.loginSubmit),
          ),
        ],
      ),
    );
  }
}
