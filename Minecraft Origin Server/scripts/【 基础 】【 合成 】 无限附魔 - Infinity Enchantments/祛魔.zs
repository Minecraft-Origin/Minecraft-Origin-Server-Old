# Author: Zhang-Wei-666
# Homepage: https://github.com/Minecraft-Origin/Minecraft-Origin


import crafttweaker.enchantments.IEnchantment;


var ore = <ore:minecraft_origin_infinity_enchantments_zhang_wei_666>;
var book = <minecraft:enchanted_book>;


recipes.addShapeless(
    "Infinity Enchantments - Remove Enchantment",
    book,
    [
        # 只有满耐久的物品才能进行祛魔, 就当做限制吧
        # 没办法, 矿物词典不能用 anyDamage 匹配条件
        # 也可能是我没用对哈哈
        ore.marked("item")
           .transformNew(function( item ){

                var newItem = item.definition.makeStack();
                var itemEnchantments as IEnchantment[] = [];

                for enchantment in item.enchantments{
                    itemEnchantments += enchantment;
                }

                for index, enchantment in itemEnchantments{
                    if( index != 0 ){
                        newItem.addEnchantment( enchantment );
                    }
                }

                return newItem;
           })
    ],
    function( out, ins, info ){

        var itemEnchantments as IEnchantment[] = [];

        for enchantment in ins.item.enchantments{
            itemEnchantments += enchantment;
            break;
        }

        # 物品没有可以祛除的附魔属性
        if( itemEnchantments.length == 0 ){
            return null;
        }

        return out.withTag({
            StoredEnchantments: [{
                id: itemEnchantments[0].definition.id,
                lvl: itemEnchantments[0].level
            }]
        });

    },
    null
);