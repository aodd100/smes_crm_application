var gulp = require('gulp');
//var inject = require('gulp-inject');
var paths = {
    src: 'src/**/*',
    srcHTML: 'src/**/*.html',
    srcCSS: 'src/**/*.css',
    srcJS: 'src/**/*.js',

    tmp: 'tmp',
    tmpIndex: 'tmp/index.html',
    tmpCSS: 'tmp/**/*.css',
    tmpJS: 'tmp/**/*.js',

    dist: 'dist',
    distIndex: 'dist/index.html',
    distCSS: 'dist/**/*.css',
    distJS: 'dist/**/*.js'
};

gulp.task('copyCss',function(){    
    return gulp.src(["./gentelella/vendors/bootstrap/dist/css/bootstrap.min.css",
        "./gentelella/vendors/font-awesome/css/font-awesome.min.css",
        "./gentelella/vendors/nprogress/nprogress.css",
        "./gentelella/build/css/custom.min.css"]).pipe(gulp.dest('./css'));
});

gulp.task('copyJScript', function () {
    return gulp.src(["./gentelella/vendors/jquery/dist/jquery.min.js",
        "./gentelella/vendors/bootstrap/dist/js/bootstrap.min.js",
        "./gentelella/vendors/fastclick/lib/fastclick.js",
        "./gentelella/vendors/nprogress/nprogress.js",
        "./gentelella/build/js/custom.min.js"]).pipe(gulp.dest('./Scripts'));
});

//gulp.task('inject', ['copy'], function () {
//    var css = gulp.src(paths.tmpCSS);
//    var js = gulp.src(paths.tmpJS);
//    return gulp.src(paths.tmpIndex)
//        .pipe(inject(css, { relative: true }))
//        .pipe(inject(js, { relative: true }))
//        .pipe(gulp.dest(paths.tmp));
//});