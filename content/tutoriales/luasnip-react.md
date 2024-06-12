+++
title="Poner snippets para react usando Luasnip"
date=2024-06-11
+++

## Luasnip *jsx* o *javascriptreact*
Este es un tutorial intermedio-avanzado, requiere que entiendas como funciona luasnip
y sus funciones.

Lo mas importante, es entender que `javascriptreact` es como luasnip reconoce los archivos `.jsx`

Hay dos soluciones disponibles

##### 1. Iterar sobre una lista de elementos
```lua
local snippets = {-- o sinó importalos require("../snippets")
    javascript = {...},
    javascriptreact = {...}
};
for lang, available_snippets in pairs(snippets) do
    luasnip.add_snippets(lang, available_snippets)
end
```

##### 2. Importarlos todos de una
```lua
luasnip.snippets = {
    html = {...},
    javascript = {...},
    javascriptreact = {...},
    ... = ...
};
```

Listo, esas son las dos soluciones para el temita de importar snippets de react (.jsx) a luasnip.
#### Fuentes
[L3MON4D3 html snippets in javascript/javascriptreact/vue](https://github.com/L3MON4D3/LuaSnip/issues/132)
