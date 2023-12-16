{
  "resourceType": "GMObject",
  "resourceVersion": "1.0",
  "name": "obj_monster",
  "eventList": [
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":0,"eventType":0,"isDnD":false,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":0,"eventType":3,"isDnD":false,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":{"name":"obj_man","path":"objects/obj_man/obj_man.yy",},"eventNum":0,"eventType":4,"isDnD":false,},
  ],
  "managed": true,
  "overriddenProperties": [],
  "parent": {
    "name": "AI_Players",
    "path": "folders/Objects/AI_Players.yy",
  },
  "parentObjectId": null,
  "persistent": false,
  "physicsAngularDamping": 0.1,
  "physicsDensity": 0.5,
  "physicsFriction": 0.2,
  "physicsGroup": 1,
  "physicsKinematic": false,
  "physicsLinearDamping": 0.1,
  "physicsObject": false,
  "physicsRestitution": 0.1,
  "physicsSensor": false,
  "physicsShape": 1,
  "physicsShapePoints": [],
  "physicsStartAwake": true,
  "properties": [
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"move_towards_player","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"0","varType":1,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"useSound","filters":[
        "GMSound",
      ],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"monster_lullaby","varType":5,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"fallStart","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"500","varType":0,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"maxDist","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"4000","varType":0,},
  ],
  "solid": false,
  "spriteId": {
    "name": "spr_monster1",
    "path": "sprites/spr_monster1/spr_monster1.yy",
  },
  "spriteMaskId": null,
  "visible": true,
}