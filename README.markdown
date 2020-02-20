# Resize Mode

**Before:**

<kbd>Ctrl-W</kbd><kbd>+</kbd><kbd>Ctrl-W</kbd><kbd>+</kbd><kbd>Ctrl-W</kbd><kbd>+</kbd><kbd>Ctrl-W</kbd><kbd>+</kbd><kbd>Ctrl-W</kbd><kbd>+</kbd><kbd>Ctrl-W</kbd><kbd>></kbd><kbd>Ctrl-W</kbd><kbd>></kbd>

**After:**

<kbd>Ctrl-W</kbd><kbd>+</kbd><kbd>+</kbd><kbd>+</kbd><kbd>+</kbd><kbd>+</kbd><kbd>></kbd><kbd>></kbd>

Resize Mode is a small, unobtrusive, Vim plugin that makes resizing windows a little easier. It streamlines window resizing, by allowing you to repeat resize operations without having to keep telling Vim that you want to resize the window, but it stays out of your way: if you forget it&apos;s there, Vim will work completely normally as it always has.

## Installation

Resize Mode is implemented in pure Vimscript. Simply install normally using Vim&rsquo;s [packages](https://vimhelp.org/repeat.txt.html#packages) feature\*, or with your favourite plugin manager.

<sup>\* See the **Using a single plugin and loading it automatically** subheading.

## Configuration

No configuration is required.\*

<sup>\* See [:help resize-mode-mappings](https://github.com/sedm0784/vim-resize-mode/blob/81d0e2c792fdc4ce0927582a48d9d9f42db1ec42/doc/resize-mode.txt#L78) for advanced configuration.</sup>

## Usage

ENTER resize mode by using Vim&rsquo;s normal resize mappings:

- <kbd>Ctrl-W</kbd><kbd>+</kbd>
- <kbd>Ctrl-W</kbd><kbd>-</kbd>
- <kbd>Ctrl-W</kbd><kbd>></kbd>
- <kbd>Ctrl-W</kbd><kbd><</kbd>

CONTINUE resizing by pressing any of the resize keys:

- <kbd>+</kbd>
- <kbd>-</kbd>
- <kbd>></kbd>
- <kbd><</kbd>

EXIT resize mode by using any Vim command that is *not* a window resize command.

## Why Not Just Use a [[count]](https://vimhelp.org/intro.txt.html#count)?

Visual Feedback! Sometimes it&rsquo;s easier just to MASH a resize key rather than attempting to figure out in advance precisely how many lines to resize.

And Resize Mode is even better when you use a [count], because it maintains the count throughout the resize operation!

I&rsquo;m not terrible at eyeballing numbers of lines, but it&rsquo;s still quicker for me to type:

<kbd>5</kbd><kbd>Ctrl-W</kbd><kbd>+</kbd><kbd>+</kbd><kbd>+</kbd><kbd>+</kbd><kbd>+</kbd><kbd>+</kbd><kbd>+</kbd><kbd>+</kbd><kbd>+</kbd>

rather than:

<kbd>5</kbd><kbd>0</kbd><kbd>Ctrl-W</kbd><kbd>+</kbd> *Whoops! Overshot&hellip;*  <kbd>Ctrl-W</kbd><kbd>5</kbd><kbd>-</kbd>.

## Further Details

[:help resize-mode](https://github.com/sedm0784/vim-resize-mode/blob/master/doc/resize-mode.txt)
