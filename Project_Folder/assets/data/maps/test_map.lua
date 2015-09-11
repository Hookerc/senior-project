return {
  version = "1.1",
  luaversion = "5.1",
  tiledversion = "0.13.0",
  orientation = "orthogonal",
  width = 15,
  height = 15,
  tilewidth = 32,
  tileheight = 32,
  nextobjectid = 5,
  properties = {},
  tilesets = {
    {
      name = "Futuristic_A4",
      firstgid = 1,
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      image = "../Futuristic_A4.png",
      imagewidth = 512,
      imageheight = 480,
      transparentcolor = "#000000",
      tileoffset = {
        x = 0,
        y = 0
      },
      properties = {},
      terrains = {},
      tilecount = 240,
      tiles = {}
    }
  },
  layers = {
    {
      type = "imagelayer",
      name = "background",
      x = -9,
      y = -57,
      visible = true,
      opacity = 1,
      image = "../planets.png",
      properties = {}
    },
    {
      type = "tilelayer",
      name = "Tile Layer 1",
      x = 0,
      y = 0,
      width = 15,
      height = 15,
      visible = true,
      opacity = 1,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJxjYBgFo2AUUAoygTiLTBoAyUQGLw=="
    },
    {
      type = "objectgroup",
      name = "wall",
      visible = true,
      opacity = 1,
      properties = {},
      objects = {
        {
          id = 4,
          name = "",
          type = "",
          shape = "rectangle",
          x = -6,
          y = 448,
          width = 493,
          height = 35,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    }
  }
}
