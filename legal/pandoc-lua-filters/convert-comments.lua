local function trim(str)
   str = str:gsub('\n', ' ') -- remove newlines
   str = str:gsub('\r', ' ') -- remove carriage returns
   str = str:match('^%s*(.-)%s*$') -- trim whitespace
   str = str:gsub(' +', ' ') -- remove multiple whitespace
   return str
end

local function startswith(str, findstr)
    return str:find('^' .. findstr) ~= nil
end

local function endswith(str, findstr)
    return str:find(findstr .. '$') ~= nil
end

local function is_html_comment(content)
  return startswith(content, '<!--') and endswith(content, '-->')
end

local function get_author_comment(el_text)
  el_text = trim(el_text:match('%<%!%-%-(.-)%-%-%>'))
  author, comment = el_text:match("^%(([^%)]+)%)(.*)")
  if author then
    author = trim(author)
    comment = trim(comment)
  else
    author = 'unknown'
    comment = el_text
  end
  return author, comment
end

id = 0 -- needed for docx comments only
odt_comment_template = '<office:annotation><dc:creator>%s</dc:creator><dc:date>%s</dc:date><text:p text:style-name="P2"><text:span text:style-name="T1">%s</text:span></text:p></office:annotation>'

local function process_raw(el)
  el_type = el.c[1]
  el_text = el.c[2]
  if el_type == 'html' and is_html_comment(el_text) then
    if FORMAT:match 'odt' then
      author, comment = get_author_comment(el_text)
      date = os.date('%Y-%m-%dT%H:%M:%S.000000000')
      odt_comment = odt_comment_template:format(author, date, comment)
      return {pandoc.RawInline('opendocument', odt_comment)}
    elseif FORMAT == 'docx' then
      author, comment = get_author_comment(el_text)
      date = os.date('%Y-%m-%dT%H:%M:%SZ')
      id = id + 1
      attrs_start = pandoc.Attr( nil, {'comment-start'},
        { id = tostring(id), author = author, date = date } )
      attrs_end = pandoc.Attr( nil, {'comment-end'}, { id = tostring(id) } )
      span_start = pandoc.Span(pandoc.Str(comment), attrs_start)
      span_end = pandoc.Span({}, attrs_end)
      return { span_start, span_end }
    end
  end
end

function RawBlock(el)
  processed_raw = process_raw(el)
  if processed_raw then
    return { pandoc.Para(processed_raw) }
  end
end

function RawInline(el)
  return process_raw(el)
end
