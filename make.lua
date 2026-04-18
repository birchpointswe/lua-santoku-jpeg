local env = {

  name = "santoku-jpeg",
  version = "0.0.20-1",
  variable_prefix = "TK_JPEG",
  license = "MIT",
  public = true,

  dependencies = {
    "lua >= 5.1",
    "santoku >= 0.0.328-1",
    "santoku-fs >= 0.0.45-1"
  },

  test = {
    dependencies = {
      "luacov >= 0.15.0-1",
    },
    wasm = {
      ldflags = { "--bind" },
      dependencies = {
        "santoku-web >= 0.0.498-1"
      }
    }
  },

}

env.homepage = "https://github.com/treadwelllane/lua-" .. env.name
env.tarball = env.name .. "-" .. env.version .. ".tar.gz"
env.download = env.homepage .. "/releases/download/" .. env.version .. "/" .. env.tarball

return {
  
  env = env,
}
