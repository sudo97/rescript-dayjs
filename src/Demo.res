open Dayjs

let nextDay = make()->add(1, #day)->add(1, #minute)
Js.log(nextDay->toString)