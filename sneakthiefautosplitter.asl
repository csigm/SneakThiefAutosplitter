state("SneakThief01")
{
    uint mnchek: 0x101EE68, 0x0, 0x230, 0x14, 0xAC8;
    uint lngchek: 0x1023B40, 0x8, 0x58;
    uint lvlnd11111: 0x1022708, 0xC4, 0x78, 0x50, 0xF0, 0x10, 0x20, 0xA6C;
    uint mnycunt: 0x102FFE0, 0x10, 0x4, 0x24, 0x8, 0xC, 0xC, 0x24;
    uint lvlonecount: 0x1064160, 0x20, 0x0, 0x14, 0x1EC, 0xB34;
    uint lvlnd22222: 0x1037CE8, 0x50, 0xD4, 0xC, 0x18, 0x38, 0x474;
    uint mnchek22222: 0x101FDDC;
}

start
{
    if (current.lngchek == 0 && old.lngchek == 1)
    {
        return true;
    }
}

split
{
    if (current.lvlnd22222 > 0 && old.lvlnd22222 == 0 && current.mnycunt > 0)
    {
        return true;
    }
    if (current.lvlnd11111 > 0 && old.lvlnd11111 == 0 && current.mnycunt > 0)
    {
        return true;
    }
    if (current.lvlonecount > 0 && current.lvlnd22222 > 0 && old.lvlnd22222 == 0 )
    {
        return true;
    }
}

isLoading
{
    if (current.lngchek == 1 && old.lngchek == 0)
    {
        return true;
    }
    if (current.lngchek == 0 && old.lngchek == 1)
    {
        return false;
    }
    if (current.mnchek == 0)
    {
        return true;
    }
}

reset
{
    if (timer.CurrentSplitIndex == 0 && current.lngchek == 0 && old.lngchek != 0)
    {
        return true;
    }
}
