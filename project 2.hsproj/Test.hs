--Name: Hao Luo--
--KUID: 2737588--
module Test where
  
import Project_2

testcase = ["if ((2 / 0) <= 4) then 1 else 2",
               "2/0<=4",
               "1+0+1",
               "IsZero 3/0+1"
             ]

parserTest = (map parseABE testcase)
optimizeTest = (map optimize parserTest)
interpTest = (map interp testcase)
interpOpTest = (map interpOp testcase)


testingParser = mapM_ print parserTest
testingOptimize = mapM_ print optimizeTest
testingInterp = mapM_ print interpTest
testingInterpOp = mapM_ print interpOpTest

  
  
    