# Heuristic Techniques for Assessing Internet Privacy: A Comprehensive Review and Analysis

This repository provides all the files required for experiments reproducibility of the research project: "Heuristic Techniques for Assessing Internet Privacy: A Comprehensive Review and Analysis".

This research is part of the project "PRIVIA: Identificación Automatizada de Brechas de Privacidad en Ecuador usando Inteligencia Artificial Generativa y LLMs" conducted by Escuela Politécnica Nacional.

## Research information

- **Main project:** PRIVIA: Identificación Automatizada de Brechas de Privacidad en Ecuador usando Inteligencia Artificial Generativa y LLMs" conducted by Escuela Politécnica Nacional.
- **Main project reference:** PIGR-24-06.
- **Date:** 2025-07-14.

## How to use this repository?

The repository contains 3 files in order to conduct experiments reproducibility according to the following detail:

- Planning.pdf: This document establishes the goal, research questions, inclusion and exclusion criteria, and coding procedure of the comprenhensive review.
- Statistics.Rmd: This R file generates the statistics showed in the paper. To run it, just change the value of the variable Bibliography at the start of the document with the path to the Bibliography.xlxs document.

```{r}

Bibliography <- read_excel("Set_here_the_path_to_the_file_Bibliography.xlsx", sheet = "Consolidated")
View(Bibliography)
```

- Bibliography.xlsx: This Excel file contains the detail of the reviewed bibliography, as well as the results from the pilot and main phase of the screening and coding procedures.

- generate_list.sql: This script creates a mysql stored procedure for retrieving the list of papers from a table named sota that can be loaded directly from the Bibliography.xlsx file.