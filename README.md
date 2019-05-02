# md2deck

md2deck is a CLI tool for generating presentation slides (with PDF) from Markdown documents by wrapping Revealjs, Pandoc and Decktape.

## Changelog

- 2019.05.03 v0.2.0
    - add command pattern `md2deck SLIDE...`
- 2019.04.12 v0.1.0
    - first release
    - filenames without extensions are automatically interpreted as needed. (e.g. `example/hello` -> `example/hello.md`, `example/hello.html`, `example/hello.pdf`)
- 2019.04.09 v0.1.0-beta
    - reimplemented md2deck in Python (it was a shell script)
- 2019.04.08 v0.1.0-alpha
    - alpha version
