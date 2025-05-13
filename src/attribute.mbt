///|
struct Attribute {
  attr : String
  value : String
} derive(Eq, Hash, Show)

///|
pub fn new(attr : String, value : String) -> Attribute {
  { attr, value }
}

///|
pub(all) enum Tag {
  AccentHeight
  Accumulate
  Additive
  AlignmentBaseline
  Alphabetic
  Amplitude
  ArabicForm
  Ascent
  AttributeName
  AttributeType
  Azimuth
  BaseFrequency
  Baseprofile
  BaselineShift
  Bbox
  Begin
  Bias
  By
  CalcMode
  CapHeight
  Class
  Clip
  ClipPath
  ClipRule
  ClipPathUnits
  Color
  ColorInterpolation
  ColorInterpolationFilters
  ColorProfile
  ColorRendering
  ContentScriptType
  ContentStyleType
  Cursor
  Cx
  Cy
  D
  Descent
  DiffuseConstant
  Direction
  Display
  Divisor
  DominantBaseline
  Dur
  Dx
  Dy
  EdgeMode
  Elevation
  EnableBackground
  End
  Exponent
  ExternalResourcesRequired
  Fill
  FillOpacity
  FillRule
  Filter
  FilterRes
  FilterUnits
  FloodColor
  FloodOpacity
  FontFamily
  FontSize
  FontSizeAdjust
  FontStretch
  FontStyle
  FontVariant
  FontWeight
  Format
  From
  Fx
  Fy
  G1
  G2
  GlyphName
  GlyphOrientationHorizontal
  GlyphOrientationVertical
  GradientTransform
  GradientUnits
  Hanging
  Height
  HorizAdvX
  HorizOriginX
  HorizOriginY
  Id
  Ideographic
  ImageRendering
  In
  In2
  Intercept
  K
  K1
  K2
  K3
  K4
  KernelMatrix
  KernelUnitLength
  Kerning
  KeyPoints
  KeySplines
  KeyTimes
  Lang
  LengthAdjust
  LetterSpacing
  LightingColor
  LimitingConeAngle
  Local
  MarkerEnd
  MarkerMid
  MarkerStart
  MarkerHeight
  MarkerUnits
  MarkerWidth
  MaskContentUnits
  MaskUnits
  Mathematical
  Max
  Media
  Method
  Min
  Mode
  Name
  NumOctaves
  Offset
  Onabort
  Onactivate
  Onbegin
  Onclick
  Onend
  Onerror
  Onfocusin
  Onfocusout
  Onload
  Onmousedown
  Onmousemove
  Onmouseout
  Onmouseover
  Onmouseup
  Onrepeat
  Onresize
  Onscroll
  Onunload
  Onzoom
  Opacity
  Operator
  Order
  Orient
  Orientation
  Origin
  Overflow
  OverlinePosition
  OverlineThickness
  Panose1
  PaintOrder
  Path
  PathLength
  PatternContentUnits
  PatternTransform
  PatternUnits
  PointerEvents
  Points
  PointsAtX
  PointsAtY
  PointsAtZ
  PreserveAlpha
  PreserveAspectRatio
  PrimitiveUnits
  R
  Radius
  RefX
  RefY
  RenderingIntent
  RepeatCount
  RepeatDur
  RequiredExtensions
  RequiredFeatures
  Restart
  Result
  Rotate
  Rx
  Ry
  Scale
  Seed
  ShapeRendering
  Slope
  Spacing
  SpecularConstant
  SpecularExponent
  SpreadMethod
  StartOffset
  StdDeviation
  Stemh
  Stemv
  StitchTiles
  StopColor
  StopOpacity
  StrikethroughPosition
  StrikethroughThickness
  String
  Stroke
  StrokeDasharray
  StrokeDashoffset
  StrokeLinecap
  StrokeLinejoin
  StrokeMiterlimit
  StrokeOpacity
  StrokeWidth
  Style
  SurfaceScale
  SystemLanguage
  TableValues
  Target
  TargetX
  TargetY
  TextAnchor
  TextDecoration
  TextRendering
  TextLength
  To
  Transform
  Type
  U1
  U2
  UnderlinePosition
  UnderlineThickness
  Unicode
  UnicodeBidi
  UnicodeRange
  UnitsPerEm
  VAlphabetic
  VHanging
  VIdeographic
  VMathematical
  Values
  Version
  VertAdvY
  VertOriginX
  VertOriginY
  ViewBox
  ViewTarget
  Visibility
  Width
  Widths
  WordSpacing
  WritingMode
  X
  XHeight
  X1
  X2
  XChannelSelector
  XlinkActuate
  XlinkArcrole
  XlinkHref
  XlinkRole
  XlinkShow
  XlinkTitle
  XlinkType
  XmlBase
  XmlLang
  XmlSpace
  Y
  Y1
  Y2
  YChannelselector
  Z
  ZoomAndPan
} derive(Eq, Hash)

///|
pub impl Show for Tag with output(self, logger) {
  logger.write_string(self.to_string())
}

///|
pub impl Show for Tag with to_string(self) {
  match self {
    AccentHeight => "accent-height"
    Accumulate => "accumulate"
    Additive => "additive"
    AlignmentBaseline => "alignment-baseline"
    Alphabetic => "alphabetic"
    Amplitude => "amplitude"
    ArabicForm => "arabic-form"
    Ascent => "ascent"
    AttributeName => "attributeName"
    AttributeType => "attributeType"
    Azimuth => "azimuth"
    BaseFrequency => "baseFrequency"
    Baseprofile => "baseprofile"
    BaselineShift => "baseline-shift"
    Bbox => "bbox"
    Begin => "begin"
    Bias => "bias"
    By => "by"
    CalcMode => "calcMode"
    CapHeight => "cap-height"
    Class => "class"
    Clip => "clip"
    ClipPath => "clip-path"
    ClipRule => "clip-rule"
    ClipPathUnits => "clipPathUnits"
    Color => "color"
    ColorInterpolation => "color-interpolation"
    ColorInterpolationFilters => "color-interpolation-filters"
    ColorProfile => "color-profile"
    ColorRendering => "color-rendering"
    ContentScriptType => "contentScriptType"
    ContentStyleType => "contentStyleType"
    Cursor => "cursor"
    Cx => "cx"
    Cy => "cy"
    D => "d"
    Descent => "descent"
    DiffuseConstant => "diffuseConstant"
    Direction => "direction"
    Display => "display"
    Divisor => "divisor"
    DominantBaseline => "dominant-baseline"
    Dur => "dur"
    Dx => "dx"
    Dy => "dy"
    EdgeMode => "edgeMode"
    Elevation => "elevation"
    EnableBackground => "enable-background"
    End => "end"
    Exponent => "exponent"
    ExternalResourcesRequired => "externalResourcesRequired"
    Fill => "fill"
    FillOpacity => "fill-opacity"
    FillRule => "fill-rule"
    Filter => "filter"
    FilterRes => "filterRes"
    FilterUnits => "filterUnits"
    FloodColor => "flood-color"
    FloodOpacity => "flood-opacity"
    FontFamily => "font-family"
    FontSize => "font-size"
    FontSizeAdjust => "font-size-adjust"
    FontStretch => "font-stretch"
    FontStyle => "font-style"
    FontVariant => "font-variant"
    FontWeight => "font-weight"
    Format => "format"
    From => "from"
    Fx => "fx"
    Fy => "fy"
    G1 => "g1"
    G2 => "g2"
    GlyphName => "glyph-name"
    GlyphOrientationHorizontal => "glyph-orientation-horizontal"
    GlyphOrientationVertical => "glyph-orientation-vertical"
    GradientTransform => "gradientTransform"
    GradientUnits => "gradientUnits"
    Hanging => "hanging"
    Height => "height"
    HorizAdvX => "horiz-adv-x"
    HorizOriginX => "horiz-origin-x"
    HorizOriginY => "horiz-origin-y"
    Id => "id"
    Ideographic => "ideographic"
    ImageRendering => "image-rendering"
    In => "in"
    In2 => "in2"
    Intercept => "intercept"
    K => "k"
    K1 => "k1"
    K2 => "k2"
    K3 => "k3"
    K4 => "k4"
    KernelMatrix => "kernelMatrix"
    KernelUnitLength => "kernelUnitLength"
    Kerning => "kerning"
    KeyPoints => "keyPoints"
    KeySplines => "keySplines"
    KeyTimes => "keyTimes"
    Lang => "lang"
    LengthAdjust => "lengthAdjust"
    LetterSpacing => "letter-spacing"
    LightingColor => "lighting-color"
    LimitingConeAngle => "limitingConeAngle"
    Local => "local"
    MarkerEnd => "marker-end"
    MarkerMid => "marker-mid"
    MarkerStart => "marker-start"
    MarkerHeight => "markerHeight"
    MarkerUnits => "markerUnits"
    MarkerWidth => "markerWidth"
    MaskContentUnits => "maskContentUnits"
    MaskUnits => "maskUnits"
    Mathematical => "mathematical"
    Max => "max"
    Media => "media"
    Method => "method"
    Min => "min"
    Mode => "mode"
    Name => "name"
    NumOctaves => "numOctaves"
    Offset => "offset"
    Onabort => "onabort"
    Onactivate => "onactivate"
    Onbegin => "onbegin"
    Onclick => "onclick"
    Onend => "onend"
    Onerror => "onerror"
    Onfocusin => "onfocusin"
    Onfocusout => "onfocusout"
    Onload => "onload"
    Onmousedown => "onmousedown"
    Onmousemove => "onmousemove"
    Onmouseout => "onmouseout"
    Onmouseover => "onmouseover"
    Onmouseup => "onmouseup"
    Onrepeat => "onrepeat"
    Onresize => "onresize"
    Onscroll => "onscroll"
    Onunload => "onunload"
    Onzoom => "onzoom"
    Opacity => "opacity"
    Operator => "operator"
    Order => "order"
    Orient => "orient"
    Orientation => "orientation"
    Origin => "origin"
    Overflow => "overflow"
    OverlinePosition => "overline-position"
    OverlineThickness => "overline-thickness"
    Panose1 => "panose-1"
    PaintOrder => "paint-order"
    Path => "path"
    PathLength => "pathLength"
    PatternContentUnits => "patternContentUnits"
    PatternTransform => "patternTransform"
    PatternUnits => "patternUnits"
    PointerEvents => "pointer-events"
    Points => "points"
    PointsAtX => "pointsAtX"
    PointsAtY => "pointsAtY"
    PointsAtZ => "pointsAtZ"
    PreserveAlpha => "preserveAlpha"
    PreserveAspectRatio => "preserveAspectRatio"
    PrimitiveUnits => "primitiveUnits"
    R => "r"
    Radius => "radius"
    RefX => "refX"
    RefY => "refY"
    RenderingIntent => "rendering-intent"
    RepeatCount => "repeatCount"
    RepeatDur => "repeatDur"
    RequiredExtensions => "requiredExtensions"
    RequiredFeatures => "requiredFeatures"
    Restart => "restart"
    Result => "result"
    Rotate => "rotate"
    Rx => "rx"
    Ry => "ry"
    Scale => "scale"
    Seed => "seed"
    ShapeRendering => "shape-rendering"
    Slope => "slope"
    Spacing => "spacing"
    SpecularConstant => "specularConstant"
    SpecularExponent => "specularExponent"
    SpreadMethod => "spreadMethod"
    StartOffset => "startOffset"
    StdDeviation => "stdDeviation"
    Stemh => "stemh"
    Stemv => "stemv"
    StitchTiles => "stitchTiles"
    StopColor => "stop-color"
    StopOpacity => "stop-opacity"
    StrikethroughPosition => "strikethrough-position"
    StrikethroughThickness => "strikethrough-thickness"
    String => "string"
    Stroke => "stroke"
    StrokeDasharray => "stroke-dasharray"
    StrokeDashoffset => "stroke-dashoffset"
    StrokeLinecap => "stroke-linecap"
    StrokeLinejoin => "stroke-linejoin"
    StrokeMiterlimit => "stroke-miterlimit"
    StrokeOpacity => "stroke-opacity"
    StrokeWidth => "stroke-width"
    Style => "style"
    SurfaceScale => "surfaceScale"
    SystemLanguage => "systemLanguage"
    TableValues => "tableValues"
    Target => "target"
    TargetX => "targetX"
    TargetY => "targetY"
    TextAnchor => "text-anchor"
    TextDecoration => "text-decoration"
    TextRendering => "text-rendering"
    TextLength => "textLength"
    To => "to"
    Transform => "transform"
    Type => "type"
    U1 => "u1"
    U2 => "u2"
    UnderlinePosition => "underline-position"
    UnderlineThickness => "underline-thickness"
    Unicode => "unicode"
    UnicodeBidi => "unicode-bidi"
    UnicodeRange => "unicode-range"
    UnitsPerEm => "units-per-em"
    VAlphabetic => "v-alphabetic"
    VHanging => "v-hanging"
    VIdeographic => "v-ideographic"
    VMathematical => "v-mathematical"
    Values => "values"
    Version => "version"
    VertAdvY => "vert-adv-y"
    VertOriginX => "vert-origin-x"
    VertOriginY => "vert-origin-y"
    ViewBox => "viewBox"
    ViewTarget => "viewTarget"
    Visibility => "visibility"
    Width => "width"
    Widths => "widths"
    WordSpacing => "word-spacing"
    WritingMode => "writing-mode"
    X => "x"
    XHeight => "x-height"
    X1 => "x1"
    X2 => "x2"
    XChannelSelector => "xChannelSelector"
    XlinkActuate => "xlink:actuate"
    XlinkArcrole => "xlink:arcrole"
    XlinkHref => "xlink:href"
    XlinkRole => "xlink:role"
    XlinkShow => "xlink:show"
    XlinkTitle => "xlink:title"
    XlinkType => "xlink:type"
    XmlBase => "xml:base"
    XmlLang => "xml:lang"
    XmlSpace => "xml:space"
    Y => "y"
    Y1 => "y1"
    Y2 => "y2"
    YChannelselector => "yChannelSelector"
    Z => "z"
    ZoomAndPan => "zoomAndPan"
  }
}

///| 
pub fn op_get(self : Tag, att : String) -> Attribute {
  new(self.to_string(), att)
}
