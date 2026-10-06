function PLUGIN:PostInstall(ctx)
  local root = ctx.rootPath
  local version = ctx.runtimeVersion

  os.execute(string.format('mkdir -p "%s/bin"', root))

  local version_file = assert(io.open(root .. "/VERSION", "w"))
  version_file:write(version)
  version_file:close()

  local bin = assert(io.open(root .. "/bin/rtx-tiny", "w"))
  bin:write("#!/usr/bin/env bash\n")
  bin:write('echo rtx-tiny: v"' .. version .. '" args: "$@"\n')
  bin:close()
  os.execute(string.format('chmod +x "%s/bin/rtx-tiny"', root))
end
