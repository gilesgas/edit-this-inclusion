const fs = require('fs');
const Builder = require('opal-compiler').Builder;
// Opal object will be available on the global scope

const builder = Builder.create();
builder.appendPaths('lib');
const result = builder.build('show-partial-uri-or-path.rb');
fs.writeFileSync('show-partial-uri-or-path.js', result.toString(), 'utf8');
