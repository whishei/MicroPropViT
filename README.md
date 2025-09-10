# Machine learning of microstructure-property relationships in materials with robust features from foundational vision transformers

Machine learning of microstructure-property relationships from data is an emerging approach in computational materials science. Most existing machine learning efforts focus on the development of task-specific models for each microstructure-property relationship. We propose utilizing pre-trained foundational vision transformers for the extraction of task-agnostic microstructure features and subsequent light-weight machine learning of a microstructure-dependent property. We demonstrate our approach with pre-trained state-of-the-art vision transformers (CLIP, DINOV2, SAM) in two case studies on machine-learning: (i) elastic modulus of two-phase microstructures based on simulations data; and (ii) Vicker's hardness of Ni-base and Co-base superalloys based on experimental data published in literature. Our results show the potential of foundational vision transformers for robust microstructure representation and efficient machine learning of microstructure-property relationships without the need for expensive task-specific training or fine-tuning of bespoke deep learning models. 

To test on your own dataset, check out the "Feature_Extraction_ViTs" Notebook under either case study to first extract features from your images using ViTs. 

*** 

## Experimental Case Study

The dataset was manually extracted from the following papers:
| Paper | DOI |
|------------|-----|
| Paper 1    | [Link](https://doi.org/10.1016/j.msea.2018.09.058) |
| Paper 2    | [Link](http://dx.doi.org/10.1016/j.msea.2017.06.018) |
| Paper 5    | [Link](https://doi.org/10.1016/j.matdes.2018.08.054) |
| Paper 6    | [Link](http://dx.doi.org/10.1016/j.intermet.2013.10.022) |
| Paper 7    | [Link](https://doi.org/10.1016/j.engfailanal.2004.09.010) |
| Paper 15   | [Link](https://doi.org/10.1023/A:1018672107071) |
| Paper 16   | [Link](https://doi.org/10.1016/j.intermet.2009.04.004) |
| Paper 19   | [Link](http://dx.doi.org/10.1016/j.jallcom.2013.01.098) |
| Paper 20   | [Link](https://doi.org/10.1007/s12598-010-0035-1) |
| Paper 21   | [Link](http://dx.doi.org/10.1016/j.msea.2014.06.021) |
| Paper 22   | [Link](https://doi.org/10.1016/j.matdes.2008.11.030) |
| Paper 23   | [Link](https://doi.org/10.1016/j.msea.2024.147105) |
| Paper 24   | [Link](https://doi.org/10.1016/j.intermet.2024.108458) |
| Paper 25   | [Link](https://doi.org/10.1016/j.surfcoat.2024.131395) |
| Paper 26   | [Link](https://doi.org/10.1016/j.msea.2024.147069) |
| Paper 27   | [Link](https://doi.org/10.1016/j.matchar.2024.114000) |
| Paper 28   | [Link](https://doi.org/10.1016/j.jmapro.2024.03.032) |
| Paper 29   | [Link](https://doi.org/10.1016/j.addma.2024.104252) |
| Paper 30   | [Link](https://doi.org/10.1016/j.matchemphys.2024.129214) |


