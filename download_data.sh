#!/usr/bin/bash

# Output directory
OUTDIR="refseq"

# Create output directory if it doesn't exist
mkdir -p "$OUTDIR"

# List of species
species_list=(
    "Vibrio vulnificus"
    "Vibrio cholerae"
    "Vibrio parahaemolyticus"
    "Vibrio alginolyticus"
    "Vibrio fluvialis"
    "Vibrio furnissii"
    "Vibrio harveyi"
    "Vibrio anguillarum"
    "Vibrio mimicus"
    "Vibrio metschnikovii"
    "Vibrio campbellii"
    "Vibrio natriegens"
    "Vibrio ordalii"
    "Vibrio splendidus"
    "Vibrio diazotrophicus"
    "Vibrio aestuarianus"
    "Vibrio proteolyticus"
    "Vibrio scophthalmi"
    "Vibrio gazogenes"
    "Vibrio pacinii"
    "Vibrio tubiashii"
    "Vibrio tapetis"
    "Vibrio tasmaniensis"
    "Vibrio owensii"
    "Vibrio coralliilyticus"
    "Vibrio cincinnatiensis"
    "Vibrio sinaloensis"
    "Vibrio chagasii"
    "Vibrio ponticus"
    "Photobacterium damselae"
    "Escherichia coli"
    "Salmonella enterica"
    "Pseudomonas aeruginosa"
    "Shewanella oneidensis"
    "Klebsiella pneumoniae"
    "Aeromonas hydrophila"
    "Listeria monocytogenes"
    "Staphylococcus aureus"
    "Bacillus subtilis"
)



# Loop through each species
for species in "${species_list[@]}"
do
    echo "🔽 Downloading: $species"
    ncbi-genome-download bacteria \
        --genera "$species" \
        --formats fasta \
        --assembly-level complete \
        -o "$OUTDIR"
done

echo "✅ Download complete. Genomes saved to $OUTDIR/"

