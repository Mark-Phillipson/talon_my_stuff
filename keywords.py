from talon import Module, Context

mod = Module()
mod.list("keywords", desc="Programming Keywords")

ctx_default = Context()
ctx_default.lists["user.keywords"] = {
    "null": " null ",
    "public": " public ",
    "private": " private ",
    "static": " static ",
    "void": " void ",
    "string": " string ",
    "integer": " int ",
    "boolean": " bool ",
    "class": " class ",
    "struct": " struct ",
    "new": " new ",
    "required": " required ",
    "return": " return ",
    "if": " if ",
    "else": " else ",
    "for": " for ",
    "foreach": " foreach ",
    "while": " while ",
    "switch": " switch ",
    "case": " case ",
    "break": " break ",
    "continue": " continue ",
    "true": " true ",
    "false": " false ",
    "this": " this ",
    "base": " base ",
    "try": " try ",
    "catch": " catch ",
    "finally": " finally ",
    "throw": " throw ",
    "using": " using ",
    "namespace": " namespace ",
    "partial": " partial ",
    "abstract": " abstract ",
    "async": " async ",
    "await": " await ",
    "const": " const ",
    "delegate": " delegate ",
    "event": " event ",
    "explicit": " explicit ",
    "extern": " extern ",
    "implicit": " implicit ",
    "in": " in ",
    "internal": " internal ",
    "is": " is ",
    "lock": " lock ",
    "operator": " operator ",
    "out": " out ",
    "override": " override ",
    "params": " params ",
    "read only": " readonly ",
    "ref": " ref ",
    "sealed": " sealed ",
    "size of": " sizeof ",
    "static": " static ",
    "unsafe": " unsafe ",
    "virtual": " virtual ",
    "volatile": " volatile ",
    "where": " where ",
    "yield": " yield ",
    "get": " get ",
    "set": " set ",
    "add": " add ",
    "remove": " remove ",
    "value": " value ",
    "alias": " alias ",
    "ascending": " ascending ",
    "descending": " descending ",
    "from": " from ",
    "group": " group ",
    "into": " into ",
    "order by": " orderby ",
    "select": " select ",
    "join": " join ",
    "equals": " equals ",
    "using": " using ",
    "var": " var ",
    "dynamic": " dynamic ",
    "let": " let ",
    "name of": " nameof ",
    "global": " global ",
    "type of": " typeof ",
}

ctx_python = Context()
# code.language is a Talon defined scope which can be set to indicate
# the programming language you're currently editing
ctx_python.matches = "code.language: python"
ctx_python.lists["user.keywords"] = {
    "define function": " def ",
    "string": " str ",
    "integer": " int ",
    "boolean": " bool ",
}

ctx_csharp = Context()
ctx_csharp.matches = "code.language: csharp"
ctx_csharp.lists["user.keywords"] = {
"private": " private "
}
