# Watch Store App

This project is a **Watch Store** application developed using **Flutter** and the **BLoC** (Business Logic Component) pattern for state management. It interacts with a **REST API** to handle the store's data and user requests, providing a seamless experience for browsing and purchasing watches.

## Features

- Browse a wide variety of watches
- View detailed information for each product
- Add items to cart and manage purchases
- User authentication (login/register)
- Fetch and display data in real-time from the backend via REST API
- Persistent state management using BLoC

## Technologies

- **Flutter**: For building the cross-platform mobile app
- **BLoC Pattern**: For efficient state management
- **REST API**: For server communication
- **Dart**: Programming language

## Installation

To run this project locally, follow these steps:

1. Clone the repository:

    ```bash
    git clone https://github.com/amin-dmi/watch-store-app.git
    ```

2. Navigate to the project directory:

    ```bash
    cd watch-store-app
    ```

3. Install dependencies:

    ```bash
    flutter pub get
    ```

4. Run the app:

    ```bash
    flutter run
    ```

## API Integration

The app interacts with a REST API to fetch product data and handle user actions like adding to the cart, managing orders, and authentication. Ensure the API server is running and configured correctly in the app.

## Project Structure

This project follows a modular structure with BLoC for separating business logic from the UI:

