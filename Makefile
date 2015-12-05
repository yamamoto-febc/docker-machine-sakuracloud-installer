default: windows
	@true

clean: clean-windows
	@true

windows: clean-windows
	./script/build-windows

clean-windows:
	rm -f dist/DockerMachineSakuracloudSetup*.exe
