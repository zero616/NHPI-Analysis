---
# For reference on model card metadata, see the spec: https://github.com/huggingface/hub-docs/blob/main/modelcard.md?plain=1
# Doc / guide: https://huggingface.co/docs/hub/model-cards
{{ card_data   }}
---

# Model Card for {{ NHPI | default("Model ID", true) }}

<!-- Provide a quick summary of what the model is/does. -->

{{ model_summary   | default("Directly explains the impact of the NHPI growth rate on the growth rate of total final consumption in Canada.", true) }}

## Model Details

### Model Description

<!-- Provide a longer summary of what this model is. -->

{{ model_description   | default("The relationship between the quarterly national NHPI growth rate and the growth rate of Canada's total final consumption is linear", true) }}

- **Developed by:** {{ developers  | default("[Shipeng Zhang]", true)}}
- **Model type:** {{ model_type  | default("[linear model]", true)}}
- **Language(s) (NLP):** {{ language  | default("[English]", true)}}
- **License:** {{ license  | default("[MIT]", true)}}

### Model Sources [optional]

<!-- Provide the basic links for the model. -->

- **Repository:** {{ repo  | default("[https://github.com/zero616/NHPI-Analysis]", true)}}
- **Paper [optional]:** {{ paper  | default("[Predicting Canadian residents’ consumption amount through house prices]", true)}}

## Uses


### Direct Use

<!-- This section is for the model use without fine-tuning or plugging into a larger ecosystem/app. -->

{{ direct_use  | default("[NHPI analysis]", true)}}


### Out-of-Scope Use

<!-- This section addresses misuse, malicious use, and uses that the model will not work well for. -->

{{ downstream_use  | default("[other analysis]", true)}}

## Bias, Risks, and Limitations

<!-- This section is meant to convey both technical and sociotechnical limitations. -->

{{ out_of_scope_use  | default("[only use in canada]", true)}}

### Recommendations

<!-- This section is meant to convey recommendations with respect to the bias, risk, and technical limitations. -->

{{ bias_recommendations | default("Users (both direct and downstream) should be made aware of the risks, biases and limitations of the model.", true)}}

## How to Get Started with the Model

Use the code below to get started with the model.

{{ get_started_code | default("[none]", true)}}

## Training Details

### Training Data

<!-- This should link to a Dataset Card, perhaps with a short stub of information on what the training data is all about as well as documentation related to data pre-processing or additional filtering. -->

{{ training_data | default("[Data from open gov of canada, can find on the paper]", true)}}

### Training Procedure

<!-- This relates heavily to the Technical Specifications. Content here should link to that section when it is relevant to the training procedure. -->



## Evaluation

<!-- This section describes the evaluation protocols and provides the results. -->

### Testing Data, Factors & Metrics

#### Testing Data

<!-- This should link to a Dataset Card if possible. -->

{{ testing_data | default("[NHPI and Consumption of Canada 2000-2009]", true)}}

#### Factors

<!-- These are the things the evaluation is disaggregating by, e.g., subpopulations or domains. -->

{{ testing_factors | default("[]", true)}}

#### Metrics

<!-- These are the evaluation metrics being used, ideally with a description of why. -->

{{ testing_metrics | default("[]", true)}}

### Results

{{ results | default("[can find on paper]", true)}}

#### Summary

{{ results_summary | default("", true) }}


## Environmental Impact

<!-- Total emissions (in grams of CO2eq) and additional considerations, such as electricity usage, go here. Edit the suggested text below accordingly -->

Carbon emissions can be estimated using the [Machine Learning Impact calculator](https://mlco2.github.io/impact#compute) presented in [Lacoste et al. (2019)](https://arxiv.org/abs/1910.09700).

- **Hardware Type:** {{ hardware_type | default("[any amd/intel cpu]", true)}}
- **Hours used:** {{ hours_used | default("[very short]", true)}}
- **Cloud Provider:** {{ cloud_provider | default("[none]", true)}}
- **Compute Region:** {{ cloud_region | default("[none]", true)}}
- **Carbon Emitted:** {{ co2_emitted | default("[none]", true)}}

## Technical Specifications [optional]

### Model Architecture and Objective

{{ model_specs | default("[More Information Needed]", true)}}

### Compute Infrastructure

{{ compute_infrastructure | default("[More Information Needed]", true)}}

#### Hardware

{{ hardware_requirements | default("[More Information Needed]", true)}}

#### Software

{{ software | default("[More Information Needed]", true)}}

## Citation [optional]

<!-- If there is a paper or blog post introducing the model, the APA and Bibtex information for that should go in this section. -->

**BibTeX:**

{{ citation_bibtex | default("[More Information Needed]", true)}}

**APA:**

{{ citation_apa | default("[More Information Needed]", true)}}

## Glossary [optional]

<!-- If relevant, include terms and calculations in this section that can help readers understand the model or model card. -->

{{ glossary | default("[More Information Needed]", true)}}

## More Information [optional]

{{ more_information | default("[More Information Needed]", true)}}

## Model Card Authors [optional]

{{ model_card_authors | default("[More Information Needed]", true)}}

## Model Card Contact

{{ model_card_contact | default("[More Information Needed]", true)}}
