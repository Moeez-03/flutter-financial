# 💳 Flutter Financial — Mobile Financial Service (MFS) & Digital Wallet

[![Flutter](https://img.shields.io/badge/Flutter-3.3.7-02569B?logo=flutter&logoColor=white)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-2.18.4-0175C2?logo=dart&logoColor=white)](https://dart.dev)
[![Platform](https://img.shields.io/badge/Platform-Android%20%7C%20iOS-3DDC84?logo=android&logoColor=white)](https://flutter.dev)
[![License](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)

A modern, cross-platform **Mobile Financial Service (MFS) & Digital Wallet Application** built with **Flutter & Dart**. Designed to provide a secure, seamless mobile banking experience for instant peer-to-peer (P2P) transfers, bill payments, and transaction tracking.

---

## 📸 App Screenshots

<p align="center">
  <img src="docs/imgs/1.png" width="150" alt="Welcome Screen" />
  <img src="docs/imgs/2.png" width="150" alt="Registration / OTP" />
  <img src="docs/imgs/3.png" width="150" alt="Wallet Dashboard" />
  <img src="docs/imgs/4.png" width="150" alt="Send Money" />
  <img src="docs/imgs/5.png" width="150" alt="Confirmation" />
  <img src="docs/imgs/6.png" width="150" alt="Transaction History" />
</p>

---

## ✨ Key Features

* **🔐 Authentication & Security:**
  * Phone number login & registration.
  * Dedicated Two-Factor **OTP Verification Screen** with auto-focus inputs.
  * PIN-protected fund transfer confirmation.

* **💰 Digital Wallet Dashboard:**
  * Real-time wallet balance preview with hide/show privacy toggle.
  * Quick action cards for Send Money, Cash Out, Bill Payment, and Mobile Recharge.
  * Intuitive bottom navigation bar.

* **💸 Money Transfer Flow (P2P):**
  * Instant recipient lookup and amount input.
  * Multi-step review and confirmation modal to prevent transfer errors.
  * Real-time animated **Transaction Success** and **Transaction Failed** status screens with unique transaction reference IDs.

* **📊 Ledger & Activity History:**
  * Chronological transaction list categorized by date.
  * Visual debit/credit indicators with status badges.

* **👤 Account Management:**
  * User profile overview, linked accounts, and app configuration settings.

---

## 🛠️ Architecture & Tech Stack

```
lib/
├── logics/             # Service handlers & business logic
├── main.dart           # App entry point & theme initialization
└── views/
    ├── components/     # Reusable UI widgets (buttons, input fields, custom cards)
    ├── screens/        # Core feature views (Home, Send Money, OTP, History, etc.)
    └── utils/          # Typography, colors, constants, and styling helpers
```

* **Framework:** [Flutter](https://flutter.dev/) (SDK 3.3.7+)
* **Language:** [Dart](https://dart.dev/) (2.18.4+)
* **State & Architecture:** Component-driven modular architecture
* **Icons & Assets:** Cupertino & Material Icons, Custom Vector Illustrations

---

## 🚀 Getting Started

### Prerequisites
* Flutter SDK (3.3.0 or higher): [Install Flutter](https://flutter.io/docs/get-started/install)
* Dart SDK (2.18.0 or higher)
* Android Studio / Xcode / VS Code with Flutter extension
* An active Android Emulator, iOS Simulator, or physical device

### Installation

1. **Clone the repository:**
   ```bash
   git clone https://github.com/Moeez-03/flutter-financial.git
   cd flutter-financial
   ```

2. **Install project dependencies:**
   ```bash
   flutter pub get
   ```

3. **Run on connected device/emulator:**
   ```bash
   flutter run
   ```

To build a release APK for Android:
```bash
flutter build apk --release
```

---

## 👨‍💻 Author
**Abdul Moeez Nadeem**  
* GitHub: [@Moeez-03](https://github.com/Moeez-03)
