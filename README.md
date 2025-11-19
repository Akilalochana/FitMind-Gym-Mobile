# 🏋️‍♂️ FitMind Gym Mobile

A comprehensive Flutter-based fitness tracking mobile application designed to help users manage their workout routines, track exercises, and organize gym equipment. This app provides a user-friendly interface for fitness enthusiasts to plan and monitor their fitness journey.

## 📱 Screenshots

### Home Screen

<img src="https://github.com/Akilalochana/FitMind-Gym-Mobile/assets/screenshots/home_screen.jpg" width="300" alt="Home Screen">

_Welcome screen showing daily workout plans and progress tracking_

### Add New Exercise/Equipment

<img src="https://github.com/Akilalochana/FitMind-Gym-Mobile/assets/screenshots/add_new_screen.jpg" width="300" alt="Add New Screen">

_Interface for adding new exercises and equipment to your routine_

### Favorites Page

<img src="https://github.com/Akilalochana/FitMind-Gym-Mobile/assets/screenshots/favorites_screen.jpg" width="300" alt="Favorites Screen">

_View and manage your favorite exercises and equipment_

### Exercise Details

<img src="https://github.com/Akilalochana/FitMind-Gym-Mobile/assets/screenshots/exercise_details_screen.jpg" width="300" alt="Exercise Details Screen">

_Detailed view of workout exercises with timing and instructions_

## ✨ Features

### 🏠 **Home Dashboard**

- **Welcome Interface**: Personalized greeting with user's name (John Wick)
- **Progress Tracking**: Visual progress bar showing workout completion (50/100)
- **Daily Date Display**: Current date with formatted display (Wednesday, November)
- **Quick Access Cards**: Four main workout categories:
  - Warmup exercises
  - Equipment workouts
  - General exercises
  - Stretching routines

### 🆕 **Add New Content**

- **Exercise Management**: Add new exercises to your workout library
- **Equipment Catalog**: Manage and add gym equipment
- **Interactive Cards**: Easy-to-use interface with visual feedback
- **Heart Icon**: Mark exercises and equipment as favorites

### ❤️ **Favorites System**

- **Favorite Exercises**: Personal collection of preferred workouts
  - Morning Stretching (15 mins)
  - Cardio Blast (30 mins)
  - Strength Training (45 mins)
- **Favorite Equipment**: Saved gym equipment with details
  - Dumbbells with time and calorie information
  - Equipment descriptions and specifications

### 🏃‍♂️ **Exercise Library**

- **Comprehensive Workout Database**: 8+ different exercises including:
  - Morning Stretching
  - Cardio Blast
  - Strength Training
  - Yoga Flow
  - Treadmill Run
  - Evening Walk
  - Triangle Pose
  - Weight Lifting
- **Time Tracking**: Each exercise shows duration (15-60 mins)
- **Visual Representations**: Custom illustrations for each exercise type

### 🏋️‍♀️ **Equipment Management**

- **Equipment Catalog**: 9+ gym equipment items including:
  - Dumbbells
  - Yoga Mat
  - Kettlebell
  - Resistance Bands
  - Jump Rope
  - Facial Roller
  - Skipping Rope
  - Stationary Bike
  - Treadmill
- **Detailed Information**: Each equipment shows:
  - Workout duration
  - Calories burned
  - Detailed descriptions
  - Visual equipment images

## 🛠️ Technology Stack

- **Frontend**: Flutter (Dart)
- **UI Framework**: Material Design
- **Typography**: Google Fonts (Poppins)
- **State Management**: StatefulWidget
- **Data Storage**: Hardcoded data models (No external API)
- **Platform Support**: Android & iOS
- **Development Environment**: VS Code

## 📦 Dependencies

```yaml
dependencies:
  flutter:
    sdk: flutter
  cupertino_icons: ^1.0.8
  intl: ^0.20.2
  google_fonts: ^6.3.2

dev_dependencies:
  flutter_test:
    sdk: flutter
  flutter_lints: ^5.0.0
```

## 🏗️ Project Structure

```
lib/
├── main.dart                 # App entry point with bottom navigation
├── constants/
│   ├── colors.dart          # Color theme definitions
│   └── responsive.dart      # Responsive design constants
├── data/
│   ├── equipment_data.dart  # Hardcoded equipment data
│   ├── exercise_data.dart   # Exercise database
│   └── user_data.dart       # User information and favorites
├── models/
│   ├── equipment_model.dart # Equipment data model
│   ├── exercise_model.dart  # Exercise data model
│   └── user_model.dart      # User data model
├── pages/
│   ├── home_page.dart       # Main dashboard
│   ├── add_new_page.dart    # Add exercises/equipment
│   ├── favourite_page.dart  # Favorites management
│   ├── equipments_page.dart # Equipment details
│   ├── exercise_details_page.dart # Exercise details
│   └── profile_page.dart    # User profile
└── widgets/
    ├── equipment_card.dart  # Equipment display component
    ├── exercise_card.dart   # Exercise display component
    ├── progress_card.dart   # Progress tracking widget
    ├── add_equipment_card.dart
    └── add_exercise_card.dart
```

## 🎨 Design Features

- **Modern UI**: Clean and intuitive material design
- **Custom Color Scheme**: Blue and pink accent colors
- **Responsive Layout**: Adapts to different screen sizes
- **Visual Icons**: Custom exercise and equipment illustrations
- **Gradient Cards**: Beautiful gradient backgrounds for progress tracking
- **Shadow Effects**: Card-based design with subtle shadows

## 🚀 Getting Started

### Prerequisites

- Flutter SDK (3.7.0 or higher)
- Dart SDK
- Android Studio / VS Code
- Android/iOS device or emulator

### Installation

1. **Clone the repository**

   ```bash
   git clone https://github.com/Akilalochana/FitMind-Gym-Mobile.git
   cd FitMind-Gym-Mobile
   ```

2. **Install dependencies**

   ```bash
   flutter pub get
   ```

3. **Run the application**
   ```bash
   flutter run
   ```

### Build for Release

#### Android

```bash
flutter build apk --release
```

#### iOS

```bash
flutter build ios --release
```

## 📱 App Navigation

The app uses a bottom navigation bar with four main sections:

1. **🏠 Home** - Dashboard with workout plans and progress
2. **➕ Add New** - Add exercises and equipment
3. **❤️ Favourite** - Manage favorite items
4. **👤 Profile** - User information and settings

## 🔧 Data Management

This app uses **hardcoded data models** instead of external APIs, making it:

- ✅ **Offline-ready**: Works without internet connection
- ✅ **Fast loading**: No network delays
- ✅ **Simple setup**: No backend configuration required
- ✅ **Reliable**: No API downtime concerns

### Data Models

- **User Model**: Stores user information and preferences
- **Exercise Model**: Contains exercise details and timing
- **Equipment Model**: Equipment specifications and usage info

## 🎯 Key Features Implementation

### Progress Tracking

- Visual progress bar showing workout completion
- Daily goal tracking (50/100 format)
- Date-based workout planning

### Favorite System

- Heart icon toggle for exercises and equipment
- Separate favorites page for easy access
- Persistent favorite selections

### Exercise Categories

- **Warmup**: Preparation exercises
- **Cardio**: High-intensity cardiovascular workouts
- **Strength**: Weight training and resistance exercises
- **Stretching**: Flexibility and cool-down routines

## 🎨 Color Theme

```dart
// Primary Colors
kMainColor: Color(0xff0099FF)        // Primary blue
kSubpinkColor: Color(0xffFF006B)     // Accent pink
kMainBlackColor: Color(0xff333333)   // Text color
kSubtitleColor: Colors.grey          // Secondary text

// Additional Colors
kMainWhiteColor: Colors.white
kMainDarkBlueColor: Color(0xff0147FC)
kMainLightBlueColor: Color(0xff00F0FF)
kMainpURPLEColor: Color(0xffEB00FF)
```

## 🔮 Future Enhancements

- [ ] **API Integration**: Connect to external fitness APIs
- [ ] **User Authentication**: Login and registration system
- [ ] **Workout Timer**: Built-in exercise timers
- [ ] **Progress Analytics**: Detailed workout statistics
- [ ] **Social Features**: Share workouts with friends
- [ ] **Custom Routines**: Create personalized workout plans
- [ ] **Offline Sync**: Sync data when connection is restored
- [ ] **Wearable Integration**: Support for fitness trackers

## 🤝 Contributing

Contributions are welcome! Please follow these steps:

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 👨‍💻 Developer

**Akila Lochana**

- GitHub: [@Akilalochana](https://github.com/Akilalochana)
- Project: [FitMind-Gym-Mobile](https://github.com/Akilalochana/FitMind-Gym-Mobile)

## 🙏 Acknowledgments

- Flutter team for the amazing framework
- Google Fonts for typography
- Material Design for UI guidelines
- Community contributors and testers

---

**⭐ Star this repository if you found it helpful!** 🏋️‍♀️🧘‍♂️

**Train Smart. Get Strong.**

FitMind-Gym-Mobile is a mobile application designed to empower users to create fully customizable workout plans tailored to their preferences. In the future, we aim to integrate Artificial Intelligence (AI) features to provide personalized guidance based on user data and goals.

This project is participating in Hacktoberfest 2025! We warmly welcome new contributions.

## 🌟 Features

- **Custom Workout Creation:** Users can select exercises, sets, repetitions, and rest times.
- **Progress Tracking:** Ability to monitor workout history and progress.
- **AI Personalization (Planned):** Future integration of AI to automatically suggest and adapt training plans and guidance.

## 🛠 Tech Stack

This project is developed using the following technologies:

- **Language:** Dart
- **Framework:** Flutter (Supports Android, iOS, Web, Desktop)

## 🚀 Getting Started (Run Locally)

First, ensure you have the [Flutter SDK](https://flutter.dev/docs/get-started/install) installed on your system.

1.  **Clone the Repository:**

    ```bash
    git clone [https://github.com/Quantract-AI/FitMind-Gym-Mobile.git](https://github.com/Quantract-AI/FitMind-Gym-Mobile.git)
    ```

2.  **Navigate to the Project Folder:**

    ```bash
    cd FitMind-Gym-Mobile
    ```

3.  **Install Dependencies:**

    ```bash
    flutter pub get
    ```

4.  **Run the Application:**
    ```bash
    flutter run
    ```

## 🙏 Contributing

We appreciate all contributions! If you're new to contributing, please refer to our [CONTRIBUTING.md](CONTRIBUTING.md) and look for issues labeled `good first issue`.

- [CONTRIBUTING.md](CONTRIBUTING.md) - Contribution Guidelines
- [CODE_OF_CONDUCT.md](CODE_OF_CONDUCT.md) - Code of Conduct

## 📄 License

This project is licensed under the [LICENSE](LICENSE).
