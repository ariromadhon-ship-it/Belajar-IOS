# App Wireframe & Design Documentation

## Visual Layout - Three Screen Blueprint

### Screen 1: Home (List View)
```
┌─────────────────────────────────┐
│      Travel Destinations        │  <- Navigation Title
│                    [About Button]│  <- Navigation Button
├─────────────────────────────────┤
│  ┌─────────────────────────────┐ │
│  │ [IMG] Bali, Indonesia       │ │  <- Custom Cell
│  │       (Indonesia)           │ │     - Image (100x104)
│  └─────────────────────────────┘ │     - Destination name (Bold)
├─────────────────────────────────┤     - Country (Gray)
│  ┌─────────────────────────────┐ │
│  │ [IMG] Tokyo, Japan          │ │
│  │       (Japan)               │ │
│  └─────────────────────────────┘ │
├─────────────────────────────────┤
│  ┌─────────────────────────────┐ │
│  │ [IMG] Paris, France         │ │
│  │       (France)              │ │
│  └─────────────────────────────┘ │
├─────────────────────────────────┤
│       [More items...]           │  <- Scrollable
└─────────────────────────────────┘

Interaction: Tap any cell → Navigate to Detail view
             Tap "About" → Navigate to Profile view
```

### Screen 2: Detail View (Detail Information)
```
┌─────────────────────────────────┐
│  [Back]  Destination Details    │  <- Navigation Bar
├─────────────────────────────────┤
│   ┌─────────────────────────┐   │
│   │                         │   │  <- Destination Image
│   │     Destination         │   │     (Full width, 250px height)
│   │         Image           │   │
│   └─────────────────────────┘   │
│                                 │
│   Bali, Indonesia               │  <- Destination Name (28pt, Bold)
│   Indonesia                     │  <- Country (16pt, Gray)
│                                 │
│   This is a famous island       │  <- Description (14pt, Dark Gray)
│   known for its volcanic        │     (Scrollable)
│   mountains and beautiful       │
│   beaches...                    │
│                                 │
│   Best Time to Visit:           │  <- Label (16pt, Bold)
│   April - October               │  <- Value (14pt)
│                                 │
│   Estimated Budget:             │  <- Label (16pt, Bold)
│   $50-100 per day               │  <- Value (14pt)
│                                 │
│   Top Attractions:              │  <- Label (16pt, Bold)
│   1. Tanah Lot Temple           │  <- Attractions List
│   2. Ubud Monkey Forest         │
│   3. Mount Batur                │
│   4. Seminyak Beach             │
└─────────────────────────────────┘

Layout Method: Layout Anchors (Programmatic AutoLayout)
Scrolling: UIScrollView for expandable content
```

### Screen 3: Profile View (About Developer)
```
┌─────────────────────────────────┐
│  [Back]      About Me            │  <- Navigation Bar
├─────────────────────────────────┤
│                                 │
│            ┌─────────────────┐  │
│            │                 │  │  <- Profile Image
│            │     [PHOTO]     │  │     (120x120, Rounded)
│            │                 │  │
│            └─────────────────┘  │
│                                 │
│   Ari Romadhon                  │  <- Developer Name (24pt, Bold)
│   ari.romadhon@example.com      │  <- Email (14pt, Gray)
│                                 │
│   About:                        │  <- Section Title (16pt, Bold)
│   ┌───────────────────────────┐ │
│   │ Hello! I'm a passionate   │ │  <- Bio Text (14pt)
│   │ iOS developer and travel  │ │     (Scrollable if needed)
│   │ enthusiast...             │ │
│   │                           │ │
│   │ I created this Travel     │ │
│   │ Destinations app to       │ │
│   │ showcase my iOS skills... │ │
│   └───────────────────────────┘ │
│                                 │
└─────────────────────────────────┘

Layout Method: Layout Anchors (Programmatic AutoLayout)
Profile Image: Circular with cornerRadius = 60
```

---

## Navigation Structure

```
    ┌─────────────────┐
    │  Navigation     │
    │  Controller     │
    └────────┬────────┘
             │
             ├─── HOME VIEW (Initial)
             │         │
             │         ├─(Tap Item)─→ DETAIL VIEW
             │         │                     │
             │         │                (Back/Swipe)
             │         │                     │
             │         └────────────────────┘
             │         │
             │         └─(Tap About)─→ PROFILE VIEW
             │                               │
             │                           (Back/Swipe)
             │                               │
             └───────────────────────────────┘
```

---

## Color & Spacing Standards (HIG Compliance)

### Spacing
- Screen margins: 16pt (leading/trailing)
- Section spacing: 16-20pt
- Element padding: 8-12pt
- Image margins: 12pt

### Colors
- Background: System white
- Text (Primary): System black
- Text (Secondary): System gray
- Text (Tertiary): Dark gray

### Typography
- Titles: Bold system font 28pt (Detail name)
- Section Headers: Bold system font 16pt
- Body Text: System font 14pt
- Secondary: System font 12pt

---

## Size Classes & Device Compatibility

- Tested on iPhone models
- Responsive layout using AutoLayout
- Safe area insets for notch devices
- Portrait orientation support

---

## Data Flow

```
DestinationDataManager
        │
        └─→ [12 Destination Objects]
                │
        ┌───────┼───────┐
        │       │       │
    Home V.  Detail V.  Profile V.
   (Shows)  (Details)  (Dev Info)
```

---

## Key Measurements

| Component | Size |
|-----------|------|
| Profile Image | 120x120 (rounded) |
| Table Cell Height | 120pt |
| Detail Image | Full width x 250pt |
| Navigation Bar | Standard |
| Margins | 16pt |
| Cell Image Width | 100pt |

---

**Wireframe Status:** ✅ Matches Actual Implementation
**Design System:** ✅ HIG Compliant
**Responsive:** ✅ AutoLayout with Layout Anchors
