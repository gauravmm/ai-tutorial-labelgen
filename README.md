# LUMENCO Label Generator

This label generator is for LUMENCO's consumables kit labels.

Generate a medical device label generator in `labelgen.typ`.

Requirements:

- laid out like `desired_label.png`.
- dashed line divider 50mm from the bottom.
  - The label is meant to be pasted over the top and front of a box; the cut line indicates the box edge.
  - Have the half-scissors icon aligned centered over the dashed line. There's an internal margin in the image that will position it visually correctly.
- contain the following ISO 7000 icons:
  - `1641-manual`, `1051-no-second-use`, `2607-hourglass` (for expiry), `3082-manufacturer` for manufacturer address.
  - `0632-temperature-range` with a the temperature range is 10 deg C to 30 deg C.
  - the appropriate logos for REF, LOT, and SN.
- have a configurable REF, LOT, and SN to identify the item, and also an expiry time
- have a manufacturer address is "LUMENCO Pte Ltd / 8 Shenton Way / #10-05, Shenton Towers / Singapore 068888"
- have a QR code containing the REF/LOT/SN with some delimiter.

Resources:

- logos/lumenco.png contains the company logo.
- logos/lumenova.png contains the product logo.
- icons/half-scissors contains the half scissors icon for the cut line.
- fonts/ contains the font to use.
- ISO 7000 symbols can be sourced from [our ISO 7000 symbol library](https://typst.app/universe/package/adequate-iso-7000).

## Advanced

1. Generate 1000 unique labels with sequential serial numbers.
2. The label needs to comply with FDA CFR 21 Part 801. Add required UDI elements.
  a. Hint: <https://www.fda.gov/medical-devices/unique-device-identification-system-udi-system/udi-basics>
  b. You should at least skim the requirements to understand what they are, but let an AI do the heavy lifting.
