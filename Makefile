N=0
SRC_DIR=src
BIN_DIR=bin
O_DIR=odir
HI_DIR=hidir

compile:
	mkdir -p $(HI_DIR)
	mkdir -p $(O_DIR)
	mkdir -p $(BIN_DIR)
	ghc -O2 -odir $(O_DIR)/p$(N) -hidir $(HI_DIR)/p$(N) $(SRC_DIR)/p$(N).hs -o $(BIN_DIR)/p$(N)

clean:
	rm -rf $(BIN_DIR)/* $(O_DIR)/* $(HI_DIR)/*
