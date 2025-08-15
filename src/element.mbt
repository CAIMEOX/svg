///|
struct Element {
  run : (@immut/hashmap.T[String, String]) -> String
}

///|
pub impl Show for Element with to_string(self) {
  (self.run)(@immut/hashmap.new())
}

///|
pub impl Add for Element with op_add(self, other) {
  Element::new(fn(attrs) {
    let self_str = (self.run)(attrs)
    let other_str = (other.run)(attrs)
    self_str + other_str
  })
}

///|
pub impl Show for Element with output(self, logger) {
  logger.write_string(self.to_string())
}

///|
fn html_escape(s : String) -> String {
  let buf = @buffer.new()
  for i in s {
    match i {
      '&' => buf.write_string("&amp;")
      '<' => buf.write_string("&lt;")
      '>' => buf.write_string("&gt;")
      '"' => buf.write_string("&quot;")
      '\'' => buf.write_string("&apos;")
      ch => buf.write_char(ch)
    }
  }
  buf.to_string()
}

///|
pub fn Element::make(self : Element, name : String) -> Element {
  Element::new(fn(attrs) {
    let at = fold_map_with_key(init="", build_attr, attrs)
    "<\{name}\{at}>\{(self.run)(@immut/hashmap.new())}</\{name}>"
  })
}

///|
pub fn Element::new(
  run : (@immut/hashmap.T[String, String]) -> String,
) -> Element {
  { run, }
}

///|
pub fn Element::make_empty(name : String) -> Element {
  Element::new(fn(attrs) {
    let at = fold_map_with_key(init="", build_attr, attrs)
    "<\{name}\{at}/>"
  })
}

///|
pub fn Element::doc_type(name : String) -> Element {
  Element::new(fn(attrs) {
    let at = fold_map_with_key(init="", build_attr, attrs)
    "<!DOCTYPE \{name}\{at}>"
  })
}

///|
pub fn with_attr(self : Element, attr : Array[Attribute]) -> Element {
  Element::new(fn(a) { (self.run)(a.union(build_map(attr))) })
}

///|
fn build_attr(key : String, val : String) -> String {
  " \{key}" + (if val == "" { "" } else { "=\"\{html_escape(val)}\"" })
}

///|
fn[M : Add, K, V] fold_map_with_key(
  init~ : M,
  f : (K, V) -> M,
  m : @immut/hashmap.T[K, V],
) -> M {
  m
  .iter()
  .fold(init~, fn(acc, entry) {
    let (k, v) = entry
    acc + f(k, v)
  })
}

///|
fn build_map(arr : Array[Attribute]) -> @immut/hashmap.T[String, String] {
  let map = @immut/hashmap.new()
  let l = arr.length()
  loop (l, map) {
    (0, acc) => acc
    (i, acc) => {
      let val = arr[i - 1]
      continue (i - 1, acc.add(val.attr, val.value))
    }
  }
}

///|
pub fn term(name : String, arr : Array[Attribute], child? : Element) -> Element {
  match child {
    None => Element::make_empty(name).with_attr(arr)
    Some(child) => child.make(name).with_attr(arr)
  }
}

///|
pub fn Element::str(str : String) -> Element {
  Element::new(fn(_) { str })
}

///|
pub fn svg11(self : Element) -> Element {
  svg(
    [
      Version["1.1"],
      new("xmlns", "http://www.w3.org/2000/svg"),
      new("xmlns:xlink", "http://www.w3.org/1999/xlink"),
    ],
    child=self,
  )
}

///| SVG element creation functions
pub fn doc_type() -> Element {
  Element::doc_type("svg")
}

///|
/// a element
pub fn a(attrs : Array[Attribute], child? : Element) -> Element {
  term("a", attrs, child?)
}

///|
/// circle element
pub fn circle(attrs : Array[Attribute], child? : Element) -> Element {
  term("circle", attrs, child?)
}

///|
/// clipPath element or attribute
pub fn clipPath(attrs : Array[Attribute], child? : Element) -> Element {
  term("clipPath", attrs, child?)
}

///|
/// color-profile element
pub fn colorProfile(attrs : Array[Attribute], child? : Element) -> Element {
  term("color-profile", attrs, child?)
}

///|
/// cursor element
pub fn cursor(attrs : Array[Attribute], child? : Element) -> Element {
  term("cursor", attrs, child?)
}

///|
/// defs element
pub fn defs(attrs : Array[Attribute], child? : Element) -> Element {
  term("defs", attrs, child?)
}

///|
/// desc element
pub fn desc(attrs : Array[Attribute], child? : Element) -> Element {
  term("desc", attrs, child?)
}

///|
/// ellipse element
pub fn ellipse(attrs : Array[Attribute], child? : Element) -> Element {
  term("ellipse", attrs, child?)
}

///|
/// feBlend element
pub fn feBlend(attrs : Array[Attribute], child? : Element) -> Element {
  term("feBlend", attrs, child?)
}

///|
/// feColorMatrix element
pub fn feColorMatrix(attrs : Array[Attribute], child? : Element) -> Element {
  term("feColorMatrix", attrs, child?)
}

///|
/// feComponentTransfer element
pub fn feComponentTransfer(
  attrs : Array[Attribute],
  child? : Element,
) -> Element {
  term("feComponentTransfer", attrs, child?)
}

///|
/// feComposite element
pub fn feComposite(attrs : Array[Attribute], child? : Element) -> Element {
  term("feComposite", attrs, child?)
}

///|
/// feConvolveMatrix element
pub fn feConvolveMatrix(attrs : Array[Attribute], child? : Element) -> Element {
  term("feConvolveMatrix", attrs, child?)
}

///|
/// feDiffuseLighting element
pub fn feDiffuseLighting(attrs : Array[Attribute], child? : Element) -> Element {
  term("feDiffuseLighting", attrs, child?)
}

///|
/// feDisplacementMap element
pub fn feDisplacementMap(attrs : Array[Attribute], child? : Element) -> Element {
  term("feDisplacementMap", attrs, child?)
}

///|
/// feDistantLight element
pub fn feDistantLight(attrs : Array[Attribute], child? : Element) -> Element {
  term("feDistantLight", attrs, child?)
}

///|
/// feFlood element
pub fn feFlood(attrs : Array[Attribute], child? : Element) -> Element {
  term("feFlood", attrs, child?)
}

///|
/// feFuncA element
pub fn feFuncA(attrs : Array[Attribute], child? : Element) -> Element {
  term("feFuncA", attrs, child?)
}

///|
/// feFuncB element
pub fn feFuncB(attrs : Array[Attribute], child? : Element) -> Element {
  term("feFuncB", attrs, child?)
}

///|
/// feFuncG element
pub fn feFuncG(attrs : Array[Attribute], child? : Element) -> Element {
  term("feFuncG", attrs, child?)
}

///|
/// feFuncR element
pub fn feFuncR(attrs : Array[Attribute], child? : Element) -> Element {
  term("feFuncR", attrs, child?)
}

///|
/// feGaussianBlur element
pub fn feGaussianBlur(attrs : Array[Attribute], child? : Element) -> Element {
  term("feGaussianBlur", attrs, child?)
}

///|
/// feImage element
pub fn feImage(attrs : Array[Attribute], child? : Element) -> Element {
  term("feImage", attrs, child?)
}

///|
/// feMerge element
pub fn feMerge(attrs : Array[Attribute], child? : Element) -> Element {
  term("feMerge", attrs, child?)
}

///|
/// feMergeNode element
pub fn feMergeNode(attrs : Array[Attribute], child? : Element) -> Element {
  term("feMergeNode", attrs, child?)
}

///|
/// feMorphology element
pub fn feMorphology(attrs : Array[Attribute], child? : Element) -> Element {
  term("feMorphology", attrs, child?)
}

///|
/// feOffset element
pub fn feOffset(attrs : Array[Attribute], child? : Element) -> Element {
  term("feOffset", attrs, child?)
}

///|
/// fePointLight element
pub fn fePointLight(attrs : Array[Attribute], child? : Element) -> Element {
  term("fePointLight", attrs, child?)
}

///|
/// feSpecularLighting element
pub fn feSpecularLighting(
  attrs : Array[Attribute],
  child? : Element,
) -> Element {
  term("feSpecularLighting", attrs, child?)
}

///|
/// feSpotLight element
pub fn feSpotLight(attrs : Array[Attribute], child? : Element) -> Element {
  term("feSpotLight", attrs, child?)
}

///|
/// feTile element
pub fn feTile(attrs : Array[Attribute], child? : Element) -> Element {
  term("feTile", attrs, child?)
}

///|
/// feTurbulence element
pub fn feTurbulence(attrs : Array[Attribute], child? : Element) -> Element {
  term("feTurbulence", attrs, child?)
}

///|
/// filter element
pub fn filter(attrs : Array[Attribute], child? : Element) -> Element {
  term("filter", attrs, child?)
}

///|
/// font element
pub fn font(attrs : Array[Attribute], child? : Element) -> Element {
  term("font", attrs, child?)
}

///|
/// font-face element
pub fn fontFace(attrs : Array[Attribute], child? : Element) -> Element {
  term("font-face", attrs, child?)
}

///|
/// font-face-src element
pub fn fontFaceSrc(attrs : Array[Attribute], child? : Element) -> Element {
  term("font-face-src", attrs, child?)
}

///|
/// font-face-uri element
pub fn fontFaceUri(attrs : Array[Attribute], child? : Element) -> Element {
  term("font-face-uri", attrs, child?)
}

///|
/// foreignObject element
pub fn foreignObject(attrs : Array[Attribute], child? : Element) -> Element {
  term("foreignObject", attrs, child?)
}

///|
/// g element
pub fn g(attrs : Array[Attribute], child? : Element) -> Element {
  term("g", attrs, child?)
}

///|
/// glyph element or attribute
pub fn glyph(attrs : Array[Attribute], child? : Element) -> Element {
  term("glyph", attrs, child?)
}

///|
/// image element
pub fn image(attrs : Array[Attribute], child? : Element) -> Element {
  term("image", attrs, child?)
}

///|
/// line element
pub fn line(attrs : Array[Attribute], child? : Element) -> Element {
  term("line", attrs, child?)
}

///|
/// linearGradient element
pub fn linearGradient(attrs : Array[Attribute], child? : Element) -> Element {
  term("linearGradient", attrs, child?)
}

///|
/// marker element
pub fn marker(attrs : Array[Attribute], child? : Element) -> Element {
  term("marker", attrs, child?)
}

///|
/// mask element or attribute
pub fn mask(attrs : Array[Attribute], child? : Element) -> Element {
  term("mask", attrs, child?)
}

///|
/// metadata element
pub fn metadata(attrs : Array[Attribute], child? : Element) -> Element {
  term("metadata", attrs, child?)
}

///|
/// missing-glyph element
pub fn missingGlyph(attrs : Array[Attribute], child? : Element) -> Element {
  term("missing-glyph", attrs, child?)
}

///|
/// mpath element
pub fn mpath(attrs : Array[Attribute], child? : Element) -> Element {
  term("mpath", attrs, child?)
}

///|
/// path element
pub fn path(attrs : Array[Attribute], child? : Element) -> Element {
  term("path", attrs, child?)
}

///|
/// pattern element
pub fn pattern(attrs : Array[Attribute], child? : Element) -> Element {
  term("pattern", attrs, child?)
}

///|
/// polygon element
pub fn polygon(attrs : Array[Attribute], child? : Element) -> Element {
  term("polygon", attrs, child?)
}

///|
/// polyline element
pub fn polyline(attrs : Array[Attribute], child? : Element) -> Element {
  term("polyline", attrs, child?)
}

///|
/// radialGradient element
pub fn radialGradient(attrs : Array[Attribute], child? : Element) -> Element {
  term("radialGradient", attrs, child?)
}

///|
/// rect element
pub fn rect(attrs : Array[Attribute], child? : Element) -> Element {
  term("rect", attrs, child?)
}

///|
/// script element
pub fn script(attrs : Array[Attribute], child? : Element) -> Element {
  term("script", attrs, child?)
}

///|
/// set element
pub fn set(attrs : Array[Attribute], child? : Element) -> Element {
  term("set", attrs, child?)
}

///|
/// stop element
pub fn stop(attrs : Array[Attribute], child? : Element) -> Element {
  term("stop", attrs, child?)
}

///|
/// style element
pub fn style(attrs : Array[Attribute], child? : Element) -> Element {
  term("style", attrs, child?)
}

///|
/// svg element
pub fn svg(attrs : Array[Attribute], child? : Element) -> Element {
  term("svg", attrs, child?)
}

///|
/// switch element
pub fn switch(attrs : Array[Attribute], child? : Element) -> Element {
  term("switch", attrs, child?)
}

///|
/// symbol element
pub fn symbol(attrs : Array[Attribute], child? : Element) -> Element {
  term("symbol", attrs, child?)
}

///|
/// text element
pub fn text(attrs : Array[Attribute], child? : Element) -> Element {
  term("text", attrs, child?)
}

///|
/// textPath element
pub fn textPath(attrs : Array[Attribute], child? : Element) -> Element {
  term("textPath", attrs, child?)
}

///|
/// title element
pub fn title(attrs : Array[Attribute], child? : Element) -> Element {
  term("title", attrs, child?)
}

///|
/// tref element
pub fn tref(attrs : Array[Attribute], child? : Element) -> Element {
  term("tref", attrs, child?)
}

///|
/// tspan element
pub fn tspan(attrs : Array[Attribute], child? : Element) -> Element {
  term("tspan", attrs, child?)
}

///|
/// use element
pub fn use_(attrs : Array[Attribute], child? : Element) -> Element {
  term("use", attrs, child?)
}

///|
/// view element
pub fn view(attrs : Array[Attribute], child? : Element) -> Element {
  term("view", attrs, child?)
}

///|
/// animate element
pub fn animate(attrs : Array[Attribute], child? : Element) -> Element {
  term("animate", attrs, child?)
}

///|
/// animateMotion element
pub fn animateMotion(attrs : Array[Attribute], child? : Element) -> Element {
  term("animateMotion", attrs, child?)
}

///|
/// animateTransform element
pub fn animateTransform(attrs : Array[Attribute], child? : Element) -> Element {
  term("animateTransform", attrs, child?)
}

///| 
/// Create element without closing tag
fn element_no_end(name : String, attrs : Array[Attribute]) -> Element {
  Element::with_attr(Element::make_empty(name), attrs)
}

///|
/// font-face-format element
pub fn fontFaceFormat(attrs : Array[Attribute]) -> Element {
  element_no_end("font-face-format", attrs)
}

///|
/// font-face-name element
pub fn fontFaceName(attrs : Array[Attribute]) -> Element {
  element_no_end("font-face-name", attrs)
}

///|
/// glyphRef element
pub fn glyphRef(attrs : Array[Attribute]) -> Element {
  element_no_end("glyphRef", attrs)
}

///|
/// hkern element
pub fn hkern(attrs : Array[Attribute]) -> Element {
  element_no_end("hkern", attrs)
}

///|
/// vkern element
pub fn vkern(attrs : Array[Attribute]) -> Element {
  element_no_end("vkern", attrs)
}
