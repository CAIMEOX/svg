///|
pub(open) trait RealFloat: @lg.Num + Show {}

///|
/// moveto (absolute)
pub fn[N : RealFloat] ma(x : N, y : N) -> String {
  "M \{x},\{y} "
}

///|
/// moveto (relative)
pub fn[N : RealFloat] mr(dx : N, dy : N) -> String {
  "m \{dx},\{dy} "
}

///|
/// lineto (absolute)
pub fn[N : RealFloat] la(x : N, y : N) -> String {
  "L \{x},\{y} "
}

///|
/// lineto (relative)
pub fn[N : RealFloat] lr(dx : N, dy : N) -> String {
  "l \{dx},\{dy} "
}

///|
/// horizontal lineto (absolute)
pub fn[N : RealFloat] ha(x : N) -> String {
  "H \{x} "
}

///|
/// horizontal lineto (relative)
pub fn[N : RealFloat] hr(dx : N) -> String {
  "h \{dx} "
}

///|
/// vertical lineto (absolute)
pub fn[N : RealFloat] va(y : N) -> String {
  "V \{y} "
}

///|
/// vertical lineto (relative)
pub fn[N : RealFloat] vr(dy : N) -> String {
  "v \{dy} "
}

///|
/// Cubic Bezier curve (absolute)
pub fn[N : RealFloat] ca(
  c1x : N,
  c1y : N,
  c2x : N,
  c2y : N,
  x : N,
  y : N,
) -> String {
  "C \{c1x},\{c1y} \{c2x},\{c2y} \{x},\{y}"
}

///|
/// Cubic Bezier curve (relative)
pub fn[N : RealFloat] cr(
  dc1x : N,
  dc1y : N,
  dc2x : N,
  dc2y : N,
  dx : N,
  dy : N,
) -> String {
  "c \{dc1x},\{dc1y} \{dc2x},\{dc2y} \{dx},\{dy}"
}

///|
/// Smooth Cubic Bezier curve (absolute)
pub fn[N : RealFloat] sa(c2x : N, c2y : N, x : N, y : N) -> String {
  "S \{c2x},\{c2y} \{x},\{y} "
}

///|
/// Smooth Cubic Bezier curve (relative)
pub fn[N : RealFloat] sr(dc2x : N, dc2y : N, dx : N, dy : N) -> String {
  "s \{dc2x},\{dc2y} \{dx},\{dy} "
}

///|
/// Quadratic Bezier curve (absolute)
pub fn[N : RealFloat] qa(cx : N, cy : N, x : N, y : N) -> String {
  "Q \{cx},\{cy} \{x},\{y} "
}

///|
/// Quadratic Bezier curve (relative)
pub fn[N : RealFloat] qr(dcx : N, dcy : N, dx : N, dy : N) -> String {
  "q \{dcx},\{dcy} \{dx},\{dy} "
}

///|
/// Smooth Quadratic Bezier curve (absolute)
pub fn[N : RealFloat] ta(x : N, y : N) -> String {
  "T \{x},\{y} "
}

///|
/// Smooth Quadratic Bezier curve (relative)
pub fn[N : RealFloat] tr(x : N, y : N) -> String {
  "t \{x},\{y} "
}

///|
/// Arc (absolute)
pub fn[N : RealFloat] aa(
  rx : N,
  ry : N,
  xrot : N,
  large_flag : N,
  sweep_flag : N,
  x : N,
  y : N,
) -> String {
  "A \{rx},\{ry} \{xrot} \{large_flag} \{sweep_flag} \{x} \{y} "
}

///|
/// Arc (relative)
pub fn[N : RealFloat] ar(
  rx : N,
  ry : N,
  xrot : N,
  large_flag : N,
  sweep_flag : N,
  x : N,
  y : N,
) -> String {
  "a \{rx},\{ry} \{xrot} \{large_flag} \{sweep_flag} \{x} \{y} "
}

///|
/// closepath
pub fn z() -> String {
  "Z "
}

///|
/// SVG Transform components
/// Specifies a translation by x and y
pub fn[N : RealFloat] translate(x : N, y : N) -> String {
  "translate(\{x} \{y})"
}

///|
/// Specifies a scale operation by x and y
pub fn[N : RealFloat] scale(x : N, y : N) -> String {
  "scale(\{x} \{y})"
}

///|
/// Specifies a rotation by rotate-angle degrees
pub fn[N : RealFloat] rotate(angle : N) -> String {
  "rotate(\{angle})"
}

///|
/// Specifies a rotation by rotate-angle degrees about the given point rx,ry
pub fn[N : RealFloat] rotate_around(angle : N, rx : N, ry : N) -> String {
  "rotate(\{angle},\{rx},\{ry})"
}

///|
/// Skew transformation along x-axis
pub fn[N : RealFloat] skew_x(angle : N) -> String {
  "skewX(\{angle})"
}

///|
/// Skew transformation along y-axis
pub fn[N : RealFloat] skew_y(angle : N) -> String {
  "skewY(\{angle})"
}

///|
/// Specifies a transform in the form of a transformation matrix
pub fn[N : RealFloat] matrix(
  a : N,
  b : N,
  c : N,
  d : N,
  e : N,
  f : N,
) -> String {
  "matrix(\{a},\{b},\{c},\{d},\{e},\{f})"
}
