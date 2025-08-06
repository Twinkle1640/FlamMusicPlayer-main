# 🎵 FlamMusicPlayer

A clean, modular MVVM-based iOS Music Player built as part of the FLAM assignment challenge by **Vuyyala Praveen Kumar**.

---

## 🚀 Features

- 🎶 Local & Spotify music support (mock implementation)
- 📦 MVVM Architecture (Models, ViewModels, Views)
- ▶️ Playback management with `MusicPlayerManager`
- 🧪 Scalable design for adding more music services
- 💡 Built for maintainability, readability, and performance

---

## 🧠 Architecture

FlamMusicPlayer/
├── Models/ # Song model, music source enums & protocol
├── Services/ # Local and Spotify (mock) music service
├── ViewModels/ # ViewModel handling playback & music sources
├── Views/ # SwiftUI View for the player interface
├── Player/ # MusicPlayerManager for controlling audio


---

## 📂 Folder Breakdown

| Folder      | Responsibility                                   |
|-------------|--------------------------------------------------|
| Models      | Data definitions (`Song.swift`, `MusicSourceType`) |
| Services    | Music source handling logic (Local, Spotify)     |
| ViewModels  | Connects views with services and player manager  |
| Views       | User interface (`ContentView`)                   |
| Player      | Music playback handling                          |

---

## 🧪 Mock Implementations

- **SpotifyMusicService** is a mock version for demo purposes.
- **LocalMusicService** simulates local music fetch using static data.

---

## 🔧 Requirements

- Swift 5.9+
- SwiftUI
- Xcode 15 (for building on macOS)

---

## 👨‍💻 Developer

**Vuyyala Praveen Kumar**  
[GitHub Profile](https://github.com/praveenv33)

---

## 📄 License

This project is built as an educational assignment and may be reused or extended under the terms of fair use.

