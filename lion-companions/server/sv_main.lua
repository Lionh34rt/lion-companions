QBCore = nil

TriggerEvent('QBCore:GetObject', function(obj) 
    QBCore = obj 
end)

QBCore.Functions.CreateUseableItem("doggo", function(source, item)
	local src = source
    	local Player = QBCore.Functions.GetPlayer(src)
	TriggerClientEvent("lion-companions:client:ToggleCompanion", src)
end)
