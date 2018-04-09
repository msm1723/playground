def ways_to_roll_at_least(kPoints, nRolls):
    if kPoints <= 0:
        return pow(5, nRolls)
    elif nRolls == 0:
        return 0
    else:
        totalPocibleWaysToRoll, diceOutcome = 0, 2
        while diceOutcome <= 6:
            totalPocibleWaysToRoll = totalPocibleWaysToRoll + ways_to_roll_at_least(kPoints - diceOutcome, nRolls - 1)
            diceOutcome = diceOutcome + 1
        return totalPocibleWaysToRoll

def chance_to_roll_at_least(kPoints, nRolls):
    return ways_to_roll_at_least(kPoints, nRolls) / pow(6, nRolls)

