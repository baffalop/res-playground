let buttonClasses = `${Styles.button} bg-blue-400`

@react.component
let make = (~start=0, ~increment as inc=1) => {
  let (clicks, setClicks) = React.useState(() => start)
  let incCount = _ => setClicks(Utils.Int.add(inc))
  let decCount = _ => setClicks(Utils.Int.sub(inc))

  <div className="flex justify-center items-center gap-2">
    <span className="w-20 text-left">
      {React.string(`Clicks: ${Int.toString(clicks)}`)}
    </span>

    <button onClick=incCount className=buttonClasses>
      {React.string("+ " ++ Int.toString(inc))}
    </button>

    <button onClick=decCount className=buttonClasses>
      {React.string("- " ++ Int.toString(inc))}
    </button>
  </div>
}
