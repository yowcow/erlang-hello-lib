REBAR := ./rebar3

all: $(REBAR)

$(REBAR):
	curl -LO https://s3.amazonaws.com/rebar3/rebar3
	chmod +x rebar3

compile: $(REBAR)
	$(REBAR) compile

test: $(REBAR)
	$(REBAR) dialyzer
	$(REBAR) eunit

clean:
	rm -rf _build

realclean: clean
	rm $(REBAR)

.PHONY: all compile test clean realclean
