# REQUIREMENTS.md

## Project Overview
**Dũng - Anh Wedding Gallery** — A luxurious, interactive wedding photography showcase website for the wedding of Dũng & Anh.

The application allows users to view beautiful photo albums with stunning visual effects, and provides a full-featured admin interface to manage albums and upload custom images.

---

## Functional Requirements

### 1. Core Features
- Display multiple photo albums with distinct visual themes
- Masonry grid layout for the full gallery
- Beautiful image modal with:
  - Navigation (next/prev)
  - Thumbnail strip
  - Download image
  - Keyboard support (arrows + ESC)
- Parallax hero section with sparkle effects

### 2. Album Management (Admin Panel)
- Create new albums
- Upload multiple images to any album (supports drag & drop via file input)
- Delete albums
- View list of all albums with photo counts

### 3. Search & Filtering
- Real-time search across all images and album names
- Filter gallery by specific album
- Filter tabs for quick navigation

### 4. Visual Effects
- Shine sweep animation on hover
- Sparkle particle effects
- Smooth hover transitions and scaling
- Responsive design (mobile-friendly)

### 5. Data Persistence
- All albums and images are stored in browser `localStorage`
- Data survives page refresh

### 6. User Experience
- Contact modal with hotline numbers
- Smooth scrolling between sections
- Professional luxury aesthetic (dark theme + gold accents)

---

## Non-Functional Requirements

- **Performance**: Fast loading, optimized for high-resolution images
- **Accessibility**: Keyboard navigation supported in modal
- **Responsiveness**: Works well on mobile, tablet, and desktop
- **Maintainability**: Clean, well-commented JavaScript
- **No Backend Required**: Fully client-side (no server needed)

---

## Technical Stack
- HTML5 + Tailwind CSS
- Vanilla JavaScript
- Font Awesome icons
- localStorage for persistence

---

## Future Enhancements (Optional)
- Edit album names
- Delete individual photos
- Drag & drop image reordering
- Export/Import data (JSON backup)
- Light/Dark mode toggle
- Image captions editing

---

**Last Updated**: 2026-07-30