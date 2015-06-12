wintersmith-babel
==================

[Wintersmith](https://github.com/jnordberg/wintersmith) plugin for [Babel](http://babeljs.io)

## Installing

Install globally or locally using npm

```
npm install [-g] wintersmith-babel
```

and add `wintersmith-babel` to your config.json

```json
{
  "plugins": [
    "wintersmith-babel"
  ]
}
```

## Requirements

Depending on which Babel features you use it is a good idea (pretty much required) to include babel-polyfill.js in your primary template (along with compiled scripts). This file can be built using [Babel-core](https://www.npmjs.com/package/babel-core)

Reminder: It must be stored in your `contents` folder to be included in a Wintersmith build

## Build

To build from `src` run `npm run prepublish`
