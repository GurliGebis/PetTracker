--[[
Copyright 2012-2022 João Cardoso
PetTracker is distributed under the terms of the GNU General Public License (Version 3).
As a special exception, the copyright holders of this addon do not give permission to
redistribute and/or modify it.

This addon is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with the addon. If not, see <http://www.gnu.org/licenses/gpl-3.0.txt>.

This file is part of PetTracker.
--]]

local ADDON, Addon = ...
local Tooltips = Addon:NewModule('Tooltips')

function Tooltips:OnEnable()
    hooksecurefunc (_G, "BattlePetToolTip_Show",
    function(speciesID, ...)
      Tooltips.ModifyPetTip(speciesID)
    end
  )
end

function Tooltips.ModifyPetTip(speciesID)
  BattlePetTooltip:AddLine(" ")

  local petInfo = {C_PetJournal.GetPetInfoBySpeciesID(speciesID)}

  BattlePetTooltip:AddLine(petInfo[5], 1, 1, 1, true)
end