all: 
	atdgen -t hacknews.atd
	atdgen -j hacknews.atd
	ocamlfind ocamlc -c hacknews_t.mli -package atdgen
	ocamlfind ocamlc -c hacknews_j.mli -package atdgen
	ocamlfind ocamlopt -c hacknews_t.ml -package atdgen
	ocamlfind ocamlopt -c hacknews_j.ml -package atdgen
	ocamlfind ocamlopt -c hacknews.ml -package atdgen
	ocamlfind ocamlopt -o hacknews hacknews_t.cmx hacknews_j.cmx hacknews.cmx \
	    -package atdgen -linkpkg
clean:
	rm -f *.cm[ioxa] *.cmx[as] *.[oa] *.opt *.run *~
	rm hacknews_*
