MK := mkdir -p
RM := rm -rf

GENERATOR := "Unix Makefiles"
SOURCE := "$(shell pwd)"

default:
	$(RM) "build" && $(MK) "build"
	cd "build" && cmake -G$(GENERATOR) -DCMAKE_TOOLCHAIN_FILE=generic.cmake $(SOURCE)
	
build_dir:
	$(MK) "build"

debug:
	$(MK) "build"
	$(MK) "build/debug"
	cd "build/debug" && cmake -G$(GENERATOR) -DCMAKE_BUILD_TYPE=debug -DCMAKE_TOOLCHAIN_FILE=generic.cmake $(SOURCE)
	cd "build/debug" && make install -j
	
release:
	$(MK) "build"
	$(MK) "build/release"
	cd "build/release" && cmake -G$(GENERATOR) -DCMAKE_BUILD_TYPE=release -DCMAKE_TOOLCHAIN_FILE=generic.cmake $(SOURCE)
	cd "build/release" && make install -j
	
clean:
	$(RM) "build"
	
help: 
	@echo "The following targets are available:"
	@echo "-- help"
	@echo "-- default"