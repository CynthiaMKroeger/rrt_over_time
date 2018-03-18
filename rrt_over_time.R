# ------------------------------------------------------------------------------ #
# Code for use of RRT terms in Abstracts over Time
# By: Cynthia M. Kroeger 
# ------------------------------------------------------------------------------ #
#### Naming Convention #### 
# ------------------------------------------------------------------------------ #

# nat = Nature 
# sci = Science 
# nejm = The New England Journal of Medicine 
# jama = Journal of the American Medical Association 
# lan = The Lancet 
# bmj = The British Medical Journal 
# nih = Articles indexed in PubMed Central 

# fif = 1950s 
# six = 1960s 
# sev = 1970s 
# eig = 1980s 
# nin = 1990s 
# tho = 2000s 
# ten = 2010s 

# rrt = rigor, reproducibility, transparency 

# ct = count
# mtx = matrix

# src = source (journal/pmc)
# dec = decade 

# ------------------------------------------------------------------------------ #
#### Create Search String Objects ####
# ------------------------------------------------------------------------------ #

# ------------------- # Objects for journal search strings # ------------------- #

nat <- "(Nature[JOUR])"
sci <- "(Science[JOUR])"
nejm <- "(The New England journal of medicine[JOUR])"
jama <- "(JAMA[JOUR] OR Journal of the American Medical Association[JOUR])"
lan <- "(Lancet[JOUR])"
bmj <- "(BMJ[JOUR] OR British medical journal[JOUR])"

# ------------------- # Objects for decade search strings # -------------------- #

fif <- "(1950:1959[PDAT])"
six <- "(1960:1969[PDAT])"
sev <- "(1970:1979[PDAT])"
eig <- "(1980:1989[PDAT])"
nin <- "(1990:1999[PDAT])"
tho <- "(2000:2009[PDAT])"
ten <- "(2010:2019[PDAT])"

# --------------------- # Object for RRT search string # ----------------------- #

rrt <- "(rigor[TIAB] OR reproducibility[TIAB] OR transparency[TIAB])"
rrt_pmc <- "(rigor[ABST] OR reproducibility[ABST] OR transparency[ABST])"

# -------------- # Objects for journal by decade search string # --------------- #

nat_fif <- paste(nat, "AND", fif)
nat_six <- paste(nat, "AND", six)
nat_sev <- paste(nat, "AND", sev)
nat_eig <- paste(nat, "AND", eig)
nat_nin <- paste(nat, "AND", nin)
nat_tho <- paste(nat, "AND", tho)
nat_ten <- paste(nat, "AND", ten)
sci_fif <- paste(sci, "AND", fif)
sci_six <- paste(sci, "AND", six)
sci_sev <- paste(sci, "AND", sev)
sci_eig <- paste(sci, "AND", eig)
sci_nin <- paste(sci, "AND", nin)
sci_tho <- paste(sci, "AND", tho)
sci_ten <- paste(sci, "AND", ten)
nejm_fif <- paste(nejm, "AND", fif)
nejm_six <- paste(nejm, "AND", six)
nejm_sev <- paste(nejm, "AND", sev)
nejm_eig <- paste(nejm, "AND", eig)
nejm_nin <- paste(nejm, "AND", nin)
nejm_tho <- paste(nejm, "AND", tho)
nejm_ten <- paste(nejm, "AND", ten)
jama_fif <- paste(jama, "AND", fif)
jama_six <- paste(jama, "AND", six)
jama_sev <- paste(jama, "AND", sev)
jama_eig <- paste(jama, "AND", eig)
jama_nin <- paste(jama, "AND", nin)
jama_tho <- paste(jama, "AND", tho)
jama_ten <- paste(jama, "AND", ten)
lan_fif <- paste(lan, "AND", fif)
lan_six <- paste(lan, "AND", six)
lan_sev <- paste(lan, "AND", sev)
lan_eig <- paste(lan, "AND", eig)
lan_nin <- paste(lan, "AND", nin)
lan_tho <- paste(lan, "AND", tho)
lan_ten <- paste(lan, "AND", ten)
bmj_fif <- paste(bmj, "AND", fif)
bmj_six <- paste(bmj, "AND", six)
bmj_sev <- paste(bmj, "AND", sev)
bmj_eig <- paste(bmj, "AND", eig)
bmj_nin <- paste(bmj, "AND", nin)
bmj_tho <- paste(bmj, "AND", tho)
bmj_ten <- paste(bmj, "AND", ten)

# ---------- # Objects for journal by decade with RRT search string # ---------- #

nat_fif_rrt <- paste(nat_fif, "AND", rrt)
nat_six_rrt <- paste(nat_six, "AND", rrt)
nat_sev_rrt <- paste(nat_sev, "AND", rrt)
nat_eig_rrt <- paste(nat_eig, "AND", rrt)
nat_nin_rrt <- paste(nat_nin, "AND", rrt)
nat_tho_rrt <- paste(nat_tho, "AND", rrt)
nat_ten_rrt <- paste(nat_ten, "AND", rrt)
sci_fif_rrt <- paste(sci_fif, "AND", rrt)
sci_six_rrt <- paste(sci_six, "AND", rrt)
sci_sev_rrt <- paste(sci_sev, "AND", rrt)
sci_eig_rrt <- paste(sci_eig, "AND", rrt)
sci_nin_rrt <- paste(sci_nin, "AND", rrt)
sci_tho_rrt <- paste(sci_tho, "AND", rrt)
sci_ten_rrt <- paste(sci_ten, "AND", rrt)
nejm_fif_rrt <- paste(nejm_fif, "AND", rrt)
nejm_six_rrt <- paste(nejm_six, "AND", rrt)
nejm_sev_rrt <- paste(nejm_sev, "AND", rrt)
nejm_eig_rrt <- paste(nejm_eig, "AND", rrt)
nejm_nin_rrt <- paste(nejm_nin, "AND", rrt)
nejm_tho_rrt <- paste(nejm_tho, "AND", rrt)
nejm_ten_rrt <- paste(nejm_ten, "AND", rrt)
jama_fif_rrt <- paste(jama_fif, "AND", rrt)
jama_six_rrt <- paste(jama_six, "AND", rrt)
jama_sev_rrt <- paste(jama_sev, "AND", rrt)
jama_eig_rrt <- paste(jama_eig, "AND", rrt)
jama_nin_rrt <- paste(jama_nin, "AND", rrt)
jama_tho_rrt <- paste(jama_tho, "AND", rrt)
jama_ten_rrt <- paste(jama_ten, "AND", rrt)
lan_fif_rrt <- paste(lan_fif, "AND", rrt)
lan_six_rrt <- paste(lan_six, "AND", rrt)
lan_sev_rrt <- paste(lan_sev, "AND", rrt)
lan_eig_rrt <- paste(lan_eig, "AND", rrt)
lan_nin_rrt <- paste(lan_nin, "AND", rrt)
lan_tho_rrt <- paste(lan_tho, "AND", rrt)
lan_ten_rrt <- paste(lan_ten, "AND", rrt)
bmj_fif_rrt <- paste(bmj_fif, "AND", rrt)
bmj_six_rrt <- paste(bmj_six, "AND", rrt)
bmj_sev_rrt <- paste(bmj_sev, "AND", rrt)
bmj_eig_rrt <- paste(bmj_eig, "AND", rrt)
bmj_nin_rrt <- paste(bmj_nin, "AND", rrt)
bmj_tho_rrt <- paste(bmj_tho, "AND", rrt)
bmj_ten_rrt <- paste(bmj_ten, "AND", rrt)

# -------------- # Objects for decade by RRT for NIH/PMC search # -------------- #

# The PMC search specification is added during the rentrez query 
# Decade search strings in PMC will be used for reference 

nih_fif_rrt <- paste(fif, "AND", rrt_pmc)
nih_six_rrt <- paste(six, "AND", rrt_pmc)
nih_sev_rrt <- paste(sev, "AND", rrt_pmc)
nih_eig_rrt <- paste(eig, "AND", rrt_pmc)
nih_nin_rrt <- paste(nin, "AND", rrt_pmc)
nih_tho_rrt <- paste(tho, "AND", rrt_pmc)
nih_ten_rrt <- paste(ten, "AND", rrt_pmc)

# ------------------------------------------------------------------------------ #
#### Obtain Counts from PubMed ####
# ------------------------------------------------------------------------------ #

# Install Rentrez 

install.packages("rentrez")
library("rentrez")

# ----- # Obtain counts for each journal by publication decade in PubMed # ----- #

nat_fif_ct <- entrez_search(db = "pubmed", 
                                term = nat_fif, 
                                retmax = 0)
nat_six_ct <- entrez_search(db = "pubmed", 
                                term = nat_six, 
                                retmax = 0)
nat_sev_ct <- entrez_search(db = "pubmed", 
                                term = nat_sev, 
                                retmax = 0)
nat_eig_ct <- entrez_search(db = "pubmed", 
                                term = nat_eig, 
                                retmax = 0)
nat_nin_ct <- entrez_search(db = "pubmed", 
                                term = nat_nin, 
                                retmax = 0)
nat_tho_ct <- entrez_search(db = "pubmed", 
                                term = nat_tho, 
                                retmax = 0)
nat_ten_ct <- entrez_search(db = "pubmed", 
                                term = nat_ten, 
                                retmax = 0)
sci_fif_ct <- entrez_search(db = "pubmed", 
                                term = sci_fif, 
                                retmax = 0)
sci_six_ct <- entrez_search(db = "pubmed", 
                                term = sci_six, 
                                retmax = 0)
sci_sev_ct <- entrez_search(db = "pubmed", 
                                term = sci_sev, 
                                retmax = 0)
sci_eig_ct <- entrez_search(db = "pubmed", 
                                term = sci_eig, 
                                retmax = 0)
sci_nin_ct <- entrez_search(db = "pubmed", 
                                term = sci_nin, 
                                retmax = 0)
sci_tho_ct <- entrez_search(db = "pubmed", 
                                term = sci_tho, 
                                retmax = 0)
sci_ten_ct <- entrez_search(db = "pubmed", 
                                term = sci_ten, 
                                retmax = 0)
nejm_fif_ct <- entrez_search(db = "pubmed", 
                                 term = nejm_fif, 
                                 retmax = 0)
nejm_six_ct <- entrez_search(db = "pubmed", 
                                 term = nejm_six, 
                                 retmax = 0)
nejm_sev_ct <- entrez_search(db = "pubmed", 
                                 term = nejm_sev, 
                                 retmax = 0)
nejm_eig_ct <- entrez_search(db = "pubmed", 
                                 term = nejm_eig, 
                                 retmax = 0)
nejm_nin_ct <- entrez_search(db = "pubmed", 
                                 term = nejm_nin, 
                                 retmax = 0)
nejm_tho_ct <- entrez_search(db = "pubmed", 
                                 term = nejm_tho, 
                                 retmax = 0)
nejm_ten_ct <- entrez_search(db = "pubmed", 
                                 term = nejm_ten, 
                                 retmax = 0)
jama_fif_ct <- entrez_search(db = "pubmed", 
                                 term = jama_fif, 
                                 retmax = 0)
jama_six_ct <- entrez_search(db = "pubmed", 
                                 term = jama_six, 
                                 retmax = 0)
jama_sev_ct <- entrez_search(db = "pubmed", 
                                 term = jama_sev, 
                                 retmax = 0)
jama_eig_ct <- entrez_search(db = "pubmed", 
                                 term = jama_eig, 
                                 retmax = 0)
jama_nin_ct <- entrez_search(db = "pubmed", 
                                 term = jama_nin, 
                                 retmax = 0)
jama_tho_ct <- entrez_search(db = "pubmed", 
                                 term = jama_tho, 
                                 retmax = 0)
jama_ten_ct <- entrez_search(db = "pubmed", 
                                 term = jama_ten, 
                                 retmax = 0)
lan_fif_ct <- entrez_search(db = "pubmed", 
                                term = lan_fif, 
                                retmax = 0)
lan_six_ct <- entrez_search(db = "pubmed", 
                                term = lan_six, 
                                retmax = 0)
lan_sev_ct <- entrez_search(db = "pubmed", 
                                term = lan_sev, 
                                retmax = 0)
lan_eig_ct <- entrez_search(db = "pubmed", 
                                term = lan_eig, 
                                retmax = 0)
lan_nin_ct <- entrez_search(db = "pubmed", 
                                term = lan_nin, 
                                retmax = 0)
lan_tho_ct <- entrez_search(db = "pubmed", 
                                term = lan_tho, 
                                retmax = 0)
lan_ten_ct <- entrez_search(db = "pubmed", 
                                term = lan_ten, 
                                retmax = 0)
bmj_fif_ct <- entrez_search(db = "pubmed", 
                                term = bmj_fif, 
                                retmax = 0)
bmj_six_ct <- entrez_search(db = "pubmed", 
                                term = bmj_six, 
                                retmax = 0)
bmj_sev_ct <- entrez_search(db = "pubmed", 
                                term = bmj_sev, 
                                retmax = 0)
bmj_eig_ct <- entrez_search(db = "pubmed", 
                                term = bmj_eig, 
                                retmax = 0)
bmj_nin_ct <- entrez_search(db = "pubmed", 
                                term = bmj_nin, 
                                retmax = 0)
bmj_tho_ct <- entrez_search(db = "pubmed", 
                                term = bmj_tho, 
                                retmax = 0)
bmj_ten_ct <- entrez_search(db = "pubmed", 
                                term = bmj_ten, 
                                retmax = 0)

# ------ # Obtain counts for each journal by decade with RRT in PubMed # ------- #

nat_fif_rrt_ct <- entrez_search(db = "pubmed", 
                                term = nat_fif_rrt, 
                                retmax = 0)
nat_six_rrt_ct <- entrez_search(db = "pubmed", 
                                term = nat_six_rrt, 
                                retmax = 0)
nat_sev_rrt_ct <- entrez_search(db = "pubmed", 
                                term = nat_sev_rrt, 
                                retmax = 0)
nat_eig_rrt_ct <- entrez_search(db = "pubmed", 
                                term = nat_eig_rrt, 
                                retmax = 0)
nat_nin_rrt_ct <- entrez_search(db = "pubmed", 
                                term = nat_nin_rrt, 
                                retmax = 0)
nat_tho_rrt_ct <- entrez_search(db = "pubmed", 
                                term = nat_tho_rrt, 
                                retmax = 0)
nat_ten_rrt_ct <- entrez_search(db = "pubmed", 
                               term = nat_ten_rrt, 
                               retmax = 0)
sci_fif_rrt_ct <- entrez_search(db = "pubmed", 
                                term = sci_fif_rrt, 
                                retmax = 0)
sci_six_rrt_ct <- entrez_search(db = "pubmed", 
                                term = sci_six_rrt, 
                                retmax = 0)
sci_sev_rrt_ct <- entrez_search(db = "pubmed", 
                                term = sci_sev_rrt, 
                                retmax = 0)
sci_eig_rrt_ct <- entrez_search(db = "pubmed", 
                                term = sci_eig_rrt, 
                                retmax = 0)
sci_nin_rrt_ct <- entrez_search(db = "pubmed", 
                                term = sci_nin_rrt, 
                                retmax = 0)
sci_tho_rrt_ct <- entrez_search(db = "pubmed", 
                                term = sci_tho_rrt, 
                                retmax = 0)
sci_ten_rrt_ct <- entrez_search(db = "pubmed", 
                                term = sci_ten_rrt, 
                                retmax = 0)
nejm_fif_rrt_ct <- entrez_search(db = "pubmed", 
                                 term = nejm_fif_rrt, 
                                 retmax = 0)
nejm_six_rrt_ct <- entrez_search(db = "pubmed", 
                                 term = nejm_six_rrt, 
                                 retmax = 0)
nejm_sev_rrt_ct <- entrez_search(db = "pubmed", 
                                 term = nejm_sev_rrt, 
                                 retmax = 0)
nejm_eig_rrt_ct <- entrez_search(db = "pubmed", 
                                 term = nejm_eig_rrt, 
                                 retmax = 0)
nejm_nin_rrt_ct <- entrez_search(db = "pubmed", 
                                 term = nejm_nin_rrt, 
                                 retmax = 0)
nejm_tho_rrt_ct <- entrez_search(db = "pubmed", 
                                 term = nejm_tho_rrt, 
                                 retmax = 0)
nejm_ten_rrt_ct <- entrez_search(db = "pubmed", 
                                 term = nejm_ten_rrt, 
                                 retmax = 0)
jama_fif_rrt_ct <- entrez_search(db = "pubmed", 
                                 term = jama_fif_rrt, 
                                 retmax = 0)
jama_six_rrt_ct <- entrez_search(db = "pubmed", 
                                 term = jama_six_rrt, 
                                 retmax = 0)
jama_sev_rrt_ct <- entrez_search(db = "pubmed", 
                                 term = jama_sev_rrt, 
                                 retmax = 0)
jama_eig_rrt_ct <- entrez_search(db = "pubmed", 
                                 term = jama_eig_rrt, 
                                 retmax = 0)
jama_nin_rrt_ct <- entrez_search(db = "pubmed", 
                                 term = jama_nin_rrt, 
                                 retmax = 0)
jama_tho_rrt_ct <- entrez_search(db = "pubmed", 
                                 term = jama_tho_rrt, 
                                 retmax = 0)
jama_ten_rrt_ct <- entrez_search(db = "pubmed", 
                                 term = jama_ten_rrt, 
                                 retmax = 0)
lan_fif_rrt_ct <- entrez_search(db = "pubmed", 
                                term = lan_fif_rrt, 
                                retmax = 0)
lan_six_rrt_ct <- entrez_search(db = "pubmed", 
                                term = lan_six_rrt, 
                                retmax = 0)
lan_sev_rrt_ct <- entrez_search(db = "pubmed", 
                                term = lan_sev_rrt, 
                                retmax = 0)
lan_eig_rrt_ct <- entrez_search(db = "pubmed", 
                                term = lan_eig_rrt, 
                                retmax = 0)
lan_nin_rrt_ct <- entrez_search(db = "pubmed", 
                                term = lan_nin_rrt, 
                                retmax = 0)
lan_tho_rrt_ct <- entrez_search(db = "pubmed", 
                                term = lan_tho_rrt, 
                                retmax = 0)
lan_ten_rrt_ct <- entrez_search(db = "pubmed", 
                                term = lan_ten_rrt, 
                                retmax = 0)
bmj_fif_rrt_ct <- entrez_search(db = "pubmed", 
                                term = bmj_fif_rrt, 
                                retmax = 0)
bmj_six_rrt_ct <- entrez_search(db = "pubmed", 
                                term = bmj_six_rrt, 
                                retmax = 0)
bmj_sev_rrt_ct <- entrez_search(db = "pubmed", 
                                term = bmj_sev_rrt, 
                                retmax = 0)
bmj_eig_rrt_ct <- entrez_search(db = "pubmed", 
                                term = bmj_eig_rrt, 
                                retmax = 0)
bmj_nin_rrt_ct <- entrez_search(db = "pubmed", 
                                term = bmj_nin_rrt, 
                                retmax = 0)
bmj_tho_rrt_ct <- entrez_search(db = "pubmed", 
                                term = bmj_tho_rrt, 
                                retmax = 0)
bmj_ten_rrt_ct <- entrez_search(db = "pubmed", 
                                term = bmj_ten_rrt, 
                                retmax = 0)

# ------ # Obtain counts for each publication decade in PubMed Central # ------- #

nih_fif_ct <- entrez_search(db = "pmc", 
                                term = fif, 
                                retmax = 0)
nih_six_ct <- entrez_search(db = "pmc", 
                                term = six, 
                                retmax = 0)
nih_sev_ct <- entrez_search(db = "pmc", 
                                term = sev, 
                                retmax = 0)
nih_eig_ct <- entrez_search(db = "pmc", 
                                term = eig, 
                                retmax = 0)
nih_nin_ct <- entrez_search(db = "pmc", 
                                term = nin, 
                                retmax = 0)
nih_tho_ct <- entrez_search(db = "pmc", 
                                term = tho, 
                                retmax = 0)
nih_ten_ct <- entrez_search(db = "pmc", 
                                term = ten, 
                                retmax = 0)

# -------- # Obtain counts for each decade with RRT in PubMed Central # -------- #

nih_fif_rrt_ct <- entrez_search(db = "pmc", 
                                term = nih_fif_rrt, 
                                retmax = 0)
nih_six_rrt_ct <- entrez_search(db = "pmc", 
                                term = nih_six_rrt, 
                                retmax = 0)
nih_sev_rrt_ct <- entrez_search(db = "pmc", 
                                term = nih_sev_rrt, 
                                retmax = 0)
nih_eig_rrt_ct <- entrez_search(db = "pmc", 
                                term = nih_eig_rrt, 
                                retmax = 0)
nih_nin_rrt_ct <- entrez_search(db = "pmc", 
                                term = nih_nin_rrt, 
                                retmax = 0)
nih_tho_rrt_ct <- entrez_search(db = "pmc", 
                                term = nih_tho_rrt, 
                                retmax = 0)
nih_ten_rrt_ct <- entrez_search(db = "pmc", 
                                term = nih_ten_rrt, 
                                retmax = 0)

# ------------------------------------------------------------------------------ #
#### Descriptive Statistics ####
# ------------------------------------------------------------------------------ #

# --------------- # Format source x decade results into matrix # --------------- # 

src_dec_mtx <- matrix(c(nat_fif_ct$count, nat_six_ct$count, nat_sev_ct$count,
                        nat_eig_ct$count, nat_nin_ct$count, nat_tho_ct$count, 
                        nat_ten_ct$count, sci_fif_ct$count, sci_six_ct$count, 
                        sci_sev_ct$count, sci_eig_ct$count, sci_nin_ct$count, 
                        sci_tho_ct$count, sci_ten_ct$count, nejm_fif_ct$count, 
                        nejm_six_ct$count, nejm_sev_ct$count, nejm_eig_ct$count,
                        nejm_nin_ct$count, nejm_tho_ct$count, nejm_ten_ct$count, 
                        jama_fif_ct$count, jama_six_ct$count, jama_sev_ct$count,
                        jama_eig_ct$count, jama_nin_ct$count, jama_tho_ct$count,
                        jama_ten_ct$count, lan_fif_ct$count, lan_six_ct$count,
                        lan_sev_ct$count, lan_eig_ct$count, lan_nin_ct$count,
                        lan_tho_ct$count, lan_ten_ct$count, bmj_fif_ct$count, 
                        bmj_six_ct$count, bmj_sev_ct$count, bmj_eig_ct$count, 
                        bmj_nin_ct$count, bmj_tho_ct$count, bmj_ten_ct$count, 
                        nih_fif_ct$count, nih_six_ct$count, nih_sev_ct$count,
                        nih_eig_ct$count, nih_nin_ct$count, nih_tho_ct$count,
                        nih_ten_ct$count),
                      byrow = TRUE, 7, 7)

# Rename rows and columns 

rownames(src_dec_mtx) <- c("Nature", "Science", "NEJM", "JAMA", "Lancet", "BMJ", 
                           "NIH")
colnames(src_dec_mtx) <- c("1950s", "1960s", "1970s", "1980s", "1990s", "2000s", 
                           "2010s")

# View matrix

src_dec_mtx

# ----------- # Format source x decade with rrt results into matrix # ---------- #

src_dec_rrt_mtx <- matrix(c(nat_fif_rrt_ct$count, nat_six_rrt_ct$count, 
                            nat_sev_rrt_ct$count, nat_eig_rrt_ct$count, 
                            nat_nin_rrt_ct$count, nat_tho_rrt_ct$count, 
                            nat_ten_rrt_ct$count, sci_fif_rrt_ct$count, 
                            sci_six_rrt_ct$count, sci_sev_rrt_ct$count, 
                            sci_eig_rrt_ct$count, sci_nin_rrt_ct$count, 
                            sci_tho_rrt_ct$count, sci_ten_rrt_ct$count, 
                            nejm_fif_rrt_ct$count, nejm_six_rrt_ct$count, 
                            nejm_sev_rrt_ct$count, nejm_eig_rrt_ct$count,
                            nejm_nin_rrt_ct$count, nejm_tho_rrt_ct$count, 
                            nejm_ten_rrt_ct$count, jama_fif_rrt_ct$count, 
                            jama_six_rrt_ct$count, jama_sev_rrt_ct$count, 
                            jama_eig_rrt_ct$count, jama_nin_rrt_ct$count, 
                            jama_tho_rrt_ct$count, jama_ten_rrt_ct$count, 
                            lan_fif_rrt_ct$count, lan_six_rrt_ct$count, 
                            lan_sev_rrt_ct$count, lan_eig_rrt_ct$count, 
                            lan_nin_rrt_ct$count, lan_tho_rrt_ct$count, 
                            lan_ten_rrt_ct$count, bmj_fif_rrt_ct$count,
                            bmj_six_rrt_ct$count, bmj_sev_rrt_ct$count, 
                            bmj_eig_rrt_ct$count, bmj_nin_rrt_ct$count, 
                            bmj_tho_rrt_ct$count, bmj_ten_rrt_ct$count, 
                            nih_fif_rrt_ct$count, nih_six_rrt_ct$count, 
                            nih_sev_rrt_ct$count, nih_eig_rrt_ct$count, 
                            nih_nin_rrt_ct$count, nih_tho_rrt_ct$count,
                            nih_ten_rrt_ct$count),
                      byrow = TRUE, 7, 7)

# Rename rows and columns 

rownames(src_dec_rrt_mtx) <- c("Nature", "Science", "NEJM", "JAMA", "Lancet", 
                               "BMJ", "NIH")
colnames(src_dec_rrt_mtx) <- c("1950s", "1960s", "1970s", "1980s", "1990s", 
                               "2000s", "2010s")

# View matrix

src_dec_rrt_mtx

# --------------------- # Calculate relative frequencies # --------------------- #

# Percent Frequency of RRT mentions by Source and Decade 
percent_frequency_mtx <- (src_dec_rrt_mtx/src_dec_mtx) * 100
percent_frequency_mtx

# ------------------------------------------------------------------------------ #
#### Visualization ####
# ------------------------------------------------------------------------------ #

