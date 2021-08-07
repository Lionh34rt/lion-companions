QBCore = nil

Citizen.CreateThread(function()
    while QBCore == nil do
        TriggerEvent('QBCore:GetObject', function(obj) 
            QBCore = obj 
        end)
        Citizen.Wait(200)
    end
end)

-- code
isLoggedIn = false
animalSpawned = false
companion = nil
spawnDistanceRadius = 1.0

RegisterNetEvent("QBCore:Client:OnPlayerLoaded")
AddEventHandler("QBCore:Client:OnPlayerLoaded", function()
	animalSpawned = false
    companion = nil
end)

AddEventHandler('onClientResourceStart', function ()
	animalSpawned = false
    companion = nil
end)

RegisterNetEvent('lion-companions:client:ToggleCompanion')
AddEventHandler('lion-companions:client:ToggleCompanion', function()
    local model = "a_c_shepherd"
    if companion == nil or #(GetEntityCoords(PlayerPedId()) - GetEntityCoords(companion)) < 2.0 then
        -- Make Animal Sit
        if companion ~= nil then
            RequestAnimDict("creatures@rottweiler@amb@world_dog_sitting@base")
            while not HasAnimDictLoaded("creatures@rottweiler@amb@world_dog_sitting@base") do
                Wait(1)
            end
            TaskPlayAnim(companion, "creatures@rottweiler@amb@world_dog_sitting@base", "base", 8.0, 0.0, -1, 1, 0, 0, 0, 0)
        end

        TaskStartScenarioInPlace(PlayerPedId(), "CODE_HUMAN_MEDIC_TEND_TO_DEAD", 0, true)
        local progressBarMessage = "Picking Up Companion.."
        if not animalSpawned then
            progressBarMessage = "Placing Companion.."
        end
        QBCore.Functions.Progressbar("toggle_companion", progressBarMessage, 2000, false, true, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            if not animalSpawned then
                -- spawn animal
                spawnAnimal(model)
                animalSpawned = true
            else
                --delete animal
                deleteAnimal()
                animalSpawned = false
            end
            ClearPedTasks(PlayerPedId())
        end, function() -- Cancel
            ClearPedTasks(PlayerPedId())
        end)
    else
        QBCore.Functions.Notify("Companion is too far..", "error")
    end
end)    

function spawnAnimal(modelName)
    print("spawn companion")
    local hash = GetHashKey(modelName)

    local coords = GetEntityCoords(PlayerPedId())
    local spawnX = math.random(-spawnDistanceRadius,spawnDistanceRadius)
	local spawnY = math.random(-spawnDistanceRadius,spawnDistanceRadius)
	local spawnLoc = vector3(coords.x + spawnX, coords.y + spawnY, coords.z -1.0)
    
	RequestModel(modelName)
	while not HasModelLoaded(modelName) do
		Citizen.Wait(10)				
	end

	companion = CreatePed(28, hash, spawnLoc, true, true, true)
    SetModelAsNoLongerNeeded(modelName)
    Citizen.CreateThread(function()
        while companion ~= nil do
            Citizen.Wait(3)
            if IsControlJustPressed(0,38) then
                TaskGoToEntity(companion, PlayerPedId(), -1, 1.0, 10.0, 1073741824.0, 0)
                SetPedKeepTask(companion, true)
            end
        end
    end)
end

function deleteAnimal()
    DeleteEntity(companion)
    companion = nil
    print("despawn companion")
end

function DrawText3Ds(x, y, z, text)
	SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(text)
    SetDrawOrigin(x,y,z, 0)
    DrawText(0.0, 0.0)
    local factor = (string.len(text)) / 370
    DrawRect(0.0, 0.0+0.0125, 0.017+ factor, 0.03, 0, 0, 0, 75)
    ClearDrawOrigin()
end
