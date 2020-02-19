# Resize Mode

Before:

<kbd>Ctrl-W</kbd><kbd>+</kbd><kbd>Ctrl-W</kbd><kbd>+</kbd><kbd>Ctrl-W</kbd><kbd>+</kbd><kbd>Ctrl-W</kbd><kbd>+</kbd><kbd>Ctrl-W</kbd><kbd>+</kbd><kbd>Ctrl-W</kbd><kbd>></kbd><kbd>Ctrl-W</kbd><kbd>></kbd>

After:

<kbd>Ctrl-W</kbd><kbd>+</kbd><kbd>+</kbd><kbd>+</kbd><kbd>+</kbd><kbd>+</kbd><kbd>></kbd><kbd>></kbd>

Resize Mode is a small, unobtrusive, Vim plugin that makes resizing windows a little easier. It streamlines window resizing, by allowing you to repeat resize operations without having to keep telling Vim that you want to resize the window, but it stays out of your way: if you forget it's there, Vim will work completely normally as it always has.

## Install

Resize Mode is implemented in pure Vimscript. Simply install normally using Vim's [packages](http://vimhelp.org/repeat.txt.html#packages) feature, or with your package manager.

## Configuration

No configuration is required.*

<sup>* See [:help resize-mode-mappings]() for advanced configuration.</sup>

## Usage

ENTER resize mode by using Vim's normal resize mappings:

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

## Further Details

[:help resize-mode]()
