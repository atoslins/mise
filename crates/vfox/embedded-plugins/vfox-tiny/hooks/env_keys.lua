function PLUGIN:EnvKeys(ctx)
  local version_file = io.open(ctx.path .. "/VERSION", "r")
  local version = ""
  if version_file then
    version = version_file:read("*a"):gsub("%s+$", "")
    version_file:close()
  end

  return {
    {
      key = "PATH",
      value = ctx.path .. "/bin",
    },
    {
      key = "JDXCODE_TINY",
      value = version,
    },
  }
end
