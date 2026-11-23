# Splash feature

> Feature context for AI and human contributors. See [AGENTS.md](../../AGENTS.md).

## Purpose

Cold-start gate: branded intro, connectivity check, app-update prompts, and
session bootstrap before routing to login or home.

## Splash flow

| Android | Flutter |
|---------|---------|
| `SplashActivity` | `SplashScreen` + `SplashController` |
| `activity_splash.xml` layout | `SplashBranding` widget |
| `checkForAppUpdate` | `SplashRepository.checkAppUpdate` via `ConfigApi` |
| `getUser()` after token | `GetCurrentUserUseCase` in bootstrap |
| Onboarding routing (interests, business) | **Deferred** — routes to home/login only |

## Key files

```
lib/features/splash/
├── splash.md
├── data/
│   ├── models/app_update_response.dart
│   └── repositories/splash_repository_impl.dart
├── domain/repositories/splash_repository.dart
└── presentation/
    ├── splash_screen.dart
    ├── riverpod/splash_providers.dart
    ├── widgets/
    └── utils/app_store_launcher.dart
```

## Assets

- `assets/branding/ic_app_icon_new.png` — center mark (from Android drawable)
- `assets/branding/ic_app_logo_new.png` — bottom wordmark

## Bootstrap order

1. Intro animation (~700ms)
2. Connectivity check
3. `GET /api/config/app-update?platform=&version=`
4. Force / optional update dialogs
5. Token check → `getCurrentUser` (500ms delay when token present)
6. `SplashReady` → router sends user to login or home

## Related

- [navigation.md](../../docs/agents/navigation.md) — `authRedirect` + splash state
- [networking.md](../../docs/agents/networking.md) — `ConfigApi`, `guardApi`
