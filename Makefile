PROJECT = hello_world

DEPS = cowboy erlydtl sync
dep_cowboy = git https://github.com/ninenines/cowboy master
dep_erlydtl = git https://github.com/erlydtl/erlydtl master
dep_sync = git https://github.com/rustyio/sync master

include erlang.mk
