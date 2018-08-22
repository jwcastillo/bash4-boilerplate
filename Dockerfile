### BEG SCRIPT INFO
#
# Header:
#
#         fname : "Dockerfile"
#         cdate : "__DATE__"
#        author : "__AUTHOR__ <__EMAIL__>"
#      tab_size : "2"
#     soft_tabs : "yes"
#
# Description:
#
#   This Dockerfile builds a static __NAME__ in a Docker container.
#
#   For build:
#     docker build --rm -t __NAME__ -f Dockerfile .
#
#   For init:
#     docker run --rm -it --name __NAME__ __NAME__ -d <params>
#
#   For debug:
#     docker run --rm -it --entrypoint /bin/bash --name __NAME__ __NAME__
#
# License:
#
#   __NAME__, Copyright (C) 2018  __AUTHOR__
#
#   This program is free software: you can redistribute it and/or modify
#   it under the terms of the GNU General Public License as published by
#   the Free Software Foundation, either version 3 of the License, or
#   (at your option) any later version.
#
#   This program is distributed in the hope that it will be useful,
#   but WITHOUT ANY WARRANTY; without even the implied warranty of
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
#   GNU General Public License for more details.
#
#   You should have received a copy of the GNU General Public License
#   along with this program. If not, see <http://www.gnu.org/licenses/>.
#
### END SCRIPT INFO

MAINTAINER __AUTHOR__ "__EMAIL__"

################################################################################
#################### Specific commands for your dockerfile #####################
################################################################################
