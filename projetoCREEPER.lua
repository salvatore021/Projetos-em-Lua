-- Projeto Lua - Criando RG pro Creeper

-- UTF-8
-- os.execute ("chcp 65001")

-- Criatura
local monsterName = "CREEPER"
local description = "Um monstro furtivo com um temperamento explosivo"
local emoji = "🧨"
local sound = "Tssssssssss"
local favoriteTime = "Noturno"
local item = "Pólvora"

-- Atributos
local attackAtribute = 10
local defenseAtribute = 1
local lifeAtribute = 5
local speedAtribute = 6
local inteligenceAtribute = 2

-- função que recebe um atributo e nos retorna uma barra de progresso em string / texto
local function getProgressBar(attribute)
    local fullChar = "⬜"
    local emptyChar = "⬛"

    local result = ""
    for i = 1, 10, 1 do
        if i <= attribute then
            result = result .. fullChar
        else
            result = result .. emptyChar
        end
    end
    return result
end


-- Cartão do NPC
print("==============================================")
print("| Nome NPC: " .. monsterName)
print("| Descrição: " .. description)
print("| Som: " .. sound)
print("| Item Favorito: " .. item)
print("| Tempo Favorito: " .. favoriteTime)
print("| Emoji Favorito: " .. emoji)
print("|")
print("| Atributos")
print("|    Ataque:       " .. getProgressBar(attackAtribute))
print("|    Defesa:       " .. getProgressBar(defenseAtribute))
print("|    Vida:         " .. getProgressBar(lifeAtribute))
print("|    Velocidade:   " .. getProgressBar (speedAtribute))
print("|    Inteligência: " .. getProgressBar(inteligenceAtribute))
print("|")
print("|")
print("|")
print("==============================================")