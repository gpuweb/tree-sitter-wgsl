# `tree-sitter-wgsl`

This repository contains a [Tree-sitter](https://tree-sitter.github.io/tree-sitter/) grammar for the [WebGPU Shading Language (WGSL)](https://gpuweb.github.io/gpuweb/wgsl/).

Since the repository is a minimal mirror of grammar produced by the upstream specification, it does not contain auto-generated build files. To use the grammar, it is necessary to generate the build files using:

```
npm install
tree-sitter init --update
tree-sitter generate
```
