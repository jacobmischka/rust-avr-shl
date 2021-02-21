.PHONY=list flash serial

list:
	@echo flash, serial

flash:
	cargo build --release
	./uno-runner.sh target/avr-atmega328p/release/rust-avr-shl.elf

serial: /dev/ttyUSB0
	screen $< 57600

