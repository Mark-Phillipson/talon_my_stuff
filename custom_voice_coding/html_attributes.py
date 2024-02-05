from talon import Module, Context

mod = Module()
mod.list("html_attributes", desc="HTML Attributes")

ctx_default = Context()
ctx_default.lists["user.html_attributes"] = {
    "class": " class=''",
    "id": " id=''",
    "style": " style=''",
    "hyperlink reference": " href=''",
    "sauce": " src=''",
    "title": " title=''",
    "type": " type=''",
    "value": " value=''",
    "width": " width=''",
    "height": " height=''",
    "alt": " alt=''",
    "place holder": " placeholder=''",
    "name": " name=''",
    "action": " action=''",
    "method": " method=''",
    "for": " for=''",
    "tab index": " tabindex=''",
    "target": " target=''",
    "rel": " rel=''",
    "download": " download=''",
    "access key":" accesskey=''",
    "at bind": " @bind=''",
    "at bind event": " @bind:event=''",
    "at bind value": " @bind:Value=''",
    "on click lambda": " @onclick=\"@( ( ) => MethodName() )\"",
    "on click": " @onclick=''",
    "auto complete": " autocomplete=''",
    "autofocus": " autofocus=''",
    "checked": " checked",
    "disabled": " disabled",
    "form": " form=''",
    "multiple": " multiple",
    "read only": " readonly",
    "required": " required",
    "selected": " selected",
    "spellcheck": " spellcheck=''",
    "translate": " translate=''",
    "aria label": " aria-label=''",
    "aria described by": " aria-describedby=''",
    "aria expanded": " aria-expanded=''",
    "aria has popup": " aria-haspopup=''",
    "aria hidden": " aria-hidden=''",
    "aria invalid": " aria-invalid=''",
    "aria required": " aria-required=''",
    "aria checked": " aria-checked=''",
    "aria current": " aria-current=''",
    "aria disabled": " aria-disabled=''",
    "aria controls": " aria-controls=''",
    "aria labelled by": " aria-labelledby=''",
    "aria live": " aria-live=''",
    "aria described by": " aria-describedby=''",
    "aria orientation": " aria-orientation=''",
    "aria sort": " aria-sort=''",
    "aria value max": " aria-valuemax=''",
    "aria value min": " aria-valuemin=''",
    "aria value now": " aria-valuenow=''",
    "aria value text": " aria-valuetext=''",
    "aria level": " aria-level=''",
    "aria modal": " aria-modal=''",
    "aria multiline": " aria-multiline=''",
    "aria multiselectable": " aria-multiselectable=''",
    "aria readonly": " aria-readonly=''",
    "aria required": " aria-required=''",
    "aria selected": " aria-selected=''",
    "aria sort": " aria-sort=''",
    "aria busy": " aria-busy=''",
    "aria controls": " aria-controls=''",
    "aria described by": " aria-describedby=''",
    "aria disabled": " aria-disabled=''",
    "aria flow to": " aria-flowto=''",
    "aria grabbed": " aria-grabbed=''",
    "aria has popup": " aria-haspopup=''",
    "aria hidden": " aria-hidden=''",
    "aria invalid": " aria-invalid=''",
    "aria keyshortcuts": " aria-keyshortcuts=''",
    "aria label": " aria-label=''",
    "aria labelled by": " aria-labelledby=''",
}

