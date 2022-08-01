type inputState = Synced | Empty

module Int = {
  @react.component
  let make = (
    ~value: int,
    ~onInput as callback: int => unit,
    ~step=1,
    ~min: option<int>=?,
    ~className="",
  ) => {
    let (state, setState) = React.useState(() => Synced)

    let onInput = e => {
      switch ReactEvent.Form.target(e)["value"]->Int.fromString {
      | Some(i) => {
          setState(_ => Synced)
          callback(i)
        }

      | None => setState(_ => Empty)
      }
    }

    let inputValue = switch state {
    | Synced => value->Int.toString
    | Empty => ""
    }

    <input
      type_="number"
      min={min->Option.mapWithDefault("", Int.toString)}
      step={step->Int.toFloat}
      value=inputValue
      onInput
      className
    />
  }
}
