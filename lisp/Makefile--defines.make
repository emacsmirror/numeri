##
# Copyright (C) 2025 Charles Y. Choi
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.

TIMESTAMP := $(shell date "+%Y%m%d_%H%M%S")

# If local Emacs install is not in typical PATH such as on macOS, define the
# environment variable EMACS_APP_EXEC to point to the Emacs executable. The
# following Elisp configuration needs to be set if running these Makefiles from
# Emacs.

# (setenv "EMACS_APP_EXEC"
#         "<path to Emacs executable>")


ifdef EMACS_APP_EXEC
  EXEC_NAME=$(EMACS_APP_EXEC)
else
  EXEC_NAME=emacs
endif

NUMERI_BASE_DIR?=$(HOME)/Projects/elisp
NUMERI_LIB_DIR?=$(NUMERI_BASE_DIR)/numeri
NUMERI_LIB_LISP_DIR=$(NUMERI_LIB_DIR)/lisp
NUMERI_LIB_TEST_INCLUDES=$(NUMERI_LIB_DIR)/tests/numeri-test-utils.el
EMACS_ELPA_DIR=$(HOME)/.config/emacs/elpa
