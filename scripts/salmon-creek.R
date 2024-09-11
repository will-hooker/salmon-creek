setwd("/Users/willhooker/github/salmon-creek")
library(ape)
library(maps)
library(phytools)
library(geiger)

# Cnidarians:
cnidarian.string <- "(((((Stewartophyllum_intermittens,Stereolasma_ungula,Amplexiphyllum_hamiltoniae),Streptelasma_ungula)),((Aulocystis_jacksoni,Aulocystis_dichotoma),(Thamnoptychia_limbata,Pleurodictyum_americanum,Favosites_hamiltoniae))),Conularia_undulata);"
cnidarian.tree <- read.tree(text=cnidarian.string)
plot(cnidarian.tree,no.margin=TRUE)

# Arthropods:
arthropod.string <- "((Rhinocaris_columbina,Echinocaris),((Pseudodechenella_rowi,Basidechenella_rowi),(((Greenops_grabaui,Greenops_barberi),Bellacartwrightia_phyllocaudata),Eldredgeops_rana,Dipleura_dekayi)
));"
arthropod.tree <- read.tree(text=arthropod.string)
plot(arthropod.tree,no.margin=TRUE)

# Lophophorates:
lophophorate.string <- "(((Eumetabolatoechia_multicostatum,(Spinocyrtia_granulosa,Mucrospirifer_mucronatus,Mediospirifer_audaculus,Ambocoelia_umbonata),Athyris_spiriferoides,(Tropidoleptus_carinatus,(Rhipidomella_penelope,Rhipidomella_leucosia)),(Mesoleptostrophia_junia,Megastrophia_concava,(Devonochonetes_coronatus,Arcuaminetes_scitulus)),Lingula_delia),(Hyolithes_striatus,Hallotheca_aclis)),(Reptaria_stolonifera,Leptotrypella_furcata));"
lophophorate.tree <- read.tree(text=lophophorate.string)
plot(lophophorate.tree,no.margin=TRUE)

# Bivalves:
bivalve.string <- "((((Glossites_nuculoides,(Grammysioidea_arcuata,Grammysioidea_alveata)),
(Orthonota_undulata,((Goniophora_hamiltonensis),(Modiomorpha_subalata,Modiomorpha_mytiloides,Modiomorpha_concentrica)))),
(Ptychopteria_fasiculata,Pseudoaviculopecten_princeps)),
(Nuculoidea_corbuliformis,Tellinopsis_subemarginata));"
bivalve.tree <- read.tree(text=bivalve.string)
plot(bivalve.tree,no.margin=TRUE)

# Gastropods
gastropod.string <- "((Gyronema_lirata,(Platyceras_bucculentum,Naticonema_lineata)),((Palaeozygopleura_hamiltoniae,Palaeozygopleura_delphicola),Retispira_leda));"
gastropod.tree <- read.tree(text=gastropod.string)
plot(gastropod.tree,no.margin=TRUE)

# Cephalopods:
cephalopod.string <- "(Tornoceras_uniangulare,(Cyrtoceras,(Michelinoceras_telamon,(Spyroceras_nuntium,Dolorthoceras_exile))));"
cephalopod.tree <- read.tree(text=cephalopod.string)
plot(cephalopod.tree,no.margin=TRUE)

# Molluscs:
mollusc.string <- "(((Tornoceras_uniangulare,(Cyrtoceras,(Michelinoceras_telamon,(Spyroceras_nuntium,Dolorthoceras_exile)))),
((Gyronema_lirata,(Platyceras_bucculentum,Naticonema_lineata)),((Palaeozygopleura_hamiltoniae,Palaeozygopleura_delphicola),Retispira_leda))),
((((Glossites_nuculoides,(Grammysioidea_arcuata,Grammysioidea_alveata)),(Orthonota_undulata,((Goniophora_hamiltonensis),(Modiomorpha_subalata,Modiomorpha_mytiloides,Modiomorpha_concentrica)))),(Ptychopteria_fasiculata,Pseudoaviculopecten_princeps)),(Nuculoidea_corbuliformis,Tellinopsis_subemarginata)));"
mollusc.tree <- read.tree(text=mollusc.string)
mollusc.tree <- ladderize(mollusc.tree,right=TRUE)
plot(mollusc.tree,no.margin=TRUE)

# Lophotrochozoans:
lophotrochozoan.string <- "((((Tornoceras_uniangulare,(Cyrtoceras,(Michelinoceras_telamon,(Spyroceras_nuntium,Dolorthoceras_exile)))),
((Gyronema_lirata,(Platyceras_bucculentum,Naticonema_lineata)),((Palaeozygopleura_hamiltoniae,Palaeozygopleura_delphicola),Retispira_leda))),
((((Glossites_nuculoides,(Grammysioidea_arcuata,Grammysioidea_alveata)),(Orthonota_undulata,((Goniophora_hamiltonensis),(Modiomorpha_subalata,Modiomorpha_mytiloides,Modiomorpha_concentrica)))),(Ptychopteria_fasiculata,Pseudoaviculopecten_princeps)),(Nuculoidea_corbuliformis,Tellinopsis_subemarginata))),
(((Eumetabolatoechia_multicostatum,(Spinocyrtia_granulosa,Mucrospirifer_mucronatus,Mediospirifer_audaculus,Ambocoelia_umbonata),Athyris_spiriferoides,(Tropidoleptus_carinatus,(Rhipidomella_penelope,Rhipidomella_leucosia)),(Mesoleptostrophia_junia,Megastrophia_concava,(Devonochonetes_coronatus,Arcuaminetes_scitulus)),Lingula_delia),(Hyolithes_striatus,Hallotheca_aclis)),(Reptaria_stolonifera,Leptotrypella_furcata)));"
lophotrochozoan.tree <- read.tree(text=lophotrochozoan.string)
lophotrochozoan.tree <- read.tree(text=lophotrochozoan.string)
lophotrochozoan.tree <- ladderize(lophotrochozoan.tree,right=TRUE)
plot(lophotrochozoan.tree,no.margin=TRUE)

# Protostomes:
protostome.string <- "(((((Tornoceras_uniangulare,(Cyrtoceras,(Michelinoceras_telamon,(Spyroceras_nuntium,Dolorthoceras_exile)))),
((Gyronema_lirata,(Platyceras_bucculentum,Naticonema_lineata)),((Palaeozygopleura_hamiltoniae,Palaeozygopleura_delphicola),Retispira_leda))),
((((Glossites_nuculoides,(Grammysioidea_arcuata,Grammysioidea_alveata)),(Orthonota_undulata,((Goniophora_hamiltonensis),(Modiomorpha_subalata,Modiomorpha_mytiloides,Modiomorpha_concentrica)))),(Ptychopteria_fasiculata,Pseudoaviculopecten_princeps)),(Nuculoidea_corbuliformis,Tellinopsis_subemarginata))),
(((Eumetabolatoechia_multicostatum,(Spinocyrtia_granulosa,Mucrospirifer_mucronatus,Mediospirifer_audaculus,Ambocoelia_umbonata),Athyris_spiriferoides,(Tropidoleptus_carinatus,(Rhipidomella_penelope,Rhipidomella_leucosia)),(Mesoleptostrophia_junia,Megastrophia_concava,(Devonochonetes_coronatus,Arcuaminetes_scitulus)),Lingula_delia),(Hyolithes_striatus,Hallotheca_aclis)),(Reptaria_stolonifera,Leptotrypella_furcata)),
((Rhinocaris_columbina,Echinocaris),((Pseudodechenella_rowi,Basidechenella_rowi),(((Greenops_grabaui,Greenops_barberi),Bellacartwrightia_phyllocaudata),Eldredgeops_rana,Dipleura_dekayi)
))));"
protostome.tree <- read.tree(text=protostome.string)
protostome.tree <- read.tree(text=protostome.string)
protostomen.tree <- ladderize(protostome.tree,right=TRUE)
plot(protostome.tree,no.margin=TRUE)

# Nephrozoa:
nephrozoan.string <- "((((((Tornoceras_uniangulare,(Cyrtoceras,(Michelinoceras_telamon,(Spyroceras_nuntium,Dolorthoceras_exile)))),
((Gyronema_lirata,(Platyceras_bucculentum,Naticonema_lineata)),((Palaeozygopleura_hamiltoniae,Palaeozygopleura_delphicola),Retispira_leda))),
((((Glossites_nuculoides,(Grammysioidea_arcuata,Grammysioidea_alveata)),(Orthonota_undulata,((Goniophora_hamiltonensis),(Modiomorpha_subalata,Modiomorpha_mytiloides,Modiomorpha_concentrica)))),(Ptychopteria_fasiculata,Pseudoaviculopecten_princeps)),(Nuculoidea_corbuliformis,Tellinopsis_subemarginata))),
(((Eumetabolatoechia multicostatum,(Spinocyrtia_granulosa,Mucrospirifer_mucronatus,Mediospirifer_audaculus,Ambocoelia_umbonata),Athyris_spiriferoides,(Tropidoleptus_carinatus,(Rhipidomella_penelope,Rhipidomella_leucosia)),(Mesoleptostrophia_junia,Megastrophia_concava,(Devonochonetes_coronatus,Arcuaminetes_scitulus)),Lingula_delia),(Hyolithes_striatus,Hallotheca_aclis)),(Reptaria_stolonifera,Leptotrypella_furcata)),
((Rhinocaris_columbina,Echinocaris),((Pseudodechenella_rowi,Basidechenella_rowi),(((Greenops_grabaui,Greenops_barberi),Bellacartwrightia_phyllocaudata),Eldredgeops_rana,Dipleura_dekayi)
))),(Megistocrinus_depressus,Dictyonema_hamiltoniae)));"
nephrozoan.tree <- read.tree(text=nephrozoan.string)
nephrozoan.tree <- read.tree(text=nephrozoan.string)
nephrozoan.tree <- ladderize(nephrozoan.tree,right=TRUE)
plot(nephrozoan.tree,no.margin=TRUE)

# Parahoxozoa:
parahoxozoan.string <- "((((((Tornoceras_uniangulare,(Cyrtoceras,(Michelinoceras_telamon,(Spyroceras_nuntium,Dolorthoceras_exile)))),
((Gyronema_lirata,(Platyceras_bucculentum,Naticonema_lineata)),((Palaeozygopleura_hamiltoniae,Palaeozygopleura_delphicola),Retispira_leda))),
((((Glossites_nuculoides,(Grammysioidea_arcuata,Grammysioidea_alveata)),(Orthonota_undulata,((Goniophora_hamiltonensis),(Modiomorpha_subalata,Modiomorpha_mytiloides,Modiomorpha_concentrica)))),(Ptychopteria_fasiculata,Pseudoaviculopecten_princeps)),(Nuculoidea_corbuliformis,Tellinopsis_subemarginata))),
(((Eumetabolatoechia multicostatum,(Spinocyrtia_granulosa,Mucrospirifer_mucronatus,Mediospirifer_audaculus,Ambocoelia_umbonata),Athyris_spiriferoides,(Tropidoleptus_carinatus,(Rhipidomella_penelope,Rhipidomella_leucosia)),(Mesoleptostrophia_junia,Megastrophia_concava,(Devonochonetes_coronatus,Arcuaminetes_scitulus)),Lingula_delia),(Hyolithes_striatus,Hallotheca_aclis)),(Reptaria_stolonifera,Leptotrypella_furcata)),
((Rhinocaris_columbina,Echinocaris),((Pseudodechenella_rowi,Basidechenella_rowi),(((Greenops_grabaui,Greenops_barberi),Bellacartwrightia_phyllocaudata),Eldredgeops_rana,Dipleura_dekayi)
))),(Megistocrinus_depressus,Dictyonema_hamiltoniae)),(((((Stewartophyllum_intermittens,Stereolasma_ungula,Amplexiphyllum_hamiltoniae),Streptelasma_ungula)),((Aulocystis_jacksoni,Aulocystis_dichotoma),(Thamnoptychia_limbata,Pleurodictyum_americanum,Favosites_hamiltoniae))),Conularia_undulata));"
parahoxozoan.tree <- read.tree(text=parahoxozoan.string)
parahoxozoan.tree <- read.tree(text=parahoxozoan.string)
parahoxozoan.tree <- ladderize(parahoxozoan.tree,right=TRUE)
plot(parahoxozoan.tree,no.margin=TRUE,cex=0.5,edge.width=0.5,label.offset=0.005)

# Eukaryota:
eukaryote.string <- "(((((((Tornoceras_uniangulare,(Cyrtoceras,(Michelinoceras_telamon,(Spyroceras_nuntium,Dolorthoceras_exile)))),
((Gyronema_lirata,(Platyceras_bucculentum,Naticonema_lineata)),((Palaeozygopleura_hamiltoniae,Palaeozygopleura_delphicola),Retispira_leda))),
((((Glossites_nuculoides,(Grammysioidea_arcuata,Grammysioidea_alveata)),(Orthonota_undulata,((Goniophora_hamiltonensis),(Modiomorpha_subalata,Modiomorpha_mytiloides,Modiomorpha_concentrica)))),(Ptychopteria_fasiculata,Pseudoaviculopecten_princeps)),(Nuculoidea_corbuliformis,Tellinopsis_subemarginata))),
(((Eumetabolatoechia_multicostatum,(Spinocyrtia_granulosa,Mucrospirifer_mucronatus,Mediospirifer_audaculus,Ambocoelia_umbonata),Athyris_spiriferoides,(Tropidoleptus_carinatus,(Rhipidomella_penelope,Rhipidomella_leucosia)),(Mesoleptostrophia_junia,Megastrophia_concava,(Devonochonetes_coronatus,Arcuaminetes_scitulus)),Lingula_delia),(Hyolithes_striatus,Hallotheca_aclis)),(Reptaria_stolonifera,Leptotrypella_furcata)),
((Rhinocaris_columbina,Echinocaris),((Pseudodechenella_rowi,Basidechenella_rowi),(((Greenops_grabaui,Greenops_barberi),Bellacartwrightia_phyllocaudata),Eldredgeops_rana,Dipleura_dekayi)
))),(Megistocrinus_depressus,Dictyonema_hamiltoniae)),(((((Stewartophyllum_intermittens,Stereolasma_ungula,Amplexiphyllum_hamiltoniae),Streptelasma_ungula)),((Aulocystis_jacksoni,Aulocystis_dichotoma),(Thamnoptychia_limbata,Pleurodictyum_americanum,Favosites_hamiltoniae))),Conularia_undulata)),Protolepidodendron);"
eukaryote.tree <- read.tree(text=eukaryote.string)
eukaryote.tree <- ladderize(eukaryote.tree,right=TRUE)
plot(eukaryote.tree,no.margin=TRUE,cex=0.5,edge.width=0.5,label.offset=0.005)

SalmonData <- read.csv("salmon-creek-phylogeny.csv", header = TRUE)

# Check for missing values and remove them if necessary
if (any(is.na(SalmonData$Species)) | any(is.na(SalmonData$Phylum))) {
  SalmonData <- na.omit(SalmonData)
}

SalmonSpecies <- as.character(SalmonData$Species)
SalmonPhyla <- as.character(SalmonData$Phylum)

# Print species names to check for mismatches
cat("Species in CSV file:\n", SalmonSpecies, "\n\n")

# Tree string
parahoxozoan.string <- "(((((((Tornoceras_uniangulare,(Cyrtoceras,(Michelinoceras_telamon,(Spyroceras_nuntium,Dolorthoceras_exile)))),
((Gyronema_lirata,(Platyceras_bucculentum,Naticonema_lineata)),((Palaeozygopleura_hamiltoniae,Palaeozygopleura_delphicola),Retispira_leda))),
((((Glossites_nuculoides,(Grammysioidea_arcuata,Grammysioidea_alveata)),(Orthonota_undulata,((Goniophora_hamiltonensis),(Modiomorpha_subalata,Modiomorpha_mytiloides,Modiomorpha_concentrica)))),(Ptychopteria_fasiculata,Pseudoaviculopecten_princeps)),(Nuculoidea_corbuliformis,Tellinopsis_subemarginata))),
(((Eumetabolatoechia_multicostatum,(Spinocyrtia_granulosa,Mucrospirifer_mucronatus,Mediospirifer_audaculus,Ambocoelia_umbonata),Athyris_spiriferoides,(Tropidoleptus_carinatus,(Rhipidomella_penelope,Rhipidomella_leucosia)),(Mesoleptostrophia_junia,Megastrophia_concava,(Devonochonetes_coronatus,Arcuaminetes_scitulus)),Lingula_delia),(Hyolithes_striatus,Hallotheca_aclis)),(Reptaria_stolonifera,Leptotrypella_furcata)),
((Rhinocaris_columbina,Echinocaris),((Pseudodechenella_rowi,Basidechenella_rowi),(((Greenops_grabaui,Greenops_barberi),Bellacartwrightia_phyllocaudata),Eldredgeops_rana,Dipleura_dekayi)
))),(Megistocrinus_depressus,Dictyonema_hamiltoniae)),(((((Stewartophyllum_intermittens,Stereolasma_ungula,Amplexiphyllum_hamiltoniae),Streptelasma_ungula),(Aulocystis_jacksoni,Aulocystis_dichotoma)),(Thamnoptychia_limbata,Pleurodictyum_americanum,Favosites_hamiltoniae)),Conularia_undulata)));"

parahoxozoan.tree <- read.tree(text = parahoxozoan.string)
parahoxozoan.tree <- ladderize(parahoxozoan.tree, right = TRUE)

# Print tree species to check for mismatches
cat("Species in tree:\n", parahoxozoan.tree$tip.label, "\n\n")

# Split species by phylum
phyla <- split(SalmonSpecies, SalmonPhyla)
phyla_cols <- setNames(rainbow(length(phyla)), names(phyla))
edge.color <- rep("black", nrow(parahoxozoan.tree$edge))

for (phylum in names(phyla)) {
  species <- phyla[[phylum]]
  cat("Processing phylum:", phylum, "with species:", species, "\n")
  if (length(species) > 1) {
    phylum_node <- tryCatch(getMRCA(parahoxozoan.tree, species), error = function(e) NA)
    if (!is.na(phylum_node) && !is.null(phylum_node)) {
      descendants <- tryCatch(getDescendants(parahoxozoan.tree, phylum_node), error = function(e) NA)
      if (!is.null(descendants) && length(descendants) > 0) {
        edge_indices <- which(parahoxozoan.tree$edge[, 2] %in% descendants)
        edge.color[edge_indices] <- phyla_cols[phylum]
      } else {
        cat("No descendants found for phylum:", phylum, "\n")
      }
    } else {
      cat("MRCA not found for phylum:", phylum, "with species:", species, "\n")
    }
  } else {
    cat("Phylum", phylum, "has only one species or no species:", species, "\n")
    species_node <- match(species, parahoxozoan.tree$tip.label)
    if (!is.na(species_node)) {
      edge_indices <- which(parahoxozoan.tree$edge[, 2] == species_node)
      edge.color[edge_indices] <- phyla_cols[phylum]
    }
  }
}

plot(parahoxozoan.tree, no.margin = TRUE, cex = 0.5, edge.color = edge.color, label.offset = 0.005)
legend("bottomleft", legend = names(phyla), col = phyla_cols, lty = 1,
       text.col = "black", cex = 0.6, box.col = "white", title = "Phylum", title.cex = 0.8)