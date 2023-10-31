/* lobster */

def clcSum(nmToSDg, counter, sumDgF) -> int:
    if nmToSDg < 1:
        return sumDgF
    else:
        sumDgF = sumDgF + (nmToSDg % 10)
        nmToSDg = nmToSDg / 10
        return  clcSum(nmToSDg, counter + 1, sumDgF)

def fctrNm(vcStrNm, cont) ->int:
    let nmToSm = string_to_int(pop(vcStrNm))
    let secNm = string_to_int(pop(vcStrNm))
    let frstNm = string_to_int(pop(vcStrNm))
    let dgToSm = (frstNm * secNm) + nmToSm
    let rslSmDg = clcSum(dgToSm, 0, 0)
    return rslSmDg

def stSumDig(totDts, cnter) -> int:
    if cnter < totDts:
      let arStrNm = tokenize(get_line(""), " ", ",")
      let smDigF = fctrNm(arStrNm, 0)
      print(smDigF)
      stSumDig(totDts, cnter + 1)
      return
      
let dtSmStr = get_line ("")
let dtSmInt = string_to_int(dtSmStr)
stSumDig(dtSmInt, 0)
