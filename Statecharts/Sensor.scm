{
  "modelId": "8021e035-0e00-4e03-b664-3f3928e88e09",
  "graph": {
    "cells": [
      {
        "position": {
          "x": 0,
          "y": 0
        },
        "size": {
          "height": 10,
          "width": 10
        },
        "angle": 0,
        "type": "Statechart",
        "id": "78749915-0da0-40a2-862f-9e8d94c7c68e",
        "linkable": false,
        "z": 1,
        "attrs": {
          "name": {
            "text": "sensor_statechart Export"
          },
          "specification": {
            "text": "@EventDriven\n@SuperSteps(no)\n\ninterface: \n    in event EV_BTN_01_UP\n    in event EV_BTN_01_DOWN\n\n    out event EV_SYS_01_UP\n    out event EV_SYS_01_DOWN\n\ninternal:\n    var tick:integer\n    const DEL_BTN_01_MAX:integer = 5\n    "
          }
        }
      },
      {
        "type": "Region",
        "position": {
          "x": -48.17499542236328,
          "y": 860
        },
        "size": {
          "height": 760,
          "width": 928
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "91184d12-406e-4abe-a38e-cad7a2c8a58d",
        "z": 282,
        "embeds": [
          "fde71562-a817-42e5-bb87-5e11726d1dec",
          "bee40e49-514a-4f5d-8ff6-fae81f9ca802",
          "4027392a-1f8d-4d75-bfc1-2a9133257631",
          "d716b048-4b18-4c30-ba71-cfb0b9d36d70",
          "7dc546da-7a0f-4a84-95ab-f8a747b3f447",
          "98d74bf9-01ce-485e-9275-30158a15c4ba",
          "7c228f78-60e1-41c2-9f4d-56262341adbd",
          "36b8548a-74b1-4925-ae23-291c03231ee6",
          "1bc4164b-0a4f-4491-a00b-5a0df0b02170",
          "4ab08d33-e52f-4b50-9409-087d57f195c4",
          "c64deb21-0a42-464c-97d3-c8ce72ab210d",
          "db372094-acc6-467b-b44d-495606208445"
        ],
        "attrs": {
          "priority": {
            "text": 1,
            "fill": "#555555"
          },
          "name": {
            "text": "status"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 110,
          "y": 1235
        },
        "size": {
          "height": 60,
          "width": 86.42500305175781
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "36b8548a-74b1-4925-ae23-291c03231ee6",
        "z": 298,
        "parent": "91184d12-406e-4abe-a38e-cad7a2c8a58d",
        "embeds": [
          "3195bc94-4a24-4683-9834-0716da819084"
        ],
        "attrs": {
          "name": {
            "text": "ST_BTN_01_UP",
            "fill": "#CFD8DC",
            "fontSize": 12
          }
        }
      },
      {
        "type": "Entry",
        "position": {
          "x": -2.5,
          "y": 1280
        },
        "size": {
          "height": 15,
          "width": 15
        },
        "angle": 0,
        "fixedRatio": true,
        "embedable": false,
        "linkable": true,
        "id": "1bc4164b-0a4f-4491-a00b-5a0df0b02170",
        "z": 315,
        "embeds": [
          "f8f646c7-6319-4f11-bd27-c97ed458051e"
        ],
        "parent": "91184d12-406e-4abe-a38e-cad7a2c8a58d",
        "markup": "\n    <g class=\"scalable default-outline\" stroke-linejoin=\"round\">\n      <circle cx=\"50\" cy=\"50\" r=\"50\" fill=\"#000000\"/>\n      <text font-family=\"FontAwesome\" font-size=\"13\" x=\"-5\" y=\"0\" opacity=\"0\" fill=\"#00ff00\" text=\"\"/>\n    </g>\n  ",
        "attrs": {
          "name": {
            "fill": "#CFD8DC"
          }
        }
      },
      {
        "type": "NodeLabel",
        "label": true,
        "size": {
          "width": 15,
          "height": 15
        },
        "position": {
          "x": -2.5,
          "y": 1295
        },
        "id": "f8f646c7-6319-4f11-bd27-c97ed458051e",
        "z": 316,
        "parent": "1bc4164b-0a4f-4491-a00b-5a0df0b02170",
        "attrs": {
          "label": {
            "fill": "#C5C8C6",
            "refX": "50%",
            "textAnchor": "middle",
            "refY": "50%",
            "textVerticalAnchor": "middle"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "1bc4164b-0a4f-4491-a00b-5a0df0b02170"
        },
        "target": {
          "id": "36b8548a-74b1-4925-ae23-291c03231ee6",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 20,
              "dy": 56.0262451171875,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "fill": "#555555"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "1",
                "fill": "#555555"
              },
              "circleBody": {
                "fill": "#F0F0F0",
                "stroke": "#555555"
              }
            }
          }
        ],
        "id": "7c228f78-60e1-41c2-9f4d-56262341adbd",
        "z": 317,
        "parent": "91184d12-406e-4abe-a38e-cad7a2c8a58d",
        "attrs": {}
      },
      {
        "type": "State",
        "position": {
          "x": 330,
          "y": 1000
        },
        "size": {
          "height": 60,
          "width": 122.42500305175781
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "4ab08d33-e52f-4b50-9409-087d57f195c4",
        "z": 322,
        "embeds": [
          "5460d5f3-19b0-4d06-a81f-0b86c50c82ef",
          "6a582d8b-14ed-4815-892c-4074b81b015a"
        ],
        "parent": "91184d12-406e-4abe-a38e-cad7a2c8a58d",
        "attrs": {
          "name": {
            "text": "ST_BTN_01_FALLING",
            "fill": "#CFD8DC",
            "fontSize": 12
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "36b8548a-74b1-4925-ae23-291c03231ee6"
        },
        "target": {
          "id": "4ab08d33-e52f-4b50-9409-087d57f195c4",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 56.21246337890625,
              "dy": 31.204174041748047,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_01_DOWN\n/\ntick = DEL_BTN_01_MAX",
                "fill": "#555555"
              }
            },
            "position": {
              "distance": 0.5304544112205996,
              "offset": -25.004186490350715,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "1",
                "fill": "#555555"
              },
              "circleBody": {
                "fill": "#F0F0F0",
                "stroke": "#555555"
              }
            }
          }
        ],
        "id": "7dc546da-7a0f-4a84-95ab-f8a747b3f447",
        "z": 323,
        "vertices": [
          {
            "x": 130,
            "y": 1031.2
          }
        ],
        "parent": "91184d12-406e-4abe-a38e-cad7a2c8a58d",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "4ab08d33-e52f-4b50-9409-087d57f195c4"
        },
        "target": {
          "id": "36b8548a-74b1-4925-ae23-291c03231ee6",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 80.01249694824219,
              "dy": 33.5,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_01_UP[tick==0]",
                "fill": "#555555"
              }
            },
            "position": {
              "distance": 0.7618104272791087,
              "offset": 14.816631888960467,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "2",
                "fill": "#555555"
              },
              "circleBody": {
                "fill": "#F0F0F0",
                "stroke": "#555555"
              }
            }
          }
        ],
        "id": "98d74bf9-01ce-485e-9275-30158a15c4ba",
        "z": 323,
        "vertices": [
          {
            "x": 370,
            "y": 1200
          }
        ],
        "parent": "91184d12-406e-4abe-a38e-cad7a2c8a58d",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "4ab08d33-e52f-4b50-9409-087d57f195c4"
        },
        "target": {
          "id": "4ab08d33-e52f-4b50-9409-087d57f195c4",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 31.226776123046875,
              "dy": 10,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_01_DOWN[tick>0]\n/\ntick--",
                "fill": "#555555"
              }
            },
            "position": {
              "distance": 0.381696508967989,
              "offset": 57.244603173425034,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "3",
                "fill": "#555555"
              },
              "circleBody": {
                "fill": "#F0F0F0",
                "stroke": "#555555"
              }
            }
          }
        ],
        "id": "6a582d8b-14ed-4815-892c-4074b81b015a",
        "z": 323,
        "parent": "4ab08d33-e52f-4b50-9409-087d57f195c4",
        "vertices": [
          {
            "x": 390,
            "y": 950
          }
        ],
        "attrs": {}
      },
      {
        "type": "State",
        "position": {
          "x": 410,
          "y": 1450
        },
        "size": {
          "height": 60,
          "width": 115.2249984741211
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "c64deb21-0a42-464c-97d3-c8ce72ab210d",
        "z": 324,
        "parent": "91184d12-406e-4abe-a38e-cad7a2c8a58d",
        "embeds": [
          "8d41acba-6fb5-4d2f-8152-4559e5948828",
          "d4061868-e3b6-4be6-9f3c-a308683f3006"
        ],
        "attrs": {
          "name": {
            "text": "ST_BTN_01_RISING",
            "fill": "#CFD8DC",
            "fontSize": 12
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "c64deb21-0a42-464c-97d3-c8ce72ab210d"
        },
        "target": {
          "id": "36b8548a-74b1-4925-ae23-291c03231ee6",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 50,
              "dy": 59.70417785644531,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_01_UP\n[tick==0]",
                "fill": "#555555"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "1",
                "fill": "#555555"
              },
              "circleBody": {
                "fill": "#F0F0F0",
                "stroke": "#555555"
              }
            }
          }
        ],
        "id": "d716b048-4b18-4c30-ba71-cfb0b9d36d70",
        "z": 325,
        "vertices": [
          {
            "x": 180,
            "y": 1490
          }
        ],
        "parent": "91184d12-406e-4abe-a38e-cad7a2c8a58d",
        "attrs": {}
      },
      {
        "type": "State",
        "position": {
          "x": 650,
          "y": 1235
        },
        "size": {
          "height": 60,
          "width": 100.82500457763672
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "db372094-acc6-467b-b44d-495606208445",
        "z": 326,
        "parent": "91184d12-406e-4abe-a38e-cad7a2c8a58d",
        "embeds": [
          "1caa5470-86d9-4187-8d89-152bbf629ef3"
        ],
        "attrs": {
          "name": {
            "text": "ST_BTN_01_DOWN",
            "fill": "#CFD8DC",
            "fontSize": 12
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "c64deb21-0a42-464c-97d3-c8ce72ab210d"
        },
        "target": {
          "id": "db372094-acc6-467b-b44d-495606208445",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 20,
              "dy": 49.70417785644531,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_01_DOWN[tick==0]",
                "fill": "#555555"
              }
            },
            "position": {
              "distance": 0.6593606686684247,
              "offset": -24.995916303166823,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "2",
                "fill": "#555555"
              },
              "circleBody": {
                "fill": "#F0F0F0",
                "stroke": "#555555"
              }
            }
          }
        ],
        "id": "fde71562-a817-42e5-bb87-5e11726d1dec",
        "z": 327,
        "vertices": [
          {
            "x": 520,
            "y": 1284.7
          }
        ],
        "parent": "91184d12-406e-4abe-a38e-cad7a2c8a58d",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "4ab08d33-e52f-4b50-9409-087d57f195c4"
        },
        "target": {
          "id": "db372094-acc6-467b-b44d-495606208445",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 50,
              "dy": 19.704177856445312,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_01_DOWN\n[tick==0]",
                "fill": "#555555"
              }
            },
            "position": {
              "distance": 0.5403304686665166,
              "offset": -16.88223511990558,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "1",
                "fill": "#555555"
              },
              "circleBody": {
                "fill": "#F0F0F0",
                "stroke": "#555555"
              }
            }
          }
        ],
        "id": "bee40e49-514a-4f5d-8ff6-fae81f9ca802",
        "z": 327,
        "parent": "91184d12-406e-4abe-a38e-cad7a2c8a58d",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "db372094-acc6-467b-b44d-495606208445"
        },
        "target": {
          "id": "c64deb21-0a42-464c-97d3-c8ce72ab210d",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 77.6124267578125,
              "dy": 49.70416259765625,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_01_UP\n/\ntick = DEL_BTN_01_MAX",
                "fill": "#555555"
              }
            },
            "position": {
              "distance": 0.5129697717657572,
              "offset": -28.704022015264908,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "1",
                "fill": "#555555"
              },
              "circleBody": {
                "fill": "#F0F0F0",
                "stroke": "#555555"
              }
            }
          }
        ],
        "id": "4027392a-1f8d-4d75-bfc1-2a9133257631",
        "z": 327,
        "vertices": [
          {
            "x": 730,
            "y": 1499.7
          }
        ],
        "parent": "91184d12-406e-4abe-a38e-cad7a2c8a58d",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "4ab08d33-e52f-4b50-9409-087d57f195c4"
        },
        "target": {
          "id": "4ab08d33-e52f-4b50-9409-087d57f195c4",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 80.0142822265625,
              "dy": 50,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_01_UP\n[tick>0]\n/\ntick--",
                "fill": "#555555"
              }
            },
            "position": {
              "distance": 0.42370042093478616,
              "offset": -41.18949031767604,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "4",
                "fill": "#555555"
              },
              "circleBody": {
                "fill": "#F0F0F0",
                "stroke": "#555555"
              }
            }
          }
        ],
        "id": "5460d5f3-19b0-4d06-a81f-0b86c50c82ef",
        "z": 328,
        "parent": "4ab08d33-e52f-4b50-9409-087d57f195c4",
        "vertices": [
          {
            "x": 440,
            "y": 1120
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "36b8548a-74b1-4925-ae23-291c03231ee6"
        },
        "target": {
          "id": "36b8548a-74b1-4925-ae23-291c03231ee6",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 10.012496948242188,
              "dy": 35,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_01_UP",
                "fill": "#555555"
              }
            },
            "position": {
              "distance": 0.3984567088761824,
              "offset": 42.182711983982514,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "2",
                "fill": "#555555"
              },
              "circleBody": {
                "fill": "#F0F0F0",
                "stroke": "#555555"
              }
            }
          }
        ],
        "id": "3195bc94-4a24-4683-9834-0716da819084",
        "z": 329,
        "vertices": [
          {
            "x": 70,
            "y": 1240
          }
        ],
        "parent": "36b8548a-74b1-4925-ae23-291c03231ee6",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "c64deb21-0a42-464c-97d3-c8ce72ab210d"
        },
        "target": {
          "id": "c64deb21-0a42-464c-97d3-c8ce72ab210d",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 20.01251220703125,
              "dy": 0,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_01_DOWN\n[tick>0]\n/\ntick--",
                "fill": "#555555"
              }
            },
            "position": {
              "distance": 0.49999989057473027,
              "offset": 35,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "3",
                "fill": "#555555"
              },
              "circleBody": {
                "fill": "#F0F0F0",
                "stroke": "#555555"
              }
            }
          }
        ],
        "id": "d4061868-e3b6-4be6-9f3c-a308683f3006",
        "z": 331,
        "parent": "c64deb21-0a42-464c-97d3-c8ce72ab210d",
        "vertices": [
          {
            "x": 460,
            "y": 1410
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "c64deb21-0a42-464c-97d3-c8ce72ab210d"
        },
        "target": {
          "id": "c64deb21-0a42-464c-97d3-c8ce72ab210d",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 90.01251220703125,
              "dy": 50,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_01_UP\n[tick>0]\n/\ntick--",
                "fill": "#555555"
              }
            },
            "position": {
              "distance": 0.595727425978859,
              "offset": 36.86778560436377,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "4",
                "fill": "#555555"
              },
              "circleBody": {
                "fill": "#F0F0F0",
                "stroke": "#555555"
              }
            }
          }
        ],
        "id": "8d41acba-6fb5-4d2f-8152-4559e5948828",
        "z": 332,
        "parent": "c64deb21-0a42-464c-97d3-c8ce72ab210d",
        "vertices": [
          {
            "x": 467.61,
            "y": 1550
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "db372094-acc6-467b-b44d-495606208445"
        },
        "target": {
          "id": "db372094-acc6-467b-b44d-495606208445",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 100.01251220703125,
              "dy": 25,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_01_DOWN",
                "fill": "#555555"
              }
            },
            "position": {
              "distance": 0.6345285141109159,
              "offset": 41.00925455738933,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "2",
                "fill": "#555555"
              },
              "circleBody": {
                "fill": "#F0F0F0",
                "stroke": "#555555"
              }
            }
          }
        ],
        "id": "1caa5470-86d9-4187-8d89-152bbf629ef3",
        "z": 333,
        "parent": "db372094-acc6-467b-b44d-495606208445",
        "vertices": [
          {
            "x": 780,
            "y": 1290
          }
        ],
        "attrs": {}
      }
    ]
  },
  "genModel": {
    "generator": {
      "schemaKey": "yakindu::c",
      "LicenseHeader": {
        "licenseText": ""
      },
      "FunctionInlining": {
        "inlineReactions": false,
        "inlineEntryActions": false,
        "inlineExitActions": false,
        "inlineEnterSequences": false,
        "inlineExitSequences": false,
        "inlineChoices": false,
        "inlineEnterRegion": false,
        "inlineExitRegion": false,
        "inlineEntries": false
      },
      "OutEventAPI": {
        "observables": false,
        "getters": false
      },
      "IdentifierSettings": {
        "moduleName": "SensorStatechart",
        "statemachinePrefix": "sensorStatechart",
        "separator": "_",
        "headerFilenameExtension": "h",
        "sourceFilenameExtension": "c"
      },
      "Tracing": {
        "enterState": false,
        "exitState": false,
        "generic": false
      },
      "Includes": {
        "useRelativePaths": false
      },
      "GeneratorOptions": {
        "userAllocatedQueue": false,
        "metaSource": false
      },
      "GeneralFeatures": {
        "timerService": false
      }
    }
  }
}