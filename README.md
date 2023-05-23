| Organization | Course | Exercise | Semester | Professor | T.A. | 
| --- | --- | --- | --- | --- | --- |
| Seoul National University | Integrative Computational Biology | Exam-practice | Spring 2023 | Asst. Prof. M. Steinegger (martin.steinegger@snu.ac.kr) | Luna Jang (jse9512@snu.ac.kr) <br /> Rachel Kim (eunbelivable@snu.ac.kr)|

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

3. A sequence logo is a graphical representation of the sequence conservation of nucleotides. The relative sizes of the letters indicate their frequency in the sequences and the total height of the letters depicts the information content of the position in bits [(wikipedia)](https://en.wikipedia.org/wiki/Sequence_logo).

   This is a logo for a sequence motif.

   ![](img/logo.png)

   Write a command to get the count of this motif in `contigs.fasta`. (`A2-3.txt`)
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
Suppose that you are going to compare the alignment results of these two sequences.
- Query: GARFIELDTHELASTFATCAT
- Target: GARFIELDTHEVERYFASTCAT

The alignment result of two sequences is given as `Alignment 1`.

   ```sh
    # Alignment 1
    GARFIELDTHEVERYFAST---CAT (reference sequence)
    GARFIELDTHE----LASTFATCAT (query sequence)
   ```

Calculate the score and the identity of the `Alignment 1` based on the score table below. (`A4.csv`)

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

Questions from `Q5` to `Q7` are free text questions.
There is no limit on the amount, but please write it as briefly as possible.
Please write your answers in English to corresponding text files.

## Q5.
You got a set of novel amino-acid sequences from an experiment.
Please design a pipeline to annotate the functions of the sequences
(`A5.txt`)

## Q6.
You got novel genome sequences from an extraterrestrial planet. 
These genomes consist of 4 bases as ours. 
How can you show that the genes from extraterrestrial genomes are encoded in a similar way (or not) to genomes on earth? 
Please design an *in silico* experiment for answering this question. (`A6.txt`)

## Q7.
Your collaborators try to test a hypothesis that altered pseudogene expression is
involved in specific type of cancer development. How would you design an experiment
to check if their hypothesis is correct/incorrect? Please describe the experimental setup,
technology, software used, and how you would carry out such an experiment. (`A7.txt`)


