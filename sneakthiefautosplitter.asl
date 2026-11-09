state("SneakThief01")
{
    uint mnchek: 0x101EE68, 0x0, 0x230, 0x14, 0xAC8;
    uint lngchek: 0x0FD3808, 0x20, 0x28, 0x180, 0xD78;
    uint lvlnd11111: 0x1022708, 0xC4, 0x78, 0x50, 0xF0, 0x10, 0x20, 0xA6C;
    uint mnycunt: 0x102FFE0, 0x10, 0x4, 0x24, 0x8, 0xC, 0xC, 0x24;
    uint lvlonecount: 0x0FDED14, 0x894;
    uint lvlnd22222: 0x1037CE8, 0x50, 0xD4, 0xC, 0x18, 0x38, 0x474;
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
    if (current.lvlnd22222 > 0 && old.lvlnd22222 == 0)
    {
        return true;
    }
    if (current.lvlnd11111 > 0 && old.lvlnd11111 == 0)
    {
        return true;
    }
}

isLoading
{
    if (current.lngchek > 0 && old.lngchek == 0)
    {
        return true;
    }
    if (current.mnchek != 1)
    {
        return true;
    }
    if (current.mnchek == 1)
    {
        return false;
    }
}
