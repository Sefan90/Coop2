return {
  version = "1.1",
  luaversion = "5.1",
  tiledversion = "1.1.4",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 24,
  height = 18,
  tilewidth = 16,
  tileheight = 16,
  nextobjectid = 2,
  properties = {},
  tilesets = {
    {
      name = "NewTilemap",
      firstgid = 1,
      filename = "NewTilemap.tsx",
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      image = "img/NewTilemap.png",
      imagewidth = 160,
      imageheight = 160,
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 16,
        height = 16
      },
      properties = {},
      terrains = {
        {
          name = "Floor",
          tile = 11,
          properties = {}
        },
        {
          name = "Lines",
          tile = 4,
          properties = {}
        }
      },
      tilecount = 100,
      tiles = {
        {
          id = 0,
          terrain = { 1, 1, 1, 0 }
        },
        {
          id = 1,
          terrain = { 1, 1, 0, 0 }
        },
        {
          id = 2,
          terrain = { 1, 1, 0, 1 }
        },
        {
          id = 4,
          properties = {
            ["collidable"] = true
          },
          terrain = { 1, 1, 1, 1 }
        },
        {
          id = 10,
          terrain = { 1, 0, 1, 0 }
        },
        {
          id = 11,
          terrain = { 0, 0, 0, 0 }
        },
        {
          id = 12,
          terrain = { 0, 1, 0, 1 }
        },
        {
          id = 20,
          terrain = { 1, 0, 1, 1 }
        },
        {
          id = 21,
          terrain = { 0, 0, 1, 1 }
        },
        {
          id = 22,
          terrain = { 0, 1, 1, 1 }
        },
        {
          id = 30,
          terrain = { 1, 1, 1, 0 }
        },
        {
          id = 31,
          terrain = { 1, 1, 0, 1 }
        },
        {
          id = 40,
          terrain = { 1, 0, 1, 1 }
        },
        {
          id = 41,
          terrain = { 0, 1, 1, 1 }
        },
        {
          id = 60,
          terrain = { 0, 0, 0, 1 }
        },
        {
          id = 61,
          terrain = { 0, 0, 1, 0 }
        },
        {
          id = 70,
          terrain = { 0, 1, 0, 0 }
        },
        {
          id = 71,
          terrain = { 1, 0, 0, 0 }
        }
      }
    },
    {
      name = "18bit",
      firstgid = 101,
      filename = "18bit.tsx",
      tilewidth = 18,
      tileheight = 18,
      spacing = 0,
      margin = 0,
      image = "img/18bit.png",
      imagewidth = 180,
      imageheight = 180,
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 18,
        height = 18
      },
      properties = {},
      terrains = {},
      tilecount = 100,
      tiles = {
        {
          id = 4,
          properties = {
            ["collidable"] = false
          },
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 3,
                name = "",
                type = "",
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 9,
                height = 18,
                rotation = 0,
                visible = true,
                properties = {}
              },
              {
                id = 4,
                name = "",
                type = "",
                shape = "rectangle",
                x = 9,
                y = 0,
                width = 9,
                height = 9,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 5,
          properties = {
            ["collidable"] = false
          },
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "",
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 18,
                height = 9,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 6,
          properties = {
            ["collidable"] = false
          },
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 2,
                name = "",
                type = "",
                shape = "rectangle",
                x = 9,
                y = 9,
                width = 9,
                height = 9,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 7,
          properties = {
            ["collidable"] = false
          },
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "",
                shape = "rectangle",
                x = 0,
                y = 9,
                width = 9,
                height = 9,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 16,
          properties = {
            ["collidable"] = false
          },
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "",
                shape = "rectangle",
                x = 9,
                y = 0,
                width = 9,
                height = 9,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        }
      }
    }
  },
  layers = {
    {
      type = "tilelayer",
      name = "Tile Layer 1",
      x = 0,
      y = 0,
      width = 24,
      height = 18,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        5, 1, 2, 2, 2, 2, 2, 32, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        5, 11, 12, 12, 12, 12, 12, 13, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        5, 11, 12, 12, 12, 12, 12, 13, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        5, 11, 12, 12, 12, 12, 12, 13, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        5, 11, 12, 12, 12, 12, 12, 13, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        5, 11, 12, 12, 12, 12, 12, 13, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        5, 11, 12, 12, 12, 12, 12, 13, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        5, 11, 12, 12, 12, 12, 12, 13, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        5, 11, 12, 12, 12, 12, 12, 13, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        5, 11, 12, 12, 12, 12, 12, 13, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        5, 11, 12, 12, 12, 12, 12, 13, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        5, 11, 12, 12, 12, 12, 12, 13, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        5, 11, 12, 12, 12, 12, 12, 13, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        5, 21, 22, 22, 22, 22, 22, 42, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "objectgroup",
      name = "objects",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 1,
          name = "P1",
          type = "",
          shape = "rectangle",
          x = 80,
          y = 128,
          width = 16,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    }
  }
}
