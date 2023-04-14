#let report(
  title: "Report",
  event: "Nobel Prize Ceremony",
  author: "N. Bohr",
  supervisor: "E. Rutherford",
  placedate: "Copenhagen, May 12th 2023.",
  doc,
) = {
  
  let header_text(term, align_value:left) = {
    set text( 
            font: "TeX Gyre Adventor",
            size: 11pt,
            weight: "thin",
            tracking: 1.3pt,
            fill: black.lighten(33%)
            )
    align(align_value)[#term]
  }

  let ending_text(end_text, align_value:left) = {
    set text(
      font: "TeX Gyre Adventor",
      size: 9pt,
      style: "italic",
      fill: black.lighten(33%)
    )
    align(align_value)[#end_text]
  }

  set page(
  paper: "a4",
  margin: (x:2cm, bottom: 3.5cm),
  header: [#grid(
                columns: (1fr, 1fr),
                header_text[#event],
                header_text(align_value:right)[#author]
              )
          #line(start: (-1cm, 0cm), end: (18cm, 0cm),  stroke: 1pt + red.darken(30%))
        ],
  footer: [
    #stack(
      dir: ttb,
    line(start: (-1cm, 0cm), end: (18cm, 0cm), stroke: 1pt + red.darken(30%)),
    v(0.1cm),
    line(start: (-1cm, 0cm), end: (18cm, 0cm), stroke: 1pt + red.darken(30%)),
    v(0.1cm),
    image("all-logos.png", fit: "contain")
          ) 
    ]
  )

  let title_format(title_val) = {
  set text(
            font: "TeX Gyre Pagella",
            size: 16pt,
            weight: "bold",
            tracking: 2pt,
          )
  align(center)[#title_val]
  }

  title_format[#title]

  set text(
  font: "TeX Gyre Pagella",
  size: 10pt,
  weight: "regular",
  tracking: 1pt
  )

  set par(
  justify: true
  )

  doc

  v(0.2cm)

  grid(
      columns: (1fr, 1fr),
      ending_text[#supervisor],
      ending_text(align_value: right)[#placedate]
    )
}