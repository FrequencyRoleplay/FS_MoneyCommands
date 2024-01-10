local QBCore = exports['qb-core']:GetCoreObject()

-- cash
RegisterServerEvent("moneycommands:getPlayerCash")
AddEventHandler("moneycommands:getPlayerCash", function()
    local _source = source
    local xPlayer = QBCore.Functions.GetPlayer(_source)

    if xPlayer then
        local cashAmount = xPlayer.PlayerData.money.cash
        TriggerClientEvent("moneycommands:showPlayerCash", _source, cashAmount)
    end
end)

-- bank 
RegisterServerEvent("moneycommands:getPlayerBank")
AddEventHandler("moneycommands:getPlayerBank", function()
    local _source = source
    local xPlayer = QBCore.Functions.GetPlayer(_source)

    if xPlayer then
        local bankAmount = xPlayer.PlayerData.money.bank
        TriggerClientEvent("moneycommands:showPlayerBank", _source, bankAmount)
    end
end)

-- dono
RegisterServerEvent("moneycommands:getPlayerDono")
AddEventHandler("moneycommands:getPlayerDono", function()
    local _source = source
    local xPlayer = QBCore.Functions.GetPlayer(_source)

    if xPlayer then
        local donoAmount = xPlayer.PlayerData.money.donocoin
        TriggerClientEvent("moneycommands:showPlayerDono", _source, donoAmount)
    end
end)

-- Crypto
RegisterServerEvent("moneycommands:getPlayerCrypto")
AddEventHandler("moneycommands:getPlayerCrypto", function()
    local _source = source
    local xPlayer = QBCore.Functions.GetPlayer(_source)

    if xPlayer then
        local cryptoAmount = xPlayer.PlayerData.money.crypto
        TriggerClientEvent("moneycommands:showPlayerCrypto", _source, cryptoAmount)
    end
end)
