return {
  version = "1.1",
  luaversion = "5.1",
  tiledversion = "0.13.0",
  orientation = "orthogonal",
  width = 30,
  height = 30,
  tilewidth = 32,
  tileheight = 32,
  nextobjectid = 5,
  properties = {
    ["battlesteps"] = "10",
    ["bgm"] = "27 Smile For Me"
  },
  tilesets = {
    {
      name = "terrain_atlas",
      firstgid = 1,
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      image = "../graphics/tilesets/terrain_atlas.png",
      imagewidth = 1024,
      imageheight = 1024,
      transparentcolor = "#000000",
      tileoffset = {
        x = 0,
        y = 0
      },
      properties = {},
      terrains = {},
      tilecount = 1024,
      tiles = {}
    },
    {
      name = "obj_misk_atlas",
      firstgid = 1025,
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      image = "../graphics/tilesets/obj_misk_atlas.png",
      imagewidth = 1024,
      imageheight = 1024,
      transparentcolor = "#000000",
      tileoffset = {
        x = 0,
        y = 0
      },
      properties = {},
      terrains = {},
      tilecount = 1024,
      tiles = {}
    },
    {
      name = "WaterAndFire_2",
      firstgid = 2049,
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      image = "../graphics/tilesets/WaterAndFire_2.png",
      imagewidth = 192,
      imageheight = 256,
      transparentcolor = "#000000",
      tileoffset = {
        x = 0,
        y = 0
      },
      properties = {},
      terrains = {},
      tilecount = 48,
      tiles = {
        {
          id = 0,
          animation = {
            {
              tileid = "0",
              duration = "250"
            },
            {
              tileid = "3",
              duration = "250"
            }
          }
        },
        {
          id = 1,
          animation = {
            {
              tileid = "1",
              duration = "250"
            },
            {
              tileid = "4",
              duration = "250"
            }
          }
        },
        {
          id = 2,
          animation = {
            {
              tileid = "2",
              duration = "250"
            },
            {
              tileid = "5",
              duration = "250"
            }
          }
        },
        {
          id = 6,
          animation = {
            {
              tileid = "6",
              duration = "250"
            },
            {
              tileid = "9",
              duration = "250"
            }
          }
        },
        {
          id = 7,
          animation = {
            {
              tileid = "7",
              duration = "250"
            },
            {
              tileid = "10",
              duration = "250"
            }
          }
        },
        {
          id = 8,
          animation = {
            {
              tileid = "8",
              duration = "250"
            },
            {
              tileid = "11",
              duration = "250"
            }
          }
        },
        {
          id = 12,
          animation = {
            {
              tileid = "12",
              duration = "250"
            },
            {
              tileid = "15",
              duration = "250"
            }
          }
        },
        {
          id = 13,
          animation = {
            {
              tileid = "13",
              duration = "250"
            },
            {
              tileid = "16",
              duration = "250"
            }
          }
        },
        {
          id = 14,
          animation = {
            {
              tileid = "14",
              duration = "250"
            },
            {
              tileid = "17",
              duration = "250"
            }
          }
        },
        {
          id = 18,
          animation = {
            {
              tileid = "18",
              duration = "250"
            },
            {
              tileid = "21",
              duration = "250"
            }
          }
        },
        {
          id = 20,
          animation = {
            {
              tileid = "20",
              duration = "250"
            },
            {
              tileid = "23",
              duration = "250"
            }
          }
        },
        {
          id = 24,
          animation = {
            {
              tileid = "24",
              duration = "250"
            },
            {
              tileid = "27",
              duration = "250"
            }
          }
        },
        {
          id = 25,
          animation = {
            {
              tileid = "25",
              duration = "250"
            },
            {
              tileid = "28",
              duration = "250"
            }
          }
        },
        {
          id = 26,
          animation = {
            {
              tileid = "26",
              duration = "250"
            },
            {
              tileid = "29",
              duration = "250"
            }
          }
        },
        {
          id = 31,
          animation = {
            {
              tileid = "31",
              duration = "100"
            },
            {
              tileid = "32",
              duration = "100"
            },
            {
              tileid = "33",
              duration = "100"
            },
            {
              tileid = "34",
              duration = "100"
            }
          }
        },
        {
          id = 37,
          animation = {
            {
              tileid = "37",
              duration = "100"
            },
            {
              tileid = "38",
              duration = "100"
            }
          }
        },
        {
          id = 42,
          animation = {
            {
              tileid = "42",
              duration = "100"
            },
            {
              tileid = "43",
              duration = "100"
            },
            {
              tileid = "44",
              duration = "100"
            }
          }
        },
        {
          id = 45,
          animation = {
            {
              tileid = "45",
              duration = "100"
            },
            {
              tileid = "46",
              duration = "100"
            },
            {
              tileid = "47",
              duration = "100"
            }
          }
        }
      }
    },
    {
      name = "signpost_0",
      firstgid = 2097,
      tilewidth = 30,
      tileheight = 42,
      spacing = 0,
      margin = 0,
      image = "../graphics/tilesets/signpost_0.png",
      imagewidth = 30,
      imageheight = 42,
      transparentcolor = "#ffffff",
      tileoffset = {
        x = 0,
        y = 0
      },
      properties = {},
      terrains = {},
      tilecount = 1,
      tiles = {}
    }
  },
  layers = {
    {
      type = "tilelayer",
      name = "Tile Layer 1",
      x = 0,
      y = 0,
      width = 30,
      height = 30,
      visible = true,
      opacity = 1,
      properties = {},
      encoding = "lua",
      data = {
        182, 119, 182, 184, 184, 119, 184, 119, 184, 184, 183, 184, 182, 183, 391, 392, 393, 183, 182, 183, 182, 119, 119, 184, 184, 119, 119, 184, 119, 183,
        184, 184, 183, 183, 183, 182, 183, 184, 182, 182, 184, 119, 184, 182, 391, 392, 393, 182, 184, 183, 119, 184, 119, 183, 182, 119, 119, 183, 184, 119,
        182, 184, 119, 119, 182, 182, 183, 119, 184, 182, 184, 184, 182, 119, 391, 392, 393, 182, 184, 119, 182, 182, 184, 184, 184, 184, 184, 184, 119, 184,
        182, 183, 183, 184, 182, 119, 182, 184, 184, 184, 184, 119, 183, 119, 423, 297, 328, 361, 184, 183, 119, 119, 182, 119, 119, 119, 183, 183, 119, 119,
        182, 184, 184, 183, 184, 119, 184, 184, 119, 119, 183, 184, 184, 183, 184, 391, 392, 393, 182, 119, 119, 183, 184, 182, 184, 182, 184, 183, 182, 182,
        183, 182, 183, 119, 183, 182, 184, 183, 183, 183, 183, 184, 183, 184, 119, 391, 392, 393, 119, 183, 184, 183, 183, 182, 182, 119, 184, 182, 119, 184,
        182, 182, 182, 184, 184, 182, 184, 182, 182, 119, 183, 119, 182, 184, 183, 391, 392, 393, 182, 184, 182, 183, 182, 119, 119, 119, 182, 184, 183, 184,
        183, 119, 184, 182, 119, 184, 183, 183, 182, 184, 182, 182, 183, 183, 182, 391, 392, 393, 119, 184, 184, 184, 182, 183, 119, 119, 119, 119, 119, 184,
        183, 119, 184, 119, 182, 119, 184, 183, 182, 119, 184, 183, 182, 182, 359, 329, 296, 425, 184, 119, 182, 182, 119, 119, 184, 119, 182, 183, 182, 182,
        182, 119, 182, 184, 184, 184, 182, 184, 119, 182, 182, 184, 182, 359, 329, 296, 425, 183, 119, 184, 183, 183, 119, 182, 184, 182, 182, 182, 119, 182,
        182, 182, 183, 184, 182, 119, 119, 184, 182, 182, 184, 183, 359, 329, 296, 425, 184, 182, 184, 550, 551, 551, 551, 551, 551, 551, 551, 552, 119, 184,
        184, 182, 182, 184, 183, 182, 119, 182, 184, 119, 183, 119, 391, 392, 393, 119, 182, 182, 184, 582, 583, 583, 583, 583, 583, 583, 583, 584, 183, 182,
        182, 183, 184, 119, 182, 184, 182, 184, 184, 184, 119, 184, 391, 392, 393, 184, 182, 184, 183, 582, 583, 583, 583, 583, 583, 583, 583, 584, 119, 183,
        184, 119, 183, 183, 119, 183, 184, 119, 183, 182, 119, 119, 391, 392, 393, 184, 119, 182, 182, 582, 583, 583, 583, 583, 583, 583, 583, 584, 183, 183,
        182, 182, 119, 184, 119, 182, 182, 184, 119, 182, 184, 182, 391, 392, 393, 182, 182, 183, 119, 614, 615, 615, 615, 615, 615, 615, 615, 616, 119, 119,
        184, 119, 183, 183, 119, 184, 119, 183, 182, 182, 184, 182, 391, 392, 393, 119, 184, 182, 182, 182, 184, 183, 184, 119, 184, 184, 183, 184, 119, 352,
        183, 184, 183, 182, 184, 182, 119, 184, 182, 119, 183, 359, 329, 296, 425, 119, 184, 184, 182, 550, 551, 551, 551, 551, 551, 551, 551, 552, 119, 352,
        119, 184, 184, 119, 182, 183, 184, 182, 119, 184, 184, 391, 392, 393, 182, 183, 119, 184, 184, 582, 583, 583, 583, 583, 583, 583, 583, 584, 119, 112,
        183, 183, 182, 183, 119, 183, 119, 183, 182, 183, 359, 329, 296, 425, 119, 183, 182, 184, 183, 582, 583, 583, 583, 583, 583, 583, 583, 584, 184, 112,
        182, 119, 182, 119, 183, 182, 119, 183, 184, 182, 391, 392, 393, 183, 183, 183, 119, 183, 119, 582, 583, 583, 583, 583, 583, 583, 583, 584, 119, 112,
        119, 119, 182, 182, 183, 119, 183, 119, 182, 183, 391, 392, 393, 183, 184, 184, 182, 182, 119, 614, 615, 615, 615, 615, 615, 615, 615, 616, 183, 352,
        182, 183, 184, 183, 183, 183, 183, 119, 183, 183, 391, 392, 393, 119, 184, 182, 183, 183, 183, 119, 119, 184, 182, 182, 182, 183, 184, 183, 183, 183,
        184, 183, 183, 184, 184, 182, 184, 182, 119, 184, 391, 392, 393, 182, 183, 182, 183, 183, 184, 550, 551, 551, 551, 551, 551, 551, 551, 552, 119, 119,
        119, 184, 119, 119, 183, 184, 183, 183, 183, 184, 423, 297, 328, 361, 183, 183, 119, 184, 119, 582, 583, 583, 583, 583, 583, 583, 583, 584, 183, 182,
        184, 182, 182, 183, 184, 183, 183, 183, 119, 119, 119, 423, 297, 328, 361, 119, 183, 184, 183, 582, 583, 583, 583, 583, 583, 583, 583, 584, 119, 183,
        119, 182, 184, 183, 119, 182, 183, 182, 182, 182, 182, 182, 391, 392, 393, 119, 184, 119, 184, 582, 583, 583, 583, 583, 583, 583, 583, 584, 119, 183,
        182, 183, 184, 183, 119, 183, 119, 182, 182, 119, 184, 182, 423, 297, 328, 361, 184, 183, 119, 614, 615, 615, 615, 615, 615, 615, 615, 616, 184, 183,
        182, 182, 119, 183, 184, 183, 119, 182, 183, 119, 119, 184, 119, 391, 392, 393, 183, 183, 183, 119, 183, 119, 183, 119, 183, 183, 184, 182, 183, 182,
        182, 119, 184, 184, 184, 183, 183, 184, 184, 183, 184, 183, 182, 423, 297, 328, 361, 183, 182, 119, 119, 182, 184, 182, 184, 182, 184, 183, 183, 183,
        183, 184, 184, 184, 184, 182, 183, 184, 182, 119, 183, 182, 184, 183, 391, 392, 393, 183, 119, 119, 183, 183, 119, 184, 183, 183, 183, 182, 182, 183
      }
    },
    {
      type = "tilelayer",
      name = "Tile Layer 6",
      x = 0,
      y = 0,
      width = 30,
      height = 30,
      visible = true,
      opacity = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2067, 2068, 2069, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2067, 2068, 2069, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2067, 2068, 2069, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2073, 2051, 2056, 2063, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2067, 2068, 2069, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2067, 2068, 2069, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2067, 2068, 2069, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2067, 2068, 2069, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2061, 2057, 2050, 2075, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2061, 2057, 2050, 2075, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2061, 2057, 2050, 2075, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2067, 2068, 2069, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2067, 2068, 2069, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2067, 2068, 2069, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2067, 2068, 2069, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2067, 2068, 2069, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2061, 2057, 2050, 2075, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 312,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2067, 2068, 2069, 0, 0, 0, 0, 0, 0, 846, 846, 846, 846, 846, 846, 846, 0, 0, 312,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2061, 2057, 2050, 2075, 0, 0, 0, 0, 0, 0, 878, 878, 878, 878, 878, 878, 878, 0, 0, 312,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2067, 2068, 2069, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 312,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2067, 2068, 2069, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 312,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2067, 2068, 2069, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2067, 2068, 2069, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2073, 2051, 2056, 2063, 0, 0, 0, 0, 0, 0, 846, 846, 846, 846, 846, 846, 846, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2073, 2051, 2056, 2063, 0, 0, 0, 0, 0, 878, 878, 878, 878, 878, 878, 878, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2067, 2068, 2069, 0, 0, 0, 0, 0, 878, 878, 878, 878, 878, 878, 878, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2073, 2051, 2056, 2063, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2067, 2068, 2069, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2073, 2051, 2056, 2063, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2067, 2068, 2069, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      name = "Tile Layer 2",
      x = 0,
      y = 0,
      width = 30,
      height = 30,
      visible = true,
      opacity = 1,
      properties = {},
      encoding = "lua",
      data = {
        978, 978, 978, 978, 978, 978, 978, 978, 978, 978, 978, 978, 978, 978, 979, 0, 0, 785, 977, 978, 978, 978, 978, 978, 978, 978, 978, 978, 978, 978,
        978, 978, 978, 978, 978, 978, 978, 978, 978, 978, 978, 978, 978, 978, 979, 0, 0, 785, 977, 978, 978, 978, 978, 978, 978, 978, 978, 978, 978, 978,
        978, 978, 978, 978, 978, 978, 978, 978, 978, 978, 978, 978, 978, 978, 979, 0, 0, 817, 977, 978, 978, 978, 978, 978, 978, 978, 978, 978, 978, 978,
        978, 978, 978, 948, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 787, 0, 0, 0, 785, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 978,
        978, 978, 978, 979, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 978,
        978, 978, 978, 979, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 978,
        978, 978, 978, 979, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 978,
        978, 978, 978, 979, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 978,
        978, 978, 978, 979, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 978,
        978, 978, 978, 979, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 978,
        978, 978, 978, 979, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 846, 846, 846, 846, 846, 846, 846, 0, 0, 978,
        978, 978, 978, 979, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 878, 878, 878, 878, 878, 878, 878, 0, 0, 978,
        978, 978, 978, 979, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 846, 846, 846, 846, 846, 846, 846, 0, 0, 917,
        978, 978, 978, 979, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 878, 878, 878, 878, 878, 878, 878, 0, 0, 785,
        978, 978, 978, 979, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 628, 629, 629, 629, 629, 629, 629, 629, 630, 0, 785,
        978, 978, 978, 979, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        978, 978, 978, 979, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 846, 846, 846, 846, 846, 846, 846, 0, 0, 0,
        978, 978, 978, 979, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 878, 878, 878, 878, 878, 878, 878, 0, 0, 0,
        978, 978, 978, 979, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 846, 846, 846, 846, 846, 846, 846, 0, 0, 0,
        978, 978, 978, 979, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 878, 878, 878, 878, 878, 878, 878, 0, 0, 0,
        978, 978, 978, 979, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 628, 629, 629, 629, 629, 629, 629, 629, 630, 0, 853,
        978, 978, 978, 979, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 977,
        978, 978, 978, 979, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 846, 846, 846, 846, 846, 846, 846, 0, 0, 977,
        978, 978, 978, 979, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 878, 878, 878, 878, 878, 878, 878, 0, 0, 977,
        978, 978, 978, 979, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 846, 846, 846, 846, 846, 846, 846, 0, 0, 977,
        978, 978, 978, 979, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 878, 878, 878, 878, 878, 878, 878, 0, 0, 977,
        978, 978, 978, 979, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 628, 629, 629, 629, 629, 629, 629, 629, 630, 0, 977,
        978, 978, 978, 979, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 977,
        978, 978, 978, 979, 0, 0, 0, 0, 0, 0, 946, 946, 946, 855, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 946, 977,
        978, 978, 978, 980, 946, 946, 946, 946, 946, 946, 946, 946, 946, 947, 0, 0, 0, 945, 946, 946, 946, 946, 946, 946, 946, 946, 946, 946, 946, 981
      }
    },
    {
      type = "tilelayer",
      name = "Tile Layer 3",
      x = 0,
      y = 0,
      width = 30,
      height = 30,
      visible = true,
      opacity = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 887, 0, 0, 0, 885, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 887, 0, 0, 0, 885, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 887, 0, 0, 0, 885, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 891, 2147484566, 2147484566, 2147484566, 2147484566, 2147484566, 2147484566, 2147484566, 2147484566, 2147484566, 2147484566, 919, 0, 0, 0, 917, 918, 918, 918, 918, 918, 918, 918, 918, 918, 918, 890,
        0, 0, 0, 887, 786, 786, 786, 786, 786, 786, 786, 786, 786, 786, 787, 0, 0, 0, 785, 786, 786, 786, 786, 786, 786, 786, 786, 786, 786, 885,
        0, 0, 0, 887, 786, 786, 786, 786, 786, 786, 786, 786, 786, 786, 787, 0, 0, 0, 785, 786, 786, 786, 786, 786, 786, 786, 786, 786, 786, 885,
        0, 0, 0, 887, 786, 786, 786, 786, 786, 786, 786, 786, 786, 786, 787, 0, 0, 0, 785, 786, 786, 786, 786, 786, 786, 786, 786, 786, 786, 885,
        0, 0, 0, 887, 818, 818, 818, 818, 818, 818, 818, 818, 818, 818, 819, 628, 629, 630, 817, 818, 818, 818, 818, 818, 818, 818, 818, 818, 818, 885,
        0, 0, 0, 887, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 885,
        0, 0, 0, 887, 0, 1352, 1353, 1354, 1355, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 885,
        0, 0, 0, 887, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 885,
        0, 0, 0, 887, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 846, 846, 846, 846, 846, 846, 846, 0, 0, 885,
        0, 0, 0, 887, 0, 0, 0, 0, 0, 1352, 1353, 1354, 1355, 0, 0, 0, 0, 0, 0, 0, 878, 878, 878, 878, 878, 878, 878, 0, 0, 885,
        0, 0, 0, 887, 1352, 1353, 1354, 1355, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 887, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 887, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 785,
        0, 0, 0, 887, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 817,
        0, 0, 0, 887, 0, 0, 0, 0, 1352, 1353, 1354, 1355, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 887, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 887, 1352, 1353, 1354, 1355, 0, 0, 628, 629, 630, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 887, 0, 0, 0, 0, 0, 0, 660, 661, 662, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 887, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 885,
        0, 0, 0, 887, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 885,
        0, 0, 0, 887, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 885,
        0, 0, 0, 887, 0, 0, 0, 0, 1352, 1353, 1354, 1355, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 885,
        0, 0, 0, 887, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 885,
        0, 0, 0, 887, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 885,
        0, 0, 0, 887, 0, 1352, 1353, 1354, 1355, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 885,
        0, 0, 0, 794, 854, 854, 854, 854, 854, 854, 854, 854, 854, 0, 628, 629, 630, 853, 854, 854, 854, 854, 854, 854, 854, 854, 854, 854, 854, 761,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 887, 0, 0, 0, 885, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      name = "overhead",
      x = 0,
      y = 0,
      width = 30,
      height = 30,
      visible = true,
      opacity = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 1256, 1257, 1258, 1259, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 1288, 1289, 1290, 1291, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 1320, 1321, 1322, 1323, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 1256, 1257, 1258, 1259, 0, 0, 0, 0, 0, 0, 2147484278, 2147484277, 2147484277, 2147484277, 2147484277, 2147484277, 2147484277, 2147484277, 2147484276, 0, 0,
        0, 0, 0, 0, 1256, 1257, 1258, 1259, 0, 1288, 1289, 1290, 1291, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 1288, 1289, 1290, 1291, 0, 1320, 1321, 1322, 1323, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 1320, 1321, 1322, 1323, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 1256, 1257, 1258, 1259, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 1288, 1289, 1290, 1291, 0, 0, 0, 0, 0, 0, 0, 2147484278, 2147484277, 2147484277, 2147484277, 2147484277, 2147484277, 2147484277, 2147484277, 2147484276, 0, 0,
        0, 0, 0, 0, 1256, 1257, 1258, 1259, 1320, 1321, 1322, 1323, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 1288, 1289, 1290, 1291, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 1320, 1321, 1322, 1323, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 628, 629, 630, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 1256, 1257, 1258, 1259, 0, 0, 0, 0, 0, 0, 0, 2147484278, 2147484277, 2147484277, 2147484277, 2147484277, 2147484277, 2147484277, 2147484277, 2147484276, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 1288, 1289, 1290, 1291, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 1320, 1321, 1322, 1323, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 1256, 1257, 1258, 1259, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 1288, 1289, 1290, 1291, 0, 1256, 1257, 1258, 1259, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 1320, 1321, 1322, 1323, 0, 1288, 1289, 1290, 1291, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1320, 1321, 1322, 1323, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      name = "collision",
      x = 0,
      y = 0,
      width = 30,
      height = 30,
      visible = false,
      opacity = 1,
      properties = {},
      encoding = "lua",
      data = {
        110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110,
        110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110,
        110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110,
        110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110,
        110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110,
        110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110,
        110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110,
        110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110,
        110, 110, 110, 110, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 110, 110, 110, 110, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 110,
        110, 110, 110, 110, 0, 0, 110, 110, 0, 0, 0, 0, 0, 110, 110, 110, 110, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 110,
        110, 110, 110, 110, 0, 0, 0, 0, 0, 0, 0, 0, 110, 110, 110, 110, 0, 0, 0, 110, 110, 110, 110, 110, 110, 110, 110, 110, 0, 110,
        110, 110, 110, 110, 0, 0, 0, 0, 0, 0, 0, 0, 110, 110, 110, 0, 0, 0, 0, 0, 110, 110, 110, 110, 110, 110, 110, 0, 0, 110,
        110, 110, 110, 110, 0, 0, 0, 0, 0, 0, 110, 110, 110, 110, 110, 0, 0, 0, 0, 0, 110, 110, 110, 110, 110, 110, 110, 0, 0, 110,
        110, 110, 110, 110, 0, 110, 110, 0, 0, 0, 0, 0, 110, 110, 110, 0, 0, 0, 0, 0, 110, 110, 110, 110, 110, 110, 110, 0, 0, 110,
        110, 110, 110, 110, 0, 0, 0, 0, 0, 0, 0, 0, 110, 110, 110, 0, 0, 0, 0, 110, 110, 110, 110, 110, 110, 110, 110, 110, 0, 110,
        110, 110, 110, 110, 0, 0, 0, 0, 0, 0, 0, 0, 110, 110, 110, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 110,
        110, 110, 110, 110, 0, 0, 0, 0, 0, 0, 0, 110, 110, 110, 110, 0, 0, 0, 0, 110, 110, 110, 110, 110, 110, 110, 110, 110, 0, 110,
        110, 110, 110, 110, 0, 0, 0, 0, 0, 110, 110, 110, 110, 110, 0, 0, 0, 0, 0, 0, 110, 110, 110, 110, 110, 110, 110, 0, 0, 0,
        110, 110, 110, 110, 0, 0, 0, 0, 0, 0, 110, 110, 110, 110, 0, 0, 0, 0, 0, 0, 110, 110, 110, 110, 110, 110, 110, 0, 0, 0,
        110, 110, 110, 110, 0, 110, 110, 0, 0, 0, 110, 110, 110, 0, 0, 0, 0, 0, 0, 0, 110, 110, 110, 110, 110, 110, 110, 0, 0, 0,
        110, 110, 110, 110, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 110, 110, 110, 110, 110, 110, 110, 110, 110, 0, 110,
        110, 110, 110, 110, 0, 0, 0, 0, 0, 0, 110, 110, 110, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 110,
        110, 110, 110, 110, 0, 0, 0, 0, 0, 0, 110, 110, 110, 0, 0, 0, 0, 0, 0, 110, 110, 110, 110, 110, 110, 110, 110, 110, 0, 110,
        110, 110, 110, 110, 0, 0, 0, 0, 0, 0, 0, 110, 110, 110, 0, 0, 0, 0, 0, 0, 110, 110, 110, 110, 110, 110, 110, 0, 0, 110,
        110, 110, 110, 110, 0, 0, 0, 0, 0, 110, 110, 110, 110, 110, 110, 0, 0, 0, 0, 0, 110, 110, 110, 110, 110, 110, 110, 0, 0, 110,
        110, 110, 110, 110, 0, 0, 0, 0, 0, 0, 0, 0, 110, 110, 110, 0, 0, 0, 0, 0, 110, 110, 110, 110, 110, 110, 110, 0, 0, 110,
        110, 110, 110, 110, 0, 0, 0, 0, 0, 0, 0, 0, 0, 110, 110, 110, 0, 0, 0, 110, 110, 110, 110, 110, 110, 110, 110, 110, 0, 110,
        110, 110, 110, 110, 0, 0, 110, 110, 0, 0, 0, 0, 0, 110, 110, 110, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 110,
        110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110,
        110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110, 110
      }
    },
    {
      type = "objectgroup",
      name = "Doors",
      visible = true,
      opacity = 1,
      properties = {},
      objects = {
        {
          id = 1,
          name = "",
          type = "",
          shape = "rectangle",
          x = 940,
          y = 560,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {
            ["map"] = "testmap2",
            ["x"] = "1",
            ["y"] = "18"
          }
        },
        {
          id = 3,
          name = "",
          type = "",
          shape = "rectangle",
          x = 944,
          y = 592,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {
            ["map"] = "testmap2",
            ["x"] = "1",
            ["y"] = "19"
          }
        },
        {
          id = 4,
          name = "",
          type = "",
          shape = "rectangle",
          x = 944.5,
          y = 625,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {
            ["map"] = "testmap2",
            ["x"] = "1",
            ["y"] = "20"
          }
        }
      }
    }
  }
}
