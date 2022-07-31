// Generated by ReScript, PLEASE EDIT WITH CARE

import * as Curry from "rescript/lib/es6/curry.js";
import * as React from "react";
import * as Belt_Int from "rescript/lib/es6/belt_Int.js";
import * as Belt_Option from "rescript/lib/es6/belt_Option.js";
import * as Counter$RescriptIntro from "./Counter.bs.js";

function App(Props) {
  var match = React.useState(function () {
        return 1;
      });
  var setIncrement = match[1];
  var incrementValue = match[0];
  var match$1 = React.useState(function () {
        return 1;
      });
  var setIncrCache = match$1[1];
  var increment = Belt_Option.getWithDefault(incrementValue, match$1[0]);
  var onInputIncr = function (e) {
    var value = Belt_Int.fromString(e.target.value);
    Curry._1(setIncrement, (function (param) {
            return value;
          }));
    return Belt_Option.mapWithDefault(value, undefined, (function (i) {
                  return Curry._1(setIncrCache, (function (param) {
                                return i;
                              }));
                }));
  };
  return React.createElement("div", {
              className: "flex flex-col justify-center items-center h-screen gap-6"
            }, React.createElement(Counter$RescriptIntro.make, {
                  increment: increment
                }), React.createElement("input", {
                  className: "px-6 py-3 border border-blue-300 rounded-lg",
                  min: "1",
                  step: 1.0,
                  type: "number",
                  value: Belt_Option.mapWithDefault(incrementValue, "", (function (prim) {
                          return String(prim);
                        })),
                  onInput: onInputIncr
                }));
}

var initialCount = 1;

var make = App;

export {
  initialCount ,
  make ,
  
}
/* react Not a pure module */
