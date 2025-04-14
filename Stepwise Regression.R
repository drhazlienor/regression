# for stepwise regression

## lets load the data
diabetes <- read_dta("diabetes.dta")

## Assume you have a full model like this:
full_model <-lm(hba1c ~ age + gender + crural + bmi + totchol + ldl + hdl, data = diabetes)

## And a minimal model (intercept only):
null_model <- lm(hba1c ~ 1, data = diabetes)

## Forward model
forward_model <- step(null_model,
                      scope = list(lower = null_model, upper = full_model),
                      direction = "forward")
summary(forward_model)

## Backward model
backward_model <- step(full_model,
                       direction = "backward")
summary(backward_model)

## Both Direction
stepwise_model <- step(full_model,
                       direction = "both")
summary(stepwise_model)

## Compare model
AIC(forward_model, backward_model)
