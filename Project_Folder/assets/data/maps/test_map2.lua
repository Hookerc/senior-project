return {
  version = "1.1",
  luaversion = "5.1",
  tiledversion = "0.13.0",
  orientation = "orthogonal",
  width = 15,
  height = 15,
  tilewidth = 32,
  tileheight = 32,
  nextobjectid = 3,
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
      name = "Image Layer 1",
      x = -6,
      y = -59,
      visible = true,
      opacity = 1,
      image = "planets.png",
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
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        105, 106, 105, 106, 105, 106, 105, 106, 105, 106, 105, 106, 105, 106, 105
      }
    },
    {
      type = "objectgroup",
      name = "collision",
      visible = true,
      opacity = 1,
      properties = {},
      objects = {
        {
          id = 2,
          name = "",
          type = "",
          shape = "rectangle",
          x = -12,
          y = 447,
          width = 576,
          height = 45,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    }
  }
}
