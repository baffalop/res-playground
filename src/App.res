type inputState = Synced | Cached

@react.component
let make = () => {
  let ((inputState, increment), setIncrement) = React.useState(() => (Synced, 1))

  let onInputIncrement = e => {
    setIncrement(_ =>
      switch ReactEvent.Form.target(e)["value"]->Int.fromString {
      | Some(i) => (Synced, i)
      | None => (Cached, increment)
      }
    )
  }

  let inputValue = switch inputState {
  | Synced => increment->Int.toString
  | Cached => ""
  }

  <div className="flex flex-col justify-center items-center h-screen gap-6">
    <Counter increment />
    <input
      type_="number"
      min="1"
      step=1.0
      value=inputValue
      onInput=onInputIncrement
      className="px-6 py-3 border border-blue-300 rounded-lg"
    />
  </div>
}
