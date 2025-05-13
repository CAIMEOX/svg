///|
test {
  let r = a([@svg.XlinkActuate["11"], @svg.X["123"]]) +
    g([@svg.Y["123"], @svg.Z["114514"]])
  inspect!(
    r,
    content=
      #|<a x="123" xlink:actuate="11"/><g z="114514" y="123"/>
    ,
  )
}

///|
fn logo_hsk() -> Element {
  path([
    @svg.Fill["#352950"],
    @svg.D[ma(0, 340) +
    @svg.la(113, 170) +
    la(0, 0) +
    la(85, 0) +
    la(198, 170) +
    la(85, 340) +
    la(0, 340) +
    z() +
    ma(0, 340)],
  ]) +
  path([
    @svg.Fill["#4A3A74"],
    @svg.D[ma(113, 340) +
    la(226, 170) +
    la(113, 0) +
    la(198, 0) +
    la(425, 340) +
    la(340, 340) +
    la(269, 234) +
    la(198, 340) +
    la(113, 340) +
    z() +
    ma(113, 340)],
  ]) +
  path([
    @svg.Fill["#7C3679"],
    @svg.D[ma(387, 241) +
    la(350, 184) +
    la(482, 184) +
    la(482, 241) +
    la(387, 241) +
    z() +
    ma(387, 241)],
  ]) +
  path([
    @svg.Fill["#7C3679"],
    @svg.D[ma(331, 156) +
    la(293, 99) +
    la(482, 99) +
    la(482, 156) +
    la(331, 156) +
    z() +
    ma(331, 156)],
  ])
}
///|

///|
test {
  fn svg_it(e : Element) -> Element {
    doc_type() +
    with_attr(e.svg11(), [
      @svg.Version["1.1"],
      @svg.Width["100%"],
      @svg.Height["100%"],
      @svg.ViewBox["0 0 512 340"],
    ])
  }

  let logo_svg = logo_hsk() |> svg_it()
  inspect!(
    logo_svg,
    content=
      #|<!DOCTYPE svg><svg height="100%" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 340" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" width="100%"><path fill="#352950" d="M 0,340 L 113,170 L 0,0 L 85,0 L 198,170 L 85,340 L 0,340 Z M 0,340 "/><path fill="#4A3A74" d="M 113,340 L 226,170 L 113,0 L 198,0 L 425,340 L 340,340 L 269,234 L 198,340 L 113,340 Z M 113,340 "/><path fill="#7C3679" d="M 387,241 L 350,184 L 482,184 L 482,241 L 387,241 Z M 387,241 "/><path fill="#7C3679" d="M 331,156 L 293,99 L 482,99 L 482,156 L 331,156 Z M 331,156 "/></svg>
    ,
  )
}

///|
test {
  fn svg_it2(contents) {
    doc_type() +
    svg11(contents).with_attr([
      @svg.Version["1.1"],
      @svg.Width["300"],
      @svg.Height["200"],
    ])
  }

  let svg = rect([@svg.Width["100%"], @svg.Height["100%"], @svg.Fill["red"]]) +
    circle([@svg.Cx["150"], @svg.Cy["100"], @svg.R["80"], @svg.Fill["green"]]) +
    text(
      [
        @svg.X["150"],
        @svg.Y["125"],
        @svg.FontSize["60"],
        @svg.TextAnchor["middle"],
        @svg.Fill["white"],
      ],
      child=Element::str("SVG"),
    )
    |> svg_it2()
  inspect!(
    svg,
    content=
      #|<!DOCTYPE svg><svg height="200" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" width="300"><rect fill="red" height="100%" width="100%"/><circle fill="green" cy="100" r="80" cx="150"/><text fill="white" text-anchor="middle" x="150" y="125" font-size="60">SVG</text></svg>
    ,
  )
}
