# 📱 VIPER Products App (SwiftUI)
A modular iOS application built using SwiftUI that demonstrates the VIPER (View–Interactor–Presenter–Entity–Router) architecture pattern with API integration.The app fetches product data from a public API and displays it in a list after a splash screen.This project is designed to showcase enterprise-level architecture, separation of concerns, and scalable iOS app design.
# 🚀 Features
- ✅ VIPER Architecture
- ✅ Modular Structure
- ✅ Splash Screen
- ✅ REST API Integration
- ✅ JSON Parsing using Codable
- ✅ SwiftUI List UI
- ✅ Clean Layer Separation
- ✅ Scalable Project Setup
## 🏗 VIPER Architecture Overview

### View
Responsible for displaying UI and forwarding user actions.

### Presenter
Acts as a mediator between View and Interactor and prepares data for display.

### Interactor
Contains business logic and handles data fetching.

### Entity
Represents application data models such as Product.

### Router
Responsible for navigation and assembling VIPER modules.
# 📌 VIPER Components Explained
## 🟢 View
- Displays UI using SwiftUI
- Sends user actions to Presenter
- Observes Presenter updates
## 🔵 Presenter
- Contains presentation logic
- Communicates between View and Interactor
- Formats data for display
## 🟣 Interactor
- Contains business logic
- Fetches data from API Service
- Returns results to Presenter
## 🟡 Entity
- Data models
- Codable structures
## 🔴 Router
- Handles navigation
- Assembles VIPER module
# 📂 Project Structure
VIPERProductsApp

- Entity
  - Product.swift

- Interactor
  - ProductInteractor.swift

- Presenter
  - ProductPresenter.swift

- View
  - SplashView.swift
  - ProductListView.swift

- Router
  - ProductRouter.swift

- Services
  - APIService.swift
# 📲 Application Flow
- App Launch
- Splash Screen displayed (2 seconds)
- Router creates VIPER module
- View tells Presenter to load data
- Presenter calls Interactor
- Interactor fetches data from API
- Interactor returns data to Presenter
- Presenter updates View
- Products displayed in List
# 🌐 API Used
Public API: https://dummyjson.com/products
Example response:
{
  "products": [
    {
      "id": 1,
      "title": "iPhone 9",
      "description": "An apple mobile...",
      "price": 549
    }
  ]
}
# ⚙️ Technologies Used
- Swift 6.2
- SwiftUI
- Combine
- URLSession
- Codable
- Xcode
# ▶️ How to Run
- Clone the repository : git clone git@github.com:abhisekprusty977/VIPER-Products-App-SwiftUI.git
- Open project in Xcode
- Select Simulator or Device
- Run the project (⌘ + R)
# 📚 Learning Objectives
- This project demonstrates:
- Enterprise-level architecture (VIPER)
- Clean separation of responsibilities
- Modular design
- Scalable app development
- Navigation using Router
- Structured data flow
# 🔮 Future Improvements
- Loading Indicator
- Error Handling
- Product Detail Module
- Dependency Injection
- Unit Testing for Presenter & Interactor
- Image Loading
- Pagination
# 👨‍💻 Author
## Abhisek Prusty



