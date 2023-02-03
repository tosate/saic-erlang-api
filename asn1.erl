-module(asn1).
-export([start/0]).

start() ->
    io:format("Compiling...~n"),
    filelib:ensure_dir("./asn1_uper/"),
    asn1ct:compile("ASN.1/ApplicationDataMP", [uper,verbose,{outdir,"asn1_uper"}]),
    asn1ct:compile("ASN.1/DispatcherHeader", [uper,verbose,{outdir,"asn1_uper"}]),
    asn1ct:compile("ASN.1/DispatcherBody", [uper,verbose,{outdir,"asn1_uper"}]),
    asn1ct:compile("ASN.1/DispatcherBodyMP", [uper,verbose,{outdir,"asn1_uper"}]).
