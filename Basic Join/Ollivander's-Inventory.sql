select wands.id, wands_property.age, wands.coins_needed, wands.power
    from wands, wands_property, (select wp.age ag, w.power pw, min(w.coins_needed) cn
                                    from wands w, wands_property wp
                                    where w.code = wp.code and wp.is_evil = 0
                                        group by w.power, wp.age) a
    where wands_property.age = a.ag and wands.power = a.pw and wands.coins_needed = a.cn
        and wands.code = wands_property.code and wands_property.is_evil =0
    order by wands.power desc, wands_property.age desc
