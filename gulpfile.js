var gulp = require('gulp'),
    sass = require('gulp-ruby-sass'),
    autoPrefixer = require('gulp-autoprefixer'),
    notify = require('gulp-notify'),
    minifyCSS = require('gulp-minify-css'),
    rename = require('gulp-rename');

gulp.task('css', function() {
  return gulp.src('scss/main.scss')
    .pipe(sass({ style: 'expanded' }))
    .on('error', notify.onError("<%= error.message %>"))
    .pipe(autoPrefixer('last 2 version', '> 5%'))
    .pipe(gulp.dest('css'))
    .pipe(rename({suffix: '.min'}))
    .pipe(minifyCSS())
    .pipe(gulp.dest('css'))
    .pipe(notify({ message: 'Styles task complete' }));
});

// Watch
gulp.task('watch', function() {
    gulp.watch('scss/main.scss', ['css']);
});

gulp.task('default', ['css', 'watch']);
