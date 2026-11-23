# Auth feature

> Feature context for AI and human contributors. See [AGENTS.md](../../AGENTS.md).

## Purpose

Sign-in, token refresh, session user profile, and logout. Entry point after
splash when the user has no valid session.

## Key files

```
lib/features/auth/
├── auth.md
├── data/
│   ├── models/          # Login, refresh, user-me DTOs
│   └── repositories/auth_repository_impl.dart
├── domain/
│   ├── entities/auth_user.dart
│   ├── repositories/auth_repository.dart
│   └── usecases/
└── presentation/
    ├── login_page.dart
    ├── riverpod/auth_providers.dart
    └── widgets/login_form_widget.dart
```

## API (`AuthApi`)

| Method | Path |
|--------|------|
| Login | `POST /api/auth/login-or-register` |
| Refresh | `POST /api/login/refreshtoken` |
| Current user | `GET /api/users/me` |

## Storage keys

Keys: `auth_token`, `refresh_token`, `user_id`, `user_email`.

## Related

- [auth-refresh.md](../../docs/agents/auth-refresh.md)
- [error-handling.md](../../docs/agents/error-handling.md)
