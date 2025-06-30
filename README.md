# Flutter Environment Configuration Example

This project demonstrates how to manage multiple environments (development, staging, production) in Flutter using:

- `--dart-define` and build flavors for compile-time configuration
- `.env` files with [`flutter_dotenv`](https://pub.dev/packages/flutter_dotenv) for runtime environment variables

## 📦 Why This Setup?

Hardcoding API URLs or manually toggling flags across environments doesn’t scale — especially when working with CI/CD, testing, or debugging. This setup ensures clean, scalable, and secure environment handling.

---

## 🚀 Running the App

Use the appropriate build flavor and `--dart-define` to load the correct `.env` file:

```bash
flutter run --dart-define=FLAVOR=dev
flutter run --dart-define=FLAVOR=staging
flutter run --dart-define=FLAVOR=prod