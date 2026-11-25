import 'package:ek_shathe_mobile/core/l10n/l10n_extension.dart';
import 'package:ek_shathe_mobile/core/router/app_routes.dart';
import 'package:ek_shathe_mobile/core/theme/app_assets.dart';
import 'package:ek_shathe_mobile/core/theme/app_size.dart';
import 'package:ek_shathe_mobile/core/theme/theme_context_extension.dart';
import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';

class RegisterFormWidget extends StatelessWidget {
  const RegisterFormWidget({
    required this.formKey,
    required this.nameController,
    required this.emailController,
    required this.passwordController,
    required this.isSubmitting,
    required this.onSubmit,
    super.key,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController nameController;
  final TextEditingController emailController;
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
          Image.asset(
            AppAssets.appLogo,
            height: 160,
            fit: BoxFit.contain,
          ),
          SizedBox(height: AppSize.space2xl),
          TextFormField(
            controller: nameController,
            decoration: InputDecoration(labelText: language.registerNameLabel),
            textInputAction: TextInputAction.next,
            autofillHints: const [AutofillHints.name],
            validator: (value) {
              if (value == null || value.trim().length < 2) {
                return language.registerNameRequired;
              }
              return null;
            },
          ),
          SizedBox(height: AppSize.spaceLg),
          TextFormField(
            controller: emailController,
            decoration: InputDecoration(labelText: language.loginEmailLabel),
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            autofillHints: const [AutofillHints.email],
            validator: (value) {
              if (value == null || value.trim().isEmpty) {
                return language.loginEmailRequired;
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
              if (value == null || value.length < 8) {
                return language.registerPasswordMin;
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
                : Text(language.registerSubmit),
          ),
          SizedBox(height: AppSize.spaceLg),
          TextButton(
            onPressed: isSubmitting
                ? null
                : () => context.go(AppRoutePaths.login),
            child: Text(language.registerHaveAccount),
          ),
        ],
      ),
    );
  }
}
