/* Solution weightedsumdig */

def perfWghSmDg(lstWghNm, countWgNm, whgSmDg) -> int:
    if countWgNm < length(lstWghNm):
        whgSmDg += (lstWghNm[countWgNm] * (countWgNm + 1))
        countWgNm += 1
        return perfWghSmDg(lstWghNm, countWgNm, whgSmDg)
    else:
        return whgSmDg

def stArrNm(nmToWh, cnter, arNmWg) ->[int]:
    if nmToWh > 0:
        let numNW = nmToWh % 10
        arNmWg = insert(arNmWg, cnter - cnter, numNW)
        nmToWh = nmToWh / 10
        return stArrNm(nmToWh, cnter + 1, arNmWg)
    else:
        return arNmWg

def passEachCas(tStCs, counterCs) -> int:
    if length(tStCs) > 0:
        let eachCs = remove(tStCs, counterCs)
        let nmEach = string_to_int(eachCs)
        let vcNmIn:[int] = []
        let arrWgDg = stArrNm(nmEach, 0, vcNmIn)
        let smWgDg =  perfWghSmDg(arrWgDg, 0, 0)
        print smWgDg
        return passEachCas(tStCs, counterCs)
    else:
        return
      
let gtNmCs = get_line("")
let stNCs = string_to_int(gtNmCs)
let allStCs = get_line(" ")
let stCs = tokenize(allStCs, " ", " ")
passEachCas(stCs, 0)
