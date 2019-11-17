/// <binding />
'use strict';

var path = require('path');
var webpack = require('webpack');

module.exports = {
    context: __dirname + "/Client",
    devtool: 'cheap-module-eval-source-map',
    resolve: {
        extensions: ['.js', '.jsx']
    },
    entry:{
        //This is a Key:Value pair of entry points.
        //An entry point is the ES6 version of the file you will include in your HTML page
        //Webpack will first transpile this code, then if any imports are found will recursively transpile
        //All files imported using the ES6 import keywork
        //SUPER IMPORTANT NOTE: Webpack DOES NOT GENERATE THIS FILE, THIS IS THE FILE YOU CREATE AND WORK ON.
        //'webpack-hot-middleware',
        MyModule: './dev/mycrmoptin.js'
    },
    output: {
        //This is the transpiled file that webpack will create.
        //[name] is replaced by the entry point's key from the key value pair above.
        //This is especially useful if you have multiple entry points
        filename: "[name].index.js",
        //This is the location of the output of the file specified above.
        //__dirname is a webpack constant that gives you the current webpack js config location.
        path : __dirname + '/Scripts/client/dev'
    },
    plugins: [
      new webpack.HotModuleReplacementPlugin(),
      //// ...for production
      //require('rollup-plugin-replace')({
      //  'process.env.NODE_ENV': JSON.stringify('production')
      //}),
      //require('rollup-plugin-commonjs')(),
      //require('rollup-plugin-uglify')(),
      //// ...
    ],
    mode: 'development',
    watch: true,   
    module: {
        rules: [
            {
                test: /\.js$/
            }
        ]
    }
    //module: {
    //    loaders: [
    //      {
    //          //This tells webpack the file extension that contains your ES6 code.
    //          //We have assumed all JS files in our entry points will contain ES6.
    //          //Another practice you might use is to name your files .es6
    //          test: /\.js?$/, //=> Could be /\.es6?$/
    //          //This like makes sure we dont compile any node or bower modules
    //          exclude: /(node_modules|bower_components)/,
    //          query: {
    //              //Chose es2015 as our transpiled JS version.
    //              presets: ['es2015'],
    //              plugins: ['babel-plugin-transform-class-properties', 'babel-plugin-transform-decorators-legacy']
    //          },
    //          //Specify babel as our installed transpiler
    //          // 'babel-loader' is also a legal name to reference
    //          loader:['babel']
    //      },
    //      {
    //        test: /\.scss/,
    //        loader: 'style-loader!css-loader!sass-loader'
    //      }
    //    ]
    //}
};

  

