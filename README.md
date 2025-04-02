# Form MobX Application

This is a Flutter application created to explore and learn more about state management using **MobX**. The app demonstrates a simple form validation system where user inputs such as name, email, and CPF are validated in real-time.

## Features

- **Real-time Validation**: The form fields are validated as the user types, providing immediate feedback.
- **State Management with MobX**: The app uses MobX for reactive state management, ensuring a smooth and responsive user experience.
- **Dependency Injection**: The `GetIt` package is used for dependency injection, making the codebase more modular and testable.

## How It Works

1. The user fills out the form fields (Name, Email, CPF).
2. Each field is validated using custom validation logic in the `Controller`.
3. The "Save" button is enabled only when all fields are valid.
4. The app's title dynamically updates to indicate whether the form is valid or not.

## Purpose

This project was developed by **João Vitor** as a learning exercise to deepen knowledge of state management in Flutter using MobX.

## Technologies Used

- **Flutter**: For building the UI.
- **MobX**: For state management.
- **GetIt**: For dependency injection.

## How to Run

1. Clone the repository.
2. Run `flutter pub get` to install dependencies.
3. Use `flutter run` to launch the application.

Feel free to explore the code and adapt it for your own projects!  