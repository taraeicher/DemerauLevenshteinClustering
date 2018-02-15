BaseUrl="http://www.ebi.ac.uk/ena/data/view/LT59"
ending=".fasta"
middle="&display=fasta&download=fasta&filename=LT59"

for ((i=6685; i<=8170; i++)); do
  echo "$BaseUrl$i$middle$i$ending"
  wget "$BaseUrl$i$middle$i$ending" -O "$i.fastq" || rm -f "$i.fastq"
done
