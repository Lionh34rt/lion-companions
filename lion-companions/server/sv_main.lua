QBCore = nil 
QBCore = exports['qb-core']:GetCoreObject()

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

QBCore.Functions.CreateUseableItem("pet_husky", function(source, item)
	local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	TriggerClientEvent("lion-companions:client:ToggleCompanion", src, "a_c_husky")
end)

QBCore.Functions.CreateUseableItem("pet_chicken", function(source, item)
	local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	TriggerClientEvent("lion-companions:client:ToggleCompanion", src, "a_c_hen")
end)

QBCore.Functions.CreateUseableItem("pet_pug", function(source, item)
	local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	TriggerClientEvent("lion-companions:client:ToggleCompanion", src, "a_c_pug")
end)

QBCore.Functions.CreateUseableItem("pet_rabbit", function(source, item)
	local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	TriggerClientEvent("lion-companions:client:ToggleCompanion", src, "a_c_rabbit_01")
end)

QBCore.Functions.CreateUseableItem("pet_poodle", function(source, item)
	local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	TriggerClientEvent("lion-companions:client:ToggleCompanion", src, "a_c_poodle")
end)

QBCore.Functions.CreateUseableItem("pet_westy", function(source, item)
	local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	TriggerClientEvent("lion-companions:client:ToggleCompanion", src, "a_c_westy")
end)

QBCore.Functions.CreateUseableItem("pet_retriever", function(source, item)
	local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	TriggerClientEvent("lion-companions:client:ToggleCompanion", src, "a_c_retriever")
end)

QBCore.Functions.CreateUseableItem("pet_rottweiler", function(source, item)
	local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	TriggerClientEvent("lion-companions:client:ToggleCompanion", src, "a_c_rottweiler")
end)

QBCore.Functions.CreateUseableItem("pet_mtlion", function(source, item)
	local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	TriggerClientEvent("lion-companions:client:ToggleCompanion", src, "a_c_mtlion")
end)

QBCore.Functions.CreateUseableItem("pet_rat", function(source, item)
	local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	TriggerClientEvent("lion-companions:client:ToggleCompanion", src, "a_c_rat")
end)
