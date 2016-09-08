/* --------- plugins --------- */

var
	gulp        = require('gulp'),
	compass     = require('gulp-compass'),
	browserSync = require('browser-sync').create(),
	uglify      = require('gulp-uglify'),
	rename      = require("gulp-rename"),
	plumber     = require('gulp-plumber'),
	concat      = require('gulp-concat');
	rename 		= require('gulp-rename');

/* --------- paths --------- */

var
	paths = {

		scss : {
			location    : './styles/**/*.scss',
		},

		compass : {
			configFile  : 'config.rb',
			cssFolder   : '../css',
			scssFolder  : './styles',
			imgFolder   : '../../images'
		},

		js : {
			location    : './scripts/**/*.js',
			plugins     : './scripts/_plugins/*.js',
			destination : '../js'
		},
		browserSync : {
			watchPaths : ['*.html', 'css/*.css', 'js/*.js']
		}
	};

/* --------- scss-compass --------- */

gulp.task('compass', function() {
	gulp.src(paths.scss.location)
		.pipe(plumber())
		.pipe(compass({
			config_file: paths.compass.configFile,
			css: paths.compass.cssFolder,
			sass: paths.compass.scssFolder,
			image: paths.compass.imgFolder
		}));
});

/* --------- browser sync --------- */

gulp.task('sync', function() {
	browserSync.init({
		proxy: "winterm.test.local:8080"
	});
});



/* --------- plugins --------- */

gulp.task('scripts', function() {
	return gulp.src(paths.js.location)
		.pipe(plumber())
		.pipe(concat('main.js'))
		.pipe(gulp.dest(paths.js.destination));
});


/* --------- watch --------- */

gulp.task('watch', function(){
	gulp.watch(paths.scss.location, ['compass']);
	gulp.watch(paths.js.location, ['scripts']);
	gulp.watch(paths.browserSync.watchPaths).on('change', browserSync.reload);
});

/* --------- default --------- */

gulp.task('build', ['compass','scripts']);
gulp.task('default', ['build', 'sync', 'watch']);