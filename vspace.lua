function vspace_RG(args)
  local height = pandoc.utils.stringify(args[1])
  if quarto.doc.is_format("typst") then
    return pandoc.RawInline('typst', '#v(' .. height .. ')')
  else
    return pandoc.RawInline('html', '<div style="height: ' .. height .. '"></div>')
  end
end
