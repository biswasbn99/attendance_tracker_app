# Attendance Tracker App

A professional Flutter application for efficiently managing and tracking student attendance with real-time updates and comprehensive reporting.

---

## Table of Contents

- [Project Overview](#project-overview)
- [Features](#features)
- [Installation & Setup](#installation--setup)
- [State Management Architecture](#state-management-architecture)
- [Project Structure](#project-structure)
- [Dependencies](#dependencies)
- [Screenshots](#screenshots)
- [Technical Highlights](#technical-highlights)

---

## Project Overview

The Attendance Tracker App is a Flutter-based solution designed to simplify the process of tracking student attendance in educational settings. The application provides an intuitive user interface for marking attendance and generates comprehensive statistical summaries with visual indicators.

### Key Capabilities

- Mark attendance status (Present/Absent) for up to 10 students per session
- Real-time UI updates with immediate feedback
- Automated calculation of attendance statistics (counts and percentages)
- Visual representation of attendance data using circular progress indicators
- Categorized student lists for easy reference

---

## Features

- **Daily Attendance Marking**: CheckboxListTile interface for quick student status updates
- **Real-time State Synchronization**: Instant UI refresh across all screens using Provider pattern
- **Attendance Summary Dashboard**: Visual analytics including:
  - Present and absent student counts
  - Percentage-based progress indicators
  - Categorized student lists (Present/Absent)
- **Session Reset Functionality**: Clear attendance data and return to the main screen
- **Responsive Design**: Material Design principles for consistent user experience
- **Date Display**: Current date integration in the attendance screen

---

## Installation & Setup

### Prerequisites

- Flutter SDK 3.11.0 or higher
- Dart SDK (bundled with Flutter)
- Android Studio / Xcode (for emulator/simulator setup)
- Connected device or emulator

### Step-by-Step Setup

1. **Verify Flutter Installation**:
   ```bash
   flutter doctor
   ```
   Ensure all checks pass before proceeding.

2. **Clone/Navigate to Project Directory**:
   ```bash
   cd attendance_tracker_app
   ```

3. **Install Dependencies**:
   ```bash
   flutter pub get
   ```

4. **Run the Application**:
   ```bash
   flutter run
   ```

5. **For Specific Device**:
   ```bash
   flutter devices                 # List available devices
   flutter run -d <device-id>      # Run on specific device
   ```

---

## State Management Architecture

### Design Pattern: Provider with ChangeNotifier

The application implements the **Provider pattern** combined with `ChangeNotifier` for centralized state management. This architectural choice ensures scalability, maintainability, and efficient resource utilization.

### Why ChangeNotifier and notifyListeners()?

**ChangeNotifier Implementation:**
- `AttendanceProvider` extends `ChangeNotifier`, creating a single source of truth for all attendance data
- Eliminates the need for prop-drilling data across widget hierarchies
- Provides a clean separation between UI and business logic

**notifyListeners() Mechanism:**
- Automatically triggers UI rebuilds for all listening widgets when state changes
- Ensures attendance updates (checkbox toggles, reset actions) propagate instantly across screens
- Optimizes performance by only rebuilding affected widgets through `Consumer` wrapping
- Maintains consistency between the attendance screen and summary screen without manual synchronization

**Benefits:**
- **Simplicity**: Single provider manages all attendance state
- **Efficiency**: Minimal overhead; widgets only rebuild when needed
- **Maintainability**: Clear data flow; easy to debug and modify
- **Scalability**: Can be extended to include persistence, filtering, or notifications

---

## Project Structure

```
lib/
├── main.dart                          # Application entry point
├── UI/
│   ├── attendance_screen.dart        # Daily attendance marking interface
│   └── summary_screen.dart           # Attendance statistics dashboard
├── provider/
│   └── attendance_provider.dart      # Centralized state management
├── model/
│   ├── student_model.dart            # Student data model
│   └── summary_model.dart            # Summary statistics model
├── widget/
│   └── attendance_circle.dart        # Reusable circular progress widget
└── theme/
    └── app_theme.dart                # Application theme configuration
```

### File Descriptions

| File | Purpose |
|------|---------|
| `attendance_provider.dart` | Manages attendance state; contains toggle and reset logic |
| `attendance_screen.dart` | Primary UI for marking student attendance |
| `summary_screen.dart` | Secondary UI displaying attendance statistics |
| `attendance_circle.dart` | Visual component showing attendance percentages |
| `app_theme.dart` | Centralized theme with color constants and styling |

---

## Dependencies

The project uses the following key packages:

| Package | Version | Purpose |
|---------|---------|---------|
| `flutter` | SDK | Core Flutter framework |
| `provider` | Latest | State management and dependency injection |
| `intl` | Latest | Date and internationalization utilities |
| `percent_indicator` | Latest | Circular progress indicators for analytics |
| `cupertino_icons` | ^1.0.8 | iOS-style icon set |

Install all dependencies via `flutter pub get`

---

## Screenshots

## Screenshots

<div align="center">

**Attendance Screen - Daily Marking Interface**

<img src="https://github.com/biswasbn99/attendance_tracker_app/blob/df49c96504abd956fefc75f50250dbe0a95805ae/home-screen.jpeg" width="300" alt="Home Screen">

**Summary Screen - Attendance Analytics**

<img src="https://github.com/biswasbn99/attendance_tracker_app/blob/df49c96504abd956fefc75f50250dbe0a95805ae/summary-screen.jpeg" width="300" alt="Summary Screen">

**Student List Details**

<img src="https://github.com/biswasbn99/attendance_tracker_app/blob/df49c96504abd956fefc75f50250dbe0a95805ae/tudent-list-detail.jpeg" width="300" alt="Student List Detail">

</div>



---

## Technical Highlights

### Architecture Decisions

1. **State Management**: Provider pattern ensures efficient, centralized state handling
2. **UI Structure**: Separation of concerns with dedicated screens for marking and reporting
3. **Reusable Components**: Generic `AttendanceCircle` widget for statistical displays
4. **Theme Centralization**: Single source of truth for app styling via `app_theme.dart`

### Code Quality

- Type-safe Dart implementation
- Material Design compliance
- Responsive layouts supporting multiple screen sizes
- Clean code principles and separation of concerns

---

## Future Enhancements

- Database persistence (SQLite/Firebase)
- Multi-class support
- Attendance history and reporting
- Notifications and reminders
- Export functionality (PDF/CSV)
