local file = require("file")

function PLUGIN:ParseLegacyFile(ctx)
  if ctx.filename ~= ".tiny-version" then
    error("Expected filename to be .tiny-version, got " .. tostring(ctx.filename))
  end

  local version = file.read(ctx.filepath):gsub("%s+", "")
  if version == "" then
    return {}
  end

  return {
    version = version,
  }
end
