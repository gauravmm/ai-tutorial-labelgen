// Zero pad numbers to fixed width
#let zero-pad(num, width: 3) = {
  let s = str(num)
  let missing = calc.max(width - s.len(), 0)
  ("0" * missing) + s
}

#let inventory-uri(ref: "AP001", lot: 1, sn: 1, lot-width: 5, sn-width: 3) = {
  let lot = zero-pad(lot, width: lot-width)
  let sn = zero-pad(sn, width: sn-width)
  "inventory://" + ref + "/" + lot + "/" + sn + "/"
}
