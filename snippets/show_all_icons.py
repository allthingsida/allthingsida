# Script that enumerates all icons in the built-in IDA GUI icon gallery
#
# AllThingsIDA (c) Elias Bachaalany
#

import idaapi
from idaapi import Choose

class MyChoose(Choose):
    def __init__(self, max_icons):
        Choose.__init__(
            self,
            "Icons gallery",
            [["IconID", 10 | Choose.CHCOL_DEC]])

        self.max_icons = max_icons
        self.icon = 5


    def OnGetSize(self):
        return self.max_icons


    def OnGetLine(self, n):
        return [str(n)]

    def OnGetIcon(self, n):
        return n

n = idaapi.ask_long(1450, "How many icons to probe?")
if n is not None and (n > 0):
    c = MyChoose(n + 1)
    c.Show(False)
