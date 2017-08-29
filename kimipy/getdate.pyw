#!python

# a python script to get the current date

from datetime import datetime, date
import win32clipboard as w
import win32con
import string

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

today = date.today()

today_date = '%04d-%02d-%02d' % (today.year, today.month, today.day)
today_date = today_date.encode("GB2312")

set_text(today_date)
