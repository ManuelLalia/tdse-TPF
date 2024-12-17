{
  "modelId": "09201f9e-273c-40f6-ae7a-cf95aec0e73a",
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
            "text": "sensor_system_actuator_statechart Export"
          },
          "specification": {
            "text": "@EventDriven\n@SuperSteps(no)\n\ninterface: \n    in event EV_LED_01_ON\n    in event EV_LED_01_OFF\n    in event EV_LED_01_BLINK\n\ninternal:\n    var blink_ev: boolean"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": -80,
          "y": 970
        },
        "size": {
          "height": 70,
          "width": 110
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "383032cc-9363-4f32-a60d-5a03ddd70939",
        "z": 366,
        "attrs": {
          "name": {
            "text": "ST_LED_01_OFF",
            "fill": "#CFD8DC",
            "fontSize": 12
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": -80,
          "y": 1210
        },
        "size": {
          "height": 70,
          "width": 110
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "a12e9a3c-6081-4df6-b6eb-65e290a0c4bd",
        "z": 368,
        "attrs": {
          "name": {
            "text": "ST_LED_01_ON",
            "fill": "#CFD8DC",
            "fontSize": 12
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "383032cc-9363-4f32-a60d-5a03ddd70939"
        },
        "target": {
          "id": "a12e9a3c-6081-4df6-b6eb-65e290a0c4bd",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 90,
              "dy": 16.3662109375,
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
                "text": "EV_LED_01_ON\n",
                "fill": "#555555"
              }
            },
            "position": {
              "distance": 0.5588235294117647,
              "offset": -55,
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
        "id": "b22dff4d-4d15-4316-b901-6c349c550218",
        "z": 369,
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "a12e9a3c-6081-4df6-b6eb-65e290a0c4bd"
        },
        "target": {
          "id": "383032cc-9363-4f32-a60d-5a03ddd70939",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 20,
              "dy": 66.01031494140625,
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
                "text": "EV_LED_01_OFF\n[blink_ev == false]",
                "fill": "#555555"
              }
            },
            "position": {
              "offset": -75,
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
        "id": "befdc4a4-4137-4cb0-bc22-553c8a7021e0",
        "z": 370,
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "383032cc-9363-4f32-a60d-5a03ddd70939"
        },
        "target": {
          "id": "a12e9a3c-6081-4df6-b6eb-65e290a0c4bd",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 100,
              "dy": 46.3662109375,
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
                "text": "EV_LED_01_BLINK\n/ blink_ev = true",
                "fill": "#555555"
              }
            },
            "position": {
              "distance": 0.5000000252399609,
              "offset": -75,
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
        "id": "4df82c44-6ee2-4d3c-a0aa-cd33a8aaae30",
        "z": 374,
        "vertices": [
          {
            "x": 160,
            "y": 1000
          }
        ],
        "attrs": {}
      },
      {
        "type": "Entry",
        "position": {
          "x": 40,
          "y": 920
        },
        "size": {
          "height": 15,
          "width": 15
        },
        "angle": 0,
        "fixedRatio": true,
        "embedable": false,
        "linkable": true,
        "id": "58339dd8-aebb-4c2a-9cf0-1a6781158459",
        "z": 378,
        "embeds": [
          "82352dbb-ac10-4162-bc60-bc901c8340bc"
        ],
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
          "x": 40,
          "y": 935
        },
        "id": "82352dbb-ac10-4162-bc60-bc901c8340bc",
        "z": 379,
        "parent": "58339dd8-aebb-4c2a-9cf0-1a6781158459",
        "attrs": {
          "label": {
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
          "id": "58339dd8-aebb-4c2a-9cf0-1a6781158459"
        },
        "target": {
          "id": "383032cc-9363-4f32-a60d-5a03ddd70939",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 50,
              "dy": 6.01031494140625,
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
        "id": "e703cf68-9b38-469f-abdc-eb63338774ef",
        "z": 380,
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "a12e9a3c-6081-4df6-b6eb-65e290a0c4bd"
        },
        "target": {
          "id": "383032cc-9363-4f32-a60d-5a03ddd70939",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 0,
              "dy": 36.01031494140625,
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
                "text": "after 2 s\n[blink_ev == true]\n/ blink_ev = false",
                "fill": "#555555"
              }
            },
            "position": {
              "distance": 0.48234651064933476,
              "offset": -85,
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
        "id": "89d71356-8751-447c-9e8e-3cdda57cec99",
        "z": 381,
        "vertices": [
          {
            "x": -250,
            "y": 1240
          },
          {
            "x": -160,
            "y": 1006.01
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