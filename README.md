# Dũng - Việt Anh Wedding Gallery

**Luxury Wedding Photography Showcase**  
A beautiful, interactive gallery website for the wedding of Dũng & Việt Anh.

---

## ✨ Features

- **Stunning Visuals**
  - Masonry layout gallery
  - Parallax hero section
  - Shine + Sparkle particle effects
  - Smooth hover animations
  - Wedding rings favicon

- **Full Album Management**
  - Create new albums (auto-generates folder path)
  - Upload your own photos (multiple at once)
  - Delete albums
  - Manifest-based photo loading from `albums/` folder

- **Powerful Gallery Experience**
  - Search across all photos and albums
  - Filter by album (dynamic filter tabs with flex-wrap)
  - Beautiful image modal with navigation & thumbnails
  - Keyboard support (← → ESC)
  - Home button for quick navigation

- **Admin Panel**
  - Accessible via the **Admin** button
  - Live management of albums and photos
  - Folder path display per album
  - Protected manifest albums from deletion

---

## 🚀 Getting Started

1. Open `index.html` in any modern browser
2. Explore the beautiful gallery
3. Click **Admin** button (top right) to manage albums
4. Upload your own wedding photos!

No installation or backend required.

---

## 📁 Project Structure

```
/
├── index.html              # Main website
├── manifest.json           # Auto-generated album manifest
├── albums/                 # Root folder for album subfolders
│   ├── DanhHuyAlbum/       # 34 photos
│   ├── Kỷ Yếu - Lớp9 2026/ # 76 photos
│   ├── anhcuoi/            # 9 photos
│   ├── Nam 2012/           # ...
│   ├── Nam 2013/           # 21 photos
│   ├── ...
│   └── Nam 2026/           # 11 photos
├── update-gallery.ps1      # PowerShell script to sync photos
├── .gitignore              # Ignores .rar, .zip, .mp4, album/ backup
├── REQUIREMENTS.md         # Project requirements
├── CHANGELOG.md            # Version history & changes
└── README.md               # This file
```

---

## 🛠️ Tech Stack

- HTML5 + Tailwind CSS (CDN)
- Vanilla JavaScript
- Font Awesome 6
- manifest.json (photo catalog)
- localStorage (user-created albums only)

---

## 🔄 Updating Photos

Run the PowerShell script to scan `albums/` and sync to GitHub:

```powershell
powershell -ExecutionPolicy Bypass -File ".\update-gallery.ps1"
```

This will:
1. Scan all subfolders in `albums/`
2. Generate `manifest.json`
3. Git commit + push to GitHub

**Note**: Albums listed in `$excludeAlbums` in the script will be hidden from the website.

---

## 📌 Requirements

See [REQUIREMENTS.md](REQUIREMENTS.md) for full specification.

---

## 🔄 Version History

See [CHANGELOG.md](CHANGELOG.md) for detailed change log.

---

## 🎨 Design Notes

- Dark luxury theme (#0f0f0f)
- Gold accent color (#d4af77)
- Playfair Display + Inter fonts
- Fully responsive
- Wedding rings icon branding

---

## 📞 Contact

Wedding album for **Dũng & Việt Anh**.

Hotline: 0948 218 888

---

**Made with ❤️ for beautiful wedding memories**  
*Last updated: 2026-08-03*