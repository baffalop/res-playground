// Generated by ReScript, PLEASE EDIT WITH CARE

import * as Curry from "rescript/lib/es6/curry.js";
import * as React from "react";
import * as Utils$RescriptIntro from "./Utils.bs.js";
import * as Styles$RescriptIntro from "./Styles.bs.js";

var buttonClasses = Styles$RescriptIntro.button + " bg-blue-400";

function Counter(Props) {
  var startOpt = Props.start;
  var incOpt = Props.increment;
  var start = startOpt !== undefined ? startOpt : 0;
  var inc = incOpt !== undefined ? incOpt : 1;
  var match = React.useState(function () {
        return start;
      });
  var setClicks = match[1];
  var incCount = function (param) {
    return Curry._1(setClicks, (function (param) {
                  return Utils$RescriptIntro.Int.add(inc, param);
                }));
  };
  var decCount = function (param) {
    return Curry._1(setClicks, (function (param) {
                  return Utils$RescriptIntro.Int.sub(inc, param);
                }));
  };
  return React.createElement("div", {
              className: "flex justify-center items-center gap-2"
            }, React.createElement("span", {
                  className: "w-20 text-left"
                }, "Clicks: " + String(match[0])), React.createElement("button", {
                  className: buttonClasses,
                  onClick: incCount
                }, "+ " + String(inc)), React.createElement("button", {
                  className: buttonClasses,
                  onClick: decCount
                }, "- " + String(inc)));
}

var make = Counter;

export {
  buttonClasses ,
  make ,
  
}
/* react Not a pure module */
