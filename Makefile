default: windows
	@true

clean: clean-windows
	@true

windows: clean-windows
	./script/build-windows

clean-windows:
	rm -f dist/DockerMachineSakuracloudSetup*.exe

release: clean-windows windows
	# Github infos
	GH_USER := yamamoto-febc
	GH_REPO := docker-machine-sakuracloud-installer

	$(if $(GITHUB_TOKEN), , \
			$(error GITHUB_TOKEN must be set for github-release))

	$(if $(GITHUB_TOKEN), , \
		$(error GITHUB_TOKEN must be set for github-release))

	$(eval VERSION=$(filter-out $@,$(MAKECMDGOALS)))

	$(if $(VERSION), , \
		$(error Pass the version number as the first arg. E.g.: make release 1.2.3))

	$(foreach MACHINE_FILE, $(wildcard $(PREFIX)/dist/*.exe), \
		$(shell github-release upload \
					--user $(GH_USER) \
					--repo $(GH_REPO) \
					--tag $(VERSION) \
					--name $(MACHINE_FILE) \
					--file $(MACHINE_FILE) \
			) \
		)
