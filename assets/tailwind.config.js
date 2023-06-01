// See the Tailwind configuration guide for advanced usage
// https://tailwindcss.com/docs/configuration
const colors = require('tailwindcss/colors');

module.exports = {
    content: [
        './js/**/*.js',
        '../lib/*_web.ex',
        '../lib/*_web/**/*.*ex'
    ],
    theme: {
        extend: {
            colors: {
                // Colors you want to add go here
                rose: colors.rose,
                cyan: colors.cyan,
                red: colors.red,
                orange: colors.orange,
                amber: colors.amber,
                lime: colors.lime,
                green: colors.green,
                emerald: colors.emerald,
                teal: colors.teal,
                cyan: colors.cyan,
                sky: colors.sky,
                blue: colors.blue,
                indigo: colors.indigo,
                violet: colors.violet,
                purple: colors.purple,
                fuchsia: colors.fuchsia,
                pink: colors.pink,
                rose: colors.rose
            }
        }
    },
    darkMode: 'class', //media <- auto
    plugins: [
        require('@tailwindcss/forms')
    ]
}