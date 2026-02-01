-- Permite agregar, eliminar o cambiar delimitadores como paréntesis y comillas fácilmente
return {
    {
        "nvim-mini/mini.nvim",
        version = "*",
        mappings = {
add = "sa", -- Añadir delimitador (normal y visual)
delete = "sd", -- Eliminar delimitador
find = "sf", -- Buscar delimitador hacia la derecha
find_left = "sF", -- Buscar delimitador hacia la izquierda
highlight = "sh", -- Resaltar delimitador
replace = "sr", -- Reemplazar delimitador

suffix_last = "l", -- Sufijo para buscar hacia atrás
suffix_next = "n", -- Sufijo para buscar hacia adelante
        },
        config = function()
            require("mini.surround").setup()
        end,
    },
}

