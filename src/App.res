open Utils

@react.component
let make = () => {
  let (incrementValue, setIncrement) = React.useState(() => Some(1))
  let increment: int = incrementValue->Belt.Option.getWithDefault(1)

  let onInputIncr = e => {
    ReactEvent.Form.target(e)["value"]
      ->Belt.Int.fromString
      ->Function.const
      ->setIncrement
  }

  <div className="flex flex-col justify-center items-center h-screen gap-6">
    <Counter increment />

    <input
      type_="number"
      min="1"
      step=1.0
      value={incrementValue->Option.mapWithDefault("", Belt.Int.toString)}
      className="px-6 py-3 border border-blue-300 rounded-lg"
      onInput=onInputIncr
    />
  </div>
}
