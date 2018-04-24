return {
  version = "1.1",
  luaversion = "5.1",
  tiledversion = "1.1.4",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 24,
  height = 18,
  tilewidth = 18,
  tileheight = 18,
  nextobjectid = 6,
  properties = {},
  tilesets = {
    {
      name = "18bit",
      firstgid = 1,
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
      name = "Tile Layer 3",
      x = 0,
      y = 0,
      width = 24,
      height = 18,
      visible = false,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {
        ["collidable"] = true
      },
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0,
        0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0,
        0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0,
        0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0,
        0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0,
        0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0,
        0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0,
        0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0,
        0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0,
        0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0,
        0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0,
        0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0,
        0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0,
        0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0,
        0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0,
        0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      name = "Tile Layer 2",
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
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 4, 4, 4, 4, 4, 4, 4, 2684354563, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1610612740, 2, 2, 2, 2, 31, 31, 31, 2684354564, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1610612740, 2, 2, 11, 2, 31, 31, 31, 2684354564, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1610612740, 2, 2, 2, 2, 31, 31, 31, 2684354564, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1610612740, 2, 2, 2, 2, 35, 35, 35, 2684354564, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1610612740, 2, 2, 2, 2, 35, 35, 35, 2684354564, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1610612740, 2, 2, 2, 2, 35, 35, 35, 2684354564, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1610612740, 2, 2, 2, 2, 2, 2, 2, 2684354564, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1610612740, 2, 2, 2, 2, 2, 2, 2, 2684354564, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1610612740, 2, 2, 2, 2, 2, 2, 2, 2684354564, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1610612740, 2, 2, 2, 2, 2, 2, 2, 2684354564, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1610612740, 2, 2, 2, 2, 2, 2, 2, 2684354564, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1610612740, 2, 2, 2, 2, 2, 2, 15, 2684354564, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1610612739, 3221225476, 21, 3221225476, 11, 3221225476, 25, 3221225476, 3221225475, 0, 0,
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
          x = 54,
          y = 54,
          width = 18,
          height = 18,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2,
          name = "P2",
          type = "",
          shape = "rectangle",
          x = 252,
          y = 54,
          width = 18,
          height = 18,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 3,
          name = "Box",
          type = "",
          shape = "rectangle",
          x = 306,
          y = 270,
          width = 18,
          height = 18,
          rotation = 0,
          visible = true,
          properties = {
            ["gravity"] = true
          }
        },
        {
          id = 4,
          name = "Trigger",
          type = "",
          shape = "rectangle",
          x = 342,
          y = 270,
          width = 18,
          height = 18,
          rotation = 0,
          visible = true,
          properties = {
            ["active"] = false,
            ["starting"] = false
          }
        }
      }
    }
  }
}
