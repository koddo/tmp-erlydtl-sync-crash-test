Hello world example
===================

To try this example, you need GNU `make` and `git` in your PATH.

To build the example, run the following command:

``` bash
$ make
```

To start the release in the foreground:

``` bash
$ ./_rel/hello_world_example/bin/hello_world_example console
```

Then point your browser at [http://localhost:8080/with_erlydtl](http://localhost:8080/with_erlydtl).

Sync is running and scanning source files.

There are two handlers:
http://localhost:8080/with_erlydtl
and
http://localhost:8080/without_erlydtl

When the one with erlydtl is run, the sync crashes the node.


The error report
--------------

```
(hello_world_example@127.0.0.1)1> 
(hello_world_example@127.0.0.1)1> 
(hello_world_example@127.0.0.1)1> 
(hello_world_example@127.0.0.1)1> Scanning source files...

=ERROR REPORT==== 29-May-2015::19:15:24 ===
** Generic server sync_scanner terminating 
** Last message in was {'$gen_cast',discover_src_dirs}
** When Server state == {state,
                            [erlydtl_runtime,test_dtl,with_erlydtl,
                             cowboy_handler,cow_qs,cow_http_hd,cowboy_req,
                             cowboy_protocol,sync_notify,sync_utils,
                             sync_scanner,sync_options,sync,hello_world_sup,
                             ranch_acceptor,ranch_acceptors_sup,
                             ranch_conns_sup,ranch_listener_sup,ranch_tcp,
                             ranch,cowboy,cowboy_router,hello_world_app,
                             cowboy_clock,cowboy_sup,cowboy_app,ranch_server,
                             ranch_sup,ranch_app,erts_internal,erlang,
                             erl_prim_loader,prim_zip,zlib,prim_file,
                             prim_inet,prim_eval,init,otp_ring0],
                            ["/Users/alex/tmp/hello_world/src"],
                            ["/Users/alex/tmp/hello_world/src/hello_world_app.erl",
                             "/Users/alex/tmp/hello_world/src/hello_world_sup.erl",
                             "/Users/alex/tmp/hello_world/src/with_erlydtl.erl",
                             "/Users/alex/tmp/hello_world/src/without_erlydtl.erl"],
                            ["/Users/alex/tmp/hello_world/include"],
                            [],
                            [{cowboy,{{2015,5,29},{15,33,33}}},
                             {cowboy_app,{{2015,5,29},{15,33,33}}},
                             {cowboy_clock,{{2015,5,29},{15,33,33}}},
                             {cowboy_router,{{2015,5,29},{15,33,34}}},
                             {cowboy_sup,{{2015,5,29},{15,33,34}}},
                             {erl_prim_loader,0},
                             {erlang,0},
                             {erts_internal,0},
                             {hello_world_app,{{2015,5,29},{19,9,53}}},
                             {hello_world_sup,{{2015,5,29},{15,33,35}}},
                             {init,0},
                             {otp_ring0,0},
                             {prim_eval,0},
                             {prim_file,0},
                             {prim_inet,0},
                             {prim_zip,0},
                             {ranch,{{2015,5,29},{15,33,32}}},
                             {ranch_acceptor,{{2015,5,29},{15,33,32}}},
                             {ranch_acceptors_sup,{{2015,5,29},{15,33,32}}},
                             {ranch_app,{{2015,5,29},{15,33,32}}},
                             {ranch_conns_sup,{{2015,5,29},{15,33,32}}},
                             {ranch_listener_sup,{{2015,5,29},{15,33,32}}},
                             {ranch_server,{{2015,5,29},{15,33,33}}},
                             {ranch_sup,{{2015,5,29},{15,33,33}}},
                             {ranch_tcp,{{2015,5,29},{15,33,33}}},
                             {sync,{{2015,5,29},{16,36,17}}},
                             {sync_notify,{{2015,5,29},{16,36,17}}},
                             {sync_options,{{2015,5,29},{16,36,17}}},
                             {sync_scanner,{{2015,5,29},{16,36,17}}},
                             {sync_utils,{{2015,5,29},{16,36,17}}},
                             {zlib,0}],
                            [{"/Users/alex/tmp/hello_world/src/hello_world_app.erl",
                              {{2015,5,29},{19,7,38}}},
                             {"/Users/alex/tmp/hello_world/src/hello_world_sup.erl",
                              {{2015,5,29},{15,32,3}}},
                             {"/Users/alex/tmp/hello_world/src/with_erlydtl.erl",
                              {{2015,5,29},{19,8,36}}},
                             {"/Users/alex/tmp/hello_world/src/without_erlydtl.erl",
                              {{2015,5,29},{19,9,27}}}],
                            [],
                            [{discover_modules,
                                 {1432916154833575,#Ref<0.0.0.1403>}},
                             {discover_src_dirs,
                                 {1432916124887192,#Ref<0.0.0.540>}},
                             {discover_src_files,
                                 {1432916124940838,#Ref<0.0.0.1286>}},
                             {compare_src_files,
                                 {1432916125150523,#Ref<0.0.0.1399>}},
                             {compare_beams,
                                 {1432916125024755,#Ref<0.0.0.1381>}},
                             {compare_hrl_files,
                                 {1432916125024790,#Ref<0.0.0.1384>}}],
                            false,false}
** Reason for termination == 
** {{badmatch,undefined},
    [{sync_scanner,'-discover_source_dirs/2-fun-0-',2,
                   [{file,"src/sync_scanner.erl"},{line,729}]},
     {lists,foldl,3,[{file,"lists.erl"},{line,1261}]},
     {sync_scanner,discover_source_dirs,2,
                   [{file,"src/sync_scanner.erl"},{line,739}]},
     {gen_server,try_dispatch,4,[{file,"gen_server.erl"},{line,593}]},
     {gen_server,handle_msg,5,[{file,"gen_server.erl"},{line,659}]},
     {proc_lib,init_p_do_apply,3,[{file,"proc_lib.erl"},{line,237}]}]}

=ERROR REPORT==== 29-May-2015::19:15:24 ===
** Generic server sync_scanner terminating 
** Last message in was {'$gen_cast',discover_src_dirs}
** When Server state == {state,
                            [erlydtl_runtime,test_dtl,with_erlydtl,
                             cowboy_handler,cow_qs,cow_http_hd,cowboy_req,
                             cowboy_protocol,sync_notify,sync_utils,
                             sync_scanner,sync_options,sync,hello_world_sup,
                             ranch_acceptor,ranch_acceptors_sup,
                             ranch_conns_sup,ranch_listener_sup,ranch_tcp,
                             ranch,cowboy,cowboy_router,hello_world_app,
                             cowboy_clock,cowboy_sup,cowboy_app,ranch_server,
                             ranch_sup,ranch_app,erts_internal,erlang,
                             erl_prim_loader,prim_zip,zlib,prim_file,
                             prim_inet,prim_eval,init,otp_ring0],
                            [],[],[],[],undefined,[],[],
                            [{discover_modules,
                                 {1432916154909495,#Ref<0.0.0.1457>}}],
                            false,false}
** Reason for termination == 
** {{badmatch,undefined},
    [{sync_scanner,'-discover_source_dirs/2-fun-0-',2,
                   [{file,"src/sync_scanner.erl"},{line,729}]},
     {lists,foldl,3,[{file,"lists.erl"},{line,1261}]},
     {sync_scanner,discover_source_dirs,2,
                   [{file,"src/sync_scanner.erl"},{line,739}]},
     {gen_server,try_dispatch,4,[{file,"gen_server.erl"},{line,593}]},
     {gen_server,handle_msg,5,[{file,"gen_server.erl"},{line,659}]},
     {proc_lib,init_p_do_apply,3,[{file,"proc_lib.erl"},{line,237}]}]}
Scanning source files...

=ERROR REPORT==== 29-May-2015::19:15:24 ===
** Generic server sync_scanner terminating 
** Last message in was {'$gen_cast',discover_src_dirs}
** When Server state == {state,
                            [erlydtl_runtime,test_dtl,with_erlydtl,
                             cowboy_handler,cow_qs,cow_http_hd,cowboy_req,
                             cowboy_protocol,sync_notify,sync_utils,
                             sync_scanner,sync_options,sync,hello_world_sup,
                             ranch_acceptor,ranch_acceptors_sup,
                             ranch_conns_sup,ranch_listener_sup,ranch_tcp,
                             ranch,cowboy,cowboy_router,hello_world_app,
                             cowboy_clock,cowboy_sup,cowboy_app,ranch_server,
                             ranch_sup,ranch_app,erts_internal,erlang,
                             erl_prim_loader,prim_zip,zlib,prim_file,
                             prim_inet,prim_eval,init,otp_ring0],
                            [],[],[],[],undefined,[],[],
                            [{discover_modules,
                                 {1432916154923602,#Ref<0.0.0.1511>}}],
                            false,false}
** Reason for termination == 
** {{badmatch,undefined},
    [{sync_scanner,'-discover_source_dirs/2-fun-0-',2,
                   [{file,"src/sync_scanner.erl"},{line,729}]},
     {lists,foldl,3,[{file,"lists.erl"},{line,1261}]},
     {sync_scanner,discover_source_dirs,2,
                   [{file,"src/sync_scanner.erl"},{line,739}]},
     {gen_server,try_dispatch,4,[{file,"gen_server.erl"},{line,593}]},
     {gen_server,handle_msg,5,[{file,"gen_server.erl"},{line,659}]},
     {proc_lib,init_p_do_apply,3,[{file,"proc_lib.erl"},{line,237}]}]}
Scanning source files...

=ERROR REPORT==== 29-May-2015::19:15:24 ===
** Generic server sync_scanner terminating 
** Last message in was {'$gen_cast',discover_src_dirs}
** When Server state == {state,
                            [erlydtl_runtime,test_dtl,with_erlydtl,
                             cowboy_handler,cow_qs,cow_http_hd,cowboy_req,
                             cowboy_protocol,sync_notify,sync_utils,
                             sync_scanner,sync_options,sync,hello_world_sup,
                             ranch_acceptor,ranch_acceptors_sup,
                             ranch_conns_sup,ranch_listener_sup,ranch_tcp,
                             ranch,cowboy,cowboy_router,hello_world_app,
                             cowboy_clock,cowboy_sup,cowboy_app,ranch_server,
                             ranch_sup,ranch_app,erts_internal,erlang,
                             erl_prim_loader,prim_zip,zlib,prim_file,
                             prim_inet,prim_eval,init,otp_ring0],
                            [],[],[],[],undefined,[],[],
                            [{discover_modules,
                                 {1432916154947296,#Ref<0.0.0.1565>}}],
                            false,false}
** Reason for termination == 
** {{badmatch,undefined},
    [{sync_scanner,'-discover_source_dirs/2-fun-0-',2,
                   [{file,"src/sync_scanner.erl"},{line,729}]},
     {lists,foldl,3,[{file,"lists.erl"},{line,1261}]},
     {sync_scanner,discover_source_dirs,2,
                   [{file,"src/sync_scanner.erl"},{line,739}]},
     {gen_server,try_dispatch,4,[{file,"gen_server.erl"},{line,593}]},
     {gen_server,handle_msg,5,[{file,"gen_server.erl"},{line,659}]},
     {proc_lib,init_p_do_apply,3,[{file,"proc_lib.erl"},{line,237}]}]}
Scanning source files...

=ERROR REPORT==== 29-May-2015::19:15:24 ===
** Generic server sync_scanner terminating 
** Last message in was {'$gen_cast',discover_src_dirs}
** When Server state == {state,
                            [erlydtl_runtime,test_dtl,with_erlydtl,
                             cowboy_handler,cow_qs,cow_http_hd,cowboy_req,
                             cowboy_protocol,sync_notify,sync_utils,
                             sync_scanner,sync_options,sync,hello_world_sup,
                             ranch_acceptor,ranch_acceptors_sup,
                             ranch_conns_sup,ranch_listener_sup,ranch_tcp,
                             ranch,cowboy,cowboy_router,hello_world_app,
                             cowboy_clock,cowboy_sup,cowboy_app,ranch_server,
                             ranch_sup,ranch_app,erts_internal,erlang,
                             erl_prim_loader,prim_zip,zlib,prim_file,
                             prim_inet,prim_eval,init,otp_ring0],
                            [],[],[],[],undefined,[],[],
                            [{discover_modules,
                                 {1432916154964778,#Ref<0.0.0.1619>}}],
                            false,false}
** Reason for termination == 
** {{badmatch,undefined},
    [{sync_scanner,'-discover_source_dirs/2-fun-0-',2,
                   [{file,"src/sync_scanner.erl"},{line,729}]},
     {lists,foldl,3,[{file,"lists.erl"},{line,1261}]},
     {sync_scanner,discover_source_dirs,2,
                   [{file,"src/sync_scanner.erl"},{line,739}]},
     {gen_server,try_dispatch,4,[{file,"gen_server.erl"},{line,593}]},
     {gen_server,handle_msg,5,[{file,"gen_server.erl"},{line,659}]},
     {proc_lib,init_p_do_apply,3,[{file,"proc_lib.erl"},{line,237}]}]}
Scanning source files...

=ERROR REPORT==== 29-May-2015::19:15:24 ===
** Generic server sync_scanner terminating 
** Last message in was {'$gen_cast',discover_src_dirs}
** When Server state == {state,
                            [erlydtl_runtime,test_dtl,with_erlydtl,
                             cowboy_handler,cow_qs,cow_http_hd,cowboy_req,
                             cowboy_protocol,sync_notify,sync_utils,
                             sync_scanner,sync_options,sync,hello_world_sup,
                             ranch_acceptor,ranch_acceptors_sup,
                             ranch_conns_sup,ranch_listener_sup,ranch_tcp,
                             ranch,cowboy,cowboy_router,hello_world_app,
                             cowboy_clock,cowboy_sup,cowboy_app,ranch_server,
                             ranch_sup,ranch_app,erts_internal,erlang,
                             erl_prim_loader,prim_zip,zlib,prim_file,
                             prim_inet,prim_eval,init,otp_ring0],
                            [],[],[],[],undefined,[],[],
                            [{discover_modules,
                                 {1432916154984849,#Ref<0.0.0.1673>}}],
                            false,false}
** Reason for termination == 
** {{badmatch,undefined},
    [{sync_scanner,'-discover_source_dirs/2-fun-0-',2,
                   [{file,"src/sync_scanner.erl"},{line,729}]},
     {lists,foldl,3,[{file,"lists.erl"},{line,1261}]},
     {sync_scanner,discover_source_dirs,2,
                   [{file,"src/sync_scanner.erl"},{line,739}]},
     {gen_server,try_dispatch,4,[{file,"gen_server.erl"},{line,593}]},
     {gen_server,handle_msg,5,[{file,"gen_server.erl"},{line,659}]},
     {proc_lib,init_p_do_apply,3,[{file,"proc_lib.erl"},{line,237}]}]}

=INFO REPORT==== 29-May-2015::19:15:24 ===
    application: sync
    exited: shutdown
    type: permanent
{"Kernel pid terminated",application_controller,"{application_terminated,sync,shutdown}"}

Crash dump was written to: erl_crash.dump
Kernel pid terminated (application_controller) ({application_terminated,sync,shutdown})
~/tmp/hello_world$ 
```
