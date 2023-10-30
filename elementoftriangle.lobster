/* lobster */

def slTr(catA:int, hyp:int, catB:int) -> int: 
  if catA + catB >= hyp:
     return 1
  else:
     return 0

def slMed(num1, num2, nmArr, cter) -> int:
  if nmArr[cter] == num1 or nmArr[cter] == num2:
    return slMed(num1, num2, nmArr, cter + 1)
  else:
    let med:int = nmArr[cter]    
    return med

def sMnMx(arToSel:[int], indArr:int) -> int:
  let nMin = min(arToSel)
  let maxim =  max(arToSel)
  let xtrMed = slMed(nMin, maxim, arToSel, 0)
  let selTriang:int = slTr(nMin, maxim, xtrMed)
  return selTriang

def dtToInt(stDt:[string], ctDt:int, arInt:[int]) -> [int]:
  if ctDt < length(stDt):
    let ftDt = string_to_int(stDt[ctDt])
    push(arInt, ftDt)
    return dtToInt(stDt, ctDt + 1, arInt)
  else:
    return arInt

def gtDts(nNum:int, oNum:int) ->int:
    let dtTri = get_line("")
    let dtCs = tokenize(dtTri, " ", ",")
    let rrNum:[int] = []
    let secDtCs:[int] = dtToInt(dtCs, 0, rrNum)
    let selMinMaxInt = sMnMx(secDtCs, 0)
    return selMinMaxInt    

def bolTriangle(numDts, ftCs) -> int:
  let otNum = string_to_int(numDts)
  if ftCs < otNum:
    let ans:int = gtDts(otNum, 0)
    print(ans)
    bolTriangle(numDts, ftCs + 1)
    return
      
let dtsInt = get_line ("")
bolTriangle(dtsInt, 0)
