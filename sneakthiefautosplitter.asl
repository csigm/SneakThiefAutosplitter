state("SneakThief01")
{
    uint mnchek: 0x101EE68, 0x0, 0x230, 0x14, 0xAC8;
    uint lngchek: 0x1023B40, 0x58;
    uint lvlnd: 0x02BDC64, 0x638, 0x3A8, 0x8, 0x390;
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

reset
{
    if (current.rseeet > 0 && old.rseeet == 0)
    {
        return true;
    }
}