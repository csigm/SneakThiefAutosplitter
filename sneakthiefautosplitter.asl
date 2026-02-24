state("SneakThief01")
{
    uint mnchek: 0x101EE68, 0x0, 0x230, 0x14, 0xAC8;
    uint lngchek: 0x0FD3808, 0x20, 0x24, 0x184, 0xA0, 0x70, 0x8, 0x998;
    uint lvlnd: 0x1037CE8, 0x50, 0x108, 0x24, 0x10, 0x8, 0x470;
}

start
{
    if (current.mnchek == 1 && old.mnchek == 0)
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