# minutes < 10, hours < 10
execute if score TimeOfDay minute matches ..9 if score TimeOfDay hour24 matches ..9 run title @s actionbar [{"text":"0","color":"gold"},{"score":{"name":"TimeOfDay","objective":"hour24"}},{"text":":0"},{"score":{"name":"TimeOfDay","objective":"minute"}},{"text":", Day "},{"score":{"name":"TimeOfDay","objective":"day"}}]
# minutes < 10, hours >= 10
execute if score TimeOfDay minute matches ..9 if score TimeOfDay hour24 matches 10.. run title @s actionbar [{"score":{"name":"TimeOfDay","objective":"hour24"},"color":"gold"},{"text":":0"},{"score":{"name":"TimeOfDay","objective":"minute"}},{"text":", Day "},{"score":{"name":"TimeOfDay","objective":"day"}}]
# minutes >= 10, hours < 10
execute if score TimeOfDay minute matches 10.. if score TimeOfDay hour24 matches ..9 run title @s actionbar [{"text":"0","color":"gold"},{"score":{"name":"TimeOfDay","objective":"hour24"}},{"text":":"},{"score":{"name":"TimeOfDay","objective":"minute"}},{"text":", Day "},{"score":{"name":"TimeOfDay","objective":"day"}}]
# minutes >= 10, hours >= 10
execute if score TimeOfDay minute matches 10.. if score TimeOfDay hour24 matches 10.. run title @s actionbar [{"score":{"name":"TimeOfDay","objective":"hour24"},"color":"gold"},{"text":":"},{"score":{"name":"TimeOfDay","objective":"minute"}},{"text":", Day "},{"score":{"name":"TimeOfDay","objective":"day"}}]