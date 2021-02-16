--- ${title}

---@author ${author}
---@version r_version_r
---@date 19/12/2020

InitRoyalMod(Utils.getFilename("rmod/", g_currentModDirectory))

RealSeedsUsage = RoyalMod.new(r_debug_r, false)

function RealSeedsUsage:onPostLoadMap()
    g_fruitTypeManager.indexToFruitType[FruitType.WHEAT].seedUsagePerSqm = 0.02564 ------- 200  kg/ha -> 256,4 l/ha
    g_fruitTypeManager.indexToFruitType[FruitType.BARLEY].seedUsagePerSqm = 0.02941 ------ 200  kg/ha -> 294,1 l/ha
    g_fruitTypeManager.indexToFruitType[FruitType.OAT].seedUsagePerSqm = 0.0270 ---------- 135  kg/ha -> 270,0 l/ha
    g_fruitTypeManager.indexToFruitType[FruitType.CANOLA].seedUsagePerSqm = 0.001083 ----- 6,5  kg/ha -> 10,83 l/ha
    g_fruitTypeManager.indexToFruitType[FruitType.SUNFLOWER].seedUsagePerSqm = 0.001428 -- 5    kg/ha -> 14,28 l/ha
    g_fruitTypeManager.indexToFruitType[FruitType.SOYBEAN].seedUsagePerSqm = 0.007857 ---- 55   kg/ha -> 78,57 l/ha
    g_fruitTypeManager.indexToFruitType[FruitType.MAIZE].seedUsagePerSqm = 0.002437 ------ 19,5 kg/ha -> 24,37 l/ha
    g_fruitTypeManager.indexToFruitType[FruitType.POTATO].seedUsagePerSqm = 0.213333 ----- 1600 kg/ha -> 2,133 l/ha
    g_fruitTypeManager.indexToFruitType[FruitType.SUGARBEET].seedUsagePerSqm = 0.0070 ---- 50   kg/ha -> 70,00 l/ha
end
