tag: browser
and not tag: user.rango_disabled
-
tag(): user.rango_direct_clicking

rango disable [{user.rango_hints_toggle_levels}]:
  user.rango_disable_hints(rango_hints_toggle_levels or "global")
