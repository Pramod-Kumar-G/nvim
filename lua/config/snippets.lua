local ls = require("luasnip")
ls.add_snippets("all", {
    ls.snippet("hello", {
        ls.text_node("Hello, this is a snippet!"),
    }),
})

local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets("lua", {
    s("req", {
        t('require("'),
        i(1, "module"), -- Insert node for module name
        t('","'),
        i(2, "module"), -- Insert node for module name
        t('")'),
    }),
})
