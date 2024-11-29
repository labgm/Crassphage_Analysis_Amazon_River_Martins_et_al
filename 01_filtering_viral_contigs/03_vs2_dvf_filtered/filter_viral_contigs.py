from Bio import SeqIO
import sys

# Parse the input FASTA file
fasta_file = sys.argv[1]
headers_file = sys.argv[2]
output_file = sys.argv[3]

# Read headers to filter
with open(headers_file, 'r') as contigs:
    headers_to_keep = {line.strip() for line in contigs}

# Debugging: Print number of unique headers read
print(f"Number of unique headers read: {len(headers_to_keep)}")

# Filter and write sequences
with open(output_file, 'w') as filtered:
    for record in SeqIO.parse(fasta_file, "fasta"):
        if record.id in headers_to_keep:
            filtered.write(f">{record.id}\n{record.seq}\n")
        else:
            # Debugging: Print IDs that are not found
            print(f"ID not found: {record.id}")

# Check if all headers were used
used_headers = set()
with open(output_file, 'r') as check:
    for line in check:
        if line.startswith('>'):
            used_headers.add(line[1:].strip())

# Debugging: Print headers not used
unused_headers = headers_to_keep - used_headers
print(f"Headers not used: {unused_headers}")

