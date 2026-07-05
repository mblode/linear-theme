# Linear Theme

Light and dark themes for Ghostty, cmux, Zed, and Alacritty, built from Linear's own colours.

## Preview

![Linear Dark](assets/preview-dark.png)

![Linear Light](assets/preview-light.png)

## Install

```sh
git clone https://github.com/mblode/linear-theme.git
cd linear-theme
./install.sh
```

Sets up all four apps. For one: `./install.sh ghostty|zed|alacritty`.

## Ghostty & cmux

Both read the same files. In `~/.config/ghostty/config`:

```
theme = light:linear-light,dark:linear-dark
```

Follows system light/dark; or pin `theme = linear-dark`. Reload with `cmd-shift-,`. In cmux, leave the Appearance picker on System (it writes a `theme =` line that overrides this) and set the theme here.

## Zed

`cmd-k cmd-t`, or in `settings.json`:

```json
"theme": { "mode": "system", "light": "Linear Light", "dark": "Linear Dark" }
```

Covers UI, syntax, and the built-in terminal.

## Other terminals

`terminals/` has the same palette in each native format:

| Terminal | File | Load with |
| --- | --- | --- |
| Alacritty | `alacritty-{light,dark}.toml` | `[general] import = ["…/alacritty-dark.toml"]` |
| Kitty | `kitty-{light,dark}.conf` | `include kitty-dark.conf` |
| WezTerm | `wezterm-{light,dark}.lua` | `require` into `color_schemes` |
| iTerm2 | `iterm2-{light,dark}.itermcolors` | double-click, then Settings → Profiles → Colors |
| Warp | `warp-{light,dark}.yaml` | drop into `~/.warp/themes/` |

`./install.sh alacritty` installs the Alacritty files; the rest are copy-in.

## diffs.com & Shiki

`shiki/linear-{light,dark}.json` are [Shiki](https://shiki.style) / VS Code themes from Linear's scope map. [diffs.com](https://diffs.com) runs on Shiki, so they load there, plus VS Code, Astro, VitePress, and Monaco:

```js
import { createHighlighter } from "shiki";
import linearDark from "./shiki/linear-dark.json" with { type: "json" };

const hl = await createHighlighter({ themes: [linearDark], langs: ["ts"] });
hl.codeToHtml(code, { lang: "ts", theme: "Linear Dark" });
```

## Terminal syntax (bat & delta)

`textmate/linear-{light,dark}.tmTheme` bring Linear syntax to `bat` and `delta` (git diffs) in any terminal:

```sh
mkdir -p "$(bat --config-dir)/themes"
cp textmate/linear-*.tmTheme "$(bat --config-dir)/themes/"
bat cache --build
bat --theme="Linear Dark" file.ts
```

For `delta`, set `syntax-theme = Linear Dark` under `[delta]` in `~/.gitconfig`. Also works in Sublime Text and TextMate.

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

MIT
