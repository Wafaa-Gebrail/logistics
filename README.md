# Logistics

Developed a Flutter-based delivery platform designed to manage deliveries between pickup and drop-off locations, connecting users with nearby drivers and providing real-time delivery tracking.

The system consists of two main applications: a **User App** for creating and tracking delivery requests, and a **Driver App** for discovering, accepting, and completing nearby delivery requests.

> **Note:** This repository contains documentation only. The source code is not publicly available because the application was developed as a client project.

## Features

- **User Application**:
  - Create delivery requests by specifying pickup and destination locations.
  - Enter complete delivery details and requirements.
  - Specify whether the delivered items are fragile.
  - Mark a delivery as urgent when required.
  - View delivery request information and status.
  - Track the driver in real time during an active delivery.
  - View delivery history and previous requests.

- **Driver Application**:
  - View available delivery requests near the driver's current location.
  - Access complete delivery information before accepting a request.
  - Select and accept a suitable delivery request.
  - Navigate between pickup and destination locations.
  - Update delivery progress and status.
  - Share the driver's real-time location with the user during delivery.

- **Real-Time Tracking**:
  - Implemented real-time driver location tracking using **Google Maps** and **SignalR**.
  - Continuously update the driver's location during an active delivery.
  - Display the driver's live location on the user's map.
  - Synchronize delivery status and location updates between the User and Driver applications.

- **Google Maps Integration**:
  - Display pickup and destination locations.
  - Display the driver's current location.
  - Support map-based delivery tracking and location visualization.

- **Delivery Management**:
  - Manage the complete delivery lifecycle from request creation to completion.
  - Handle delivery statuses and real-time updates.
  - Support urgent and fragile-item delivery requirements.

## Technologies Used

- **Dart & Flutter**: For building the mobile applications.
- **Cubit (flutter_bloc)**: For state management and managing application states.
- **SignalR**: For real-time communication and live driver location tracking.
- **Google Maps**: For location visualization and real-time delivery tracking.
- **REST APIs**: For communication with the backend services.
- **Dio**: For handling HTTP requests and API communication.
- **Geolocation**: For obtaining and monitoring the driver's current location.

## Architecture & Development

- Built separate **User** and **Driver** applications with different workflows and responsibilities.
- Implemented state management using **Cubit** to separate business logic from the UI.
- Integrated real-time communication using **SignalR** for live tracking and delivery updates.
- Integrated **Google Maps** for location-based features and tracking.
- Implemented location monitoring and synchronization during active deliveries.
- Designed delivery workflows from request creation and driver assignment to delivery completion.
