@react.component
let make = (~start=0, ~increment as inc=1) => {
  let (clicks, setClicks) = React.useState(() => start)
  let incCount = _ => setClicks(Utils.Int.add(inc))
  let decCount = _ => setClicks(Utils.Int.sub(inc))

  <div className="flex justify-center items-center gap-2">
    <span className="w-20 text-left">
      {React.string(`Clicks: ${Int.toString(clicks)}`)}
    </span>

    <button onClick=incCount className="px-4 py-2 bg-blue-400 text-white rounded-lg">
      {React.string("+ " ++ Int.toString(inc))}
    </button>

    <button onClick=decCount className="px-4 py-2 bg-blue-400 text-white rounded-lg">
      {React.string("- " ++ Int.toString(inc))}
    </button>
  </div>
}
