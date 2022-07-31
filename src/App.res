let initialCount = 1

@react.component
let make = () => {
  let (incrementValue, setIncrement) = React.useState(() => Some(initialCount))
  let (incrCache, setIncrCache) = React.useState(() => initialCount)
  let increment: int = incrementValue->Option.getWithDefault(incrCache)

  let onInputIncr = e => {
    let value = ReactEvent.Form.target(e)["value"]->Int.fromString
    setIncrement(_ => value)
    value->Option.mapWithDefault((), i => setIncrCache(_ => i))
  }

  <div className="flex flex-col justify-center items-center h-screen gap-6">
    <Counter increment />

    <input
      type_="number"
      min="1"
      step=1.0
      value={incrementValue->Option.mapWithDefault("", Int.toString)}
      className="px-6 py-3 border border-blue-300 rounded-lg"
      onInput=onInputIncr
    />
  </div>
}
