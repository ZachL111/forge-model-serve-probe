import PortfolioCore

expect :: Bool -> IO ()
expect True = pure ()
expect False = error "fixture mismatch"

main :: IO ()
main = do
  let signalcase_1 = Signal 53 80 16 11 8
  expect (score signalcase_1 == 88)
  expect (classify signalcase_1 == "review")
  let signalcase_2 = Signal 65 95 13 13 9
  expect (score signalcase_2 == 131)
  expect (classify signalcase_2 == "review")
  let signalcase_3 = Signal 79 107 12 22 5
  expect (score signalcase_3 == 105)
  expect (classify signalcase_3 == "review")
