{
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
        "id": "00ffb6d1-d225-4bc0-8b73-7df9987f57b7",
        "linkable": false,
        "z": 1,
        "attrs": {
          "name": {
            "text": "System Export"
          },
          "specification": {
            "text": "@EventDriven\n@SuperSteps(no)\n\ninterface:\n    in event ev_activar\n    in event ev_desactivarUp\n    in event ev_desactivarDown\n\n    in event ev_ingreso\n    in event ev_egreso\n    in event ev_vaciarUp\n    in event ev_vaciarDown\n\n    in event ev_config_enter\n    in event ev_next\n    \ninternal:\n    var bloqueado: boolean = false\n    var cant_autos: integer\n    var vaciar: boolean = false\n    var capacidad: integer = MAX_CAPACIDAD - 1\n    var lim_aviso: integer = capacidad - 1\n    \n    var param_index: integer \n    \n    const MAX_CAPACIDAD: integer = 11 // 10 + 1\n    const MAX_OPT: integer = 3        // 2 + 1\n    \n    "
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": -460,
          "y": -100
        },
        "size": {
          "height": 1030,
          "width": 980
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "70ec4179-44ca-4dc3-95a9-d92a51503e1f",
        "z": 28,
        "embeds": [
          "e1c1e9cd-8759-4a97-8d8d-63b8121b05ae"
        ],
        "attrs": {
          "name": {
            "text": "ST_Normal",
            "fill": "#CFD8DC",
            "fontSize": 12
          },
          "specification": {
            "text": "//"
          }
        }
      },
      {
        "type": "Region",
        "position": {
          "x": -459,
          "y": -61.39999771118164
        },
        "size": {
          "height": 990.3999977111816,
          "width": 978
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "e1c1e9cd-8759-4a97-8d8d-63b8121b05ae",
        "z": 212,
        "embeds": [
          "9176e1be-a032-4b0f-bf12-8476b16fa8ef",
          "028660e0-f01b-40b3-8a2e-fc4d5e484a11",
          "5d940c44-f1fa-4d29-8d36-202cb6187d60",
          "bf27464f-5693-47a3-8c49-1e11e4f7ab91",
          "4dcfbae4-4317-4b7c-b92d-9769f82d97a0",
          "b35d5972-e0a0-4ffa-b761-425a736eb5e8",
          "036aa643-e132-4a67-b396-8e06b2bbd2b7",
          "fbd34440-84ab-4926-8948-64bb8f33b716",
          "9918e804-f916-4d94-99e8-ae760929d8c1",
          "aa9b110e-2692-4128-b9bd-d5965ac367fa",
          "b4c703ad-1ac1-4f17-9a9c-a138a170ed54",
          "ed15bd23-a321-4cb8-b371-942e31a12ef7",
          "91307aa8-6b00-4935-a702-ce3d41abf3d9",
          "7cd85498-bb0d-4d60-b1d3-91250edb6112",
          "32c949b6-14f8-41f2-a475-05225b0fcd7c",
          "1e384ae1-990c-4a54-86a8-bdbf3205fb65",
          "1017d4ec-5f6c-4951-bcf9-8131f3bb9b3e",
          "a71e447e-303c-4536-b3c2-423be67991f0",
          "9c280970-f4a6-410a-a3ea-0733822a172d",
          "742dd095-2e5c-4302-8986-fdde657483fb",
          "4841023c-3088-411f-8d8b-909851904103"
        ],
        "parent": "70ec4179-44ca-4dc3-95a9-d92a51503e1f",
        "attrs": {
          "name": {
            "text": "task_normal"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": -54.224998474121094,
          "y": 218.2000026702881
        },
        "size": {
          "height": 70,
          "width": 115.2249984741211
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "7cd85498-bb0d-4d60-b1d3-91250edb6112",
        "z": 214,
        "embeds": [
          "11e2ecd2-7f6e-45f5-93ad-0ca2b6bc3f66",
          "eb6a3a4d-5848-4b09-b129-49755cc61cfb"
        ],
        "parent": "e1c1e9cd-8759-4a97-8d8d-63b8121b05ae",
        "attrs": {
          "name": {
            "text": "ST_Norm_NoVacio",
            "fill": "#CFD8DC",
            "fontSize": 12
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": -54.224998474121094,
          "y": 481
        },
        "size": {
          "height": 70,
          "width": 115.2249984741211
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "32c949b6-14f8-41f2-a475-05225b0fcd7c",
        "z": 215,
        "parent": "e1c1e9cd-8759-4a97-8d8d-63b8121b05ae",
        "embeds": [
          "f96869d9-b9a3-445b-b123-94c941932ea8",
          "d6646bde-2790-4cde-9527-0ac4afc47d81"
        ],
        "attrs": {
          "name": {
            "text": "ST_Norm_Aviso",
            "fill": "#CFD8DC",
            "fontSize": 12
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": -50.36249542236328,
          "y": 741
        },
        "size": {
          "height": 60,
          "width": 111.36249542236328
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "1e384ae1-990c-4a54-86a8-bdbf3205fb65",
        "z": 216,
        "parent": "e1c1e9cd-8759-4a97-8d8d-63b8121b05ae",
        "embeds": [
          "ab144769-3324-464c-b422-c2f85641e3e7"
        ],
        "attrs": {
          "name": {
            "text": "ST_Norm_Lleno",
            "fill": "#CFD8DC",
            "fontSize": 12
          }
        }
      },
      {
        "type": "Entry",
        "position": {
          "x": -309,
          "y": -32.19999885559082
        },
        "size": {
          "height": 15,
          "width": 15
        },
        "angle": 0,
        "fixedRatio": true,
        "embedable": false,
        "linkable": true,
        "entryKind": "Initial",
        "id": "1017d4ec-5f6c-4951-bcf9-8131f3bb9b3e",
        "markup": "\n    <g class=\"scalable default-outline\" stroke-linejoin=\"round\">\n      <circle cx=\"50\" cy=\"50\" r=\"50\" fill=\"#000000\"/>\n      <text font-family=\"FontAwesome\" font-size=\"13\" x=\"-5\" y=\"0\" opacity=\"0\" fill=\"#00ff00\" text=\"\"/>\n    </g>\n  ",
        "z": 217,
        "embeds": [
          "49627d9f-2bbe-4aea-a564-c140da808f97"
        ],
        "parent": "e1c1e9cd-8759-4a97-8d8d-63b8121b05ae",
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
          "x": -309,
          "y": -17.19999885559082
        },
        "id": "49627d9f-2bbe-4aea-a564-c140da808f97",
        "z": 232,
        "parent": "1017d4ec-5f6c-4951-bcf9-8131f3bb9b3e",
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
          "id": "1e384ae1-990c-4a54-86a8-bdbf3205fb65"
        },
        "target": {
          "id": "32c949b6-14f8-41f2-a475-05225b0fcd7c",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 105.2249984741211,
              "dy": 56.20001220703125,
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
                "text": "ev_egreso\n[cant_autos == capacidad] /\ncant_autos --"
              }
            },
            "position": {
              "distance": 0.5087720369037829,
              "offset": 105,
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
        "id": "aa9b110e-2692-4128-b9bd-d5965ac367fa",
        "z": 233,
        "parent": "e1c1e9cd-8759-4a97-8d8d-63b8121b05ae",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "32c949b6-14f8-41f2-a475-05225b0fcd7c",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 115.2249984741211,
              "dy": 40,
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "32c949b6-14f8-41f2-a475-05225b0fcd7c",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 115.2249984741211,
              "dy": 60,
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
                "text": "ev_egreso\n[cant_autos > lim_aviso] /\ncant_autos --"
              }
            },
            "position": {
              "distance": 0.5066550784007059,
              "offset": -94.73848621090968,
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
        "id": "f96869d9-b9a3-445b-b123-94c941932ea8",
        "z": 233,
        "vertices": [
          {
            "x": 101,
            "y": 521
          }
        ],
        "parent": "32c949b6-14f8-41f2-a475-05225b0fcd7c",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "32c949b6-14f8-41f2-a475-05225b0fcd7c",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 5.224998474121094,
              "dy": 56.20001220703125,
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "32c949b6-14f8-41f2-a475-05225b0fcd7c",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 5.224998474121094,
              "dy": 26.20001220703125,
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
                "text": "ev_ingreso\n[cant_autos + 1 < capacidad] /\ncant_autos ++"
              }
            },
            "position": {
              "distance": 0.4954844848566928,
              "offset": -113.79316711425781,
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
        "id": "d6646bde-2790-4cde-9527-0ac4afc47d81",
        "z": 233,
        "vertices": [
          {
            "x": -89,
            "y": 537.2
          }
        ],
        "parent": "32c949b6-14f8-41f2-a475-05225b0fcd7c",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "32c949b6-14f8-41f2-a475-05225b0fcd7c"
        },
        "target": {
          "id": "1e384ae1-990c-4a54-86a8-bdbf3205fb65",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 61.36249542236328,
              "dy": 6.20001220703125,
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
                "text": "ev_ingreso\n[cant_autos + 1 == capacidad] /\ncant_autos ++"
              }
            },
            "position": {
              "distance": 0.3888888888888889,
              "offset": 115,
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
        "id": "b4c703ad-1ac1-4f17-9a9c-a138a170ed54",
        "z": 233,
        "parent": "e1c1e9cd-8759-4a97-8d8d-63b8121b05ae",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "32c949b6-14f8-41f2-a475-05225b0fcd7c"
        },
        "target": {
          "id": "7cd85498-bb0d-4d60-b1d3-91250edb6112",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 85.2249984741211,
              "dy": 69,
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
                "text": "ev_egreso\n[cant_autos == lim_aviso] /\ncant_autos --"
              }
            },
            "position": {
              "distance": 0.6037344081767861,
              "offset": 105,
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
        "id": "ed15bd23-a321-4cb8-b371-942e31a12ef7",
        "z": 233,
        "parent": "e1c1e9cd-8759-4a97-8d8d-63b8121b05ae",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "7cd85498-bb0d-4d60-b1d3-91250edb6112",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 95.2249984741211,
              "dy": 32.80000305175781,
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "7cd85498-bb0d-4d60-b1d3-91250edb6112",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 105.2249984741211,
              "dy": 52.80000305175781,
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
                "text": "ev_egreso\n[cant_autos - 1 > 0] /\ncant_autos --"
              }
            },
            "position": {
              "distance": 0.5193595767631896,
              "offset": -85.48132603196925,
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
        "id": "11e2ecd2-7f6e-45f5-93ad-0ca2b6bc3f66",
        "z": 233,
        "vertices": [
          {
            "x": 101,
            "y": 271
          }
        ],
        "parent": "7cd85498-bb0d-4d60-b1d3-91250edb6112",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "7cd85498-bb0d-4d60-b1d3-91250edb6112",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": -4.775001525878906,
              "dy": 59,
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "7cd85498-bb0d-4d60-b1d3-91250edb6112",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": -4.775001525878906,
              "dy": 29,
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
                "text": "ev_ingreso\n[cant_autos + 1 < lim_aviso] /\ncant_autos ++"
              }
            },
            "position": {
              "distance": 0.48833780307861624,
              "offset": -115.039306640625,
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
        "id": "eb6a3a4d-5848-4b09-b129-49755cc61cfb",
        "z": 233,
        "vertices": [
          {
            "x": -99,
            "y": 257.2
          }
        ],
        "parent": "7cd85498-bb0d-4d60-b1d3-91250edb6112",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "7cd85498-bb0d-4d60-b1d3-91250edb6112"
        },
        "target": {
          "id": "32c949b6-14f8-41f2-a475-05225b0fcd7c",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 55.224998474121094,
              "dy": 26.20001220703125,
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
                "text": "ev_ingreso\n[cant_autos + 1 == lim_aviso] /\ncant_autos ++"
              }
            },
            "position": {
              "distance": 0.4118111954685069,
              "offset": 115.00000000000001,
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
        "id": "91307aa8-6b00-4935-a702-ce3d41abf3d9",
        "z": 233,
        "parent": "e1c1e9cd-8759-4a97-8d8d-63b8121b05ae",
        "attrs": {}
      },
      {
        "type": "State",
        "position": {
          "x": -59.86249923706055,
          "y": -440
        },
        "size": {
          "height": 60,
          "width": 129.7249984741211
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "1283ae01-e4f6-41d9-a1de-42213afaefb2",
        "z": 237,
        "embeds": [
          "8d5f4037-9abe-44b0-9004-051e1687356a"
        ],
        "attrs": {
          "name": {
            "text": "ST_Desactivado",
            "fill": "#CFD8DC",
            "fontSize": 12
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "1283ae01-e4f6-41d9-a1de-42213afaefb2",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 115,
              "dy": 50,
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "1283ae01-e4f6-41d9-a1de-42213afaefb2",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 95.41250228881836,
              "dy": 20,
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
                "text": "ev_desactivarDown /\nbloqueado = false"
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
        "id": "8d5f4037-9abe-44b0-9004-051e1687356a",
        "z": 238,
        "parent": "1283ae01-e4f6-41d9-a1de-42213afaefb2",
        "vertices": [
          {
            "x": -110,
            "y": -390
          },
          {
            "x": -110,
            "y": -420
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "1283ae01-e4f6-41d9-a1de-42213afaefb2"
        },
        "target": {
          "id": "70ec4179-44ca-4dc3-95a9-d92a51503e1f",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 440,
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
                "text": "ev_activar [!bloqueado]"
              }
            },
            "position": {
              "distance": 0.40127999441964285,
              "offset": 85,
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
        "id": "07348adf-40f6-42b0-9ff6-2a2996753faf",
        "z": 239,
        "vertices": [],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "70ec4179-44ca-4dc3-95a9-d92a51503e1f",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 490,
              "dy": 0,
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "1283ae01-e4f6-41d9-a1de-42213afaefb2",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 89.86249923706055,
              "dy": 60,
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
                "text": "ev_desactivarUp /\nbloqueado = true"
              }
            },
            "position": {
              "distance": 0.5843523842947823,
              "offset": 65,
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
        "id": "a7ab00d5-487c-40d2-9a26-5e6112ada5e2",
        "z": 240,
        "vertices": [
          {
            "x": 30,
            "y": -190
          }
        ],
        "attrs": {}
      },
      {
        "type": "Entry",
        "position": {
          "x": -40,
          "y": -510
        },
        "size": {
          "height": 15,
          "width": 15
        },
        "angle": 0,
        "fixedRatio": true,
        "embedable": false,
        "linkable": true,
        "entryKind": "Initial",
        "id": "5afe2802-db41-43c3-9a54-44cd96a10b97",
        "markup": "\n    <g class=\"scalable default-outline\" stroke-linejoin=\"round\">\n      <circle cx=\"50\" cy=\"50\" r=\"50\" fill=\"#000000\"/>\n      <text font-family=\"FontAwesome\" font-size=\"13\" x=\"-5\" y=\"0\" opacity=\"0\" fill=\"#00ff00\" text=\"\"/>\n    </g>\n  ",
        "z": 241,
        "embeds": [
          "75d0b52c-cd4d-4726-8a50-df331c24dbd5"
        ],
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
          "x": -40,
          "y": -495
        },
        "id": "75d0b52c-cd4d-4726-8a50-df331c24dbd5",
        "z": 242,
        "parent": "5afe2802-db41-43c3-9a54-44cd96a10b97",
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
          "id": "5afe2802-db41-43c3-9a54-44cd96a10b97"
        },
        "target": {
          "id": "1283ae01-e4f6-41d9-a1de-42213afaefb2",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 30,
              "dy": 16.20001220703125,
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
            "attrs": {},
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
        "id": "959f780f-7fcf-433d-a3d6-edf712494c9c",
        "z": 243,
        "attrs": {}
      },
      {
        "type": "State",
        "position": {
          "x": -52.61249923706055,
          "y": 20
        },
        "size": {
          "height": 70,
          "width": 115.2249984741211
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "a71e447e-303c-4536-b3c2-423be67991f0",
        "z": 331,
        "parent": "e1c1e9cd-8759-4a97-8d8d-63b8121b05ae",
        "embeds": [
          "e11abd42-117d-46f1-bd0e-653ae2c2b1d7"
        ],
        "attrs": {
          "name": {
            "text": "ST_Norm_Vacio",
            "fill": "#CFD8DC",
            "fontSize": 12
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "32c949b6-14f8-41f2-a475-05225b0fcd7c"
        },
        "target": {
          "id": "a71e447e-303c-4536-b3c2-423be67991f0",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 105.2249984741211,
              "dy": 40,
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
                "text": "ev_vaciarUp /\ncant_autos = 0;\nvaciar = true"
              }
            },
            "position": {
              "distance": 0.2776746560022147,
              "offset": -25,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "5",
                "fill": "#555555"
              },
              "circleBody": {
                "fill": "#F0F0F0",
                "stroke": "#555555"
              }
            }
          }
        ],
        "id": "036aa643-e132-4a67-b396-8e06b2bbd2b7",
        "z": 332,
        "parent": "e1c1e9cd-8759-4a97-8d8d-63b8121b05ae",
        "vertices": [
          {
            "x": 461,
            "y": 501
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "1e384ae1-990c-4a54-86a8-bdbf3205fb65"
        },
        "target": {
          "id": "a71e447e-303c-4536-b3c2-423be67991f0",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 115.2249984741211,
              "dy": 20,
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
                "text": "ev_vaciarUp /\ncant_autos = 0;\nvaciar = true"
              }
            },
            "position": {
              "distance": 0.22732306734377256,
              "offset": -30.67999267578125,
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
        "id": "fbd34440-84ab-4926-8948-64bb8f33b716",
        "z": 332,
        "vertices": [
          {
            "x": 481,
            "y": 791
          }
        ],
        "parent": "e1c1e9cd-8759-4a97-8d8d-63b8121b05ae",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "7cd85498-bb0d-4d60-b1d3-91250edb6112"
        },
        "target": {
          "id": "a71e447e-303c-4536-b3c2-423be67991f0",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 95.2249984741211,
              "dy": 70,
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
                "text": "ev_egreso [cant_autos - 1 == 0] /\ncant_autos --"
              }
            },
            "position": {
              "distance": 0.6678321486253004,
              "offset": 125,
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
        "id": "9918e804-f916-4d94-99e8-ae760929d8c1",
        "z": 332,
        "parent": "e1c1e9cd-8759-4a97-8d8d-63b8121b05ae",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "a71e447e-303c-4536-b3c2-423be67991f0",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 42.61249923706055,
              "dy": 70,
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "7cd85498-bb0d-4d60-b1d3-91250edb6112",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 44.224998474121094,
              "dy": 31.800003051757812,
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
                "text": "ev_ingreso\n[!vaciar] /\ncant_autos ++"
              }
            },
            "position": {
              "distance": 0.49970748829953204,
              "offset": 53.23405838012695,
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
        "id": "b35d5972-e0a0-4ffa-b761-425a736eb5e8",
        "z": 332,
        "vertices": [
          {
            "x": -10,
            "y": 150
          }
        ],
        "parent": "e1c1e9cd-8759-4a97-8d8d-63b8121b05ae",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "7cd85498-bb0d-4d60-b1d3-91250edb6112",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 115.2249984741211,
              "dy": 12.800003051757812,
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "a71e447e-303c-4536-b3c2-423be67991f0",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 102.61249923706055,
              "dy": 60,
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
                "text": "ev_vaciarUp /\ncant_autos = 0;\nvaciar = true"
              }
            },
            "position": {
              "distance": 0.35926425456374567,
              "offset": -30,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "5",
                "fill": "#555555"
              },
              "circleBody": {
                "fill": "#F0F0F0",
                "stroke": "#555555"
              }
            }
          }
        ],
        "id": "4dcfbae4-4317-4b7c-b92d-9769f82d97a0",
        "z": 333,
        "parent": "e1c1e9cd-8759-4a97-8d8d-63b8121b05ae",
        "vertices": [
          {
            "x": 451,
            "y": 231
          },
          {
            "x": 451,
            "y": 80
          }
        ],
        "attrs": {}
      },
      {
        "type": "State",
        "position": {
          "x": 880.8250045776367,
          "y": -100
        },
        "size": {
          "height": 610,
          "width": 1000
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "76d0902b-a03a-4322-b80b-73b80becfce5",
        "z": 355,
        "embeds": [
          "0e2c96bf-bcc7-4815-ae1c-d005d9d27506"
        ],
        "attrs": {
          "name": {
            "text": "ST_SetUp",
            "fill": "#CFD8DC",
            "fontSize": 12
          },
          "specification": {
            "text": "//"
          }
        }
      },
      {
        "type": "Region",
        "position": {
          "x": 881.8250045776367,
          "y": -61.39999771118164
        },
        "size": {
          "height": 570.3999977111816,
          "width": 998
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "0e2c96bf-bcc7-4815-ae1c-d005d9d27506",
        "z": 356,
        "embeds": [
          "a61b10ac-7a20-40c1-8366-49f4bab64ce3",
          "17aa3d97-35dd-406c-9fa4-786a64c15a5f",
          "8c615030-9473-443b-9c3d-ec92a5d16dad",
          "3c4e8f2d-d6e5-4f53-be62-876b3d0783ee",
          "bf358b5e-2a29-4f96-980c-170247b46c25",
          "622ccb61-3d07-47ba-9895-440eab6bcf7a",
          "f4e709c3-0ce6-4f04-98f9-a40439ad650f",
          "c6dc8674-f685-40ae-9a11-1437ff8c66ce",
          "956a8a3a-f31d-44c6-8ea9-bd80dcb10f90",
          "9d67a598-d067-45ac-a9bd-d8af9cdfd9f9",
          "38d6211f-6423-4868-9bb5-c9018de12d67"
        ],
        "parent": "76d0902b-a03a-4322-b80b-73b80becfce5",
        "attrs": {
          "name": {
            "text": "task_set_up"
          }
        }
      },
      {
        "type": "Entry",
        "position": {
          "x": 899.9999389648438,
          "y": -33.19999885559082
        },
        "size": {
          "height": 15,
          "width": 15
        },
        "angle": 0,
        "fixedRatio": true,
        "embedable": false,
        "linkable": true,
        "entryKind": "Initial",
        "id": "f4e709c3-0ce6-4f04-98f9-a40439ad650f",
        "markup": "\n    <g class=\"scalable default-outline\" stroke-linejoin=\"round\">\n      <circle cx=\"50\" cy=\"50\" r=\"50\" fill=\"#000000\"/>\n      <text font-family=\"FontAwesome\" font-size=\"13\" x=\"-5\" y=\"0\" opacity=\"0\" fill=\"#00ff00\" text=\"\"/>\n    </g>\n  ",
        "z": 357,
        "embeds": [
          "89518e9b-b2a9-40bc-ba17-4974fd63f68b"
        ],
        "parent": "0e2c96bf-bcc7-4815-ae1c-d005d9d27506",
        "attrs": {
          "name": {
            "fill": "#CFD8DC"
          }
        }
      },
      {
        "type": "Exit",
        "position": {
          "x": 1402.5,
          "y": 340
        },
        "size": {
          "height": 15,
          "width": 15
        },
        "angle": 0,
        "fixedRatio": true,
        "embedable": false,
        "linkable": true,
        "id": "c6dc8674-f685-40ae-9a11-1437ff8c66ce",
        "z": 359,
        "embeds": [
          "d51622b7-3794-4b93-be9b-c63c70ddba0d"
        ],
        "parent": "0e2c96bf-bcc7-4815-ae1c-d005d9d27506",
        "attrs": {
          "name": {
            "fill": "#CFD8DC"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 1355.9874992370605,
          "y": 10
        },
        "size": {
          "height": 60,
          "width": 129.625
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "956a8a3a-f31d-44c6-8ea9-bd80dcb10f90",
        "z": 360,
        "parent": "0e2c96bf-bcc7-4815-ae1c-d005d9d27506",
        "embeds": [
          "12abb3e4-1598-47db-967c-55783e94e2cc"
        ],
        "attrs": {
          "name": {
            "text": "ST_SetUp_Capacidad",
            "fill": "#CFD8DC",
            "fontSize": 12
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 1359.5874977111816,
          "y": 160
        },
        "size": {
          "height": 60,
          "width": 126.0250015258789
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "9d67a598-d067-45ac-a9bd-d8af9cdfd9f9",
        "z": 361,
        "parent": "0e2c96bf-bcc7-4815-ae1c-d005d9d27506",
        "embeds": [
          "32b616f9-c090-4a8b-b0ab-92d75137f466"
        ],
        "attrs": {
          "name": {
            "text": "ST_SetUp_Aviso",
            "fill": "#CFD8DC",
            "fontSize": 12
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
          "x": 899.9999389648438,
          "y": -18.19999885559082
        },
        "id": "89518e9b-b2a9-40bc-ba17-4974fd63f68b",
        "z": 368,
        "parent": "f4e709c3-0ce6-4f04-98f9-a40439ad650f",
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
        "type": "NodeLabel",
        "label": true,
        "size": {
          "width": 15,
          "height": 15
        },
        "position": {
          "x": 1402.5,
          "y": 355
        },
        "id": "d51622b7-3794-4b93-be9b-c63c70ddba0d",
        "z": 370,
        "parent": "c6dc8674-f685-40ae-9a11-1437ff8c66ce",
        "attrs": {
          "label": {
            "text": "Escape",
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
          "id": "70ec4179-44ca-4dc3-95a9-d92a51503e1f"
        },
        "target": {
          "x": 770,
          "y": -60,
          "id": "76d0902b-a03a-4322-b80b-73b80becfce5",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": -1.82501220703125,
              "dy": 40.000003814697266,
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
                "text": "ev_config_enter"
              }
            },
            "position": {
              "offset": -25,
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
        "id": "fc29521c-1265-4083-986f-2c9a78ef7e3b",
        "z": 371,
        "vertices": [
          {
            "x": 660,
            "y": -60
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "956a8a3a-f31d-44c6-8ea9-bd80dcb10f90",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 104.017578125,
              "dy": 20,
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "956a8a3a-f31d-44c6-8ea9-bd80dcb10f90",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 104.012451171875,
              "dy": 56.31548881530762,
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
                "text": "ev_next /\ncapacidad = (capacidad + 1) % MAX_CAPACIDAD"
              }
            },
            "position": {
              "distance": 0.49999999001464374,
              "offset": -165,
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
        "id": "12abb3e4-1598-47db-967c-55783e94e2cc",
        "z": 371,
        "parent": "956a8a3a-f31d-44c6-8ea9-bd80dcb10f90",
        "vertices": [
          {
            "x": 1520,
            "y": 66.32
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "9d67a598-d067-45ac-a9bd-d8af9cdfd9f9",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 80.4124755859375,
              "dy": 50,
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "9d67a598-d067-45ac-a9bd-d8af9cdfd9f9",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 120.4124755859375,
              "dy": 20,
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
                "text": "ev_next /\nlim_aviso = (lim_aviso + 1) % capacidad"
              }
            },
            "position": {
              "offset": 165,
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
        "id": "32b616f9-c090-4a8b-b0ab-92d75137f466",
        "z": 372,
        "vertices": [
          {
            "x": 1520,
            "y": 210
          }
        ],
        "parent": "9d67a598-d067-45ac-a9bd-d8af9cdfd9f9",
        "attrs": {}
      },
      {
        "type": "Choice",
        "position": {
          "x": 730,
          "y": 197.49998474121094
        },
        "size": {
          "width": 15,
          "height": 15
        },
        "angle": 0,
        "fixedRatio": true,
        "embedable": false,
        "linkable": true,
        "id": "cc508dc4-df3f-4376-a3e1-a6d7a4db6dd2",
        "z": 373,
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "76d0902b-a03a-4322-b80b-73b80becfce5"
        },
        "target": {
          "id": "cc508dc4-df3f-4376-a3e1-a6d7a4db6dd2"
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
                "text": "# Escape >"
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
        "id": "4ea14cbc-1f4f-44ac-b23c-8263e5c372b2",
        "z": 374,
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "cc508dc4-df3f-4376-a3e1-a6d7a4db6dd2"
        },
        "target": {
          "x": 480,
          "y": 10,
          "id": "70ec4179-44ca-4dc3-95a9-d92a51503e1f",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 939,
              "dy": 110.00000381469727,
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
                "text": "[cant_autos > 0 &&\ncant_autos < lim_aviso]\n# > NoVacio"
              }
            },
            "position": {
              "distance": 0.7323177280249001,
              "offset": -25,
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
        "id": "e8d78d58-72cc-43e4-b089-adead2583a1d",
        "z": 375,
        "vertices": [
          {
            "x": 610,
            "y": 10
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "cc508dc4-df3f-4376-a3e1-a6d7a4db6dd2"
        },
        "target": {
          "x": 490,
          "y": 140,
          "id": "70ec4179-44ca-4dc3-95a9-d92a51503e1f",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 949,
              "dy": 240.00000381469727,
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
                "text": "[cant_autos >= lim_aviso &&\ncant_autos < capacidad]\n# > Aviso"
              }
            },
            "position": {
              "distance": 0.5998171008954861,
              "offset": -25,
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
        "id": "45bb9f73-4196-4a20-b8d1-716793f5b296",
        "z": 378,
        "vertices": [
          {
            "x": 737.5,
            "y": 140
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "cc508dc4-df3f-4376-a3e1-a6d7a4db6dd2"
        },
        "target": {
          "x": 490,
          "y": 300,
          "id": "70ec4179-44ca-4dc3-95a9-d92a51503e1f",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 949,
              "dy": 400.00000381469727,
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
                "text": "[cant_autos >= capacidad]\n# > Lleno"
              }
            },
            "position": {
              "distance": 0.6512911406739949,
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
        "id": "8f6497d4-afb3-4d22-b82c-3eb8ea606a9b",
        "z": 379,
        "vertices": [
          {
            "x": 737.5,
            "y": 300
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "cc508dc4-df3f-4376-a3e1-a6d7a4db6dd2"
        },
        "target": {
          "x": 490,
          "y": 410,
          "id": "70ec4179-44ca-4dc3-95a9-d92a51503e1f",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 949,
              "dy": 510.00000381469727,
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
                "text": "else"
              }
            },
            "position": {
              "distance": 0.73048091236921,
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
        "id": "46cd4c1e-1819-494f-a522-d29ff70db5ab",
        "z": 380,
        "vertices": [
          {
            "x": 737.5,
            "y": 410
          },
          {
            "x": 530,
            "y": 410
          }
        ],
        "attrs": {}
      },
      {
        "type": "Entry",
        "position": {
          "x": -419,
          "y": 197.5
        },
        "size": {
          "height": 15,
          "width": 15
        },
        "angle": 0,
        "fixedRatio": true,
        "embedable": false,
        "linkable": true,
        "entryKind": "Initial",
        "id": "9c280970-f4a6-410a-a3ea-0733822a172d",
        "markup": "\n    <g class=\"scalable default-outline\" stroke-linejoin=\"round\">\n      <circle cx=\"50\" cy=\"50\" r=\"50\" fill=\"#000000\"/>\n      <text font-family=\"FontAwesome\" font-size=\"13\" x=\"-5\" y=\"0\" opacity=\"0\" fill=\"#00ff00\" text=\"\"/>\n    </g>\n  ",
        "z": 384,
        "embeds": [
          "f4dbdabc-df56-42b2-a8f2-9c3cedc792c3"
        ],
        "parent": "e1c1e9cd-8759-4a97-8d8d-63b8121b05ae",
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
          "x": -419,
          "y": 212.5
        },
        "id": "f4dbdabc-df56-42b2-a8f2-9c3cedc792c3",
        "z": 385,
        "parent": "9c280970-f4a6-410a-a3ea-0733822a172d",
        "attrs": {
          "label": {
            "text": "NoVacio",
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
          "id": "9c280970-f4a6-410a-a3ea-0733822a172d"
        },
        "target": {
          "id": "7cd85498-bb0d-4d60-b1d3-91250edb6112",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 4.224998474121094,
              "dy": 21.800003051757812,
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
            "attrs": {},
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
        "id": "bf27464f-5693-47a3-8c49-1e11e4f7ab91",
        "z": 386,
        "parent": "e1c1e9cd-8759-4a97-8d8d-63b8121b05ae",
        "vertices": [
          {
            "x": -250,
            "y": 205
          }
        ],
        "attrs": {}
      },
      {
        "type": "Entry",
        "position": {
          "x": -419,
          "y": 450
        },
        "size": {
          "height": 15,
          "width": 15
        },
        "angle": 0,
        "fixedRatio": true,
        "embedable": false,
        "linkable": true,
        "entryKind": "Initial",
        "id": "742dd095-2e5c-4302-8986-fdde657483fb",
        "markup": "\n    <g class=\"scalable default-outline\" stroke-linejoin=\"round\">\n      <circle cx=\"50\" cy=\"50\" r=\"50\" fill=\"#000000\"/>\n      <text font-family=\"FontAwesome\" font-size=\"13\" x=\"-5\" y=\"0\" opacity=\"0\" fill=\"#00ff00\" text=\"\"/>\n    </g>\n  ",
        "z": 390,
        "embeds": [
          "8da197e6-1e7a-403e-a93f-6735438d8eba"
        ],
        "parent": "e1c1e9cd-8759-4a97-8d8d-63b8121b05ae",
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
          "x": -419,
          "y": 465
        },
        "id": "8da197e6-1e7a-403e-a93f-6735438d8eba",
        "z": 391,
        "parent": "742dd095-2e5c-4302-8986-fdde657483fb",
        "attrs": {
          "label": {
            "text": "Aviso",
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
          "id": "742dd095-2e5c-4302-8986-fdde657483fb"
        },
        "target": {
          "id": "32c949b6-14f8-41f2-a475-05225b0fcd7c",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 14.224998474121094,
              "dy": 9,
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
            "attrs": {},
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
        "id": "5d940c44-f1fa-4d29-8d36-202cb6187d60",
        "z": 392,
        "parent": "e1c1e9cd-8759-4a97-8d8d-63b8121b05ae",
        "vertices": [
          {
            "x": -280,
            "y": 457.5
          }
        ],
        "attrs": {}
      },
      {
        "type": "Entry",
        "position": {
          "x": -419,
          "y": 763.5
        },
        "size": {
          "height": 15,
          "width": 15
        },
        "angle": 0,
        "fixedRatio": true,
        "embedable": false,
        "linkable": true,
        "entryKind": "Initial",
        "id": "4841023c-3088-411f-8d8b-909851904103",
        "markup": "\n    <g class=\"scalable default-outline\" stroke-linejoin=\"round\">\n      <circle cx=\"50\" cy=\"50\" r=\"50\" fill=\"#000000\"/>\n      <text font-family=\"FontAwesome\" font-size=\"13\" x=\"-5\" y=\"0\" opacity=\"0\" fill=\"#00ff00\" text=\"\"/>\n    </g>\n  ",
        "z": 393,
        "embeds": [
          "13b810bd-e18c-4779-9463-cc93665ccd81"
        ],
        "parent": "e1c1e9cd-8759-4a97-8d8d-63b8121b05ae",
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
          "x": -419,
          "y": 778.5
        },
        "id": "13b810bd-e18c-4779-9463-cc93665ccd81",
        "z": 394,
        "parent": "4841023c-3088-411f-8d8b-909851904103",
        "attrs": {
          "label": {
            "text": "Lleno",
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
          "id": "4841023c-3088-411f-8d8b-909851904103"
        },
        "target": {
          "id": "1e384ae1-990c-4a54-86a8-bdbf3205fb65",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 40.36249542236328,
              "dy": 29,
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
            "attrs": {},
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
        "id": "028660e0-f01b-40b3-8a2e-fc4d5e484a11",
        "z": 395,
        "parent": "e1c1e9cd-8759-4a97-8d8d-63b8121b05ae",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "1017d4ec-5f6c-4951-bcf9-8131f3bb9b3e"
        },
        "target": {
          "id": "a71e447e-303c-4536-b3c2-423be67991f0",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 22.612499237060547,
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
                "text": "/ cant_autos = 0"
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
        "id": "9176e1be-a032-4b0f-bf12-8476b16fa8ef",
        "z": 397,
        "parent": "e1c1e9cd-8759-4a97-8d8d-63b8121b05ae",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "a71e447e-303c-4536-b3c2-423be67991f0"
        },
        "target": {
          "id": "a71e447e-303c-4536-b3c2-423be67991f0",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 92.61249923706055,
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
                "text": "ev_vaciarDown /\nvaciar = false"
              }
            },
            "position": {
              "distance": 0.6886675001467426,
              "offset": -30.422950044712575,
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
        "id": "e11abd42-117d-46f1-bd0e-653ae2c2b1d7",
        "z": 398,
        "parent": "a71e447e-303c-4536-b3c2-423be67991f0",
        "vertices": [
          {
            "x": 5,
            "y": -10
          }
        ],
        "attrs": {}
      },
      {
        "type": "State",
        "position": {
          "x": 964.9999389648438,
          "y": 10
        },
        "size": {
          "height": 360,
          "width": 160
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "38d6211f-6423-4868-9bb5-c9018de12d67",
        "z": 400,
        "embeds": [
          "be7dc9b9-d173-479a-ae61-94554c981837"
        ],
        "parent": "0e2c96bf-bcc7-4815-ae1c-d005d9d27506",
        "attrs": {
          "name": {
            "text": "ST_SetUp_Main",
            "fill": "#CFD8DC",
            "fontSize": 12
          },
          "specification": {
            "text": "\n/*\nINDEX:\n\n0 -> Capacidad\n\n1 -> Aviso\n\n2 -> Escape\n\n*/"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "f4e709c3-0ce6-4f04-98f9-a40439ad650f"
        },
        "target": {
          "id": "38d6211f-6423-4868-9bb5-c9018de12d67",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 135.00006103515625,
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
                "text": "/ param_index = 0"
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
        "id": "a61b10ac-7a20-40c1-8366-49f4bab64ce3",
        "z": 401,
        "parent": "0e2c96bf-bcc7-4815-ae1c-d005d9d27506",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "956a8a3a-f31d-44c6-8ea9-bd80dcb10f90"
        },
        "target": {
          "id": "38d6211f-6423-4868-9bb5-c9018de12d67",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 155.00006103515625,
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
                "text": "ev_config_enter"
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
        "id": "17aa3d97-35dd-406c-9fa4-786a64c15a5f",
        "z": 401,
        "parent": "0e2c96bf-bcc7-4815-ae1c-d005d9d27506",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "9d67a598-d067-45ac-a9bd-d8af9cdfd9f9"
        },
        "target": {
          "id": "38d6211f-6423-4868-9bb5-c9018de12d67",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 155.00006103515625,
              "dy": 200,
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
                "text": "ev_config_enter"
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
        "id": "8c615030-9473-443b-9c3d-ec92a5d16dad",
        "z": 401,
        "parent": "0e2c96bf-bcc7-4815-ae1c-d005d9d27506",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "38d6211f-6423-4868-9bb5-c9018de12d67"
        },
        "target": {
          "id": "c6dc8674-f685-40ae-9a11-1437ff8c66ce"
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
                "text": "ev_config_enter\n[param_index == 2]"
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
        "id": "3c4e8f2d-d6e5-4f53-be62-876b3d0783ee",
        "z": 401,
        "parent": "0e2c96bf-bcc7-4815-ae1c-d005d9d27506",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "38d6211f-6423-4868-9bb5-c9018de12d67"
        },
        "target": {
          "id": "956a8a3a-f31d-44c6-8ea9-bd80dcb10f90",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 4.02490234375,
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
                "text": "ev_config_enter\n[param_index == 0]"
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
        "id": "bf358b5e-2a29-4f96-980c-170247b46c25",
        "z": 401,
        "parent": "0e2c96bf-bcc7-4815-ae1c-d005d9d27506",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "38d6211f-6423-4868-9bb5-c9018de12d67"
        },
        "target": {
          "id": "9d67a598-d067-45ac-a9bd-d8af9cdfd9f9",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 0.4124755859375,
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
                "text": "ev_config_enter\n[param_index == 1]"
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
        "id": "622ccb61-3d07-47ba-9895-440eab6bcf7a",
        "z": 401,
        "parent": "0e2c96bf-bcc7-4815-ae1c-d005d9d27506",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "38d6211f-6423-4868-9bb5-c9018de12d67"
        },
        "target": {
          "id": "38d6211f-6423-4868-9bb5-c9018de12d67",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 115.00006103515625,
              "dy": 80,
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
                "text": "ev_next /\nparam_index = (param_index + 1) % MAX_OPT"
              }
            },
            "position": {
              "distance": 0.7293482955657116,
              "offset": 25.55193207953291,
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
        "id": "be7dc9b9-d173-479a-ae61-94554c981837",
        "z": 401,
        "parent": "38d6211f-6423-4868-9bb5-c9018de12d67",
        "vertices": [
          {
            "x": 1010,
            "y": 410
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "1e384ae1-990c-4a54-86a8-bdbf3205fb65"
        },
        "target": {
          "id": "1e384ae1-990c-4a54-86a8-bdbf3205fb65",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 90.36249542236328,
              "dy": 49,
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
                "text": "ev_egreso\n[cant_autos > capacidad] /\ncant_autos --"
              }
            },
            "position": {
              "distance": 0.5764818294143303,
              "offset": 35.05421475982532,
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
        "id": "ab144769-3324-464c-b422-c2f85641e3e7",
        "z": 402,
        "parent": "1e384ae1-990c-4a54-86a8-bdbf3205fb65",
        "vertices": [
          {
            "x": 5.32,
            "y": 840
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "1283ae01-e4f6-41d9-a1de-42213afaefb2",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 129.86249923706055,
              "dy": 50,
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "76d0902b-a03a-4322-b80b-73b80becfce5",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 209.17498779296875,
              "dy": 20,
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
                "text": "ev_config_enter"
              }
            },
            "position": {
              "distance": 0.49999998172218973,
              "offset": 5,
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
        "id": "7531f5c5-d521-4566-8a04-af40a28bc049",
        "z": 405,
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "76d0902b-a03a-4322-b80b-73b80becfce5"
        },
        "target": {
          "id": "1283ae01-e4f6-41d9-a1de-42213afaefb2",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 129.86249923706055,
              "dy": 20,
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
                "text": "ev_desactivarUp / bloqueado = true"
              }
            },
            "position": {
              "distance": 0.5000000022480328,
              "offset": 15,
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
        "id": "a2e59cc1-fc2c-444f-924e-bfef42c091b2",
        "z": 406,
        "vertices": [
          {
            "x": 1370,
            "y": -420
          }
        ],
        "attrs": {}
      }
    ]
  },
  "genModel": {
    "generator": {
      "type": "create::c",
      "features": {
        "Outlet": {
          "targetProject": "",
          "targetFolder": "",
          "libraryTargetFolder": "",
          "skipLibraryFiles": "",
          "apiTargetFolder": ""
        },
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
          "moduleName": "System",
          "statemachinePrefix": "system",
          "separator": "_",
          "headerFilenameExtension": "h",
          "sourceFilenameExtension": "c"
        },
        "Tracing": {
          "enterState": "",
          "exitState": "",
          "generic": ""
        },
        "Includes": {
          "useRelativePaths": false,
          "generateAllSpecifiedIncludes": false
        },
        "GeneratorOptions": {
          "userAllocatedQueue": false,
          "metaSource": false
        },
        "GeneralFeatures": {
          "timerService": false,
          "timerServiceTimeType": ""
        },
        "Debug": {
          "dumpSexec": false
        }
      }
    }
  }
}