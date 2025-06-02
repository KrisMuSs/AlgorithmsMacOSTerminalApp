

import Foundation

func distributeCandies(_ n: Int, _ limit: Int) -> Int {
    var result = 0
    // Диапазон возможных значений для первого ребёнка
    // Представим, что двум другим детям B и C мы дали по максимуму limit
    // Тогда на первого остаётся: n - 2*limit.
    // Первый ребёнок не может получить больше, чем всего конфет n, и не больше limit

    let firstMin = max(0, n - 2 * limit)
    let firstMax = min(limit, n)
    
   // A = i
    for i in firstMin...firstMax {
        // Диапазон возможных значений для второго ребёнка
    
        let secondMin = max(0, n - i - limit)
        //  Если третьему ребёнку отдаем максимум limit конфет, то тогда когда мы отдадим третьему максимум,
        //  то остальное должен получить второй. Если результат отрицательный, значит второй должен получить 0.
        let secondMax = min(limit, n - i)
        result += secondMax - secondMin + 1
    }

    return result
}

// print(distributeCandies(5, 2))
