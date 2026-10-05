app: vscode
os: windows
-

# Closed tags: leave cursor inside the element before the closing tag
(add tag | tag) anchor:
    insert("<a></a>")
    key(left:4)
(add tag | tag) article:
    insert("<article></article>")
    key(left:10)
(add tag | tag) aside:
    insert("<aside></aside>")
    key(left:7)
(add tag | tag) button:
    insert("<button></button>")
    key(left:9)
(add tag | tag) div:
    insert("<div></div>")
    key(left:6)
(add tag | tag) footer:
    insert("<footer></footer>")
    key(left:9)
(add tag | tag) form:
    insert("<form></form>")
    key(left:7)
(add tag | tag) header:
    insert("<header></header>")
    key(left:9)
(add tag | tag) label:
    insert("<label></label>")
    key(left:8)
(add tag | tag) list item:
    insert("<li></li>")
    key(left:5)
(add tag | tag) main:
    insert("<main></main>")
    key(left:7)
(add tag | tag) navigation:
    insert("<nav></nav>")
    key(left:6)
(add tag | tag) option:
    insert("<option></option>")
    key(left:9)
(add tag | tag) ordered list:
    insert("<ol></ol>")
    key(left:6)
(add tag | tag) paragraph:
    insert("<p></p>")
    key(left:4)
(add tag | tag) section:
    insert("<section></section>")
    key(left:10)
(add tag | tag) select:
    insert("<select></select>")
    key(left:9)
(add tag | tag) span:
    insert("<span></span>")
    key(left:7)
(add tag | tag) table:
    insert("<table></table>")
    key(left:8)
(add tag | tag) table body:
    insert("<tbody></tbody>")
    key(left:9)
(add tag | tag) table data:
    insert("<td></td>")
    key(left:5)
(add tag | tag) table head:
    insert("<thead></thead>")
    key(left:9)
(add tag | tag) table row:
    insert("<tr></tr>")
    key(left:5)
(add tag | tag) textarea:
    insert("<textarea></textarea>")
    key(left:11)
(add tag | tag) unordered list:
    insert("<ul></ul>")
    key(left:5)
(add tag | tag) video:
    insert("<video></video>")
    key(left:8)

# Void elements: no closing tag needed
(add tag | tag) image: insert("<img>")
(add tag | tag) input: insert("<input>")
(add tag | tag) link: insert("<link>")
