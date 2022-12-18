local ls = require('luasnip');
local s = ls.s; -- snippet
local fmt = require('luasnip.extras.fmt').fmt;
local i = ls.insert_node;
local rep = require('luasnip.extras').rep;

ls.add_snippets(
  'typescript', {
    s('con', fmt("console.log('%c{} ', 'background: #222; color: #bada55')", i(1, 'default')));
  }
)

