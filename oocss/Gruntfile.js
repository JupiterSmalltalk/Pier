'use strict';

module.exports = function (grunt) {
    var path = require('path');

    // These plugins provide necessary tasks.
    grunt.loadNpmTasks('grunt-contrib-sass');
	grunt.loadNpmTasks('grunt-contrib-watch');
	grunt.registerTask('default',['watch']);

    // Project configuration.
    grunt.initConfig({
        pkg: grunt.file.readJSON('package.json'),
		sass: {
			dist: {
				options: {                       // Target options
					 style: 'expanded'
				},
				files: [{
					 expand: true,
					 cwd: 'src',
					 src: ['*.scss'],
					 dest: '../www_root/files/PierCMSFileLibrary/css',
					 ext: '.css'
				}]
			}
		},
		watch: {
			css: {
				files: '**/*.scss',
				dest: '../www_root/files/PierCMSFileLibrary/css',
				tasks: ['sass']
			}
		}
    });
};
