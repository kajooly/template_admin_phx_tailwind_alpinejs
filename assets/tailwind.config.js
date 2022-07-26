// See the Tailwind configuration guide for advanced usage
// https://tailwindcss.com/docs/configuration
module.exports = {
    content: [
        './js/**/*.js',
        '../lib/*_web.ex',
        '../lib/*_web/**/*.*ex',
        "./node_modules/flowbite/**/*.js"
    ],
    theme: {
        extend: {},
    },
    darkMode: 'class', //media <- auto
    plugins: [
        require('@tailwindcss/forms'),
        require('flowbite/plugin')
    ]
}