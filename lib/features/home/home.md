# Home feature

> Feature context for AI and human contributors. See [AGENTS.md](../../AGENTS.md).

## Purpose

Authenticated landing screen after splash and login. Placeholder shell until
feed / main navigation from native `MainActivity` is ported.

## Key files

```
lib/features/home/
├── home.md
└── presentation/home_page.dart
```

## Routing

- Route path: `/` (`AppRoutePaths.home`)
- Name: `HomeRoutes.home`
- Requires authenticated session (router redirect)

## Related

- [navigation.md](../../docs/agents/navigation.md)
