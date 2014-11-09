var gulp = require('gulp'),
    sass = require('gulp-ruby-sass'),
    autoprefixer = require('gulp-autoprefixer'),
    notify = require('gulp-notify'),
    minifycss = require('gulp-minify-css'),
    rename = require('gulp-rename'),
    imagemin = require('gulp-imagemin'),
    livereload = require('gulp-livereload');

gulp.task('css', function() {
  return gulp.src('css/main.scss')
    .pipe(sass({ style: 'expanded' }))
    .on('error', notify.onError("<%= error.message %>"))
    .pipe(autoprefixer('last 2 version', '> 5%'))
    .pipe(gulp.dest('css'))
    .pipe(rename({suffix: '.min'}))
    .pipe(minifycss())
    .pipe(gulp.dest('css'));
});

gulp.task('images', function() {
  return gulp.src('images/original/**/*', {base: './images/original/'})
    .pipe(imagemin({ optimizationLevel: 3, progressive: true, interlaced: true }))
    .pipe(gulp.dest('images/compressed'));
});

// Watch
gulp.task('watch', function() {
    gulp.watch('css/main.scss', ['css']);

    gulp.watch('images/original/**/*', ['images']);

    livereload.listen();
    gulp.watch(['css/main.min.css']).on('change', livereload.changed);
});

gulp.task('default', ['watch']);
