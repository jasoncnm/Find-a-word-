S = expand.grid(c("E","F","G","H","I","J"),c("E","F","G","H","I","J"),
                c("E","F","G","H","I","J"),c("E","F","G","H","I","J"))

sum(is.element(S[,1],c("E","I")) & is.element(S[,4],c("E","I")))



