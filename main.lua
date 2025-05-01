-- ✅ ฟังก์ชันพรีเมี่ยมที่จะถูกเรียกเมื่อพบ WxktU5zLUM
local function RunPremiumScript()
    print("Running Premium Script!")
    -- ใส่โค้ดพรีเมี่ยมตรงนี้
end

-- ✅ ตรวจหาว่ามี WxktU5zLUM ใน ReplicatedStorage หรือไม่
local function CheckPremiumFlag()
    local replicatedStorage = game:GetService("ReplicatedStorage")
    local found = replicatedStorage:FindFirstChild("WxktU5zLUM")

    -- ตรวจสอบว่าเป็น PlaceId ของแมพ "เมืองไทย 2" (4503309821)
    if game.PlaceId == 4503309821 then
        if found then
            RunPremiumScript()
        else
            -- เตะผู้เล่นเมื่อไม่พบธงพรีเมี่ยม
            local Players = game:GetService("Players")
            local LocalPlayer = Players.LocalPlayer
            LocalPlayer:Kick("ทำไรอะ คิดจะข้ามหรอ?")
        end
    else
        print("ไม่ใช่แมพที่ต้องการ")
    end
end

-- ✅ เรียกตรวจสอบทันที
CheckPremiumFlag()
