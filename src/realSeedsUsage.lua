--- ${title}

---@author ${author}
---@version r_version_r
---@date 19/12/2020

InitRoyalMod(Utils.getFilename("rmod/", g_currentModDirectory))

---@class RealSeedsUsage : RoyalMod
RealSeedsUsage = RoyalMod.new(r_debug_r, false)

function RealSeedsUsage:onPostLoadMap()
    g_fruitTypeManager.indexToFruitType[FruitType.WHEAT].seedUsagePerSqm = 0.02564 ------- 200  kg/ha -> 256,4 l/ha
    g_fruitTypeManager.indexToFruitType[FruitType.BARLEY].seedUsagePerSqm = 0.02941 ------ 200  kg/ha -> 294,1 l/ha
    g_fruitTypeManager.indexToFruitType[FruitType.OAT].seedUsagePerSqm = 0.0270 ---------- 135  kg/ha -> 270,0 l/ha
    g_fruitTypeManager.indexToFruitType[FruitType.CANOLA].seedUsagePerSqm = 0.001083 ----- 6,5  kg/ha -> 10,83 l/ha
    g_fruitTypeManager.indexToFruitType[FruitType.SUNFLOWER].seedUsagePerSqm = 0.001428 -- 5    kg/ha -> 14,28 l/ha
    g_fruitTypeManager.indexToFruitType[FruitType.SOYBEAN].seedUsagePerSqm = 0.007857 ---- 55   kg/ha -> 78,57 l/ha
    g_fruitTypeManager.indexToFruitType[FruitType.MAIZE].seedUsagePerSqm = 0.002437 ------ 19,5 kg/ha -> 24,37 l/ha
    g_fruitTypeManager.indexToFruitType[FruitType.POTATO].seedUsagePerSqm = 0.213333 ----- 1600 kg/ha -> 2.133 l/ha
    g_fruitTypeManager.indexToFruitType[FruitType.SUGARBEET].seedUsagePerSqm = 0.0070 ---- 50   kg/ha -> 70,00 l/ha
    g_fruitTypeManager.indexToFruitType[FruitType.GRASS].seedUsagePerSqm = 0.0052 -------- 35   kg/ha -> 52,00 l/ha

    if self:fruitTypeExists("RYE") then
        g_fruitTypeManager.indexToFruitType[FruitType.RYE].seedUsagePerSqm = 0.022 ------- 150 kg/ha -> 220 l/ha
    end
    if self:fruitTypeExists("TRITICALE") then
        g_fruitTypeManager.indexToFruitType[FruitType.TRITICALE].seedUsagePerSqm = 0.0225 ------- 175 kg/ha -> 225 l/ha
    end
    if self:fruitTypeExists("SPELT") then
        g_fruitTypeManager.indexToFruitType[FruitType.SPELT].seedUsagePerSqm = 0.019 ------- 125 kg/ha -> 190 l/ha
    end
    if self:fruitTypeExists("MISCANTHUS") then
        g_fruitTypeManager.indexToFruitType[FruitType.MISCANTHUS].seedUsagePerSqm = 0.0042 ------- 30 kg/ha -> 42 l/ha
    end
    if self:fruitTypeExists("ALFALFA") then
        g_fruitTypeManager.indexToFruitType[FruitType.ALFALFA].seedUsagePerSqm = 0.0058 ------- 42 kg/ha -> 58 l/ha
    end
    if self:fruitTypeExists("CLOVER") then
        g_fruitTypeManager.indexToFruitType[FruitType.CLOVER].seedUsagePerSqm = 0.0039 ------- 36 kg/ha -> 39 l/ha
    end
    if self:fruitTypeExists("CARROT") then
        g_fruitTypeManager.indexToFruitType[FruitType.CARROT].seedUsagePerSqm = 0.0002 ------- 1.5 kg/ha -> 2 l/ha
    end
    if self:fruitTypeExists("ONION") then
        g_fruitTypeManager.indexToFruitType[FruitType.ONION].seedUsagePerSqm = 0.0011 ------- 8 kg/ha -> 11 l/ha
    end
end

function RealSeedsUsage:fruitTypeExists(name)
    return FruitType[name] ~= nil and g_fruitTypeManager.indexToFruitType[FruitType[name]]
end
