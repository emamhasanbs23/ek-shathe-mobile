# Auth feature

## Purpose

Sign-in, registration, token refresh, cached session user, and logout.

## API (`AuthApi`)

| Method | Path |
|--------|------|
| Register | `POST /api/v1/auth/register` |
| Login | `POST /api/v1/auth/login` |
| Refresh | `POST /api/v1/auth/refresh` |
| Logout | `POST /api/v1/auth/logout` |

Envelope: `{ success, data, message?, errors? }`.  
Auth header: `Authorization: Bearer <accessToken>`.  
Register returns user only (no tokens). Login/refresh return tokens only;
the app builds the session user from JWT `sub` + login email.

## Storage keys

`auth_token`, `refresh_token`, `user_id`, `user_email`.

## Routes

`/login`, `/register` (unauthenticated); home when authenticated.
