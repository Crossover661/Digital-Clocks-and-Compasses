# minutes < 10, AM
execute if score TimeOfDay minute matches ..9 if score TimeOfDay hour24 matches ..11 run title @s actionbar [{"score":{"name":"TimeOfDay","objective":"hour12"},"color":"gold"},{"text":":0"},{"score":{"name":"TimeOfDay","objective":"minute"}},{"text":" AM, Day "},{"score":{"name":"TimeOfDay","objective":"day"}}]
# minutes < 10, PM
execute if score TimeOfDay minute matches ..9 if score TimeOfDay hour24 matches 12.. run title @s actionbar [{"score":{"name":"TimeOfDay","objective":"hour12"},"color":"gold"},{"text":":0"},{"score":{"name":"TimeOfDay","objective":"minute"}},{"text":" PM, Day "},{"score":{"name":"TimeOfDay","objective":"day"}}]
# minutes >= 10, AM
execute if score TimeOfDay minute matches 10.. if score TimeOfDay hour24 matches ..11 run title @s actionbar [{"score":{"name":"TimeOfDay","objective":"hour12"},"color":"gold"},{"text":":"},{"score":{"name":"TimeOfDay","objective":"minute"}},{"text":" AM, Day "},{"score":{"name":"TimeOfDay","objective":"day"}}]
# minutes >= 10, PM
execute if score TimeOfDay minute matches 10.. if score TimeOfDay hour24 matches 12.. run title @s actionbar [{"score":{"name":"TimeOfDay","objective":"hour12"},"color":"gold"},{"text":":"},{"score":{"name":"TimeOfDay","objective":"minute"}},{"text":" PM, Day "},{"score":{"name":"TimeOfDay","objective":"day"}}]