@react.component
let make = () => {
  let (increment, setIncrement) = React.useState(() => 1)

  <div className="flex flex-col justify-center items-center h-screen gap-4">
    <Counter increment />
    <NumberInput.Int
      min=1
      step=1
      value=increment
      onInput={i => setIncrement(_ => i)}
      className="px-4 py-2 border border-blue-300 rounded-lg"
    />
  </div>
}
