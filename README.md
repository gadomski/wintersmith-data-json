wintersmith-data-json
=====================

[Wintersmith](https://github.com/jnordberg/wintersmith) plugin for rendering json files as-is, instead of creating html pages.
A plugin of the same name [already exists](https://www.npmjs.org/package/wintersmith-data-json), but it didn't do exactly what I needed it to so I re-wrote it here.
I don't really have a good excuse for not picking a new name other than the fact that I don't plan on publishing this plugin &mdash; it's just for my own use.

## Installing

Install globally or locally using npm

```
npm install [-g] wintersmith-data-json
```

and add `wintersmith-data-json` to your config.json

```json
{
  "plugins": [
    "wintersmith-data-json"
  ]
}
```

## Running tests

```
npm install
npm test
```
