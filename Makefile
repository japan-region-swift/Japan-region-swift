.PHONY: build preview clean

build:
	swift run Japan-Region-Swift

preview:
	swift run Japan-Region-Swift
	@ln -sfn . Build/Japan-region-swift
	@-lsof -ti:8000 | xargs kill 2>/dev/null || true
	@echo "Starting local server at http://localhost:8000/Japan-region-swift/"
	@open http://localhost:8000/Japan-region-swift/
	python3 -m http.server 8000 -d Build

clean:
	rm -rf Build .build
