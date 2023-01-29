#!/bin/sh

# Install the version of Bundler.
if [ -f Gemfile.lock ] && grep "BUNDLED WITH" Gemfile.lock > /dev/null; then
    cat Gemfile.lock | tail -n 2 | grep -C2 "BUNDLED WITH" | tail -n 1 | xargs gem install bundler -v
fi

# If there's a Gemfile, then run `bundle install`
# It's assumed that the Gemfile will install Jekyll too
if [ -f Gemfile ]; then
    bundle install
fi




<<footnote
    SPDX-FileCopyrightText: 2022 Microsoft
    SPDX-License-Identifier: MIT
    last-edit by: Mervin G.
    last-edit date: 29, January 2023
    compiler: POSIX Shell
    version: 1.0.1
    usage: post-create.sh
    description: Install Bundler and Jekyll
footnote