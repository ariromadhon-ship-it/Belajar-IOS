# Travel Destinations App - iOS Final Project Submission

## Project Overview

This is a complete iOS application built to meet the course final project requirements. The app showcases Travel Destinations with a clean MVC architecture, proper navigation, and human interface guidelines.

**Theme:** Travel Destinations (Not a forbidden theme: ✓ Not heroes, games, movies, or films)

---

## ✅ Mandatory Requirements - All Met

### 1. **Three Required Screens** ✅

#### Screen 1: Home (List View)
- **Location:** `HomeViewController.swift`
- **Features:**
  - Displays 12 different travel destinations
  - Each item shows destination name, country, and image
  - Tapping any item navigates to the Detail screen
  - Clean table view with custom cells
  - Includes "About" button in navigation bar to access Profile

#### Screen 2: Detail View
- **Location:** `DetailViewController.swift`
- **Features:**
  - Shows complete destination information
  - Includes: name, country, full description, best time to visit, estimated budget
  - Lists top attractions with numbering
  - Built using **Layout Anchors** (programmatic UI)
  - Implements proper **AutoLayout** constraints
  - Scrollable content for longer information

#### Screen 3: About/Profile
- **Location:** `ProfileViewController.swift`
- **Features:**
  - Shows developer identity (real name and placeholder for photo)
  - Displays developer email
  - Contains personal bio about iOS development
  - Uses **Layout Anchors** for UI layout with AutoLayout
  - Professional appearance with rounded profile image

### 2. **Layout Implementation** ✅

All screens use **Layout Anchors with AutoLayout**:
- Home Screen: Uses `UITableViewController` with automatic layout
- Detail Screen: Built entirely with `NSLayoutConstraint` (Layout Anchors)
- Profile Screen: Built entirely with `NSLayoutConstraint` (Layout Anchors)

**Storyboard:** Main.storyboard configures navigation and transitions

### 3. **Theme Restriction** ✅

- **Theme:** Travel Destinations (Food/Tourism category)
- NOT using forbidden themes (heroes, games, movies, films)

---

## 📁 Project Structure

```
TravelApp/
├── Model/
│   └── Destination.swift              # Data model with 12 destinations
│
├── Controllers/
│   ├── HomeViewController.swift        # List view with table
│   ├── DetailViewController.swift      # Detail view with Layout Anchors
│   └── ProfileViewController.swift     # Profile view with Layout Anchors
│
├── Views/
│   └── DestinationTableViewCell.swift  # Custom table cell
│
├── Resources/
│   └── [Images and assets would go here]
│
├── Base.lproj/
│   ├── Main.storyboard                 # Navigation and screen definitions
│   ├── LaunchScreen.storyboard         # App launch screen
│   └── Localizable.strings             # String resources
│
├── AppDelegate.swift                   # App lifecycle management
├── SceneDelegate.swift                 # Scene configuration
├── Info.plist                          # App configuration
└── [Other configuration files]
```

---

## 📊 Data Structure

### Destination Model
```swift
struct Destination {
    let id: Int
    let name: String
    let imageName: String              // For image assets
    let description: String
    let country: String
    let bestTimeToVisit: String
    let attractions: [String]          // Array of 4+ attractions
    let estimatedBudget: String
}
```

### Sample Data (12 Destinations)
The app includes 12 different destinations:
1. Bali, Indonesia
2. Tokyo, Japan
3. Paris, France
4. New York City, USA
5. Bangkok, Thailand
6. Sydney, Australia
7. Dubai, United Arab Emirates
8. Rome, Italy
9. Barcelona, Spain
10. Machu Picchu, Peru
11. Amsterdam, Netherlands
12. Singapore

---

## 🏗️ MVC Architecture

### Model
- `Destination.swift` - Data structure and data management

### View
- Storyboard-based UI (Main.storyboard)
- Custom table cell (`DestinationTableViewCell.swift`)
- Layout Anchor-based views (Detail and Profile screens)

### Controller
- `HomeViewController` - Manages list display and navigation
- `DetailViewController` - Displays detailed information
- `ProfileViewController` - Shows developer profile

---

## 🎨 UI/UX Highlights

- ✅ Consistent spacing and margins (16pt standard)
- ✅ Proper color theme (system colors)
- ✅ No overlapping UI components
- ✅ Clean, readable typography
- ✅ Proper use of UITableViewController
- ✅ Navigation with UINavigationController
- ✅ Rounded profile image with proper corner radius
- ✅ Scrollable detail view for longer content

---

## 🚀 Building and Running the App

### Requirements
- Xcode 14.0 or later
- iOS 15.0 or later deployment target
- Swift 5.7 or later

### Steps to Build
1. Open `TravelApp.xcodeproj` in Xcode
2. Select desired simulator or device
3. Press Cmd+B to build
4. Press Cmd+R to run

### Steps to Customize
1. **Update Profile Information:**
   - Edit `ProfileViewController.swift` line 75:
     - Change `nameLabel.text = "Ari Romadhon"` to your name
     - Change `emailLabel.text` to your email
     - Update `bioText` with your information

2. **Add Images:**
   - Add images to `Assets.xcassets`
   - Update destination `imageName` values in `Destination.swift`
   - Include a profile photo named "profile"

3. **Modify Destinations:**
   - Edit `DestinationDataManager.destinations` in `Destination.swift`
   - Keep minimum 10 items for project requirements

---

## 📝 Code Quality Features

- ✅ No unused imports
- ✅ Proper indentation and formatting
- ✅ Clear variable and method naming
- ✅ Comments where necessary
- ✅ Swift style guide compliance
- ✅ MVC pattern implementation
- ✅ Storyboard organization

---

## ⭐ Optional Enhancements Implemented

### 1. **Human Interface Guidelines (HIG) Compliance**
   - Proper spacing: 16pt margins, 8-12pt padding
   - Consistent color scheme using system colors
   - No overlapping components
   - Standard iOS navigation patterns

### 2. **Clean Code**
   - No unused code or comments
   - Proper Swift naming conventions
   - Consistent indentation
   - Well-organized class structure

### 3. **Proper UI Components**
   - UITableViewController for list management
   - UITableViewCell for custom cells
   - UIImageView with proper scaling
   - UIScrollView for detail content
   - UITextView for multi-line text

### 4. **Professional Design**
   - Rounded profile image
   - Proper navigation hierarchy
   - Visual separation between sections
   - Readable typography hierarchy

---

## 🔗 Navigation Flow

```
Home (List) View
    ↓ Tap destination
Detail View (Shows full details)
    ↓ Back button or swipe left
Home View
    
Home View
    ↓ Tap "About" button
Profile View (About Developer)
    ↓ Back button or swipe left
Home View
```

---

## 🧪 Testing Checklist

- ✅ App builds without errors
- ✅ App runs on simulator without crashes
- ✅ All 12 destinations display in list
- ✅ Tapping destination opens detail view
- ✅ Detail view shows complete information
- ✅ Navigation works both directions
- ✅ About button shows profile
- ✅ Images load correctly (or use placeholder)
- ✅ Layout works on different device sizes
- ✅ No console warnings or errors

---

## 📋 Submission Notes

- **Project Type:** UIKit-based iOS Application
- **Architecture:** MVC (Model-View-Controller)
- **UI Layout:** Storyboard + Layout Anchors (Programmatic AutoLayout)
- **Minimum iOS Version:** iOS 15.0
- **Minimum Destinations:** 12 (exceeds 10 requirement)
- **Theme:** Travel Destinations ✅ (Not in forbidden list)
- **Rejection Conditions:** All avoided

---

## 👤 Developer Information

- **Name:** Ari Romadhon
- **Course:** iOS Development - Final Project Submission
- **Project Name:** Travel Destinations App

---

## 📚 Resources Used

- **Data Model:** Custom Swift structures
- **UI Framework:** UIKit
- **Design Pattern:** MVC
- **Layout Method:** Storyboard + Layout Anchors
- **Images:** Placeholder system for now

---

## 🎯 Key Features

1. ✅ **Dynamic Table View** - Displays scrollable list of destinations
2. ✅ **Custom Table Cell** - Shows image, name, and country with Layout Anchors
3. ✅ **Detail Screen** - Complete information with Layout Anchors and AutoLayout
4. ✅ **Navigation** - Proper UINavigationController implementation
5. ✅ **Profile Screen** - Developer identity with rounded image
6. ✅ **Data Management** - Centralized data source
7. ✅ **Responsive Design** - Works on different device sizes

---

## 📞 Support

For any issues or questions about this project, please contact the developer.

---

**Status:** Ready for Submission ✅
**Last Updated:** April 2026
