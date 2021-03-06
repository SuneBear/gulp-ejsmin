# gulp-ejsmin

> EJS-Minify plugin for [gulp](http://gulpjs.com/) 3.

## Usage

First, install `gulp-ejsmin` as a development dependency:

```shell
npm install --save-dev gulp-ejsmin
```

Then, add it to your `gulpfile.js`:

```javascript
var gulp = require('gulp');
var ejsmin = require('gulp-ejsmin');

gulp.task('default', function () {
    gulp.src('./src/*.ejs')
        .pipe(ejsmin({removeComment: true}))
        .pipe(gulp.dest("./dist"));
});
```

## Options `ejsmin(options)`

## removeComment
Type: `Boolean`
Default: `false`

## License

[MIT License](http://en.wikipedia.org/wiki/MIT_License) © [Sune Bear](http://sunebear.com)
