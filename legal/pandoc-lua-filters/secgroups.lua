--[[
SPDX-License-Identifier: GPL-3.0-only
SPDX-FileCopyrightText: 2019 Alberto Pianon <pianon@array.eu>
]]

local sec_group = {}
local sec_group_citation = {}

function get_tags(meta)
  local tag
  if type(meta.secGroupTags) == 'table' then
    if meta.secGroupTags.t == 'MetaList' then
      for k, v in pairs(meta.secGroupTags) do
        tags = true
        tag = pandoc.utils.stringify(v)
        sec_group[tag] = {}
      end
    elseif meta.secGroupTags.t == 'MetaInlines' then
      tags = true
      tag = pandoc.utils.stringify(meta.secGroupTags)
      sec_group[tag] = {}
    end
  end
end

function find_tagged_headers(header)
  if next(sec_group) == nil then -- empty table, no secGroupTags
    return nil
  end
  for tag, v in pairs(sec_group) do
    if header.attributes[tag] then
      local s = pandoc.utils.stringify(header)
      table.insert(sec_group[tag], { id = header.identifier, title = s } )
    end
  end
end

function create_group_citations(doc)
  if next(sec_group) == nil then -- empty table, no secGroupTags
    return nil
  end
   for tag, sec_list in pairs(sec_group) do
     local cit = {}
     for index, sec in pairs(sec_list) do
       table.insert(cit, "@"..sec.id.." ("..sec.title..")")
     end
     local cit_str = table.concat(cit, ", ")
     local blocks = pandoc.read(cit_str).blocks
     sec_group_citation[tag] = blocks[1].content
   end
end

function replace_group_citations(cite)
  if next(sec_group) == nil then -- empty table, no secGroupTags
    return nil
  end
  local s = pandoc.utils.stringify(cite)
  local tag = s:sub(2) -- remove '@' at the beginning
  if sec_group_citation[tag] then
    return pandoc.Span(sec_group_citation[tag])
  end
end

return {
  {Meta = get_tags},
  {Header = find_tagged_headers},
  {Pandoc = create_group_citations},
  {Cite = replace_group_citations}
}
