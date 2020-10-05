const { environment } = require('@rails/webpacker')
const { VueLoaderPlugin } = require('vue-loader')
const vue = require('./loaders/vue')
// see https://github.com/rails/webpacker/blob/master/docs/webpack.md#add-splitchunks-webpack-v4
// Enable the default config
environment.splitChunks()
// or using custom config
environment.splitChunks((config) => Object.assign({}, config, { optimization: { splitChunks: false } }))

environment.plugins.prepend('VueLoaderPlugin', new VueLoaderPlugin())
environment.loaders.prepend('vue', vue)
module.exports = environment
