# vspace_RG

Quarto shortcode extension para insertar espacio vertical en presentaciones RevealJS y documentos Typst.

## Instalación

Copia la carpeta `vspace_RG` en el directorio `_extensions` de tu proyecto:

```
tu-proyecto/
├── _extensions/
│   └── vspace_RG/
│       ├── _extension.yml
│       └── vspace_RG.lua
└── tu-documento.qmd
```

## Uso

```markdown
{{< vspace_RG ALTURA >}}
```

### RevealJS

Acepta cualquier unidad CSS válida (`px`, `em`, `rem`, `vh`, etc.):

```markdown
{{< vspace_RG 20px >}}
{{< vspace_RG 2em >}}
{{< vspace_RG 5vh >}}
```

### Typst (PDF)

Acepta cualquier unidad de longitud válida en Typst (`em`, `mm`, `pt`, `cm`):

```markdown
{{< vspace_RG 2em >}}
{{< vspace_RG 10mm >}}
```

## Notas

- En HTML/RevealJS genera un `<div>` con `height` fijo.
- En Typst genera `#v(ALTURA)`.
- No usar unidades CSS (`px`, `vh`) en documentos Typst, ni unidades Typst (`pt` tipográfico) en RevealJS.
