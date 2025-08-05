# 🎵 MusicPlayer Service

A modular command-line Swift project that simulates a music player service. Built for an iOS Developer technical challenge, this project demonstrates core design patterns and MVVM architecture principles in a clean, extensible way.

---

## 🚀 Features

- **Multiple Music Sources**  
  Supports Local files and Spotify (mocked) via a unified interface using the Strategy pattern.

- **Playback Control**  
  Play, pause, skip, and stop functionality with queue management.

- **State Notifications**  
  Simulated playback state updates printed to the console.

- **Single Player Instance**  
  Singleton pattern ensures only one player instance exists.

---

## 🧠 Architecture

- **MVVM-inspired structure** for separation of concerns
- **Combine-like simulation** using print statements
- **Design Patterns Used**:
  - Strategy (for music sources)
  - Singleton (for player instance)
  - Observer (simulated via console output)

---

## 📁 Project Structure

