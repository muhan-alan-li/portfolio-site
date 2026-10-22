# Local dev helpers for the Hugo portfolio site.
# `make` starts a live-reloading dev server at http://localhost:1313.

PORT ?= 1313
HUGO ?= hugo
HUGO_FLAGS ?= --buildDrafts --buildFuture --navigateToChanged --disableFastRender

.DEFAULT_GOAL := dev

.PHONY: dev build clean

dev: ## Start the dev server with live reload
	$(HUGO) server --port $(PORT) $(HUGO_FLAGS)

build: ## Build the site into ./public (same as CI)
	$(HUGO) --minify

clean: ## Remove build output and generated asset cache
	rm -rf public resources/_gen
