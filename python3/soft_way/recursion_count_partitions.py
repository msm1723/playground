def count_partitions(number, pieces):
    if number == 0:
        return 1
    elif number < 0:
        return 0
    elif pieces == 0:
        return 0
    else:
        with_m = count_partitions(number - pieces, pieces)
        without_m = count_partitions(number, pieces - 1)
        return with_m + without_m
