# SVG

A MoonBit SVG embedded Domain-Specific Language (eDSL) for generating SVG markup programmatically.

## Overview

This library provides a clean, type-safe way to generate SVG content in MoonBit. It offers:

- Attribute handling through an enum-based approach (`Key["value"]`)
- Path generation utilities
- SVG transformation functions
- Easy composition with the `+` operator

## Installation

```bash
moon add CAIMEOX/svg
```

## Usage

```moonbit
// Create a red rectangle
let rect = @svg.rect([
  @svg.Width["100"],
  @svg.Height["50"],
  @svg.Fill["red"]
])

// Create a circle
let circle = @svg.circle([
  @svg.Cx["50"],
  @svg.Cy["50"],
  @svg.R["25"],
  @svg.Fill["blue"]
])

// Combine elements
let combined = rect + circle
```

Complete SVG Document

```moonbit
// Create a complete SVG document
fn create_svg() -> @svg.Element {
  let content = @svg.rect([@svg.Width["100%"], @svg.Height["100%"], @svg.Fill["#f0f0f0"]]) +
    @svg.circle([@svg.Cx["50%"], @svg.Cy["50%"], @svg.R["40%"], @svg.Fill["#3355cc"]])

  @svg.doc_type() +
    @svg.svg11(content).with_attr([
      @svg.Version["1.1"],
      @svg.Width["300"],
      @svg.Height["200"],
      @svg.ViewBox["0 0 100 100"]
    ])
}
```

### Path Construction

The library provides functions for SVG path data:

```moonbit
// Create a triangular path
let triangle = @svg.path([
  @svg.Fill["yellow"],
  @svg.Stroke["black"],
  @svg.StrokeWidth["2"],
  @svg.D[@svg.ma(10, 10) + @svg.la(50, 10) + @svg.la(30, 40) + @svg.z()]
])
```

#### Comprehensive Example

Here's a more complete example that creates a simple logo:

```moonbit
fn sample_logo() -> @svg.Element {
  // Create multiple path elements to form a logo
  @svg.path([
    @svg.Fill["#3366CC"],
    @svg.D[@svg.ma(0, 50) + @svg.la(25, 0) + @svg.la(50, 50) + @svg.la(25, 100) + @svg.la(0, 50) + @svg.z()]
  ]) +
  @svg.path([
    @svg.Fill["#6633CC"],
    @svg.D[@svg.ma(50, 50) + @svg.la(75, 0) + @svg.la(100, 50) + @svg.la(75, 100) + @svg.la(50, 50) + @svg.z()]
  ]) +
  @svg.circle([
    @svg.Cx["50"],
    @svg.Cy["50"],
    @svg.R["15"],
    @svg.Fill["#CC3366"]
  ])
}

// Wrap with SVG document structure
fn create_logo_svg() -> @svg.Element {
  @svg.doc_type() +
  @svg.svg11(sample_logo()).with_attr([
    @svg.Version["1.1"],
    @svg.Width["200"],
    @svg.Height["200"],
    @svg.ViewBox["0 0 100 100"]
  ])
}
```

More examples can be found in the `render_test.mbt` file.
