# Linear Theme

Light and dark themes for Ghostty, cmux, Zed, and Alacritty, built from Linear's own colours.

The colours are converted straight from Linear's `lch()` design tokens (Lab D50 → Bradford D65 → sRGB), so they match the app instead of being eyeballed.

## Preview

**Linear Dark**

![#191a23](https://placehold.co/60x40/191a23/191a23.png) ![#9d9ea6](https://placehold.co/60x40/9d9ea6/9d9ea6.png) ![#fa9ce3](https://placehold.co/60x40/fa9ce3/fa9ce3.png) ![#cc9dff](https://placehold.co/60x40/cc9dff/cc9dff.png) ![#ffe09e](https://placehold.co/60x40/ffe09e/ffe09e.png) ![#7fdede](https://placehold.co/60x40/7fdede/7fdede.png) ![#73d1fa](https://placehold.co/60x40/73d1fa/73d1fa.png) ![#fac08a](https://placehold.co/60x40/fac08a/fac08a.png) ![#8fa7ff](https://placehold.co/60x40/8fa7ff/8fa7ff.png) ![#7e7fff](https://placehold.co/60x40/7e7fff/7e7fff.png) ![#e5e6ef](https://placehold.co/60x40/e5e6ef/e5e6ef.png)

**Linear Light**

![#ffffff](https://placehold.co/60x40/ffffff/ffffff.png) ![#5e5e60](https://placehold.co/60x40/5e5e60/5e5e60.png) ![#ce55b0](https://placehold.co/60x40/ce55b0/ce55b0.png) ![#8e54cb](https://placehold.co/60x40/8e54cb/8e54cb.png) ![#bf830a](https://placehold.co/60x40/bf830a/bf830a.png) ![#248b8b](https://placehold.co/60x40/248b8b/248b8b.png) ![#2797c7](https://placehold.co/60x40/2797c7/2797c7.png) ![#bb610c](https://placehold.co/60x40/bb610c/bb610c.png) ![#687bc4](https://placehold.co/60x40/687bc4/687bc4.png) ![#6d78d5](https://placehold.co/60x40/6d78d5/6d78d5.png) ![#303032](https://placehold.co/60x40/303032/303032.png)

## Install

```sh
git clone https://github.com/mblode/linear-theme.git
cd linear-theme
./install.sh
```

Sets up all four apps. For just one: `./install.sh ghostty`, `./install.sh zed`, or `./install.sh alacritty`.

## Ghostty & cmux

Both read the same files. Add this to `~/.config/ghostty/config`:

```
theme = light:linear-light,dark:linear-dark
```

That follows your system light/dark. For a fixed mode use `theme = linear-dark` or `theme = linear-light`. Reload with `cmd-shift-,`.

cmux note: its Settings → Appearance picker writes its own `theme =` line that overrides this. Leave it on System and set the theme in the Ghostty config.

## Zed

Select Linear with `cmd-k cmd-t`, or in `settings.json`:

```json
"theme": { "mode": "system", "light": "Linear Light", "dark": "Linear Dark" }
```

Covers the UI, syntax, and the built-in terminal.

## Alacritty

In `alacritty.toml`:

```toml
[general]
import = ["~/.config/alacritty/themes/linear-dark.toml"]
```

The same scheme also works in Kitty, WezTerm, iTerm2, and Warp.

## Palette

### Linear Dark

| Name | Hex | RGB | HSL | |
| --- | --- | --- | --- | --- |
| Background | `#191a23` | `25 26 35` | `234 17% 12%` | ![](https://placehold.co/18/191a23/191a23.png) |
| Foreground | `#e5e6ef` | `229 230 239` | `234 24% 92%` | ![](https://placehold.co/18/e5e6ef/e5e6ef.png) |
| Comment | `#9d9ea6` | `157 158 166` | `233 5% 63%` | ![](https://placehold.co/18/9d9ea6/9d9ea6.png) |
| Keyword (pink) | `#fa9ce3` | `250 156 227` | `315 90% 80%` | ![](https://placehold.co/18/fa9ce3/fa9ce3.png) |
| Control flow (purple) | `#cc9dff` | `204 157 255` | `269 100% 81%` | ![](https://placehold.co/18/cc9dff/cc9dff.png) |
| String (gold) | `#ffe09e` | `255 224 158` | `41 100% 81%` | ![](https://placehold.co/18/ffe09e/ffe09e.png) |
| Function / number (teal) | `#7fdede` | `127 222 222` | `180 59% 68%` | ![](https://placehold.co/18/7fdede/7fdede.png) |
| Type / class (blue) | `#73d1fa` | `115 209 250` | `198 93% 72%` | ![](https://placehold.co/18/73d1fa/73d1fa.png) |
| Property / key (orange) | `#fac08a` | `250 192 138` | `29 92% 76%` | ![](https://placehold.co/18/fac08a/fac08a.png) |
| Constant / boolean (indigo) | `#8fa7ff` | `143 167 255` | `227 100% 78%` | ![](https://placehold.co/18/8fa7ff/8fa7ff.png) |
| Regex | `#db5926` | `219 89 38` | `17 72% 50%` | ![](https://placehold.co/18/db5926/db5926.png) |
| Error | `#ff5c6c` | `255 92 108` | `354 100% 68%` | ![](https://placehold.co/18/ff5c6c/ff5c6c.png) |
| Accent / cursor | `#7e7fff` | `126 127 255` | `240 100% 75%` | ![](https://placehold.co/18/7e7fff/7e7fff.png) |
| Selection | `#2b2d4d` | `43 45 77` | `236 28% 24%` | ![](https://placehold.co/18/2b2d4d/2b2d4d.png) |

### Linear Light

| Name | Hex | RGB | HSL | |
| --- | --- | --- | --- | --- |
| Background | `#ffffff` | `255 255 255` | `0 0% 100%` | ![](https://placehold.co/18/ffffff/ffffff.png) |
| Foreground | `#303032` | `48 48 50` | `240 2% 19%` | ![](https://placehold.co/18/303032/303032.png) |
| Comment | `#5e5e60` | `94 94 96` | `240 1% 37%` | ![](https://placehold.co/18/5e5e60/5e5e60.png) |
| Keyword (pink) | `#ce55b0` | `206 85 176` | `315 55% 57%` | ![](https://placehold.co/18/ce55b0/ce55b0.png) |
| Control flow (purple) | `#8e54cb` | `142 84 203` | `269 53% 56%` | ![](https://placehold.co/18/8e54cb/8e54cb.png) |
| String (gold) | `#bf830a` | `191 131 10` | `40 90% 39%` | ![](https://placehold.co/18/bf830a/bf830a.png) |
| Function / number (teal) | `#248b8b` | `36 139 139` | `180 59% 34%` | ![](https://placehold.co/18/248b8b/248b8b.png) |
| Type / class (blue) | `#2797c7` | `39 151 199` | `198 67% 47%` | ![](https://placehold.co/18/2797c7/2797c7.png) |
| Property / key (orange) | `#bb610c` | `187 97 12` | `29 88% 39%` | ![](https://placehold.co/18/bb610c/bb610c.png) |
| Constant / boolean (indigo) | `#687bc4` | `104 123 196` | `228 44% 59%` | ![](https://placehold.co/18/687bc4/687bc4.png) |
| Regex | `#d85927` | `216 89 39` | `17 69% 50%` | ![](https://placehold.co/18/d85927/d85927.png) |
| Error | `#ff5d6c` | `255 93 108` | `354 100% 68%` | ![](https://placehold.co/18/ff5d6c/ff5d6c.png) |
| Accent / cursor | `#6d78d5` | `109 120 213` | `234 55% 63%` | ![](https://placehold.co/18/6d78d5/6d78d5.png) |
| Selection | `#edeef8` | `237 238 248` | `235 44% 95%` | ![](https://placehold.co/18/edeef8/edeef8.png) |

## License

MIT. Colours come from Linear's public stylesheet. Linear is a trademark of Linear Orbit, Inc. and this isn't affiliated with it.
