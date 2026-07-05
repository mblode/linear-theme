# Linear Themes

Light and dark color themes for Ghostty, cmux, Zed, and Alacritty, derived from Linear's lch design tokens. Every color was converted from the source `lch()` values via CSS Color 4 conversion (Lab D50 → Bradford-adapted D65 → gamma-corrected sRGB), not eyeballed.

## Install

```sh
git clone https://github.com/mblode/linear-themes.git
cd linear-themes
./install.sh
```

Or install a single target: `./install.sh ghostty`, `./install.sh zed`, `./install.sh alacritty`.

## Ghostty & cmux

Both apps read the same theme files. `install.sh` copies them to `~/.local/share/ghostty/themes` (resolved by cmux via `$XDG_DATA_DIRS`) and `~/.config/ghostty/themes` (resolved by Ghostty). Then in `~/.config/ghostty/config`:

```
theme = light:linear-light,dark:linear-dark
```

Ghostty and cmux both follow macOS appearance with this syntax. Reload with `cmd-shift-,`. Note that cmux's Settings → Appearance picker writes its own `theme =` line to its managed config, which overrides this — leave it on System and set the theme in the Ghostty config instead.

## Zed

`install.sh` copies `zed/linear.json` to `~/.config/zed/themes`. Select via `cmd-k cmd-t`, or in `settings.json`:

```json
"theme": { "mode": "system", "light": "Linear Light", "dark": "Linear Dark" }
```

The Zed theme covers full UI chrome, syntax highlighting, and the integrated terminal's ANSI palette.

## Alacritty

The 16-color scheme in `alacritty/` also ports directly to Kitty, WezTerm, iTerm2, or Warp. In `alacritty.toml`:

```toml
[general]
import = ["~/.config/alacritty/themes/linear-dark.toml"]
```

## Palette

| Role | Light | Dark |
| --- | --- | --- |
| Background | `#ffffff` | `#191a23` |
| Foreground | `#303032` | `#e5e6ef` |
| Comment | `#5e5e60` | `#9d9ea6` |
| Keyword (pink) | `#ce55b0` | `#fa9ce3` |
| Control flow (purple) | `#8e54cb` | `#cc9dff` |
| String (gold) | `#bf830a` | `#ffe09e` |
| Function / number (teal) | `#248b8b` | `#7fdede` |
| Type / class (blue) | `#2797c7` | `#73d1fa` |
| Property / variable (orange) | `#bb610c` | `#fac08a` |
| Constant / boolean (indigo) | `#687bc4` | `#8fa7ff` |
| Regex | `#d85927` | `#db5926` |
| Error | `#ff5d6c` | `#ff5c6c` |
| Accent / cursor | `#6d78d5` | `#7e7fff` |
| Selection | `#edeef8` | `#2b2d4d` |

## Mapping notes

The source CSS distinguishes plain keywords (pink) from control-flow keywords (purple). Zed exposes a single `keyword` scope, so pink wins there and purple covers `link_uri` and preprocessor accents. Terminals get purple as ANSI magenta and pink as bright magenta, keeping both hues. Variables stay foreground-colored, with orange reserved for properties, attributes, and object keys — that restraint is what makes Linear's highlighting look the way it does.

## License

MIT. Color values are derived from Linear's public app stylesheet; Linear is a trademark of Linear Orbit, Inc. and this project is not affiliated with it.
