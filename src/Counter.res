@react.component
let make = (~start=0, ~increment as inc=1) => {
  let (clicks, setClicks) = React.useState(() => start)
  let incCount = _ => setClicks(clicks => clicks + inc)

  let msg = `Clicks: ${Belt.Int.toString(clicks)}`

  <div className="flex justify-center items-center gap-2">
    <span className="w-20 text-left"> {React.string(msg)} </span>
    <button onClick=incCount className="px-4 py-2 bg-blue-400 text-white rounded-lg">
      {React.string("+ " ++ Belt.Int.toString(inc))}
    </button>
  </div>
}
