{
  "resourceType": "GMObject",
  "resourceVersion": "1.0",
  "name": "obj_weapon_secondaryFire",
  "eventList": [
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":0,"eventType":0,"isDnD":false,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":{"name":"obj_bounds","path":"objects/obj_bounds/obj_bounds.yy",},"eventNum":0,"eventType":4,"isDnD":false,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":2,"eventType":3,"isDnD":false,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":0,"eventType":3,"isDnD":false,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":0,"eventType":1,"isDnD":false,},
  ],
  "managed": true,
  "overriddenProperties": [
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_weapon_parent","path":"objects/obj_weapon_parent/obj_weapon_parent.yy",},"propertyId":{"name":"damage","path":"objects/obj_weapon_parent/obj_weapon_parent.yy",},"value":"10",},
  ],
  "parent": {
    "name": "Weapons",
    "path": "folders/Objects/Weapons.yy",
  },
  "parentObjectId": {
    "name": "obj_weapon_parent",
    "path": "objects/obj_weapon_parent/obj_weapon_parent.yy",
  },
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
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"bouncing_bullet","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"False","varType":3,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"bullet_speed","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"50","varType":0,},
  ],
  "solid": false,
  "spriteId": {
    "name": "spr_SecondaryFire",
    "path": "sprites/spr_SecondaryFire/spr_SecondaryFire.yy",
  },
  "spriteMaskId": null,
  "visible": true,
}