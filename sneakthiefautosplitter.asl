state("SneakThief01")
{
    uint mnchek: 0x101EE68, 0x0, 0x230, 0x14, 0xAC8;
    uint lngchek: 0x1023B40, 0x58;
    uint lvlnd: "mono.dll", 0x020B914, 0x10, 0xD4, 0xC, 0x10, 0x8, 0x434;
}

start
{
    if (current.lngchek == 0 && old.lngchek != 0)
    {
        return true;
    }
}

split
{
    if (current.lvlnd > 0 && old.lvlnd == 0)
    {
        return true;
    }
}

isLoading
{
    if (current.lvlnd > 0)
    {
        return true;
    }
    if (current.mnchek == 0)
    {
        return true;
    }
    else
    {
        return false;
    }
}