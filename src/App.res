open ReactTransitionGroup

@react.component
let make = () => {
  let (increment, setIncrement) = React.useState(() => 1)
  let (state, toggle) = React.useState(() => false)

  <div className="flex flex-col justify-center items-center h-screen gap-4">
    <Counter increment />
    <NumberInput.Int
      min=1
      step=1
      value=increment
      onInput={i => setIncrement(_ => i)}
      className="px-4 py-2 border border-blue-300 rounded-lg"
    />
    <button onClick={_ => toggle(s => !s)} className="px-4 py-2 bg-red-400 text-white rounded-lg">
      {React.string("Toggle")}
    </button>
    <CSSTransition
      in_=state
      timeout=300
      enterFrom="opacity-0"
      enterActive="opacity-100 transition-opacity duration-300"
      exitFrom="opacity-100"
      exitActive="opacity-0 transition-opacity duration-300"
      exitDone="opacity-0">
      <div className="p-3 bg-yellow-600"> {React.string("Hi")} </div>
    </CSSTransition>
  </div>
}
