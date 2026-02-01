# Parche manual para snacks.nvim en Neovim

## ¿Por qué necesitas este parche?
En algunas versiones recientes de Neovim, snacks.nvim intenta usar `string.buffer`, lo que produce el error:

`module 'string.buffer' not found`

Este parche implementa las funciones necesarias para el objeto buffer directamente en Lua, evitando la dependencia rota y permitiendo que el plugin funcione normalmente.

---
## ¿Cuándo aplicar este parche?
- Si ves el error relacionado con `string.buffer` al usar snacks.nvim.
- Tras instalar el plugin en una máquina nueva, cambiar entorno, o actualizar snacks.nvim.

---
## ¿Qué va a modificar este parche?
- Vas a sustituir la implementación original por la siguiente definición del objeto buffer y sus métodos.

---
## Instrucciones paso a paso

### 1. Localiza la ruta donde está instalado snacks.nvim
La ruta suele ser:
`~/.local/share/nvim/lazy/snacks.nvim/lua/snacks/picker/util/init.lua`

### 2. Abre ese archivo con tu editor favorito
Por ejemplo:
```bash
nvim ~/.local/share/nvim/lazy/snacks.nvim/lua/snacks/picker/util/init.lua
```

### 3. Busca la función donde se usa el buffer
En la implementación parcheada, esto está dentro de la función:
```lua
function M.text(item, keys)
  -- Parche: implementación local de buffer para evitar error
  local buffer = {}
  buffer.data = {}
  function buffer:put(str)
    self.data[#self.data+1] = str
  end
  function buffer:putf(fmt, ...)
    self:put(string.format(fmt, ...))
  end
  function buffer:get()
    return table.concat(self.data, "")
  end
  for _, key in ipairs(keys) do
    if item[key] then
      if #buffer.data > 0 then
        buffer:put(" ")
      end
      if key == "pos" or key == "end_pos" then
        buffer:putf("%d:%d", item[key][1], item[key][2])
      else
        buffer:put(tostring(item[key]))
      end
    end
  end
  return buffer:get()
end
```

Copia y pega toda esta definición en tu archivo (sustituyendo la que venga por defecto).

### 4. Ajusta cualquier condicional o llamada que dependa de `buffer.data`
Ejemplo en la función:
```lua
if #buffer.data > 0 then
  buffer:put(" ")
end
```
Si el plugin actualiza su lógica y cambia el uso, verifica que sigas usando el patrón `buffer.data` como diccionario interno.

### 5. Guarda el archivo y reinicia Neovim

---
## ¿Qué sucede tras el parche?
- El error de 'string.buffer' desaparece.
- Puedes seguir usando snacks explorer y picker con normalidad.

---
## Recomendaciones y mantenimiento
- Mantén esta guía y el bloque de código como referencia.
- Si actualizas snacks.nvim y vuelve el error, reemplaza la instancia del buffer y sus métodos nuevamente según este ejemplo.
- Repite el proceso con otros plugins si dan errores similares (buffer roto por una dependencia externa no disponible).

---
Esta guía sirve como base de conocimiento técnico para parches de plugins Lua en Neovim. Personalízala si el plugin cambia o si encuentras nuevas variantes del problema.