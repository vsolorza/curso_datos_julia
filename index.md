+++
title = "Julia Tutorials Template"
tags = ["code", "tutorials"]
+++

# Curso datos CICESE Oceanografía Física
Sitio Basado en template <https://rikhuijzer.github.io/JuliaTutorialsTemplate>
El Sitio WEB es
<https://github.com/jsheinbaum/curso_datos_julia>

Ver [Getting started](/getting-started).

## Qué hace este sitio?

This template contains multiple Pluto notebooks in the `tutorials` folder.
These tutorials are listed on the left side of this webpage.
Here,

1. each tutorial is created and updated in [Pluto.jl](https://github.com/fonsp/Pluto.jl), which is super easy and convenient ✔️,
1. evaluated and converted to Markdown files in parallel and with caching (for speed 🚀) by [PlutoStaticHTML.jl](https://github.com/jsheinbaum/PlutoStaticHTML.jl) _and_
1. the tutorials are embedded in a nice website by [Franklin.jl](https://github.com/tlienart/Franklin.jl) 😎.

These steps all run in an automated workflow, so changing a file in your copy of this template will cause the notebooks to be evaluated again (or not, if nothing changed since the last run).

## How can I make my own tutorials?

The following is the short guide, for a more detailled guide, see [Getting started](/getting-started).

- Copy the [template](https://github.com/jsheinbaum/curso_datos_julia) by clicking on big "Use this template" button.
- Replace the Pluto notebooks (`.jl` files) inside `tutorials` by your own tutorials.
- Change the menu at `layout/menu.html` to point to the right tutorials.
- Modify any text however you like, the source code has an MIT license.
- GitHub will take your tutorials and convert them automatically to a pretty website.

## What alternatives are there to this template?

There is a template by Fons van der Plas at <https://github.com/JuliaPluto/static-export-template>.
That template is easier to use, sticks closer to the original Pluto appearance and has a link to a Binder for each notebook.
In contrast, this template provides more flexibility in appearance and is more suitable for people who like to style their output or who even want to hide all code.
Also, this template assumes some knowledge about GitHub Actions and hosting a website via GitHub Pages.

