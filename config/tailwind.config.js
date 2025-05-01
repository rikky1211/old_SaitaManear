const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  content: [
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}'
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ['Inter var', ...defaultTheme.fontFamily.sans],
      },
    },
  },
  plugins: [
    require('daisyui')
    // require('@tailwindcss/forms'),
    // require('@tailwindcss/typography'),
    // require('@tailwindcss/container-queries'),
  ],
  daisyui: {
    themes:[
      {
        ekiplat: {
          "primary": "#34D399",
          "secondary": "#FCD34D",
          "accent": "#60A5FA",
          "neutral": "#1F2937",
          "base-100": "#34D399",
          "info": "#FCD34D",
          "success": "#BCE1DF",
          "warning": "#F59E0B",
          "error": "#EF4444",
          "alert": "#F2A9A9"
        }
      }
    ]

  }

}
