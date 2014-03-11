exports.config =
  server:
    port: 3000
  modules:
    definition: false
    wrapper: false
  paths:
    public: 'www'
  files:
    javascripts:
      defaultExtension: 'coffee'
      joinTo:
        'javascripts/app.js': /^app/
        'javascripts/vendor.js': /^vendor/
    stylesheets:
      defaultExtension: 'styl'
      joinTo:
        'stylesheets/app.css': /^app/
        'stylesheets/vendor.css': /^(vendor)\//