themeName = 'ink';

exports.config =
  paths:
    public: './'
    watched: ['_src']
  files:
    stylesheets:
      joinTo:
        "css/#{themeName}.css": /^_src\/scss/
    javascripts:
      joinTo:
        "js/#{themeName}.js": /^_src\/coffee/

  plugins:
    postcss:
      processors: [
        require('autoprefixer')(['last 8 versions']),
        require('csswring')
      ]
    coffeescript:
      bare: true

    # Include your npm modules here :)
    # sass:
    #   options:
    #     includePaths: ['node_modules/foundation/scss']
