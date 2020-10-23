
"use strict";

let ObjectHypothesis = require('./ObjectHypothesis.js');
let Detection3DArray = require('./Detection3DArray.js');
let Detection2DArray = require('./Detection2DArray.js');
let Classification2D = require('./Classification2D.js');
let BoundingBox2D = require('./BoundingBox2D.js');
let BoundingBox3D = require('./BoundingBox3D.js');
let Detection3D = require('./Detection3D.js');
let Classification3D = require('./Classification3D.js');
let Detection2D = require('./Detection2D.js');
let VisionInfo = require('./VisionInfo.js');
let ObjectHypothesisWithPose = require('./ObjectHypothesisWithPose.js');

module.exports = {
  ObjectHypothesis: ObjectHypothesis,
  Detection3DArray: Detection3DArray,
  Detection2DArray: Detection2DArray,
  Classification2D: Classification2D,
  BoundingBox2D: BoundingBox2D,
  BoundingBox3D: BoundingBox3D,
  Detection3D: Detection3D,
  Classification3D: Classification3D,
  Detection2D: Detection2D,
  VisionInfo: VisionInfo,
  ObjectHypothesisWithPose: ObjectHypothesisWithPose,
};
