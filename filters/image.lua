-- Quarto Lua filter: enhance images with responsive sizing and lazy loading
-- Usage in Markdown: ![Caption](path.jpg){width=600 fig-align=center}
-- Optional attributes: class=rounded, loading=eager, alt="desc", srcset="...", sizes="..."

local function add_attr(el, key, value)
  if not el.attributes then el.attributes = {} end
  if value ~= nil and value ~= "" then
    el.attributes[key] = value
  end
end

function Image(el)
  -- Always add lazy loading unless explicitly set
  if el.attributes["loading"] == nil then
    add_attr(el, "loading", "lazy")
  end

  -- Ensure responsive behavior via CSS class
  local cls = el.attributes["class"] or ""
  if not string.find(" " .. cls .. " ", " img-responsive ") then
    cls = (cls ~= "" and (cls .. " ") or "") .. "img-responsive"
    add_attr(el, "class", cls)
  end

  -- If width is specified, set style max-width and height auto
  local width = el.attributes["width"]
  if width ~= nil then
    local style = el.attributes["style"] or ""
    local extra = "max-width:" .. tostring(width) .. "px;height:auto;"
    if style ~= "" then style = style .. extra else style = extra end
    add_attr(el, "style", style)
  end

  -- Add decoding hint
  if el.attributes["decoding"] == nil then
    add_attr(el, "decoding", "async")
  end

  -- If alt missing, use title as fallback (improves accessibility)
  if (el.attributes["alt"] == nil or el.attributes["alt"] == "") and el.title and el.title ~= "" then
    add_attr(el, "alt", el.title)
  end

  -- Optional: auto-generate sizes attribute for responsive layout
  -- If user provides sizes/srcset, respect them; otherwise, set reasonable default
  if el.attributes["sizes"] == nil then
    add_attr(el, "sizes", "(max-width: 768px) 100vw, 768px")
  end

  return el
end
