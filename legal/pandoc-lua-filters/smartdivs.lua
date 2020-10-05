--[[
SPDX-License-Identifier: GPL-3.0-only
SPDX-FileCopyrightText: 2020 Alberto Pianon <pianon@array.eu>
]]

function Div(el)
  local class = el["c"][1][2][1]
  if class == "center" or class == "right" then
    local align = class
    el["c"][1][2] = {} -- remove class
    el["c"][1][3] = {
      { "style", "text-align:"..align..";" }, { "custom-style", align }
    }
    --[[ add attributes both for html and for docx (you need to define "center"
         and "right" custom styles in your reference docx file) ]]
    return el
  end
  return nil
end
