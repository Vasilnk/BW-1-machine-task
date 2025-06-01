# Big Market (A part of E-commerce application)


This Flutter app was created as a machine task assignment. It has two main screens — **Home** and **Notification** — home screen accessible via a bottom navigation bar. The **first landing screen** and the **first bottom navigation bar item** is the **Home Screen**.

---

## Project Overview

- When the app opens, it lands on the **Home Screen**.
- The **Notification Screen** displays notifications fetched from an external API.
- The app uses **BLoC** for state management to manage UI updates efficiently.
- The location on the Home Screen is displayed as hardcoded text (since the task did not require real location fetching).

---

## Home Screen Details

The Home Screen contains several UI sections arranged vertically:

- **Location Display:** Hardcoded text showing the user’s location.
- **Top Row:** Contains a search bar, a notification icon, and an offer tag.
- **Category Section:** Displays product/service categories.
- **Discount Carousel Slider:** Shows promotional images with discounts.
- **Trending Products Section:** Highlights popular products.
- **Favorite Products Carousel:** A slider displaying favorite items.
- **Refer and Earn Section:** A banner encouraging users to refer friends.
- **Nearby Stores Section:** Lists nearby stores.
- **View All Stores Button:** Navigates to a full list of stores.

---

## Notification Screen Details

- Contains an app bar with a title.
- Displays notifications fetched from a REST API.
- Shows a loading indicator while the data is being fetched.

---

## Technologies & Packages Used

- **Flutter** – UI framework
- **BLoC** – State management
- **http** – For REST API calls
- **carousel_slider** – For image carousel sliders
- **timeago** – To display relative time like “5 minutes ago”

---

Thank you for checking out my project!
