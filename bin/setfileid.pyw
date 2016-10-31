#!python

# a python script to generate a unique id for a new file name
# a file ID can be an ABB doc ID(3BSE048000) or kimim ID(201608[XX])

from datetime import datetime, date
import random
import sys
import os.path
import win32clipboard as w
import win32con
import string

CHAR_SET = "ABCDEFGHJKLNPQRSTUVXYZ0123456789"

random.seed(datetime.now().microsecond)

def get_text():
    w.OpenClipboard()
    d = w.GetClipboardData(win32con.CF_TEXT)
    w.CloseClipboard()
    return d

def set_text(aString):
    w.OpenClipboard()
    w.EmptyClipboard()
    w.SetClipboardData(win32con.CF_TEXT, aString)
    w.CloseClipboard()

def get_rand_letter():
    return CHAR_SET[random.randint(0, len(CHAR_SET) - 10 - 1)]

def get_rand_char():
    return CHAR_SET[random.randint(0, len(CHAR_SET))]

today = date.today()

docid = '%04d_%02d%02d%s__' % (today.year, today.month, today.day,
                               get_rand_letter() + get_rand_char())

docid = docid.encode("GB2312")
set_text(docid)
