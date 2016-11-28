project_4 = maximum [c | a <- [100..999], b <- [100..999], let c = a*b, let sc = show c, sc == reverse sc]
