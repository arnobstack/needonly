module.exports = {
  content: [
    "./src/cef/**/*.{ts,tsx,js,jsx}",
    "./src/cef/**/*.html",
  ],
  darkMode: 'class',
  theme: {
    extend: {
      colors: {
        border: 'rgba(0, 0, 0, 0.1)',
        input: 'transparent',
        ring: 'oklch(0.708 0 0)',
        background: '#ffffff',
        foreground: 'oklch(0.145 0 0)',
        primary: {
          DEFAULT: '#030213',
          foreground: 'oklch(1 0 0)',
        },
        secondary: {
          DEFAULT: 'oklch(0.95 0.0058 264.53)',
          foreground: '#030213',
        },
        destructive: {
          DEFAULT: '#d4183d',
          foreground: '#ffffff',
        },
        muted: {
          DEFAULT: '#ececf0',
          foreground: '#717182',
        },
        accent: {
          DEFAULT: '#e9ebef',
          foreground: '#030213',
        },
        popover: {
          DEFAULT: 'oklch(1 0 0)',
          foreground: 'oklch(0.145 0 0)',
        },
        card: {
          DEFAULT: '#ffffff',
          foreground: 'oklch(0.145 0 0)',
        },
      },
      borderRadius: {
        lg: '0.625rem',
        md: 'calc(0.625rem - 2px)',
        sm: 'calc(0.625rem - 4px)',
      },
    },
  },
  plugins: [],
}
