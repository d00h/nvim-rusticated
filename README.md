FORK haystackandroid/rusticated

<table><tbody align="center">

<tr><td colspan='5'><h1>rusticated</h1>
<img src="https://github.com/haystackandroid/rusticated/raw/master/images/header.jpg" />
<h4>a rusty theme for sharp coding</h4>
</td></tr>

<tr></tr>

<tr>
<td><code>Normal bg</code></td>
<td><img src='http://www.colorhexa.com/d3d2ce.png' height='24' width='39'></td>
<td rowspan='11'>
<br>
<img alt="screenshot of the rusticated vim theme" src="https://github.com/haystackandroid/rusticated/raw/master/images/screenshot.png" width="422" />
<br><br>
</td>
<td><img src='http://www.colorhexa.com/834742.png' height='24' width='39'></td>
<td><code>Identifier</code></td>
</tr>

<tr></tr>

<tr>
<td><code>ColorColumn</code></td>
<td><img src='http://www.colorhexa.com/c3c0ba.png' height='24' width='39'></td>
<td><img src='http://www.colorhexa.com/645826.png' height='24' width='39'></td>
<td><code>Special</code></td>
</tr>

<tr></tr>

<tr>
<td><code>MatchParen</code></td>
<td><img src='http://www.colorhexa.com/989387.png' height='24' width='39'></td>
<td><img src='http://www.colorhexa.com/2c633f.png' height='24' width='39'></td>
<td><code>Statement</code></td>
</tr>

<tr></tr>

<tr>
<td><code>Comment</code></td>
<td><img src='http://www.colorhexa.com/5f5a4c.png' height='24' width='39'></td>
<td><img src='http://www.colorhexa.com/006470.png' height='24' width='39'></td>
<td><code>PreProc</code></td>
</tr>

<tr></tr>

<tr>
<td><code>Normal fg</code></td>
<td><img src='http://www.colorhexa.com/444136.png' height='24' width='39'></td>
<td><img src='http://www.colorhexa.com/3c5a89.png' height='24' width='39'></td>
<td><code>Constant</code></td>
</tr>

<tr></tr>

<tr>
<td><code>Cursor</code></td>
<td><img src='http://www.colorhexa.com/312d23.png' height='24' width='39'></td>
<td><img src='http://www.colorhexa.com/784872.png' height='24' width='39'></td>
<td><code>Type</code></td>
</tr>

<tr></tr>

<tr><td colspan='5'>

<br>

First there was <a href='https://github.com/haystackandroid/snow'>snow</a>, a cool, blue-tinted theme evoking the darkness of night (with a deep blue background,<br>as of a twilight sky) or the brilliance of full daylight (with a white background, as of a bright cloudy sky).

Then came rusticated, taking a middle path of gentle sepia warmth, calling to mind the transitional light of<br>rising mornings and falling evenings. A canvas of earthy autumn (rather than frosty winter) for a landscape<br>of text, both plain and accented, the latter emphasized with colors ringing of vibrant spring and summer.

Blue, as the most neutral cool tone, could be described as subtly evoking sky, water, and all the cool-colored<br>things of nature. Brown, the most neutral warm tone, speaks of soil, wood, and all the warm-colored things.

Thus do snow and rusticated complete one another: yin and yang, edge and middle, cold and heat.<br>The metal and rust of a trusty saw blade, hewing blocks of code for monumental applications.

</td></tr>

</tbody></table>


## installation

If you don’t have a preferred plugin management method, consider [vim-plug](https://github.com/junegunn/vim-plug), which can be installed (on \*nix systems) with:

```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

Having installed vim-plug, rusticated can be installed by adding the following to the top of your vimrc...

```
call plug#begin('~/.vim/plugged')
Plug 'haystackandroid/rusticated'
call plug#end()
```

...then restarting vim, followed by running `:PlugUpdate` (at the vim command line).

## activation

Add the following to vimrc:

```
colorscheme rusticated
```

## status line themes

rusticated comes with themes for airline...

```
let g:airline_theme='rusticated'
```

and lightline.

```
let g:lightline = { 'colorscheme': 'rusticated' }
```

## terminal vim

### colors

Terminals/multiplexers with [true-color support](https://gist.github.com/XVilka/8346728#now-supporting-truecolour) can display the exact colors of the rusticated theme.

In most cases, the only vimrc setting you need is:

```
set termguicolors
```

In some cases you'll also need (see `:h xterm-true-color` for explanation):

```
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
```

If `termguicolors` is not set, terminal vim will fall back to a rough approximation of rusticated.

### cursor shape

To set mode-specific cursor shapes in terminal vim, see the [Vim Tips Wiki](http://vim.wikia.com/wiki/Change_cursor_shape_in_different_modes).

For instance, to set cursor shapes in vte-compatible terminals, you could add to vimrc:

```
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"
```

...which sets the cursor to a vertical line for insert mode, underline for replace mode, and block for normal mode.

## shell

### colors

Many terminal emulators can be themed by sourcing the color-setting shell scripts included with rusticated. The path to these scripts will depend on your plugin management method.

For instance, if you use vim-plug and want to apply the rusticated theme to your bash or zsh shell, add the following to `~/.bashrc` or `~/.zshrc`:

```
[ -n "$PS1" ] && sh ~/.vim/plugged/rusticated/shell/rusticated.sh
```

Or for the fish shell, add to `~/.config/fish/config.fish`:

```
if status --is-interactive
  sh ~/.vim/plugged/rusticated/shell/rusticated.sh
end
```

If you use vundle, replace `plugged` in the above paths with `bundle`.

### fish syntax

Again, the script path will depend on your plugin management method.

In a vim-plug setup, add to `~/.config/fish/config.fish`:

```
source ~/.vim/plugged/rusticated/shell/rusticated.fish
```

---

<a href='https://opensource.org/licenses/MIT'><img src='https://img.shields.io/badge/license-MIT-a31f34.svg?style=flat-square' /></a>
&nbsp;&nbsp;&nbsp;
<a href='https://www.python.org/'><img src='https://img.shields.io/badge/made%20with-Python-306998.svg?style=flat-square' /></a>
&nbsp;&nbsp;&nbsp;
<a href='https://fishshell.com/'><img src='https://img.shields.io/badge/made%20with-fish-d2232a.svg?style=flat-square' /></a>
&nbsp;&nbsp;&nbsp;
<a href='https://github.com/lifepillar/vim-colortemplate'><img src='https://img.shields.io/badge/made%20with-Colortemplate-007f00.svg?style=flat-square' /></a>
&nbsp;&nbsp;&nbsp;
<a href='https://www.w3.org/TR/UNDERSTANDING-WCAG20/visual-audio-contrast-contrast.html'><img src='https://img.shields.io/badge/meets%20standard-4.5%3A1%20readability%20contrast-005a9c.svg?style=flat-square' /></a>

<h6>The 4.5:1 <a href='https://www.w3.org/TR/UNDERSTANDING-WCAG20/visual-audio-contrast-contrast.html#visual-audio-contrast-contrast-73-head'>W3C contrast ratio standard</a> for readability is met by all text/background combinations, with the exception of some transient highlighting (e.g. cursorline/column), which nonetheless well exceeds the minimal ISO 3:1 standard.</h6>

<h6>image credit: stone wall photo by <a href='https://commons.wikimedia.org/wiki/File:Paris,_caserne_Ch%C3%A2teau-Landon_14.jpg'>Coyau (Wikimedia Commons / CC BY-SA 3.0)</a></h6>
