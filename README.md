| Organization | Course | Exercise | Semester | Professor | T.A. | 
| --- | --- | --- | --- | --- | --- |
| Seoul National University | Integrative Computational Biology | Exam | Spring 2023 | Asst. Prof. M. Steinegger (martin.steinegger@snu.ac.kr) | Luna Jang (jse9512@snu.ac.kr) <br /> Rachel Kim (eunbelivable@snu.ac.kr)|

## Q1. Write the correct answers.
This is the structure of `/home` folder.
```
├── harry
│   ├── chamber.txt
│   └── stone.txt
├── hermione
│   └── necklace.txt
└── ron
    ├── frost.txt
    ├── proj1
    │   ├── data.txt
    │   └── workflow.sh
    └── wand.txt
```

> Please use absolute paths for all commands except for `Q1-2`.
> Don't put '/' at the end of the directory name (for grading).

1. Image you are the user `harry` and you are at `/home/harry`.
Write a command to change the current directory to `hermione` by using the absolute path.
(`A1-1.txt`)

2. Write a command to change the current directory from `hermione` to `proj1` by using the relative path. (`A1-2.txt`)

3. You are now at the `proj1` directory and typed `ls` command.
Write the expected result of the command. (`A1-3.txt`)
   > The files should be separated with the whitespace.

4. You are in the `/home` folder. Write a command to create a new directory `proj2` in
`hermione` folder by using the absolute path. (`A1-4.txt`)

## Q2.
This is a fasta file, `contigs.fasta`.
```
> contig1
ACGGCAGCTTCTGCA
CCCAGCTGAATAGAG
CCCTGACAGGGATCG
CCGTGGAACAGGACA
TTAGTTCCACACCCG
> contig2
CCAGACATACGTGAC
CCAGCAGCTGATCAG
AGCCGCCGAGATTAG
AGCCTCTGCCAATCT
TTCCCCGCCCGGGGG
```
1. Write a command to get all lines with `AGC` from `contigs.fasta`. (`A2-1.txt`)

2. Write the expected result of this command. (`A2-2.txt`)
    ```sh
    grep -v '>' contigs.fasta | grep -o 'CG' | wc -l
    ```

3. Write a command to find start codon and three stop codons and color them. (`A2-3.txt`)

4. A sequence logo is a graphical representation of the sequence conservation of nucleotides. The relative sizes of the letters indicate their frequency in the sequences and the total height of the letters depicts the information content of the position in bits [(wikipedia)](https://en.wikipedia.org/wiki/Sequence_logo).

   This is a logo for a sequence motif.

   ![](img/logo.png)

   Write a command to get the count of this motif in `contigs.fasta`. (`A2-4.txt`)
   > Don't consider the motifs between two lines.

## Q3.
Fill in the alignment matrix with Smith-Waterman algorithm (`A3-1.csv`) and write the possible alignment result (`A3-2.txt`).

type        | score
------------|------
match       | +1
mismatch    | -1
gap penalty | -1

```
- | - | T | C | A | G | C | C |
--|---|---|---|---|---|---|---|
- | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
T | 0 |   |   |   |   |   |   |
C | 0 |   |   |   |   |   |   |
G | 0 |   |   |   |   |   |   |
C | 0 |   |   |   |   |   |   |
C | 0 |   |   |   |   |   |   |
```

```sh
# Alignment result format example
ATGC
A-GC
```

## Q4.

Here we have a 5-bp sequence and we are going to calculate the
probability of this sequence based on two 1st order Markov models.

```
> sequence A
ACGGT
```

0th order Markov model is given like this.

```
- | P(A) | P(T) | P(G) | P(C)
--|------|------|------|-----
p | 0.25 | 0.25 | 0.25 | 0.25
```

1. The table below is the transition matrix of **Model 1** built with general DNA sequences.
Calculate the probability `P(ACGGT|Model1)`. (`A4-1.txt`)

   ### Model1: 1st order Markov model of general DNA

   ```
      -   | P(A|N) | P(T|N) | P(G|N) | P(C|N)
   -------|--------|--------|--------|-------
   P(N|A) | 0.3    | 0.2    | 0.3    | 0.2
   P(N|T) | 0.15   | 0.3    | 0.3    | 0.25
   P(N|G) | 0.25   | 0.2    | 0.3    | 0.25
   P(N|C) | 0.3    | 0.3    | 0.1    | 0.3
   ```

2. The table below is the transition matrix of **Model 2** built with sequences from CpG Islands.
Calculate the probability `P(ACGGT|Model2)`. (`A4-2.txt`)

    ### Model2: 1st order Markov model of CpG Island

    ```
       -   | P(A|N) | P(T|N) | P(G|N) | P(C|N)
    -------|--------|--------|--------|-----
    P(N|A) | 0.2    | 0.1    | 0.4    | 0.3
    P(N|T) | 0.1    | 0.2    | 0.4    | 0.3
    P(N|G) | 0.15   | 0.1    | 0.4    | 0.35
    P(N|C) | 0.2    | 0.2    | 0.3    | 0.3
    ```

3. If the probabilities of two models are given as follows, which model better represents the sequence? Write the name of the model (`Model1` or `Model2`).
(`A4-3.txt`)

    ```
    P(Model1) = 0.4, P(Model2) = 0.6
    ```

## Q5.
This is the read counts from RNA-seq experiments. Fill in the **table 1** (`A5-1.csv`) and **table 2** (`A5-2.csv`).
> Please follow the calculation steps in the lecture slide.
> Round to the third decimal places.

Genename (size) | Sample 1 | Sample 2
----------------|----------|---------
Gene A (100kB)  | 80       | 21
Gene B (50kB)   | 10       | 20
Gene C (5kb)    | 8        | 5
Gene D (1kb)    | 2        | 4

### Table 1. RPKM (A5-1.csv)

Genename (size) | Sample 1 (RPKM) | Sample 2(RPKM)
----------------|-----------------|---------------
Gene A (100kb)  |                 |
Gene B (50kb)   |                 |
Gene C (5kb)    |                 |
Gene D (1kb)    |                 |

### Table 2. TPM (A5-2.csv)

Genename (size) | Sample 1 (TPM) | Sample 2(TPM)
----------------|----------------|--------------
Gene A (100kb)  |                |
Gene B (50kb)   |                |
Gene C (5kb)    |                |
Gene D (1kb)    |                |


## Q6.
Find all possible ORFs from this sequence and the reverse complement sequence.
ORF should have a start codon (ATG) and stop codons (TGA,TAA,TAG).
```
>unknown_DNA_fragment
TCTACTGGATGGCCATTCTCTCAGAGTAA
```
Please save the found ORFs in `A6.fasta` formatted like this:
```sh
# Sort the ORFs based on their lengths (longest comes first)
>ORF1
ATGAAATAG
>ORF2
ATGTAA
```


## Q7.
Suppose that you are going to compare the alignment results of these two sequences.
- Query: GARFIELDTHELASTFATCAT
- Target: GARFIELDTHEVERYFASTCAT

The alignment result of two sequences is given as `Alignment 1`.

   ```sh
    # Alignment 1
    GARFIELDTHEVERYFAST---CAT (reference sequence)
    GARFIELDTHE----LASTFATCAT (query sequence)
   ```

Calculate the score and the identity of the `Alignment 1` based on the score table below. (`A7.csv`)

    type                  | score
    ----------------------|------
    match                 | +1
    mismatch              | -1
    gap opening penalty   | -3
    gap extension penalty | -1

   > Report identity as percentage with 2 decimal places.

   > Don't include "%" character in the answer.

   > **Normalize identity with the alignment length.**

---

## Free text questions

Questions from `Q8` to `Q10` are free text questions.
There is no limit on the amount, but please write it as briefly as possible.
Please write your answers in English to corresponding text files.

## Q8.
You got a set of novel amino-acid sequences from an experiment.
Please design a pipeline to annotate the functions of the sequences
(`A8.txt`)

## Q9.
You got novel genome sequences from an extraterrestrial planet. 
These genomes consist of 4 bases as ours. 
How can you show that the genes from extraterrestrial genomes are encoded in a similar way (or not) to genomes on earth? 
Please design an *in silico* experiment for answering this question. (`A9.txt`)

## Q10.
Your collaborators try to test a hypothesis that altered pseudogene expression is
involved in specific type of cancer development. How would you design an experiment
to check if their hypothesis is correct/incorrect? Please describe the experimental setup,
technology, software used, and how you would carry out such an experiment. (`A10.txt`)


