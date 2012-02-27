all: works broken

works: prog-works.exe
broken: prog-broken.exe

prog.opx: prog.opa
	opa --parser classic $^ -c -o $@

prog-broken.exe: prog.opx
	opa -o $@ $^

prog-works.exe: prog.opa
	opa --parser classic $^ -o $@

clean:
		rm -rf _build _tracks *.broken *.opp opa-debug *.exe *.opx .opx
