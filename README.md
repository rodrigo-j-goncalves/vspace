# quarto-vspace

Quarto shortcode extension para insertar espacio vertical en presentaciones RevealJS y documentos Typst.

## Instalación

Usa el comando de Quarto:

```bash
quarto add rodrigo-j-goncalves/vspace
```

Esto instalará la extensión en el directorio `_extensions` de tu proyecto:

```
tu-proyecto/
├── _extensions/
│   └── rodrigo-j-goncalves/
│       └── vspace/
│           ├── _extension.yml
│           ├── README.md
│           └── vspace.lua
└── tu-documento.qmd
```

## Uso

```markdown
{{< vspace ALTURA >}}
```

### RevealJS

Acepta cualquier unidad CSS válida (`px`, `em`, `rem`, `vh`, etc.):

```markdown
{{< vspace 20px >}}
{{< vspace 2em >}}
{{< vspace 5vh >}}
```

### Typst (PDF)

Acepta cualquier unidad de longitud válida en Typst (`em`, `mm`, `pt`, `cm`):

```markdown
{{< vspace 2em >}}
{{< vspace 10mm >}}
```

## Notas

- En HTML/RevealJS genera un `<div>` con `height` fijo.
- En Typst genera `#v(ALTURA)`.
- No usar unidades CSS (`px`, `vh`) en documentos Typst, ni unidades Typst (`pt` tipográfico) en RevealJS.
