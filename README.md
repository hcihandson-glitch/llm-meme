# React + TypeScript + Vite

A modern React application built with **Vite**, **TypeScript**, and **React Router**.  
This project provides a clean, scalable structure suitable for real-world applications.

---

## 🚀 Getting Started

### Prerequisites
- Node.js **18 or higher**
- npm (or yarn / pnpm)

Check your Node version:
```bash
node -v
```

---

## 📦 Installation

Install dependencies:

```bash
npm install
```

---

## ▶️ Running the App

Start the development server:

```bash
npm run dev
```

The application will be available at:

```
http://localhost:5173
```

---

## 🛠️ Build for Production

Create a production-ready build:

```bash
npm run build
```

Preview the production build locally:

```bash
npm run preview
```

---

## 🧭 Routing

This project uses **React Router** for client-side routing.

### Available Routes
- `/` – Home
- `/about` – About
- `/contact` – Contact
- `*` – 404 Not Found

### Routing Files
- Router configuration: `src/app/router.tsx`
- Shared layout: `src/components/layout/RootLayout.tsx`

---

## 📁 Project Structure

```text
src/
├── app/
│   └── router.tsx          # Router configuration
│
├── components/
│   └── layout/
│       └── RootLayout.tsx  # Shared layout (navigation + outlet)
│
├── pages/
│   ├── Home/
│   │   └── Home.tsx
│   ├── About/
│   │   └── About.tsx
│   ├── Contact/
│   │   └── Contact.tsx
│   └── NotFound/
│       └── NotFound.tsx
│
├── services/
│   └── http.ts             # API helpers
│
├── utils/
│   └── formatDate.ts       # Utility functions
│
├── styles/
│   └── global.css          # Global styles
│
├── main.tsx                # Application entry point
└── vite-env.d.ts
```

---

## ➕ Adding a New Page

1. Create a new page:
```text
src/pages/Settings/Settings.tsx
```

2. Example page component:
```tsx
export default function Settings() {
  return <h1>Settings</h1>;
}
```

3. Register the route in `src/app/router.tsx`:
```tsx
{ path: "settings", element: <Settings /> }
```

---

## 🧩 Tech Stack

- React 18
- TypeScript
- Vite
- React Router
- ESLint

---
