# iij/mruby

[![Build Status](https://travis-ci.org/iij/mruby.svg?branch=iij)](https://travis-ci.org/iij/mruby)

## What's this?

iij/mruby is a fork of [mruby](https://github.com/mruby/mruby), 
a lightweight implementation of the [Ruby](http://www.ruby-lang.org/) language.
This fork adds a lot of features to be run on IIJ's Internet router products:
[SEIL series](http://seil.jp/) and [SA-W1](http://www.sacm.jp/#saw1).

## Features

The majority of features developed in this repository are provided as mrbgems now.
These mrbgems can be used with either
[mruby/mruby](https://github.com/mruby/mruby) or [iij/mruby](https://github.com/iij/mruby).

| Repository | Description | Build Status |
|:-----------|:------------|:------------:|
| [mruby-digest](https://github.com/iij/mruby-digest) | [Digest](http://www.ruby-doc.org/stdlib-2.0/libdoc/digest/rdoc/Digest.html) module | [![Build Status](https://travis-ci.org/iij/mruby-digest.svg?branch=master)](https://travis-ci.org/iij/mruby-digest) |
| [mruby-dir](https://github.com/iij/mruby-dir) | [Dir](http://www.ruby-doc.org/core-2.0/Dir.html) class | [![Build Status](https://travis-ci.org/iij/mruby-dir.svg?branch=master)](https://travis-ci.org/iij/mruby-dir) |
| [mruby-env](https://github.com/iij/mruby-env) | [ENV](http://www.ruby-doc.org/core-2.0/ENV.html) object | [![Build Status](https://travis-ci.org/iij/mruby-env.svg?branch=master)](https://travis-ci.org/iij/mruby-env) |
| [mruby-errno](https://github.com/iij/mruby-errno) | [Errno](http://www.ruby-doc.org/core-2.0/Errno.html) module | [![Build Status](https://travis-ci.org/iij/mruby-errno.svg?branch=master)](https://travis-ci.org/iij/mruby-errno) |
| [mruby-iijson](https://github.com/iij/mruby-iijson) | [JSON](http://docs.ruby-lang.org/ja/2.1.0/class/JSON.html) module | [![Build Status](https://travis-ci.org/iij/mruby-iijson.svg?branch=master)](https://travis-ci.org/iij/mruby-iijson) |
| [mruby-io](https://github.com/iij/mruby-io) | [IO](http://www.ruby-doc.org/core-2.0/IO.html) and [File](http://www.ruby-doc.org/core-2.0/File.html) classes | [![Build Status](https://travis-ci.org/iij/mruby-io.svg?branch=master)](https://travis-ci.org/iij/mruby-io) |
| [mruby-mock](https://github.com/iij/mruby-mock) | mock framework to support method stub | [![Build Status](https://travis-ci.org/iij/mruby-mock.svg?branch=master)](https://travis-ci.org/iij/mruby-mock) |
| [mruby-mtest](https://github.com/iij/mruby-mtest) | unittesting framework like MiniTest | [![Build Status](https://travis-ci.org/iij/mruby-mtest.svg?branch=master)](https://travis-ci.org/iij/mruby-mtest) |
| [mruby-pack](https://github.com/iij/mruby-pack) | [Array#pack](http://www.ruby-doc.org/core-2.0/Array.html#pack) and [String#unpack](http://www.ruby-doc.org/core-2.0/String.html#unpack) | [![Build Status](https://travis-ci.org/iij/mruby-pack.svg?branch=master)](https://travis-ci.org/iij/mruby-pack) |
| [mruby-process](https://github.com/iij/mruby-process) | [Process](http://www.ruby-doc.org/core-2.0/Process.html) module | [![Build Status](https://travis-ci.org/iij/mruby-process.svg?branch=master)](https://travis-ci.org/iij/mruby-process) |
| [mruby-regexp-pcre](https://github.com/iij/mruby-regexp-pcre) | [Regexp](http://www.ruby-doc.org/core-2.0/Regexp.html) and [MatchData](http://www.ruby-doc.org/core-2.0/Regexp.html) classes utilizing [PCRE](http://www.pcre.org/) library | [![Build Status](https://travis-ci.org/iij/mruby-regexp-pcre.svg?branch=master)](https://travis-ci.org/iij/mruby-regexp-pcre) |
| [mruby-require](https://github.com/iij/mruby-require) | [Kernel#require](http://www.ruby-doc.org/core-2.0/Kernel.html#method-i-require) | [![Build Status](https://travis-ci.org/iij/mruby-require.svg?branch=master)](https://travis-ci.org/iij/mruby-require) |
| [mruby-simple-random](https://github.com/iij/mruby-simple-random) | smaller alternative of mruby-random | [![Build Status](https://travis-ci.org/iij/mruby-simple-random.svg?branch=master)](https://travis-ci.org/iij/mruby-simple-random) |
| [mruby-socket](https://github.com/iij/mruby-socket) | BSD socket API classes including [Socket](http://www.ruby-doc.org/stdlib-2.0/libdoc/socket/rdoc/Socket.html) | [![Build Status](https://travis-ci.org/iij/mruby-socket.svg?branch=master)](https://travis-ci.org/iij/mruby-socket) |
| [mruby-syslog](https://github.com/iij/mruby-syslog) | [Syslog](http://www.ruby-doc.org/stdlib-2.0/libdoc/syslog/rdoc/Syslog.html) class | [![Build Status](https://travis-ci.org/iij/mruby-syslog.svg?branch=master)](https://travis-ci.org/iij/mruby-syslog) |
| [mruby-tempfile](https://github.com/iij/mruby-tempfile) | [Tempfile](http://www.ruby-doc.org/stdlib-2.0/libdoc/tempfile/rdoc/Tempfile.html) class | [![Build Status](https://travis-ci.org/iij/mruby-tempfile.svg?branch=master)](https://travis-ci.org/iij/mruby-tempfile) |


## Branch Policy

 * master : tracking upstream (mruby/mruby), synchronized every morning.
 * iij : our main development branch
 * s1 : stable version (#1) of iij branch
 * stable\_1\_0 : IIJ's private stable version (#2) based on [mruby 1.0.0 release](http://www.mruby.org/releases/2014/02/09/mruby-1.0.0-released.html)
 * stable\_1\_3 : IIJ's private stable version (#3) based on [mruby 1.3.0 release](https://mruby.org/releases/2017/07/04/mruby-1.3.0-released.html)
 * (else) : for pull-request, etc.

## Continuous Integration

If you want to run the tests on your platform, try the following commands:

      $ rake test
      $ ./test/posix/all.sh

## License

This software is licensed under the same license terms of the original mruby.
