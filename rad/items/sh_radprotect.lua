ITEM.name = "Антирад"
ITEM.category = "Медицина"
ITEM.desc = "Препарат радиозащитного действия Мексамин, широко распространенный на территории Зоны. При применении вызывает сужения периферических кровеносных сосудов и кислородное голодание, в данном случае является средством профилактики и лечения лучевой болезни.\n\nРадиация: -34"
ITEM.price = 800
ITEM.functions.use = {
    name = "Использовать",
    icon = "icon16/add.png",
    onRun = function(item)
       local client = item.player
       client:setNetVar("radioactive", client:getNetVar("radioactive", 0) - 34)
       return true
    end,
    onCanRun = function(item)
        return !IsValid(item.entity)
    end
}
ITEM.permit = "misc"
ITEM.exRender = true
ITEM.model = "models/spenser/ssk/item/drug_antidot.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.iconCam = {
	pos = Vector(185, 155.5, 113.36277008057),
	ang = Angle(25, 220, 0),
	fov = 1.5
}
