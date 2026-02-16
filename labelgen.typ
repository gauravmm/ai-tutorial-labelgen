#import "@preview/tiaoma:0.3.0"
#import "utils.typ": inventory-uri, zero-pad


// -----------------------------
// SETUP
// -----------------------------
#set text(
  font: "Barlow",
  size: 12pt,
)

#set page(
  width: 111.0mm,
  height: 157.5mm,
  margin: 6mm,
)


// -----------------------------
// MAIN COMPONENT FUNCTION
// -----------------------------

#let label-157111(
  ref: "AP001",
  lot: 1,
  sn: 1,
  expiry-date: "2027-02-28",
  temp-min: "20°C",
  temp-max: "25°C",
) = {}

// -----------------------------
// EXAMPLE USAGE
// -----------------------------

#label-157111(
  ref: "AP001",
  lot: 26001,
  sn: 1,
  expiry-date: "2027-02-28",
)
