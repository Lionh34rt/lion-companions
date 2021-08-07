QBCore = nil

TriggerEvent('QBCore:GetObject', function(obj) 
    QBCore = obj 
end)

QBCore.Functions.CreateUseableItem("pet_shepherd", function(source, item)
	local src = source
    local Player = QBCore.Functions.GetPlayer(src)
  
	TriggerClientEvent("lion-companions:client:ToggleCompanion", src, "a_c_shepherd")
end)

QBCore.Functions.CreateUseableItem("pet_cat", function(source, item)
	local src = source
    local Player = QBCore.Functions.GetPlayer(src)
  
	TriggerClientEvent("lion-companions:client:ToggleCompanion", src, "a_c_cat_01")
end)

QBCore.Functions.CreateUseableItem("pet_pug", function(source, item)
	local src = source
    local Player = QBCore.Functions.GetPlayer(src)
  
	TriggerClientEvent("lion-companions:client:ToggleCompanion", src, "a_c_pug")
end)

QBCore.Functions.CreateUseableItem("pet_retriever", function(source, item)
	local src = source
    local Player = QBCore.Functions.GetPlayer(src)
  
	TriggerClientEvent("lion-companions:client:ToggleCompanion", src, "a_c_retriever")
end)

QBCore.Functions.CreateUseableItem("pet_rat", function(source, item)
	local src = source
    local Player = QBCore.Functions.GetPlayer(src)
  
	TriggerClientEvent("lion-companions:client:ToggleCompanion", src, "a_c_rat")
end)

QBCore.Functions.CreateUseableItem("pet_mtlion", function(source, item)
	local src = source
    local Player = QBCore.Functions.GetPlayer(src)
  
	TriggerClientEvent("lion-companions:client:ToggleCompanion", src, "a_c_mtlion")
end)