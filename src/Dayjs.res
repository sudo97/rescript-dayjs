type t
@module external make: unit => t = "dayjs"
@module external parseISO: string => t = "dayjs"
@module external fromDate: Js.Date.t => t = "dayjs"
@module external parse: (string, string) => t = "dayjs"
@module external fromUnix: float => t = "dayjs"
@module external fromSelf: t => t = "dayjs"
@send external format: (t, string) => string = "format"
@send external toISO: t => string = "format"
@send external clone: t => t = "clone"
@send external isValid: t => bool = "isValid"
@send external getMillisecond: t => int = "millisecond"
@send external setMillisecond: (t, int) => t = "millisecond"
@send external getSecond: t => int = "second"
@send external setSecond: (t, int) => t = "second"
@send external getMinute: t => int = "minute"
@send external setMinute: (t, int) => t = "minute"
@send external getHour: t => int = "hour"
@send external setHour: (t, int) => t = "hour"
@send external getDate: t => int = "date"
@send external setDate: (t, int) => t = "date"
@send external getDay: t => int = "day"
@send external setDay: (t, int) => t = "day"
@send external getMonth: t => int = "month"
@send external setMonth: (t, int) => t = "month"
@send external getYear: t => int = "year"
@send external setYear: (t, int) => t = "year"

type timeUnit = [
	| #year
	| #month
	| #week
	| #date
	| #day
	| #hour
	| #minute
	| #second
	| #millisecond
	| #D
	| #d
	| #M
	| #y
	| #h
	| #m
	| #s
	| #ms
]
@send external get: (t, timeUnit) => int = "get"
@send external set: (t, timeUnit, int) => t = "set"
@send external add: (t, int, timeUnit) => t = "add"
@send external subtract: (t, int, timeUnit) => t = "subtract"
@send external startOf: (t, timeUnit) => t = "startOf"
@send external endOf: (t, timeUnit) => t = "endOf"
@send external diff: (t, t) => float = "diff"
@send external diffOf: (t, t, timeUnit, bool) => float = "diff"
@send external valueOf: t => float = "valueOf"
@send external unix: t => float = "unix"
@send external daysInMonth: t => int = "daysInMonth"
@send external toDate: t => Js.Date.t = "toDate"
@send external toJSON: t => string = "toJSON"
@send external toISOString: t => string = "toISOString"
@send external toString: t => string = "toString"
@send external isBefore: (t, t) => bool = "isBefore"
@send external isBeforeIn: (t, t, timeUnit) => bool = "isBefore"
@send external isSame: (t, t) => bool = "isSame"
@send external isSameIn: (t, t, timeUnit) => bool = "isSame"
@send external isAfter: (t, t) => bool = "isAfter"
@send external isAfterIn: (t, t, timeUnit) => bool = "isAfter"