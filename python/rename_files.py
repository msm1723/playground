import os

def rename_files():
    # get file names from folder
    file_list = os.listdir("/Users/sergey.mazurov/playground/python/prank")
    # print(file_list)
    saved_path = os.getcwd()
    print("Current working directory" " + saved_path + ")
    os.chdir("/Users/sergey.mazurov/playground/python/prank")
    # for each file rename
    for file_name in file_list:
        print(file_name)
        file_name = (os.rename(file_name, file_name.translate(None, "0123456789")))
        print(file_name)
    os.chdir(saved_path)

rename_files()

