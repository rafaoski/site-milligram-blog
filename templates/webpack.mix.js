let mix = require('laravel-mix');

/*
 |--------------------------------------------------------------------------
 | Mix Asset Management
 |--------------------------------------------------------------------------
 |
 | Mix provides a clean, fluent API for defining some Webpack build steps
 | for your Laravel application. By default, we are compiling the Sass
 | file for your application, as well as bundling up your JS files.
 |
 */

// https://laravel.com/docs/5.6/mix
// https://github.com/JeffreyWay/laravel-mix/blob/master/docs/concatenation-and-minification.md
mix.js('src/js/app.js', 'dist/custom.js')
   .sass('src/scss/app.scss', 'dist/')
// mix.combine([
//     'src/css/bootstrap.min.css',
//     'src/css/style.css',
// ], 'src/css/custom.css');
mix.combine([
    'node_modules/feather-icons/dist/feather.min.js', // https://github.com/feathericons/feather
    'node_modules/vanilla-lazyload/dist/lazyload.min.js',
    'node_modules/particles.js/particles.js', // https://vincentgarreau.com/particles.js/
    'src/js/burger.min.js', // https://github.com/mblode/burger
],  'dist/main.js')
.setPublicPath('dist')
.browserSync({
 proxy: 'http://localhost/mix/', // Your local installation processwire
 files: // Watch this folders
         [
             "./dist/*.css",
             "./dist/*.js",
             "./*.php",
             "./inc/*.php",
             "./render/*.php",
             "./fields/*.php"
         ]
});

// POPULAR PROBLEMS
// https://github.com/JeffreyWay/laravel-mix/issues/1072
/*
Preinstall
rm -rf node_modules
rm package-lock.json yarn.lock
npm cache clear --force

To upgrade npm, run:
sudo npm install npm@latest -g
Or
npm install npm@latest -g
Next
npm install

OR
npm audit
*/

// Full API
// mix.js(src, output);
// mix.react(src, output); <-- Identical to mix.js(), but registers React Babel compilation.
// mix.preact(src, output); <-- Identical to mix.js(), but registers Preact compilation.
// mix.coffee(src, output); <-- Identical to mix.js(), but registers CoffeeScript compilation.
// mix.ts(src, output); <-- TypeScript support. Requires tsconfig.json to exist in the same folder as webpack.mix.js
// mix.extract(vendorLibs);
// mix.sass(src, output);
// mix.standaloneSass('src', output); <-- Faster, but isolated from Webpack.
// mix.fastSass('src', output); <-- Alias for mix.standaloneSass().
// mix.less(src, output);
// mix.stylus(src, output);
// mix.postCss(src, output, [require('postcss-some-plugin')()]);
// mix.browserSync('http://localhost/my-app/');
// mix.combine(files, destination);
// mix.babel(files, destination); <-- Identical to mix.combine(), but also includes Babel compilation.
// mix.copy(from, to);
// mix.copyDirectory(fromDir, toDir);
// mix.minify(file);
// mix.sourceMaps(); // Enable sourcemaps
// mix.version(); // Enable versioning.
// mix.disableNotifications();
// mix.setPublicPath('./');
// mix.setResourceRoot('prefix/for/resource/locators');
// mix.autoload({}); <-- Will be passed to Webpack's ProvidePlugin.
// mix.webpackConfig({}); <-- Override webpack.config.js, without editing the file directly.
// mix.babelConfig({}); <-- Merge extra Babel configuration (plugins, etc.) with Mix's default.
// mix.then(function () {}) <-- Will be triggered each time Webpack finishes building.
// mix.extend(name, handler) <-- Extend Mix's API with your own components.
// mix.options({
//   extractVueStyles: false, // Extract .vue component styling to file, rather than inline.
//   globalVueStyles: file, // Variables file to be imported in every component.
//   processCssUrls: true, // Process/optimize relative stylesheet url()'s. Set to false, if you don't want them touched.
//   purifyCss: false, // Remove unused CSS selectors.
//   uglify: {}, // Uglify-specific options. https://webpack.github.io/docs/list-of-plugins.html#uglifyjsplugin
//   postCss: [] // Post-CSS options: https://github.com/postcss/postcss/blob/master/docs/plugins.md
// });
