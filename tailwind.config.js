const defaultTheme = require("tailwindcss/defaultTheme");

const brandColors = {
  navy: {
    DEFAULT: "rgb(var(--brand-navy) / <alpha-value>)",
    50: "rgb(var(--brand-navy) / <alpha-value>)",
    100: "rgb(var(--brand-navy) / <alpha-value>)",
    200: "rgb(var(--brand-navy) / <alpha-value>)",
    300: "rgb(var(--brand-navy) / <alpha-value>)",
    400: "rgb(var(--brand-navy) / <alpha-value>)",
    500: "rgb(var(--brand-navy) / <alpha-value>)",
    600: "rgb(var(--brand-navy) / <alpha-value>)",
    700: "rgb(var(--brand-navy) / <alpha-value>)",
    800: "rgb(var(--brand-navy) / <alpha-value>)",
    900: "rgb(var(--brand-navy) / <alpha-value>)",
    950: "rgb(var(--brand-navy) / <alpha-value>)",
  },
};

module.exports = {
  content: [
    "./public/*.html",
    "./app/helpers/**/*.rb",
    "./app/javascript/**/*.js",
    "./app/views/**/*.{erb,html}",
    "./node_modules/flowbite/**/*.js",
  ],
  theme: {
    colors: {
      // primary: brandColors.example,
      // secondary: brandColors.example,
      // neutral: brandColors.example,
    },
    extend: {
      fontFamily: ["Inter var", ...defaultTheme.fontFamily.sans],
      colors: {
        /* Brand colors */
        "brand-navy": brandColors.navy,
      },
    },
  },
  safeList: [
    {
      pattern: /^(bg|border|ring|shadow|text)-brand-(example|foo|bar)/,
      variants: ["hover", "focus"],
    },
    {
      pattern: /^(bg|border|ring|shadow|text)-brand-(example|foo|bar)\/(0|25|50|75|100)/,
      variants: ["hover", "focus"],
    },
    {
      pattern: /^(bg|border|ring|shadow|text)-brand-(example|foo|bar)-(50|100|200|300|400|500|600|700|800|900|950)/,
      variants: ["hover", "focus"],
    },
    {
      pattern: /^bg-brand-(example|foo|bar)-(50|100|200|300|400|500|600|700|800|900|950)\/(0|25|50|75|100)$/,
      variants: ["hover", "focus"],
    },
  ],
  plugins: [
    require("@tailwindcss/forms"),
    require("@tailwindcss/typography"),
    require("@tailwindcss/container-queries"),
    require("flowbite/plugin"),
  ],
};

