const { defineConfig } = require("cypress");

module.exports = defineConfig({
  projectId:  'djygri',
  e2e: {
    setupNodeEvents(on, config) {
      // implement node event listeners here
    },
  },

  component: {
    devServer: {
      framework: "next",
      bundler: "webpack",
    },
  },
});

// CYPRESS PROJECT COMPLETE SELAM WO//
                              
