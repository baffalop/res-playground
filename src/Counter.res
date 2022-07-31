@react.component
let make = (~start as start=0, ~increment as inc=1) => {
  let (clicks, setClicks) = React.useState(() => start)
  let incCount = _ => setClicks(clicks => clicks + inc)

  <div className="flex justify-center items-center gap-4">
    <span className="w-20 text-left">
      {React.string(`Clicks: ${Belt.Int.toString(clicks)}`)}
    </span>

    <button
      className="px-6 py-3 bg-blue-400 text-white rounded-lg"
      onClick=incCount
    >
      {React.string("+ " ++ Belt.Int.toString(inc))}
    </button>
  </div>
}
