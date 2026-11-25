# Splash feature

> Feature context for AI and human contributors. See [AGENTS.md](../../AGENTS.md).

## Purpose

Cold-start gate: branded screen matching the native launch splash, then session
bootstrap before routing to login or home.

## Splash flow

| Native | Flutter |
|--------|---------|
| `launch_background` / Android 12 splash | `SplashScreen` + `SplashBranding` |
| Centered symbol on white | Same — no wordmark, no animation |
| — | Session restore only (config/update API deferred) |

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

- `assets/branding/ek_shathe_symbol_transparent_1024.png` — centered splash mark

## Bootstrap order

1. Hold branded splash (~600ms)
2. Token check → if logged in, `getCurrentUser`
3. `SplashReady` → router sends user to login or home

Config / app-update (`GET /api/config/app-update`) is **not** called for now.

## Related

- [navigation.md](../../docs/agents/navigation.md) — `authRedirect` + splash state
- [networking.md](../../docs/agents/networking.md) — `ConfigApi`, `guardApi`
