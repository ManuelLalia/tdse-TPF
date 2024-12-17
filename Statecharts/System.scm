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
            "text": "System Copy Export"
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
        "z": 28,
        "id": "70ec4179-44ca-4dc3-95a9-d92a51503e1f",
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
        "parent": "70ec4179-44ca-4dc3-95a9-d92a51503e1f",
        "z": 212,
        "id": "e1c1e9cd-8759-4a97-8d8d-63b8121b05ae",
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
        "parent": "e1c1e9cd-8759-4a97-8d8d-63b8121b05ae",
        "z": 214,
        "id": "7cd85498-bb0d-4d60-b1d3-91250edb6112",
        "embeds": [
          "11e2ecd2-7f6e-45f5-93ad-0ca2b6bc3f66",
          "eb6a3a4d-5848-4b09-b129-49755cc61cfb"
        ],
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
        "parent": "e1c1e9cd-8759-4a97-8d8d-63b8121b05ae",
        "z": 215,
        "id": "32c949b6-14f8-41f2-a475-05225b0fcd7c",
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
        "parent": "e1c1e9cd-8759-4a97-8d8d-63b8121b05ae",
        "z": 216,
        "id": "1e384ae1-990c-4a54-86a8-bdbf3205fb65",
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
        "parent": "e1c1e9cd-8759-4a97-8d8d-63b8121b05ae",
        "markup": "\n    <g class=\"scalable default-outline\" stroke-linejoin=\"round\">\n      <circle cx=\"50\" cy=\"50\" r=\"50\" fill=\"#000000\"/>\n      <text font-family=\"FontAwesome\" font-size=\"13\" x=\"-5\" y=\"0\" opacity=\"0\" fill=\"#00ff00\" text=\"\"/>\n    </g>\n  ",
        "z": 217,
        "id": "1017d4ec-5f6c-4951-bcf9-8131f3bb9b3e",
        "embeds": [
          "49627d9f-2bbe-4aea-a564-c140da808f97"
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
          "x": -309,
          "y": -17.19999885559082
        },
        "parent": "1017d4ec-5f6c-4951-bcf9-8131f3bb9b3e",
        "z": 232,
        "id": "49627d9f-2bbe-4aea-a564-c140da808f97",
        "attrs": {
          "label": {
            "fill": "#C5C8C6",
            "refX": "50%",
            "refY": "50%",
            "textVerticalAnchor": "middle",
            "textAnchor": "middle"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "1e384ae1-990c-4a54-86a8-bdbf3205fb65"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 105.2249984741211,
              "dy": 56.20001220703125
            },
            "name": "topLeft"
          },
          "id": "32c949b6-14f8-41f2-a475-05225b0fcd7c",
          "priority": true
        },
        "router": {
          "args": {
            "padding": 8
          },
          "name": "orthogonal"
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
        "parent": "e1c1e9cd-8759-4a97-8d8d-63b8121b05ae",
        "z": 233,
        "id": "aa9b110e-2692-4128-b9bd-d5965ac367fa",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "32c949b6-14f8-41f2-a475-05225b0fcd7c"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 61.36249542236328,
              "dy": 6.20001220703125
            },
            "name": "topLeft"
          },
          "id": "1e384ae1-990c-4a54-86a8-bdbf3205fb65",
          "priority": true
        },
        "router": {
          "args": {
            "padding": 8
          },
          "name": "orthogonal"
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
        "parent": "e1c1e9cd-8759-4a97-8d8d-63b8121b05ae",
        "z": 233,
        "id": "b4c703ad-1ac1-4f17-9a9c-a138a170ed54",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 5.224998474121094,
              "dy": 56.20001220703125
            },
            "name": "topLeft"
          },
          "id": "32c949b6-14f8-41f2-a475-05225b0fcd7c",
          "priority": true
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 5.224998474121094,
              "dy": 26.20001220703125
            },
            "name": "topLeft"
          },
          "id": "32c949b6-14f8-41f2-a475-05225b0fcd7c",
          "priority": true
        },
        "router": {
          "args": {
            "padding": 8
          },
          "name": "orthogonal"
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
        "parent": "32c949b6-14f8-41f2-a475-05225b0fcd7c",
        "vertices": [
          {
            "x": -89,
            "y": 537.2
          }
        ],
        "z": 233,
        "id": "d6646bde-2790-4cde-9527-0ac4afc47d81",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 115.2249984741211,
              "dy": 40
            },
            "name": "topLeft"
          },
          "id": "32c949b6-14f8-41f2-a475-05225b0fcd7c",
          "priority": true
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 115.2249984741211,
              "dy": 60
            },
            "name": "topLeft"
          },
          "id": "32c949b6-14f8-41f2-a475-05225b0fcd7c",
          "priority": true
        },
        "router": {
          "args": {
            "padding": 8
          },
          "name": "orthogonal"
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
        "parent": "32c949b6-14f8-41f2-a475-05225b0fcd7c",
        "vertices": [
          {
            "x": 101,
            "y": 521
          }
        ],
        "z": 233,
        "id": "f96869d9-b9a3-445b-b123-94c941932ea8",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "32c949b6-14f8-41f2-a475-05225b0fcd7c"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 85.2249984741211,
              "dy": 69
            },
            "name": "topLeft"
          },
          "id": "7cd85498-bb0d-4d60-b1d3-91250edb6112",
          "priority": true
        },
        "router": {
          "args": {
            "padding": 8
          },
          "name": "orthogonal"
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
        "parent": "e1c1e9cd-8759-4a97-8d8d-63b8121b05ae",
        "z": 233,
        "id": "ed15bd23-a321-4cb8-b371-942e31a12ef7",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "7cd85498-bb0d-4d60-b1d3-91250edb6112"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 55.224998474121094,
              "dy": 26.20001220703125
            },
            "name": "topLeft"
          },
          "id": "32c949b6-14f8-41f2-a475-05225b0fcd7c",
          "priority": true
        },
        "router": {
          "args": {
            "padding": 8
          },
          "name": "orthogonal"
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
        "parent": "e1c1e9cd-8759-4a97-8d8d-63b8121b05ae",
        "z": 233,
        "id": "91307aa8-6b00-4935-a702-ce3d41abf3d9",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": -4.775001525878906,
              "dy": 59
            },
            "name": "topLeft"
          },
          "id": "7cd85498-bb0d-4d60-b1d3-91250edb6112",
          "priority": true
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": -4.775001525878906,
              "dy": 29
            },
            "name": "topLeft"
          },
          "id": "7cd85498-bb0d-4d60-b1d3-91250edb6112",
          "priority": true
        },
        "router": {
          "args": {
            "padding": 8
          },
          "name": "orthogonal"
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
        "parent": "7cd85498-bb0d-4d60-b1d3-91250edb6112",
        "vertices": [
          {
            "x": -99,
            "y": 257.2
          }
        ],
        "z": 233,
        "id": "eb6a3a4d-5848-4b09-b129-49755cc61cfb",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 95.2249984741211,
              "dy": 32.80000305175781
            },
            "name": "topLeft"
          },
          "id": "7cd85498-bb0d-4d60-b1d3-91250edb6112",
          "priority": true
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 105.2249984741211,
              "dy": 52.80000305175781
            },
            "name": "topLeft"
          },
          "id": "7cd85498-bb0d-4d60-b1d3-91250edb6112",
          "priority": true
        },
        "router": {
          "args": {
            "padding": 8
          },
          "name": "orthogonal"
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
        "parent": "7cd85498-bb0d-4d60-b1d3-91250edb6112",
        "vertices": [
          {
            "x": 101,
            "y": 271
          }
        ],
        "z": 233,
        "id": "11e2ecd2-7f6e-45f5-93ad-0ca2b6bc3f66",
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
        "z": 237,
        "id": "1283ae01-e4f6-41d9-a1de-42213afaefb2",
        "embeds": [
          "362c2339-246d-4315-800c-e6eedbe1bc3a",
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
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 115,
              "dy": 50
            },
            "name": "topLeft"
          },
          "id": "1283ae01-e4f6-41d9-a1de-42213afaefb2",
          "priority": true
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 95.41250228881836,
              "dy": 20
            },
            "name": "topLeft"
          },
          "id": "1283ae01-e4f6-41d9-a1de-42213afaefb2",
          "priority": true
        },
        "router": {
          "args": {
            "padding": 8
          },
          "name": "orthogonal"
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
        "z": 238,
        "id": "8d5f4037-9abe-44b0-9004-051e1687356a",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "1283ae01-e4f6-41d9-a1de-42213afaefb2"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 440,
              "dy": 0
            },
            "name": "topLeft"
          },
          "id": "70ec4179-44ca-4dc3-95a9-d92a51503e1f",
          "priority": true
        },
        "router": {
          "args": {
            "padding": 8
          },
          "name": "orthogonal"
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
              "distance": 0.43699428013392855,
              "offset": 95,
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
        "vertices": [],
        "z": 239,
        "id": "07348adf-40f6-42b0-9ff6-2a2996753faf",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 490,
              "dy": 0
            },
            "name": "topLeft"
          },
          "id": "70ec4179-44ca-4dc3-95a9-d92a51503e1f",
          "priority": true
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 89.86249923706055,
              "dy": 60
            },
            "name": "topLeft"
          },
          "id": "1283ae01-e4f6-41d9-a1de-42213afaefb2",
          "priority": true
        },
        "router": {
          "args": {
            "padding": 8
          },
          "name": "orthogonal"
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
        "vertices": [
          {
            "x": 30,
            "y": -190
          }
        ],
        "z": 240,
        "id": "a7ab00d5-487c-40d2-9a26-5e6112ada5e2",
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
        "markup": "\n    <g class=\"scalable default-outline\" stroke-linejoin=\"round\">\n      <circle cx=\"50\" cy=\"50\" r=\"50\" fill=\"#000000\"/>\n      <text font-family=\"FontAwesome\" font-size=\"13\" x=\"-5\" y=\"0\" opacity=\"0\" fill=\"#00ff00\" text=\"\"/>\n    </g>\n  ",
        "z": 241,
        "id": "5afe2802-db41-43c3-9a54-44cd96a10b97",
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
        "parent": "5afe2802-db41-43c3-9a54-44cd96a10b97",
        "z": 242,
        "id": "75d0b52c-cd4d-4726-8a50-df331c24dbd5",
        "attrs": {
          "label": {
            "fill": "#C5C8C6",
            "refX": "50%",
            "refY": "50%",
            "textVerticalAnchor": "middle",
            "textAnchor": "middle"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "5afe2802-db41-43c3-9a54-44cd96a10b97"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 30,
              "dy": 16.20001220703125
            },
            "name": "topLeft"
          },
          "id": "1283ae01-e4f6-41d9-a1de-42213afaefb2",
          "priority": true
        },
        "router": {
          "args": {
            "padding": 8
          },
          "name": "orthogonal"
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
        "z": 243,
        "id": "959f780f-7fcf-433d-a3d6-edf712494c9c",
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
        "parent": "e1c1e9cd-8759-4a97-8d8d-63b8121b05ae",
        "z": 331,
        "id": "a71e447e-303c-4536-b3c2-423be67991f0",
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
          "id": "1e384ae1-990c-4a54-86a8-bdbf3205fb65"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 115.2249984741211,
              "dy": 20
            },
            "name": "topLeft"
          },
          "id": "a71e447e-303c-4536-b3c2-423be67991f0",
          "priority": true
        },
        "router": {
          "args": {
            "padding": 8
          },
          "name": "orthogonal"
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
        "parent": "e1c1e9cd-8759-4a97-8d8d-63b8121b05ae",
        "vertices": [
          {
            "x": 481,
            "y": 791
          }
        ],
        "z": 332,
        "id": "fbd34440-84ab-4926-8948-64bb8f33b716",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "32c949b6-14f8-41f2-a475-05225b0fcd7c"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 105.2249984741211,
              "dy": 40
            },
            "name": "topLeft"
          },
          "id": "a71e447e-303c-4536-b3c2-423be67991f0",
          "priority": true
        },
        "router": {
          "args": {
            "padding": 8
          },
          "name": "orthogonal"
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
        "parent": "e1c1e9cd-8759-4a97-8d8d-63b8121b05ae",
        "vertices": [
          {
            "x": 461,
            "y": 501
          }
        ],
        "z": 332,
        "id": "036aa643-e132-4a67-b396-8e06b2bbd2b7",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 42.61249923706055,
              "dy": 70
            },
            "name": "topLeft"
          },
          "id": "a71e447e-303c-4536-b3c2-423be67991f0",
          "priority": true
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 44.224998474121094,
              "dy": 31.800003051757812
            },
            "name": "topLeft"
          },
          "id": "7cd85498-bb0d-4d60-b1d3-91250edb6112",
          "priority": true
        },
        "router": {
          "args": {
            "padding": 8
          },
          "name": "orthogonal"
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
        "parent": "e1c1e9cd-8759-4a97-8d8d-63b8121b05ae",
        "vertices": [
          {
            "x": -10,
            "y": 150
          }
        ],
        "z": 332,
        "id": "b35d5972-e0a0-4ffa-b761-425a736eb5e8",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "7cd85498-bb0d-4d60-b1d3-91250edb6112"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 95.2249984741211,
              "dy": 70
            },
            "name": "topLeft"
          },
          "id": "a71e447e-303c-4536-b3c2-423be67991f0",
          "priority": true
        },
        "router": {
          "args": {
            "padding": 8
          },
          "name": "orthogonal"
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
        "parent": "e1c1e9cd-8759-4a97-8d8d-63b8121b05ae",
        "z": 332,
        "id": "9918e804-f916-4d94-99e8-ae760929d8c1",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 115.2249984741211,
              "dy": 12.800003051757812
            },
            "name": "topLeft"
          },
          "id": "7cd85498-bb0d-4d60-b1d3-91250edb6112",
          "priority": true
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 102.61249923706055,
              "dy": 60
            },
            "name": "topLeft"
          },
          "id": "a71e447e-303c-4536-b3c2-423be67991f0",
          "priority": true
        },
        "router": {
          "args": {
            "padding": 8
          },
          "name": "orthogonal"
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
        "z": 333,
        "id": "4dcfbae4-4317-4b7c-b92d-9769f82d97a0",
        "attrs": {}
      },
      {
        "type": "State",
        "position": {
          "x": 880.8250045776367,
          "y": -100
        },
        "size": {
          "height": 720,
          "width": 1000
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "z": 355,
        "id": "76d0902b-a03a-4322-b80b-73b80becfce5",
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
          "height": 680.3999977111816,
          "width": 998
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "parent": "76d0902b-a03a-4322-b80b-73b80becfce5",
        "z": 356,
        "id": "0e2c96bf-bcc7-4815-ae1c-d005d9d27506",
        "embeds": [
          "7c7c9ee5-c80a-47b8-8e94-6a7ab5d3cf40",
          "8a034b2e-d944-4dc2-892a-316f845a9bd2",
          "32b616f9-c090-4a8b-b0ab-92d75137f466",
          "8c615030-9473-443b-9c3d-ec92a5d16dad",
          "622ccb61-3d07-47ba-9895-440eab6bcf7a",
          "3c4e8f2d-d6e5-4f53-be62-876b3d0783ee",
          "12abb3e4-1598-47db-967c-55783e94e2cc",
          "29bdac94-4cc0-4ab7-8eb1-319c40b92559",
          "a9fa1df7-a73d-486b-b534-c921cc69c817",
          "a61b10ac-7a20-40c1-8366-49f4bab64ce3",
          "17aa3d97-35dd-406c-9fa4-786a64c15a5f",
          "bf358b5e-2a29-4f96-980c-170247b46c25",
          "f4e709c3-0ce6-4f04-98f9-a40439ad650f",
          "956a8a3a-f31d-44c6-8ea9-bd80dcb10f90",
          "38d6211f-6423-4868-9bb5-c9018de12d67",
          "053ec4cb-3aad-43fc-bdc9-e5f7b253e3ed",
          "c6dc8674-f685-40ae-9a11-1437ff8c66ce",
          "9d67a598-d067-45ac-a9bd-d8af9cdfd9f9",
          "92b0ab12-1ba1-4a8e-8146-498314660ae5"
        ],
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
        "parent": "0e2c96bf-bcc7-4815-ae1c-d005d9d27506",
        "markup": "\n    <g class=\"scalable default-outline\" stroke-linejoin=\"round\">\n      <circle cx=\"50\" cy=\"50\" r=\"50\" fill=\"#000000\"/>\n      <text font-family=\"FontAwesome\" font-size=\"13\" x=\"-5\" y=\"0\" opacity=\"0\" fill=\"#00ff00\" text=\"\"/>\n    </g>\n  ",
        "z": 357,
        "id": "f4e709c3-0ce6-4f04-98f9-a40439ad650f",
        "embeds": [
          "89518e9b-b2a9-40bc-ba17-4974fd63f68b"
        ],
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
        "parent": "0e2c96bf-bcc7-4815-ae1c-d005d9d27506",
        "z": 360,
        "id": "956a8a3a-f31d-44c6-8ea9-bd80dcb10f90",
        "embeds": [],
        "attrs": {
          "name": {
            "text": "ST_SetUp_Capacidad",
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
        "parent": "f4e709c3-0ce6-4f04-98f9-a40439ad650f",
        "z": 368,
        "id": "89518e9b-b2a9-40bc-ba17-4974fd63f68b",
        "attrs": {
          "label": {
            "fill": "#C5C8C6",
            "refX": "50%",
            "refY": "50%",
            "textVerticalAnchor": "middle",
            "textAnchor": "middle"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "70ec4179-44ca-4dc3-95a9-d92a51503e1f"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": -1.82501220703125,
              "dy": 40.000003814697266
            },
            "name": "topLeft"
          },
          "x": 770,
          "y": -60,
          "id": "76d0902b-a03a-4322-b80b-73b80becfce5",
          "priority": true
        },
        "router": {
          "args": {
            "padding": 8
          },
          "name": "orthogonal"
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
        "vertices": [
          {
            "x": 660,
            "y": -60
          }
        ],
        "z": 371,
        "id": "fc29521c-1265-4083-986f-2c9a78ef7e3b",
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
        "parent": "e1c1e9cd-8759-4a97-8d8d-63b8121b05ae",
        "markup": "\n    <g class=\"scalable default-outline\" stroke-linejoin=\"round\">\n      <circle cx=\"50\" cy=\"50\" r=\"50\" fill=\"#000000\"/>\n      <text font-family=\"FontAwesome\" font-size=\"13\" x=\"-5\" y=\"0\" opacity=\"0\" fill=\"#00ff00\" text=\"\"/>\n    </g>\n  ",
        "z": 384,
        "id": "9c280970-f4a6-410a-a3ea-0733822a172d",
        "embeds": [
          "f4dbdabc-df56-42b2-a8f2-9c3cedc792c3"
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
          "x": -419,
          "y": 212.5
        },
        "parent": "9c280970-f4a6-410a-a3ea-0733822a172d",
        "z": 385,
        "id": "f4dbdabc-df56-42b2-a8f2-9c3cedc792c3",
        "attrs": {
          "label": {
            "text": "NoVacio",
            "fill": "#C5C8C6",
            "refX": "50%",
            "refY": "50%",
            "textVerticalAnchor": "middle",
            "textAnchor": "middle"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "9c280970-f4a6-410a-a3ea-0733822a172d"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 4.224998474121094,
              "dy": 21.800003051757812
            },
            "name": "topLeft"
          },
          "id": "7cd85498-bb0d-4d60-b1d3-91250edb6112",
          "priority": true
        },
        "router": {
          "args": {
            "padding": 8
          },
          "name": "orthogonal"
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
        "parent": "e1c1e9cd-8759-4a97-8d8d-63b8121b05ae",
        "vertices": [
          {
            "x": -250,
            "y": 205
          }
        ],
        "z": 386,
        "id": "bf27464f-5693-47a3-8c49-1e11e4f7ab91",
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
        "parent": "e1c1e9cd-8759-4a97-8d8d-63b8121b05ae",
        "markup": "\n    <g class=\"scalable default-outline\" stroke-linejoin=\"round\">\n      <circle cx=\"50\" cy=\"50\" r=\"50\" fill=\"#000000\"/>\n      <text font-family=\"FontAwesome\" font-size=\"13\" x=\"-5\" y=\"0\" opacity=\"0\" fill=\"#00ff00\" text=\"\"/>\n    </g>\n  ",
        "z": 390,
        "id": "742dd095-2e5c-4302-8986-fdde657483fb",
        "embeds": [
          "8da197e6-1e7a-403e-a93f-6735438d8eba"
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
          "x": -419,
          "y": 465
        },
        "parent": "742dd095-2e5c-4302-8986-fdde657483fb",
        "z": 391,
        "id": "8da197e6-1e7a-403e-a93f-6735438d8eba",
        "attrs": {
          "label": {
            "text": "Aviso",
            "fill": "#C5C8C6",
            "refX": "50%",
            "refY": "50%",
            "textVerticalAnchor": "middle",
            "textAnchor": "middle"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "742dd095-2e5c-4302-8986-fdde657483fb"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 14.224998474121094,
              "dy": 9
            },
            "name": "topLeft"
          },
          "id": "32c949b6-14f8-41f2-a475-05225b0fcd7c",
          "priority": true
        },
        "router": {
          "args": {
            "padding": 8
          },
          "name": "orthogonal"
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
        "parent": "e1c1e9cd-8759-4a97-8d8d-63b8121b05ae",
        "vertices": [
          {
            "x": -280,
            "y": 457.5
          }
        ],
        "z": 392,
        "id": "5d940c44-f1fa-4d29-8d36-202cb6187d60",
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
        "parent": "e1c1e9cd-8759-4a97-8d8d-63b8121b05ae",
        "markup": "\n    <g class=\"scalable default-outline\" stroke-linejoin=\"round\">\n      <circle cx=\"50\" cy=\"50\" r=\"50\" fill=\"#000000\"/>\n      <text font-family=\"FontAwesome\" font-size=\"13\" x=\"-5\" y=\"0\" opacity=\"0\" fill=\"#00ff00\" text=\"\"/>\n    </g>\n  ",
        "z": 393,
        "id": "4841023c-3088-411f-8d8b-909851904103",
        "embeds": [
          "13b810bd-e18c-4779-9463-cc93665ccd81"
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
          "x": -419,
          "y": 778.5
        },
        "parent": "4841023c-3088-411f-8d8b-909851904103",
        "z": 394,
        "id": "13b810bd-e18c-4779-9463-cc93665ccd81",
        "attrs": {
          "label": {
            "text": "Lleno",
            "fill": "#C5C8C6",
            "refX": "50%",
            "refY": "50%",
            "textVerticalAnchor": "middle",
            "textAnchor": "middle"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "4841023c-3088-411f-8d8b-909851904103"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 40.36249542236328,
              "dy": 29
            },
            "name": "topLeft"
          },
          "id": "1e384ae1-990c-4a54-86a8-bdbf3205fb65",
          "priority": true
        },
        "router": {
          "args": {
            "padding": 8
          },
          "name": "orthogonal"
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
        "parent": "e1c1e9cd-8759-4a97-8d8d-63b8121b05ae",
        "z": 395,
        "id": "028660e0-f01b-40b3-8a2e-fc4d5e484a11",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "1017d4ec-5f6c-4951-bcf9-8131f3bb9b3e"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 22.612499237060547,
              "dy": 0
            },
            "name": "topLeft"
          },
          "id": "a71e447e-303c-4536-b3c2-423be67991f0",
          "priority": true
        },
        "router": {
          "args": {
            "padding": 8
          },
          "name": "orthogonal"
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
        "parent": "e1c1e9cd-8759-4a97-8d8d-63b8121b05ae",
        "z": 397,
        "id": "9176e1be-a032-4b0f-bf12-8476b16fa8ef",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "a71e447e-303c-4536-b3c2-423be67991f0"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 92.61249923706055,
              "dy": 10
            },
            "name": "topLeft"
          },
          "id": "a71e447e-303c-4536-b3c2-423be67991f0",
          "priority": true
        },
        "router": {
          "args": {
            "padding": 8
          },
          "name": "orthogonal"
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
        "parent": "a71e447e-303c-4536-b3c2-423be67991f0",
        "vertices": [
          {
            "x": 5,
            "y": -10
          }
        ],
        "z": 398,
        "id": "e11abd42-117d-46f1-bd0e-653ae2c2b1d7",
        "attrs": {}
      },
      {
        "type": "State",
        "position": {
          "x": 964.9999389648438,
          "y": 10
        },
        "size": {
          "height": 510,
          "width": 160
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "parent": "0e2c96bf-bcc7-4815-ae1c-d005d9d27506",
        "z": 400,
        "id": "38d6211f-6423-4868-9bb5-c9018de12d67",
        "embeds": [
          "be7dc9b9-d173-479a-ae61-94554c981837"
        ],
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
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 135.00006103515625,
              "dy": 0
            },
            "name": "topLeft"
          },
          "id": "38d6211f-6423-4868-9bb5-c9018de12d67",
          "priority": true
        },
        "router": {
          "args": {
            "padding": 8
          },
          "name": "orthogonal"
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
        "parent": "0e2c96bf-bcc7-4815-ae1c-d005d9d27506",
        "z": 401,
        "id": "a61b10ac-7a20-40c1-8366-49f4bab64ce3",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "956a8a3a-f31d-44c6-8ea9-bd80dcb10f90"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 155.00006103515625,
              "dy": 50
            },
            "name": "topLeft"
          },
          "id": "38d6211f-6423-4868-9bb5-c9018de12d67",
          "priority": true
        },
        "router": {
          "args": {
            "padding": 8
          },
          "name": "orthogonal"
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
        "parent": "0e2c96bf-bcc7-4815-ae1c-d005d9d27506",
        "z": 401,
        "id": "17aa3d97-35dd-406c-9fa4-786a64c15a5f",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "38d6211f-6423-4868-9bb5-c9018de12d67"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 4.02490234375,
              "dy": 10
            },
            "name": "topLeft"
          },
          "id": "956a8a3a-f31d-44c6-8ea9-bd80dcb10f90",
          "priority": true
        },
        "router": {
          "args": {
            "padding": 8
          },
          "name": "orthogonal"
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
        "parent": "0e2c96bf-bcc7-4815-ae1c-d005d9d27506",
        "z": 401,
        "id": "bf358b5e-2a29-4f96-980c-170247b46c25",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "1e384ae1-990c-4a54-86a8-bdbf3205fb65"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 90.36249542236328,
              "dy": 49
            },
            "name": "topLeft"
          },
          "id": "1e384ae1-990c-4a54-86a8-bdbf3205fb65",
          "priority": true
        },
        "router": {
          "args": {
            "padding": 8
          },
          "name": "orthogonal"
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
        "parent": "1e384ae1-990c-4a54-86a8-bdbf3205fb65",
        "vertices": [
          {
            "x": 5.32,
            "y": 840
          }
        ],
        "z": 402,
        "id": "ab144769-3324-464c-b422-c2f85641e3e7",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 129.86249923706055,
              "dy": 50
            },
            "name": "topLeft"
          },
          "id": "1283ae01-e4f6-41d9-a1de-42213afaefb2",
          "priority": true
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 209.17498779296875,
              "dy": 20
            },
            "name": "topLeft"
          },
          "id": "76d0902b-a03a-4322-b80b-73b80becfce5",
          "priority": true
        },
        "router": {
          "args": {
            "padding": 8
          },
          "name": "orthogonal"
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "ev_config_enter [!bloqueado]"
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
        "z": 405,
        "id": "7531f5c5-d521-4566-8a04-af40a28bc049",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "76d0902b-a03a-4322-b80b-73b80becfce5"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 129.86249923706055,
              "dy": 20
            },
            "name": "topLeft"
          },
          "id": "1283ae01-e4f6-41d9-a1de-42213afaefb2",
          "priority": true
        },
        "router": {
          "args": {
            "padding": 8
          },
          "name": "orthogonal"
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
        "vertices": [
          {
            "x": 1370,
            "y": -420
          }
        ],
        "z": 406,
        "id": "a2e59cc1-fc2c-444f-924e-bfef42c091b2",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "1283ae01-e4f6-41d9-a1de-42213afaefb2"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 99.86249923706055,
              "dy": 20
            },
            "name": "topLeft"
          },
          "id": "1283ae01-e4f6-41d9-a1de-42213afaefb2",
          "priority": true
        },
        "router": {
          "args": {
            "padding": 8
          },
          "name": "orthogonal"
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
              "distance": 0.6689568218718369,
              "offset": -28.449569501271757,
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
        "parent": "1283ae01-e4f6-41d9-a1de-42213afaefb2",
        "vertices": [
          {
            "x": 0,
            "y": -480
          }
        ],
        "z": 407,
        "id": "362c2339-246d-4315-800c-e6eedbe1bc3a",
        "attrs": {}
      },
      {
        "type": "Choice",
        "position": {
          "x": 1610,
          "y": 47.5
        },
        "size": {
          "width": 15,
          "height": 15
        },
        "angle": 0,
        "fixedRatio": true,
        "embedable": false,
        "linkable": true,
        "parent": "0e2c96bf-bcc7-4815-ae1c-d005d9d27506",
        "z": 418,
        "id": "053ec4cb-3aad-43fc-bdc9-e5f7b253e3ed",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 124.02490234375,
              "dy": 40
            },
            "name": "topLeft"
          },
          "id": "956a8a3a-f31d-44c6-8ea9-bd80dcb10f90",
          "priority": true
        },
        "target": {
          "id": "053ec4cb-3aad-43fc-bdc9-e5f7b253e3ed"
        },
        "router": {
          "args": {
            "padding": 8
          },
          "name": "orthogonal"
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "ev_next /\ncapacidad ++"
              }
            },
            "position": {
              "distance": 0.5209718600824076,
              "offset": -16.67908083846592,
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
        "parent": "0e2c96bf-bcc7-4815-ae1c-d005d9d27506",
        "vertices": [],
        "z": 419,
        "id": "12abb3e4-1598-47db-967c-55783e94e2cc",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "053ec4cb-3aad-43fc-bdc9-e5f7b253e3ed"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 74.02490234375,
              "dy": 0
            },
            "name": "topLeft"
          },
          "id": "956a8a3a-f31d-44c6-8ea9-bd80dcb10f90",
          "priority": true
        },
        "router": {
          "args": {
            "padding": 8
          },
          "name": "orthogonal"
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
              "distance": 0.5387934006047381,
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
        "parent": "0e2c96bf-bcc7-4815-ae1c-d005d9d27506",
        "vertices": [
          {
            "x": 1560,
            "y": -10
          }
        ],
        "z": 419,
        "id": "29bdac94-4cc0-4ab7-8eb1-319c40b92559",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "053ec4cb-3aad-43fc-bdc9-e5f7b253e3ed"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 74.02490234375,
              "dy": 50
            },
            "name": "topLeft"
          },
          "id": "956a8a3a-f31d-44c6-8ea9-bd80dcb10f90",
          "priority": true
        },
        "router": {
          "args": {
            "padding": 8
          },
          "name": "orthogonal"
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "[capacidad >= MAX_CAPACIDAD] /\ncapacidad = lim_aviso + 1"
              }
            },
            "position": {
              "distance": 0.4566736326616163,
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
        "parent": "0e2c96bf-bcc7-4815-ae1c-d005d9d27506",
        "vertices": [
          {
            "x": 1540,
            "y": 90
          }
        ],
        "z": 419,
        "id": "a9fa1df7-a73d-486b-b534-c921cc69c817",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 125.00006103515625,
              "dy": 500
            },
            "name": "topLeft"
          },
          "id": "38d6211f-6423-4868-9bb5-c9018de12d67",
          "priority": true
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 35.00006103515625,
              "dy": 510
            },
            "name": "topLeft"
          },
          "id": "38d6211f-6423-4868-9bb5-c9018de12d67",
          "priority": true
        },
        "router": {
          "args": {
            "padding": 8
          },
          "name": "orthogonal"
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
              "distance": 0.24559967734996646,
              "offset": -30.009729746190303,
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
        "parent": "38d6211f-6423-4868-9bb5-c9018de12d67",
        "vertices": [
          {
            "x": 1060,
            "y": 560
          }
        ],
        "z": 420,
        "id": "be7dc9b9-d173-479a-ae61-94554c981837",
        "attrs": {}
      },
      {
        "type": "Exit",
        "position": {
          "x": 1452.5,
          "y": 466
        },
        "size": {
          "height": 15,
          "width": 15
        },
        "angle": 0,
        "fixedRatio": true,
        "embedable": false,
        "linkable": true,
        "parent": "0e2c96bf-bcc7-4815-ae1c-d005d9d27506",
        "z": 421,
        "id": "c6dc8674-f685-40ae-9a11-1437ff8c66ce",
        "embeds": [
          "d51622b7-3794-4b93-be9b-c63c70ddba0d"
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
          "x": 1452.5,
          "y": 481
        },
        "parent": "c6dc8674-f685-40ae-9a11-1437ff8c66ce",
        "z": 422,
        "id": "d51622b7-3794-4b93-be9b-c63c70ddba0d",
        "attrs": {
          "label": {
            "text": "Escape",
            "fill": "#C5C8C6",
            "refX": "50%",
            "refY": "50%",
            "textVerticalAnchor": "middle",
            "textAnchor": "middle"
          }
        }
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
          "args": {
            "padding": 8
          },
          "name": "orthogonal"
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
        "parent": "0e2c96bf-bcc7-4815-ae1c-d005d9d27506",
        "z": 423,
        "id": "3c4e8f2d-d6e5-4f53-be62-876b3d0783ee",
        "attrs": {}
      },
      {
        "type": "State",
        "position": {
          "x": 1357.787498474121,
          "y": 248.80000114440918
        },
        "size": {
          "height": 60,
          "width": 126.0250015258789
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "parent": "0e2c96bf-bcc7-4815-ae1c-d005d9d27506",
        "z": 424,
        "id": "9d67a598-d067-45ac-a9bd-d8af9cdfd9f9",
        "embeds": [],
        "attrs": {
          "name": {
            "text": "ST_SetUp_Aviso",
            "fill": "#CFD8DC",
            "fontSize": 12
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "38d6211f-6423-4868-9bb5-c9018de12d67"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 0.4124755859375,
              "dy": 10
            },
            "name": "topLeft"
          },
          "id": "9d67a598-d067-45ac-a9bd-d8af9cdfd9f9",
          "priority": true
        },
        "router": {
          "args": {
            "padding": 8
          },
          "name": "orthogonal"
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
        "parent": "0e2c96bf-bcc7-4815-ae1c-d005d9d27506",
        "z": 425,
        "id": "622ccb61-3d07-47ba-9895-440eab6bcf7a",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 12.2125244140625,
              "dy": 51.19999694824219
            },
            "name": "topLeft"
          },
          "id": "9d67a598-d067-45ac-a9bd-d8af9cdfd9f9",
          "priority": true
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 155.00006103515625,
              "dy": 290
            },
            "name": "topLeft"
          },
          "id": "38d6211f-6423-4868-9bb5-c9018de12d67",
          "priority": true
        },
        "router": {
          "args": {
            "padding": 8
          },
          "name": "orthogonal"
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
        "parent": "0e2c96bf-bcc7-4815-ae1c-d005d9d27506",
        "vertices": [
          {
            "x": 1320,
            "y": 300
          }
        ],
        "z": 426,
        "id": "8c615030-9473-443b-9c3d-ec92a5d16dad",
        "attrs": {}
      },
      {
        "type": "Choice",
        "position": {
          "x": 1610,
          "y": 288.2000026702881
        },
        "size": {
          "width": 15,
          "height": 15
        },
        "angle": 0,
        "fixedRatio": true,
        "embedable": false,
        "linkable": true,
        "parent": "0e2c96bf-bcc7-4815-ae1c-d005d9d27506",
        "z": 428,
        "id": "92b0ab12-1ba1-4a8e-8146-498314660ae5",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 80.4124755859375,
              "dy": 50
            },
            "name": "topLeft"
          },
          "id": "9d67a598-d067-45ac-a9bd-d8af9cdfd9f9",
          "priority": true
        },
        "target": {
          "id": "92b0ab12-1ba1-4a8e-8146-498314660ae5"
        },
        "router": {
          "args": {
            "padding": 8
          },
          "name": "orthogonal"
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "ev_next /\nlim_aviso ++"
              }
            },
            "position": {
              "distance": 0.5020822703464757,
              "offset": -14.864575195312511,
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
        "parent": "0e2c96bf-bcc7-4815-ae1c-d005d9d27506",
        "vertices": [],
        "z": 429,
        "id": "32b616f9-c090-4a8b-b0ab-92d75137f466",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "92b0ab12-1ba1-4a8e-8146-498314660ae5"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 72.2125244140625,
              "dy": 1.1999969482421875
            },
            "name": "topLeft"
          },
          "id": "9d67a598-d067-45ac-a9bd-d8af9cdfd9f9",
          "priority": true
        },
        "router": {
          "args": {
            "padding": 8
          },
          "name": "orthogonal"
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "[lim_aviso >= capacidad] /\nlim_aviso = 1"
              }
            },
            "position": {
              "distance": 0.5388384703706438,
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
        "parent": "0e2c96bf-bcc7-4815-ae1c-d005d9d27506",
        "vertices": [
          {
            "x": 1580,
            "y": 340
          }
        ],
        "z": 430,
        "id": "8a034b2e-d944-4dc2-892a-316f845a9bd2",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "92b0ab12-1ba1-4a8e-8146-498314660ae5"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 72.2125244140625,
              "dy": 11.199996948242188
            },
            "name": "topLeft"
          },
          "id": "9d67a598-d067-45ac-a9bd-d8af9cdfd9f9",
          "priority": true
        },
        "router": {
          "args": {
            "padding": 8
          },
          "name": "orthogonal"
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
              "distance": 0.5360647655800379,
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
        "parent": "0e2c96bf-bcc7-4815-ae1c-d005d9d27506",
        "vertices": [
          {
            "x": 1580,
            "y": 220
          }
        ],
        "z": 432,
        "id": "7c7c9ee5-c80a-47b8-8e94-6a7ab5d3cf40",
        "attrs": {}
      },
      {
        "type": "Choice",
        "position": {
          "x": 670,
          "y": 55
        },
        "size": {
          "width": 15,
          "height": 15
        },
        "angle": 0,
        "fixedRatio": true,
        "embedable": false,
        "linkable": true,
        "z": 438,
        "id": "0ca9ebaa-7ca0-41b9-9599-392730ae429b",
        "attrs": {}
      },
      {
        "type": "Choice",
        "position": {
          "x": 760,
          "y": 252.5
        },
        "size": {
          "width": 15,
          "height": 15
        },
        "angle": 0,
        "fixedRatio": true,
        "embedable": false,
        "linkable": true,
        "z": 440,
        "id": "cc508dc4-df3f-4376-a3e1-a6d7a4db6dd2",
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
          "args": {
            "padding": 8
          },
          "name": "orthogonal"
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
        "z": 441,
        "id": "4ea14cbc-1f4f-44ac-b23c-8263e5c372b2",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "cc508dc4-df3f-4376-a3e1-a6d7a4db6dd2"
        },
        "target": {
          "id": "0ca9ebaa-7ca0-41b9-9599-392730ae429b"
        },
        "router": {
          "args": {
            "padding": 8
          },
          "name": "orthogonal"
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "[cant_autos < lim_aviso]"
              }
            },
            "position": {
              "distance": 0.7058342638751026,
              "offset": 18.510625759229516,
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
        "vertices": [
          {
            "x": 737.5,
            "y": 62.53
          }
        ],
        "z": 441,
        "id": "0f9b5c88-f4fd-42df-8334-d5783a0ad1bc",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "0ca9ebaa-7ca0-41b9-9599-392730ae429b"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 969,
              "dy": 120.00000381469727
            },
            "name": "topLeft"
          },
          "x": 510,
          "y": 20,
          "id": "70ec4179-44ca-4dc3-95a9-d92a51503e1f",
          "priority": true
        },
        "router": {
          "args": {
            "padding": 8
          },
          "name": "orthogonal"
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "[cant_autos != 0]\n# > NoVacio"
              }
            },
            "position": {
              "distance": 0.5528956023244066,
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
        "z": 442,
        "id": "52fac989-fcf8-4070-bee0-6331dd1460c9",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "0ca9ebaa-7ca0-41b9-9599-392730ae429b"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 979,
              "dy": 200.00000381469727
            },
            "name": "topLeft"
          },
          "x": 520,
          "y": 100,
          "id": "70ec4179-44ca-4dc3-95a9-d92a51503e1f",
          "priority": true
        },
        "router": {
          "args": {
            "padding": 8
          },
          "name": "orthogonal"
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
              "distance": 0.6086996775442606,
              "offset": -5,
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
        "vertices": [
          {
            "x": 630,
            "y": 100
          }
        ],
        "z": 443,
        "id": "32c94719-adc2-4bd0-9d05-a0c3d18fb0f8",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "cc508dc4-df3f-4376-a3e1-a6d7a4db6dd2"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 979,
              "dy": 360.00000381469727
            },
            "name": "topLeft"
          },
          "x": 520,
          "y": 260,
          "id": "70ec4179-44ca-4dc3-95a9-d92a51503e1f",
          "priority": true
        },
        "router": {
          "args": {
            "padding": 8
          },
          "name": "orthogonal"
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "[cant_autos < capacidad]\n# > Aviso"
              }
            },
            "position": {
              "distance": 0.5416666666666666,
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
        "z": 444,
        "id": "01a4e07c-5813-4e96-87ae-ec7b98668bc3",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "cc508dc4-df3f-4376-a3e1-a6d7a4db6dd2"
        },
        "target": {
          "anchor": {
            "args": {
              "rotate": true,
              "dx": 959,
              "dy": 480.00000381469727
            },
            "name": "topLeft"
          },
          "x": 500,
          "y": 380,
          "id": "70ec4179-44ca-4dc3-95a9-d92a51503e1f",
          "priority": true
        },
        "router": {
          "args": {
            "padding": 8
          },
          "name": "orthogonal"
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "else # > Lleno"
              }
            },
            "position": {
              "distance": 0.8021826995258104,
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
        "z": 445,
        "id": "a645df51-49f2-4880-970d-283b56d31345",
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
          "moduleName": "SystemCopy",
          "statemachinePrefix": "systemCopy",
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