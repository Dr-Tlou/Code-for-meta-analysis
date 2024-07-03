m1 <- metacont(isample, imean, isd, csample, cmean, csd,studlab = paste(study,year),
               data = Meta, sm = "SMD", method.tau =  "REML")
m1
m1 <- metacont(isample, imean, isd, csample, cmean, csd,studlab = paste(study,year),
               data = Meta, sm = "SMD", common = FALSE, method.tau =  "REML", subgroup = surg)
m1
forest(m1,col.square = "Dark Red",col.by = "Black",layout = "meta")
forest(m1, backtransf = TRUE,  studlab = paste(study),print.subgroup.name = FALSE,col.square = "Dark Red", layout = "meta",
            ff.study = "italic",common = FALSE, col.by = "Black",  plotwidth = "10cm",spacing = 1 ,addrows.below.overall = 1,
            fs.study.label = 11, ff.study.label = "bold",
            fs.axis = 5, ff.axis = "italic",
            ff.smlab = "bold.italic",
            ff.common = "plain", ff.hetstat = "plain", prediction = FALSE)
baujat(m1)
metareg(~ time, x = m1)
bubble(metareg(~ time, x = m1))
funnel(m1)
metabias(m1)
m2 <- trimfill(m1)
m2
forest(m1)
m1 <- metacont(usample, umean, usd, fsample, fmean, fsd,
               data = Meta_analyses, sm = "SMD")
metabias(m1)
metainf(m1, pooled = "random")
forest(metainf(m1))