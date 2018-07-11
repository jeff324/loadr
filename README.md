# loadr

Usually, RData files are loaded via load(). This places all objects in the RData file in the global workspace.
loadr allows RData files to be loaded directly into variables. 

#### Example

``` r
x = pi                     # make some data
save(x, file= "pi.RData")  # save data
rm(x)                      # remove data
x = load_rdata('pi.RData') # load data
```

#### When RData contains multiple objects, the objects are loaded into a list

``` r
x_list = list(pi = pi, pi_sq = pi^2)
save(x_list, file= "pi_list.RData")
rm(x_list)
x_list = load_rdata('pi_list.RData')
```
