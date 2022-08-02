module Internal = {
  module CSSTransition = {
    type classNames = {
      appear: string,
      appearActive: string,
      appearDone: string,
      enter: string,
      enterActive: string,
      enterDone: string,
      exit: string,
      exitActive: string,
      exitDone: string,
    }

    @module("react-transition-group") @react.component
    external make: (
      ~children: React.element,
      ~\"in": bool,
      ~timeout: int=?,
      ~classNames: classNames,
      ~appear: bool,
      ~unmountOnExit: bool,
    ) => React.element = "CSSTransition"
  }
}

module CSSTransition = {
  @react.component
  let make = (
    ~children: React.element,
    ~in_: bool,
    ~timeout=0,
    ~appear=false,
    ~unmountOnExit=false,
    ~appearFrom="",
    ~appearActive="",
    ~appearDone="",
    ~enterFrom="",
    ~enterActive="",
    ~enterDone="",
    ~exitFrom="",
    ~exitActive="",
    ~exitDone="",
  ): React.element =>
    <Internal.CSSTransition
      \"in"=in_
      timeout
      appear
      unmountOnExit
      classNames={{
        appear: appearFrom,
        appearActive,
        appearDone,
        enter: enterFrom,
        enterActive,
        enterDone,
        exit: exitFrom,
        exitActive,
        exitDone,
      }}>
      children
    </Internal.CSSTransition>
}
