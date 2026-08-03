# CHANGELOG.md

All notable changes to this project are documented here.

---

## [2026-08-03] — v1.3.0 (Manifest System + Photo Sync)

### Added
- `manifest.json` — auto-generated photo catalog from `albums/` folder
- `update-gallery.ps1` — PowerShell script to scan albums, generate manifest, and push to GitHub
- Photos loaded from manifest instead of hardcoded sample data
- Dynamic filter tabs auto-generated from manifest albums (flex-wrap layout)
- Home button in navbar for quick navigation
- Wedding rings favicon (SVG) and navbar icon (`fa-ring`)
- `.gitignore` to exclude `.rar`, `.zip`, `.mp4`, and `album/` backup folder
- Album exclusion system (`$excludeAlbums` in script) — Váy Xinh hidden
- Cache-busting on manifest fetch (`?v=Date.now()`)
- Auto-clear stale localStorage on page load
- Manifest albums protected from deletion in Admin Panel
- User-created albums stored separately in `localStorage` (`dung_anh_user_albums`)
- New album folders: `anhcuoi/`, `DanhHuyAlbum/`, `Kỷ Yếu - Lớp9 2026/`
- Photos synced across all album folders (Nam 2012 → Nam 2026)

### Changed
- Branding: TuArt → Dũng - Việt Anh
- Hotline: 0948 218 888
- localStorage key: `dung_anh_gallery_albums` → `dung_anh_user_albums`
- Filter tabs moved to separate row with flex-wrap for many albums
- GitHub Pages deployment as hosting

### Fixed
- Filter tabs overlapping title when many albums
- Stale localStorage showing removed albums (Váy Xinh)
- Large file (228MB .rar) blocking git push
- Missing photos synced between local and GitHub

---

## [2026-07-30] — v1.2.0 (Folder System)

### Added
- Root `albums/` folder in project structure
- Each album now has a `folder` field (e.g. `albums/sunny_garden/`)
- Auto-generates folder path when creating new album via Admin (slugify album name)
- Folder path displayed in Admin Panel album list
- Toast notification shows folder path on album creation

---

## [2026-07-30] — v1.1.0 (Major Update)

### Added
- Dynamic album system with **5 default albums**
- Full **Admin Panel** (toggleable from navbar)
- Ability to **upload real user images** (file input)
- **Masonry grid** for the main gallery
- Search bar in navbar
- Filter buttons for albums
- Statistics counters (total photos & albums)
- Additional albums: Garden Night, Indoor Studio

### Changed
- Refactored code for better maintainability
- Improved modal performance
- Enhanced sparkle and shine effects
- Better mobile responsiveness

### Fixed
- Improved image loading and error handling
- Fixed modal sparkle container

---

## [2026-07-30] — Initial Release v1.0.0

### Added
- Created complete **Dũng - Việt Anh Wedding Gallery** single-page website
- Hero section with parallax background + animated sparkle effects
- **3 initial albums**: Sunny Garden, Phim Trường Sài Gòn, Highlights
- Masonry layout gallery with beautiful hover effects
- Full-featured image modal (navigation, thumbnails, download)
- Real-time search functionality
- Album filtering
- **Admin Panel** for managing albums
- All data persisted using `localStorage`
- Contact modal with hotline information
- Responsive design across all screen sizes
- Keyboard navigation support in modal

### Visual Enhancements
- Shine sweep animation
- Sparkle particle effects on image hover
- Smooth scale and lift transitions
- Professional dark luxury theme with gold accents

---

## [2026-07-30] — Documentation Added

### Added
- `REQUIREMENTS.md` — Full project requirements
- `CHANGELOG.md` — This file
- `README.md` — Project documentation

---

**Note**: All changes are tracked to prevent scope drift and maintain project direction.