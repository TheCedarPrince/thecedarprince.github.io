@def title = "Simple, Transparent, and Flexible Automated Quality Assessment Procedures for Ambulatory Electrodermal Activity"
@def slug = "04092020195141-transparent-eda-data"
@def tags = ["bibliography", "eda", "rochester", "eda", "rules", "simple", "transparent", "autism", "children", "pediatrics", "archive"]
@def description = "A simple, transparent, flexible, and automated quality assessment procedure for ambulatory EDA data"

@def rss_title = "Simple, Transparent, and Flexible Automated Quality Assessment Procedures for Ambulatory Electrodermal Activity"
@def rss_description = "A simple, transparent, flexible, and automated quality assessment procedure for ambulatory EDA data"
@def rss_pubdate = Date(2020, 4, 9)


Simple, Transparent, and Flexible Automated Quality Assessment Procedures for Ambulatory Electrodermal Activity
=========

**Date:** April 9 2020

**Summary:** A simple, transparent, flexible, and automated quality assessment procedure for ambulatory EDA data

**Keywords:** ##bibliography #eda #rochester #eda #rules #simple #transparent #autism #children #pediatrics #archive

Bibliography
==========

I. R. Kleckner et al., "Simple, Transparent, and Flexible Automated Quality Assessment Procedures for Ambulatory Electrodermal Activity Data," IEEE Trans. Biomed. Eng., vol. 65, no. 7, pp. 1460–1467, Jul. 2018, doi: 10.1109/TBME.2017.2758643.

Table of Contents
=========

\toc

### Rule-based Algorithm

The authors also decided to create a very simple rule-based algorithm in an effort to make results easily reproducible and understandable to researchers of differing backgrounds. This algorithm for assessing data quality was as is follows:

| Number |                          Rule                           |                Rationale                |
|:------:|:-------------------------------------------------------:|:---------------------------------------:|
|   1    |    EDA is not within the range of $0.05 - 60 \mu S$     | Prevent "floor" and "ceiling" artifacts |
|   2    | EDA fluctuates too fast $(+/- 10 \frac{\mu S}{second})$ |       To prevent "jump" artifacts       |
|   3    |            Temperature not within 30-40 $C$             |     Preserve best accuracy of data      |
|   4    |       EDA data within $5$ sec of invalid sections       |  Invalid sections based on rules $1-3$  |

If the data did not adhere to these rules, it was classified as artifact. 

#### Notes on Algorithm Rules

*1. In Rule 1, 60 was chosen as an upper limit specifically because that was the upper limit of the Q Sensor.*

*2. Rule 2's rationale came from [1]–[3]*

*3. For Rule 3, their data recorded temperatures of 32 - 36 $C$ consistently for individuals*

### Misc Notes

  * When collecting EDA data, the authors used solid conductive adhesive hydrogel Ag/AgCl electrodes (22 mm square; model A10040-5 from Vermed; Buffalo, NY).
  * Used 181 hours worth of data collected from children and adolescents with autism in an at-home environment.

## References

## References

[1] W. Boucsein, Electrodermal Activity. Boston, MA: Springer US, 2012.

[2] R. Kocielnik, N. Sidorova, F. M. Maggi, M. Ouwerkerk, and J. H. Westerink, “Smart technologies for long-term stress monitoring at work,” in Proceedings of the 26th IEEE international symposium on computer-based medical systems, 2013, pp. 53–58.

[3] F. H. Wilhelm and W. T. Roth, “Ambulatory assessment of clinical anxiety,” Ambul. Assess. Comput.-Assist. Psychol. Psychophysiological Methods Monit. Field Stud., pp. 317–345, 1996.
## Discussion: 

{{ addcomments }}
