var gulp = require('gulp'),
    sass = require('gulp-ruby-sass'),
    autoprefixer = require('gulp-autoprefixer'),
    notify = require('gulp-notify'),
    minifycss = require('gulp-minify-css'),
    rename = require('gulp-rename'),
    imagemin = require('gulp-imagemin');

gulp.task('css', function() {
  return gulp.src('scss/main.scss')
    .pipe(sass({ style: 'expanded' }))
    .on('error', notify.onError("<%= error.message %>"))
    .pipe(autoprefixer('last 2 version', '> 5%'))
    .pipe(gulp.dest('css'))
    .pipe(rename({suffix: '.min'}))
    .pipe(minifycss())
    .pipe(gulp.dest('css'))
    .pipe(notify({ message: 'Styles task complete' }));
});

gulp.task('images', function() {
  return gulp.src('images/offline/**/*', {base: './images/offline/'})
    .pipe(imagemin({ optimizationLevel: 3, progressive: true, interlaced: true }))
    .pipe(gulp.dest('images/online'))
    .pipe(notify({ message: 'Images task complete' }));
});

// Watch
gulp.task('watch', function() {
    gulp.watch('scss/main.scss', ['css']);
});

gulp.task('default', ['css', 'watch']);
