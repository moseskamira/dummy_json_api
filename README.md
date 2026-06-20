# Flutter DummyJSON Client

A production-ready Flutter application built using **Feature-Based Clean Architecture**, **Cubit/BLoC State Management**, **Repository Pattern**, and **REST API Integration** with the DummyJSON API.

This project serves as a practical reference for Flutter developers looking to build scalable, maintainable, and testable applications using modern software engineering practices. The application demonstrates clean separation of concerns by organizing each feature into its own **Data**, **Domain**, **Logic**, and **UI** layers.

---

## ✨ Features

* Feature-Based Clean Architecture
* Cubit/BLoC State Management
* REST API Integration using Dio
* Repository Pattern
* Data Transfer Objects (DTOs)
* Domain Models
* Mapping Extensions (`toDomain()`)
* JSON Serialization (`json_serializable`)
* Dependency Injection
* Error Handling & State Management
* Scalable Project Structure
* Production-Ready Code Organization

---

## 🏗️ Architecture

This project follows a **Feature-Based Clean Architecture** approach where each feature is self-contained and organized into four layers:

### Data Layer

Responsible for external data handling and transformations.

* API Clients
* Data Sources
* DTOs (Data Transfer Objects)
* Repository Implementations
* Mappers

### Domain Layer

Contains the application's business entities and contracts.

* Domain Models
* Repository Contracts

### Logic Layer

Handles state management and business workflows.

* Cubits
* States

### UI Layer

Responsible for presentation and user interaction.

* Pages
* Screens
* Widgets

---

## 📂 Project Structure

```text
lib/
├── core/
│   ├── constants/
│   ├── network/
│   ├── routing/
│   ├── services/
│   ├── theme/
│   └── utils/
│
├── shared/
│   ├── widgets/
│   ├── extensions/
│   └── helpers/
│
└── features/
    ├── auth/
    │   ├── data/
    │   ├── domain/
    │   ├── logic/
    │   └── ui/
    │
    ├── profile/
    │   ├── data/
    │   │   ├── datasources/
    │   │   ├── models/
    │   │   ├── mappers/
    │   │   └── repositories/
    │   │
    │   ├── domain/
    │   │   ├── models/
    │   │   └── repositories/
    │   │
    │   ├── logic/
    │   │   ├── cubits/
    │   │   └── states/
    │   │
    │   └── ui/
    │       ├── pages/
    │       └── widgets/
    │
    └── products/
        ├── data/
        ├── domain/
        ├── logic/
        └── ui/
```

---

## 🔄 Data Flow

```text
API Response
      ↓
DTO (Data Transfer Object)
      ↓
Mapper Extension (toDomain)
      ↓
Domain Model
      ↓
Repository
      ↓
Cubit
      ↓
UI
```

---

## 🧩 DTO to Domain Mapping Example

```dart
extension UserProfileDtoMapper on UserProfileDto {
  UserProfile toDomain() {
    return UserProfile(
      id: id,
      firstName: firstName,
      lastName: lastName,
      email: email,
      address: address?.toDomain(),
      company: company?.toDomain(),
      bank: bank?.toDomain(),
    );
  }
}
```

This approach keeps API response models separate from business models, resulting in a more maintainable and scalable codebase.

---

## 🚀 Technologies Used

* Flutter
* Dart
* flutter_bloc
* Dio
* json_annotation
* json_serializable
* build_runner
* get_it
* injectable

---

## ⚙️ Getting Started

### Prerequisites

* Flutter SDK
* Dart SDK
* Android Studio / VS Code
* Git

### Clone the Repository

```bash
git clone https://github.com/<your-username>/flutter-dummyjson-client.git
```

### Navigate to the Project

```bash
cd flutter-dummyjson-client
```

### Install Dependencies

```bash
flutter pub get
```

### Generate Serialization Files

```bash
dart run build_runner build --delete-conflicting-outputs
```

### Watch for Changes

```bash
dart run build_runner watch --delete-conflicting-outputs
```

### Run the Application

```bash
flutter run
```

---

## 📚 Learning Objectives

This project demonstrates:

* Feature-Based Clean Architecture
* DTO and Domain Model Separation
* Mapping Extensions
* Cubit State Management
* Repository Pattern
* API Integration with Dio
* Dependency Injection
* JSON Serialization
* Error Handling Strategies
* Scalable Flutter Development
* Production-Ready Project Structure

---

## 🌐 API Source

This application consumes data from the DummyJSON API:

https://dummyjson.com

---

## 🎯 Project Purpose

The purpose of this repository is to provide a real-world Flutter application that showcases modern architectural patterns and development practices. It can be used as:

* A learning resource for Flutter developers
* A Clean Architecture reference project
* A starter template for scalable Flutter applications
* A guide for implementing DTOs, Domain Models, and Mappers

---

## 🤝 Contributing

Contributions, suggestions, and improvements are welcome.

Feel free to fork the repository, create a feature branch, and submit a pull request.

---

## 📄 License

This project is intended for educational and learning purposes.

---

## 👨‍💻 Author

**MosesKamira**

Building production-ready Flutter applications while teaching modern software engineering practices and Clean Architecture principles.
