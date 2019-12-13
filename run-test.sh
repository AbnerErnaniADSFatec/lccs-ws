#!/usr/bin/env bash
#
# This file is part of Land Cover Classification System Web Service.
# Copyright (C) 2019 INPE.
#
# Land Cover Classification System Web Service is free software; you can redistribute it and/or modify it
# under the terms of the MIT License; see LICENSE file for more details.
#

pydocstyle lccs_ws && \
isort --check-only --diff --recursive **/*.py && \
check-manifest --ignore ".travis-*" && \
pytest