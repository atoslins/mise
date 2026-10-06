local versions = {
  "3.1.0",
  "3.0.1",
  "3.0.0",
  "2.1.0",
  "2.0.1",
  "2.0.0",
  "1.1.0",
  "1.0.1",
  "1.0.0",
}

function PLUGIN:Available(ctx)
  local available = {}
  for _, version in ipairs(versions) do
    table.insert(available, { version = version })
  end
  return available
end
