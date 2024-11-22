-- Um remake, V2 do meu projeto Creeper em Lua.
-- Neste V2, eu estou melhorando á organização do meu código, tabelando suas caracterísitcas e funções..

-- UTF-8
-- os.execute("chcp 65001")

-- Info's Creeper
local function info ()
    monsterName = "Creeper"
    description = "Um creeper é um mob hostil comum que se aproxima silenciosamente dos jogadores e então explode, o que pode destruir blocos e causar grandes quantidades de dano . Creepers são uma grande fonte de pólvora, bem como a única maneira de obter a maioria dos discos de música. A explosão varia de acordo com a proximidade e a dificuldade."
    emoji = "🧨"
    sound = "Tsssssssss"
    favoriteTime = "Noturno"
    item = "Pólvora"

end

-- Função de Habilidades do NPC (Creeper)
local function skillCreeper()
    attackAtribute = 8
    defenseAtribute = 1
    lifeAtribute = 5
    speedAtribute = 4
    inteligenceAtribute = 2

end

-- Função que recebe um atributo e nos retorna um Progress Bar:
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

-- Exibição de Card de NPC (Creeper)
local exibirCard = {
    info(),
    print("================================================"),
    print("| Nome NPC: " .. monsterName),
    print("| Descrição: " .. description),
    print("| Emoji: " .. emoji),
    print("| Sound: " .. sound),
    print("| Item: " .. item),
    print("|"),
    print("|"),
    print("|"),
    print("|Habilidades NPC:"),
    skillCreeper(),
    print("|    Ataque:      " .. getProgressBar(attackAtribute)),
    print("|    Defesa:      " .. getProgressBar(defenseAtribute)),
    print("|    Vida:        " .. getProgressBar(lifeAtribute)),
    print("|    Velocidade:  " .. getProgressBar(speedAtribute)),
    print("|    Inteligência:" .. getProgressBar(inteligenceAtribute)),
    print("|"),
    print("|"),
    print("|"),
    print("|"),
    print("|"),
    print("================================================"),
}