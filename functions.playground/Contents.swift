let income = [123, 783, 907, 475]
let result = income.reduce(0) { (summ, item) -> Int in
    var summ = summ
    summ += item
    return summ
}
print(result)
