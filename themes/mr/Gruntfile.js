
module.exports = function(grunt) {

    "use strict";

    var fs = require('fs'), pkginfo = grunt.file.readJSON("theme.json");

    grunt.initConfig({

        less: {
            theme: {
                options: { cleancss: true },
                files: { 
                    "css/uikit.css": "less/uikit.less",
                }
            }
        },

        compass: {                  // Task
            // dist: {                   // Target
            //   options: {              // Target options
            //     sassDir: 'sass',
            //     cssDir: 'css',
            //     environment: 'production'
            //   }
            // },
            dev: {                    // Another target
              options: {
                sassDir: 'sass',
                cssDir: 'css'
              }
            }
        },

        // meta: {
        //   banner: "/*! "+pkginfo.title+" "+pkginfo.version+" | "+pkginfo.homepage+" | (c) 2014 Pagekit | MIT License */"
        // },

        // usebanner: {
        //     dist: {
        //       options: {
        //         position: 'top',
        //         banner: "<%= meta.banner %>\n"
        //       },
        //       files: {
        //         src: [ 'css/*.css' ]
        //       }
        //     }
        // },

        watch: {
            src: {
                files: ["sass/**/*.scss", "less/**/*.less"],
                tasks: ["build"]
            }
        }
    });

    grunt.loadNpmTasks('grunt-contrib-compass');
    grunt.loadNpmTasks("grunt-contrib-less");
    grunt.loadNpmTasks("grunt-contrib-watch");
    grunt.loadNpmTasks("grunt-banner");

    grunt.registerTask("build", ["compass", "less"]);
    grunt.registerTask("default", ["build"]);
};