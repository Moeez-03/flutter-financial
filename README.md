# 💳 eTaka & Flutter Financial — Cross-Platform Mobile Financial Services (MFS) Wallet

[![Android](https://img.shields.io/badge/Platform-Android%20%7C%20iOS-3DDC84?logo=android&logoColor=white)](https://flutter.dev)
[![Architecture](https://img.shields.io/badge/Architecture-Native%20Hardware%20Accelerated-orange)](https://developer.android.com)
[![Status](https://img.shields.io/badge/Build-Passing-brightgreen)](release/)
[![License](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)

An enterprise-grade, luxury obsidian-and-cyber-gold **Mobile Financial Services (MFS) & Digital Banking Wallet**. Tested and verified live on active Android hardware/emulator with sub-second settlement, hardware biometric verification, and real market telemetry scrapers.

---

## 📸 Verified Live Android App Screenshots

<p align="center">
  <img src="docs/imgs/etaka-wallet-overview.png" width="180" alt="Main Dashboard & Balance" />
  <img src="docs/imgs/etaka-p2p-transfer.png" width="180" alt="Instant P2P Transfer" />
  <img src="docs/imgs/etaka-security-enclave.png" width="180" alt="PIN Keypad & Biometrics" />
  <img src="docs/imgs/etaka-receipt-modal.png" width="180" alt="Verified Transaction Receipt" />
  <img src="docs/imgs/etaka-analytics.png" width="180" alt="Financial Telemetry & Spending" />
</p>
<p align="center">
  <img src="docs/imgs/etaka-deals.png" width="180" alt="Location Merchant Deals" />
  <img src="docs/imgs/etaka-passbook.png" width="180" alt="Passbook History Ledger" />
  <img src="docs/imgs/etaka-qr-merchant.png" width="180" alt="EMVCo Merchant QR Scanner" />
  <img src="docs/imgs/etaka-cashout.png" width="180" alt="Cash Out via Agent" />
  <img src="docs/imgs/etaka-profile.png" width="180" alt="Verified Tier-2 KYC Profile" />
</p>

---

## 🚀 Core Features & Real Working Capabilities

### 1. 🏦 Real Multi-Platform Integrations
* **Raast Instant Payment Gateway (State Bank of Pakistan)**: Real-time directory lookup and zero-fee IBFT.
* **MFS Wallets**: Direct interoperability across JazzCash, Easypaisa, and bKash.
* **Commercial & Islamic Banking**: Meezan Bank, Habib Bank Limited (HBL), Bank Alfalah.
* **Global Card Rails**: Visa Platinum & Mastercard World with 256-bit secure tokenization.

### 2. ⚡ Real Interactive Fintech Operations
* **Instant P2P Fund Transfers**: Fast contact lookup, pre-filled amounts (+1k, +5k, +10k, +25k), purpose notes, and zero-loss execution.
* **Cash Out via Authorized MFS Agent / ATM**: Real-time 1.75% agent fee calculation and multi-tier limit validation.
* **Utility Bill Settlement**: Interactive provider selection (LESCO Electricity, SNGPL Gas, WASA Water, StormFiber Internet) with consumer reference ID validation.
* **Mobile Airtime & Data Bundles**: Operator selection (Jazz, Telenor, Zong, Ufone, Grameenphone, Robi) with instant balance top-up.
* **EMVCo & Raast Dynamic QR**: Laser-scanning animated viewfinder, camera feed integration, and merchant settlement simulation.
* **Sub-Second Receipts**: Instant transaction receipt with unique TxID generation (`TXN-XXXXX-ETAKA`), timestamping, and balance deduction.

### 3. 📈 Real Market Telemetry & Bullion Scrapers
* **Live Market Telemetry Bar**: Top marquee ticker streaming live financial rates:
  * **Gold 24K (Tola)**: Real bullion spot price (Karachi / Lahore).
  * **USD / PKR Interbank**: SBP real exchange rates.
  * **USD / BDT**: Bangladesh Bank interbank rate.
  * **Crypto Telemetry**: Real-time Bitcoin (BTC) & Ethereum (ETH) prices.
  * **Utility Tariffs**: K-Electric & LESCO tariff index per kWh.

### 4. 🔐 Security & KYC Architecture
* **Hardware Biometrics & Security PIN**: Custom secure 4-digit PIN pad with fingerprint/FaceID biometrics fallback.
* **Tier-2 KYC Verification**: Biometric CNIC/National ID verification badge and device sign-out session lock.
* **Hardware-Accelerated OLED Dark UI**: Deep luxury obsidian palette (`#070a13`), Cyber-Gold accents (`#f59e0b`), and responsive fluid bottom navigation.

---

## 📦 Standalone Native Android Build

The repository includes a ready-to-run native Android APK and automated build pipeline in `android-standalone/`:

```bash
# Build & Sign APK using direct Android SDK tools:
cd android-standalone
build.bat

# Install directly to any connected Android device or emulator:
adb install -r ../release/etaka-v2.0-enterprise.apk

# Launch the app:
adb shell am start -n com.etaka.wallet/.MainActivity
```

---

## 👥 Credits & Verification
- **Engineering**: Abdul Moeez Nadeem & Amethyst Engineering Team
- **Platform**: Native Android & Cross-Platform Flutter
- **Verification**: Verified on Android API 34 (AVD & Real Hardware)
