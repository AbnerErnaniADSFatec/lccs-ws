#!/usr/bin/env bash
#
# This file is part of LCCS-WS.
# Copyright (C) 2022 INPE.
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program. If not, see <https://www.gnu.org/licenses/gpl-3.0.html>.
#

echo "BUILD STARTED"
echo
echo "NEW TAG - lccs:"
read LCCS_TAG

IMAGE_LCCS="lccs"
IMAGE_LCCS_FULL="${IMAGE_LCCS}:${LCCS_TAG}"

docker build -t ${IMAGE_LCCS_FULL} . --no-cache
docker push ${IMAGE_LCCS_FULL}

echo "BUILD ${IMAGE_LCCS_FULL} FINISHED"