///|
pub(open) trait RealFloat: @lg.Num + Show {}

///|
///| moveto (absolute)
pub fn ma[N : RealFloat](x : N, y : N) -> String {
  "M \{x},\{y} "
}

///|
///| moveto (relative)
pub fn mr[N : RealFloat](dx : N, dy : N) -> String {
  "m \{dx},\{dy} "
}

///|
///| lineto (absolute)
pub fn la[N : RealFloat](x : N, y : N) -> String {
  "L \{x},\{y} "
}

///|
///| lineto (relative)
pub fn lr[N : RealFloat](dx : N, dy : N) -> String {
  "l \{dx},\{dy} "
}

///|
///| horizontal lineto (absolute)
pub fn ha[N : RealFloat](x : N) -> String {
  "H \{x} "
}

///|
///| horizontal lineto (relative)
pub fn hr[N : RealFloat](dx : N) -> String {
  "h \{dx} "
}

///|
///| vertical lineto (absolute)
pub fn va[N : RealFloat](y : N) -> String {
  "V \{y} "
}

///|
///| vertical lineto (relative)
pub fn vr[N : RealFloat](dy : N) -> String {
  "v \{dy} "
}

///|
///| Cubic Bezier curve (absolute)
pub fn ca[N : RealFloat](
  c1x : N,
  c1y : N,
  c2x : N,
  c2y : N,
  x : N,
  y : N
) -> String {
  "C \{c1x},\{c1y} \{c2x},\{c2y} \{x},\{y}"
}

///|
///| Cubic Bezier curve (relative)
pub fn cr[N : RealFloat](
  dc1x : N,
  dc1y : N,
  dc2x : N,
  dc2y : N,
  dx : N,
  dy : N
) -> String {
  "c \{dc1x},\{dc1y} \{dc2x},\{dc2y} \{dx},\{dy}"
}

///|
///| Smooth Cubic Bezier curve (absolute)
pub fn sa[N : RealFloat](c2x : N, c2y : N, x : N, y : N) -> String {
  "S \{c2x},\{c2y} \{x},\{y} "
}

///|
///| Smooth Cubic Bezier curve (relative)
pub fn sr[N : RealFloat](dc2x : N, dc2y : N, dx : N, dy : N) -> String {
  "s \{dc2x},\{dc2y} \{dx},\{dy} "
}

///|
///| Quadratic Bezier curve (absolute)
pub fn qa[N : RealFloat](cx : N, cy : N, x : N, y : N) -> String {
  "Q \{cx},\{cy} \{x},\{y} "
}

///|
///| Quadratic Bezier curve (relative)
pub fn qr[N : RealFloat](dcx : N, dcy : N, dx : N, dy : N) -> String {
  "q \{dcx},\{dcy} \{dx},\{dy} "
}

///|
///| Smooth Quadratic Bezier curve (absolute)
pub fn ta[N : RealFloat](x : N, y : N) -> String {
  "T \{x},\{y} "
}

///|
///| Smooth Quadratic Bezier curve (relative)
pub fn tr[N : RealFloat](x : N, y : N) -> String {
  "t \{x},\{y} "
}

///|
///| Arc (absolute)
pub fn aa[N : RealFloat](
  rx : N,
  ry : N,
  xrot : N,
  large_flag : N,
  sweep_flag : N,
  x : N,
  y : N
) -> String {
  "A \{rx},\{ry} \{xrot} \{large_flag} \{sweep_flag} \{x} \{y} "
}

///|
///| Arc (relative)
pub fn ar[N : RealFloat](
  rx : N,
  ry : N,
  xrot : N,
  large_flag : N,
  sweep_flag : N,
  x : N,
  y : N
) -> String {
  "a \{rx},\{ry} \{xrot} \{large_flag} \{sweep_flag} \{x} \{y} "
}

///|
///| closepath
pub fn z() -> String {
  "Z "
}

///|
///| SVG Transform components
///| Specifies a translation by x and y
pub fn translate[N : RealFloat](x : N, y : N) -> String {
  "translate(\{x} \{y})"
}

///|
///| Specifies a scale operation by x and y
pub fn scale[N : RealFloat](x : N, y : N) -> String {
  "scale(\{x} \{y})"
}

///|
///| Specifies a rotation by rotate-angle degrees
pub fn rotate[N : RealFloat](angle : N) -> String {
  "rotate(\{angle})"
}

///|
///| Specifies a rotation by rotate-angle degrees about the given point rx,ry
pub fn rotate_around[N : RealFloat](angle : N, rx : N, ry : N) -> String {
  "rotate(\{angle},\{rx},\{ry})"
}

///|
///| Skew transformation along x-axis
pub fn skew_x[N : RealFloat](angle : N) -> String {
  "skewX(\{angle})"
}

///|
///| Skew transformation along y-axis
pub fn skew_y[N : RealFloat](angle : N) -> String {
  "skewY(\{angle})"
}

///|
///| Specifies a transform in the form of a transformation matrix
pub fn matrix[N : RealFloat](
  a : N,
  b : N,
  c : N,
  d : N,
  e : N,
  f : N
) -> String {
  "matrix(\{a},\{b},\{c},\{d},\{e},\{f})"
}
