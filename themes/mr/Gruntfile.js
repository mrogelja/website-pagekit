
module.exports = function(grunt) {

    "use strict";

    var fs = require('fs'), pkginfo = grunt.file.readJSON("theme.json");

    grunt.initConfig({

        less: {
            theme: {
                options: { cleancss: true },
                files: { 
                    "css/uikit.css": "less/uikit.less"
                }
            }
        },

        watch: {
            src: {
                files: ["less/**/*.less"],
                tasks: ["build"]
            }
        }
    });

    grunt.loadNpmTasks("grunt-contrib-less");
    grunt.loadNpmTasks("grunt-contrib-watch");

    grunt.registerTask("build", ["less"]);
    grunt.registerTask("default", ["build"]);
};