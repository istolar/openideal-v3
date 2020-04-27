const gulp = require('gulp');
var sass = require('gulp-sass');
const gs = gulp.series;

// Building css style from scss.
gulp.task('styles', function (callback) {
  gulp.src('scss/**/*.scss')
    .pipe(sass().on('error', sass.logError))
    .pipe(gulp.dest('./css/'));
    callback();
});

// Watch task.
gulp.task('watch',function () {
  gulp.watch('scss/**/*.scss',gs('styles'));
});

// Test task.
gulp.task('test', (callback) => {
  console.log('Gulp is working!');
  callback();
});
