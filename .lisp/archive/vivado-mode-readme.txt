Major mode for editing Xilinx Design Constraint file (XDC) and Vivado Tcl
scripts in Emacs

Copyright (C) 2013 Jim Wu

History
Feb 2, 2013: initial release
Apr 25, 2013: added IPI bd commands/options
April 24, 2022: Turned it into proper package
Version: 0.1
Author: Jim Wu (jimwu88 at yahoo dot com)

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 2 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.

USAGE
Installation for setting up automatic VIVADO  mode:
Save this file in your load path, and add the following lines in your
.emacs (uncomment them first)
(setq auto-mode-alist (cons  '("\\.xdc\\'" . xdc-mode) auto-mode-alist))
(add-hook 'vivado-mode-hook '(lambda () (font-lock-mode 1)))
(autoload 'vivado-mode "vivado-mode")