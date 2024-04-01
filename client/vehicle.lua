vehFunc = {}

local utils = require "modules.utils"

--- Get Vehicle Info By Plate
---@param plate string
function vehFunc.gvibp(plate)
    local vehInfo = lib.callback.await('rhd_garage:cb_server:getVehicleInfoByPlate', false, plate)
    return vehInfo and next(vehInfo) and vehInfo or false 
end

--- Get Outside Vehicle By Plate
---@param plate any
---@return integer | boolean
function vehFunc.govbp(plate)
    local Vehicles = GetGamePool("CVehicle")
    for i=1, #Vehicles do
        local entity = Vehicles[i]
        if DoesEntityExist(entity) then
            local vP = utils.getPlate(entity)
            if vP == plate then
                return entity
            end
        end
    end
    return false
end

--- Track Vehicle By Plate
---@param plate any
---@param garage string
function vehFunc.tvbp(plate, garage)
    local coords = lib.callback.await("rhd_garage:cb_server:getoutsideVehicleCoords", false, plate)
    if not coords then return false end
    SetNewWaypoint(coords.x, coords.y)
    return true
end

--- Get Players Vehicle For Phone
---@return table
function vehFunc.gpvfp()
    return lib.callback.await('rhd_garage:cb_server:GetPlayerVehiclesForPhone')
end

--- Get Vehicle Properties
---@param vehicle string | integer
function vehFunc.gvp(vehicle)
    return lib.getVehicleProperties(vehicle)
end

---@param vehicle string | integer
---@param props table
function vehFunc.svp(vehicle, props)
    return lib.setVehicleProperties(vehicle, props)
end

---@param model string|integer
---@return string|nil
local function getVehicleTypeByModel ( model )
    return utils.getVehicleTypeByModel( model )
end

---callback
lib.callback.register('rhd_garage:cb_client:vehicleSpawned', function(netId, props, deformation)
    local veh = NetworkGetEntityFromNetworkId(netId)

    for i = -1, 0 do
        local ped = GetPedInVehicleSeat(veh, i)
        if ped ~= cache.ped and ped > 0 and NetworkGetEntityOwner(ped) == cache.playerId then
            DeleteEntity(ped)
        end
    end

    if props then
        vehFunc.svp(veh, props)
    end

    if deformation then
        
    end
end)

--- exports
exports('trackveh', vehFunc.tvbp)
exports('getvehForPhone', vehFunc.gpvfp)
exports('getVehicleTypeByModel', getVehicleTypeByModel)
