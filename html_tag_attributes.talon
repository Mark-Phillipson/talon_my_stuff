app: vscode
os: windows
-
# Common HTML attributes. Inserted with a leading and trailing space,
# and the cursor placed between the quotes for value attributes.
(attribute | attr) class:
    insert(" class=\"\" ")
    key(left:2)
(attribute | attr) id:
    insert(" id=\"\" ")
    key(left:2)
(attribute | attr) style:
    insert(" style=\"\" ")
    key(left:2)
(attribute | attr) type:
    insert(" type=\"\" ")
    key(left:2)
(attribute | attr) value:
    insert(" value=\"\" ")
    key(left:2)
(attribute | attr) name:
    insert(" name=\"\" ")
    key(left:2)
(attribute | attr) href:
    insert(" href=\"\" ")
    key(left:2)
(attribute | attr) src:
    insert(" src=\"\" ")
    key(left:2)
(attribute | attr) alt:
    insert(" alt=\"\" ")
    key(left:2)
(attribute | attr) title:
    insert(" title=\"\" ")
    key(left:2)
(attribute | attr) target:
    insert(" target=\"\" ")
    key(left:2)
(attribute | attr) rel:
    insert(" rel=\"\" ")
    key(left:2)
(attribute | attr) role:
    insert(" role=\"\" ")
    key(left:2)
(attribute | attr) aria label:
    insert(" aria-label=\"\" ")
    key(left:2)
(attribute | attr) aria hidden:
    insert(" aria-hidden=\"\" ")
    key(left:2)
(attribute | attr) data set:
    insert(" data-set=\"\" ")
    key(left:2)
(attribute | attr) required:
    insert(" required ")
(attribute | attr) disabled:
    insert(" disabled ")
(attribute | attr) checked:
    insert(" checked ")
(attribute | attr) selected:
    insert(" selected ")
(attribute | attr) readonly:
    insert(" readonly ")
(attribute | attr) autofocus:
    insert(" autofocus ")
(attribute | attr) placeholder:
    insert(" placeholder=\"\" ")
    key(left:2)
(attribute | attr) width:
    insert(" width=\"\" ")
    key(left:2)
(attribute | attr) height:
    insert(" height=\"\" ")
    key(left:2)
(attribute | attr) action:
    insert(" action=\"\" ")
    key(left:2)
(attribute | attr) method:
    insert(" method=\"\" ")
    key(left:2)
(attribute | attr) for:
    insert(" for=\"\" ")
    key(left:2)
(attribute | attr) lang:
    insert(" lang=\"\" ")
    key(left:2)
(attribute | attr) charset:
    insert(" charset=\"\" ")
    key(left:2)
(attribute | attr) colspan:
    insert(" colspan=\"\" ")
    key(left:2)
(attribute | attr) rowspan:
    insert(" rowspan=\"\" ")
    key(left:2)
