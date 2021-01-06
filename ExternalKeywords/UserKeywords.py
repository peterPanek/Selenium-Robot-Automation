import os


def create_folder(foldername):
    os.mkdir("C:\\" + foldername)


def create_subfolder(subfoldername):
    os.mkdir("C:\\TestingWorldIndia\\" + subfoldername)


def concatenate_two_values(val1, val2):
    val3 = val1 + " " + val2
    return val3
