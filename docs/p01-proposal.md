# Sustainability Worldwide: An Analysis of ESG Ratings
**Code Name:** "ESG"

**Authors:** Pournami Varma (varmap@uw.edu), Maia B (maiab3@uw.edu), Ciara Maher (ciaram14@uw.edu)

**Affiliation:** INFO-201: Technical Foundations of Informatics - The Information School - University of Washington

**Date:** Autumn 2022

**Abstract:** Our main question is to uncover the link between sustainability standards and company operations indifferent countries. To address the question, we will explore three datasets -- the first about Environmental, Social and Governance (ESG) criteria of several companies across industry sectors and locations, another about the United Nations' index on countries' sustainability development and finally one on environmental governance factors and location-based adherence to sustianability agreements and polices. We are concerned with ESG indicators because of how they standardize businessess' metrics for social and ethical consciousness. 

**Keywords:** environment, sustainability, social responsibility, corporations, governance

**Introduction:** Our project largely revolves around analyzing the ESG criteria and how closely large companies on a global scale follow set standards. The criteria set in place is typically used for investors to have a better grasp when making decisions regarding potential investment, as the ESG is a large indicator on how socially conscious a company chooses to be. We take a look at how companies either lower or increase their carbon footprint, and how meticulously these institutions take action to be either a steward or destroyer of nature. However, there are other factors at play. We also focus on the relationships between company and consumer, and how thoughtful said company is about operating within their own communities. This plays hand in hand with looking at the company's leadership, and how these internal controls impact those surrounding them. Overall, a true test of how one interacts with the world with mindfulness.

**Problem Domain:** Our research topic falls within the domain of environmental, social, and corporate concerns. These concerns can be embodied into a sustainability rating system known as ESG in the business world.  We can use ESG ratings as well as their individual breakdowns to understand how well a company interacts with the environment as a measure of its own sustainability. According to researchers from Korea University, "with the rapid pace of globalization, every single individualis chasing the technology while ignoring environmental changes accelerated as a consequence" (2021). For our project, we will want to pay special attention to the "E" of ESG, which pertains to environmental risks. According to S&P Global, "the environmental portion of ESG considers how that company performs as a steward of natural or physical environment" (2019). The risks/factors that these corporations are attempting to manage include greenhouse gas emissions, water use, waste and pollution, and land use and biodiversity (2019). Companies have begun to realize that their own economic success could be severely damaged if they do not do their part to protect the environment. They also are being held to higher and higher standards by governments and are incorporating social responsibility initiatives to appeal to consumers. Ultimately, ESG is a “quantifiable measure of sustainability” (techtarget.com, 2022) that can serve as a way to hold corporations accountable for the impacts they have on our natural world, as well as protect people who could suffer from consumerism and capitalism left unchecked.

**Research Questions:** _What country, on average, has the highest ESG scores?_ 
- This question is important because a country with a high ESG score likely has certain regulations and mandates imposed on corporations that other countries could learn from. ESG concerns are global concerns that every corporation must do their part to better. Certain countries and corporations based out of those countries can serve as examples for the rest of the world.

_Which industry sector, on average, has the highest and lowest ESG ratings?_
- This question is vital given that 

_How do factors such as poverty and rapid urbanization affect the sustainability of developing countries? Why can’t we compare them to developed countries?_
- This question is important to note as versions of sustainability vary from region to region. Taking into consideration the difference between areas subject to rapid urbanization and poverty are of the utmost importance as these factors ultimately contribute to the ESG total score. This largely connects to out problem domain as we seek to differentiate between companies who are holding their bargain in the areas they operate, and areas who are simply trying to survive.

**The Dataset:** 
1. _**Kaggle - Sustainability Data**_
- This given dataset is related to our problem domain since

- The dataset deals with a csv file titled Sustainability Scores. It has 15560 rows of unique values and 10 columns made up of: Company Name, Ticker, Country, Sector, Subsector, Overall ESG Rating, Overall ESG Score, Environmental Score, Social Score, and Governance Score. 

- QPM. 'Sustainability Data', Google LLC, Kaggle, 2022, https://www.kaggle.com/datasets/debashish311601/esg-scores-and-ratings

- 

2. _**Kaggle - ONU Sustainability of Countries**_
- Our dataset is related to our problem domain as larger companies tend to operate in countries that are currently in the process of developing. This data set directly analyzes the aggregation and manipulation of many ONU UNSDG indexes that assess the sustainability of a country’s development. This set specifically is set to update annually, meaning that we would be able to see the evolution of the progress/detriment over a large quantity of time. This would enable us to answer our question as there are several variables at play that the answer is more gray than black and white; in turn, these scores would allow us to gauge the impact between sustainability and development. This includes but is not limited to; foreign direct investment (support coming in from out of the country); population with primary reliance on clean fuels; total revenues coming from government on total GDP; etc. The varying factors allow us to grasp the bigger picture at hand rather than being stuck within our own perspective.

- The current data set appears within 10 columns: year, year in date format, country name, country ONU region, country ONU level of development, total greenhouse gas emissions (GHG) per year, total revenues coming from government on total GDP, foreign direct investment (FDI) to support sustainable development for developing countries, annual growth rate of real GDP per capita (a positive percentage change in real GDP per capita can be interpreted), proportion of population with primary reliance on clean fuels and technology is calculated as the number of people.

- Giatti, Vittorio. ‘ONU Sustainability of Countries Development’, Google LLC, Kaggle, 2022, https://www.kaggle.com/datasets/vittoriogiatti/unsdg-united-nations-sustainable-development-group

- Vittorio Giatti collected the data in order to see the correlation between indexes and countries; and how these factors evolutionizing over time creates a long-term impact. Through the user calculating a custom overall sustainability score, it would be helpful to compare these to bigger companies in already developed countries. By doing so would allow for deeper introspection in how other areas of the world have adapted and why their scores may be different. Are their scores better or worse? Why? What differences create these answers? The data collected here was through the manipulation of datasets from the ONU data portal source. Through thorough investigation, it appears that the institutions that are to profit from collecting said data are actually the bigger companies. We say this as it may benefit them to have other areas of the world negatively compare to them, as this boosts their image and what they are doing to be ‘better.’ The data is reliable and secure as the data was collected through the United Nations; as they are held to a high standard on a global scale. I obtained the data through ‘Kaggle’ and have rightfully cited the individuals who contributed to the cause.

3. _**Kaggle - Global Environmental Indicators Data**_

- This dataset is related to our problem domain as it demonstrates how ESG efforts by corporations are related to the regulations and madates imposed by the countries they operate in. This data set lists the countries joined by the United Nations and whether or not they participate in the global treaties and agreements concerning the environment. This will be especially important when answering our research questions that concern where high-scoring companies are based out of. We can use data about which country corporations operate in to see how these countries can set an example for holding corporations accountable and having high standards for sustainability.

- The file we will look at in particular is called Governance. It consists of 196 rows and 16 columns. These columns include: CountryID, Country and area, Basel Convention, CITES, Conventions on Biological Diversity, Convention on Migratory Species, Kyoto Protocol, Paris Agreement, Ramsar Convention, Rotterdam Convention, Stockholm Convention, UN Convention on the Law of the of the Sea, UN Convention to Combat Desertification, UN Framework Convention on Climate Change, World Heritage Convention.
 
- Bhatia, Ruchi. 'Global Environmental Indicatiors', Google LLC, Kaggle, 2021, https://www.kaggle.com/datasets/ruchi798/global-environmental-indicators

- Ruchi Bhatia collected this data because of the importance of environmental indicators for monitoring the state of our environment. Tracking and making environmental indicators accessible helps push others to take responsibility for the space we all share. They also serve as warning signs for downturns in the state of our environment, and can help decisions be made before undesirable effects occur. This data was collected from the United Nations which is a primary source. While it is not known how Ruchi Bhatia funded this data collection, the UN is funded by its member states and voluntary contributions.

**Expected Implications:**

**Limitations:** 

**Acknowledgements:** I’d like to thank my teammates!

**References:**

Giatti, Vittorio. ‘ONU Sustainability of Countries Development’, 
	Google LLC, Kaggle, 2022,
    https://www.kaggle.com/datasets/vittoriogiatti/unsdg-united-nations-sustainable-development-group
    
Sachini Supunsala Senadheera, Piumi Amasha Withana, Pavani Dulanja Dissanayake, Binoy Sarkar, Shauhrat S. Chopra, Jay Hyuk Rhee & Yong Sik Ok (2021) Scoring environment pillar in environmental, social, and governance (ESG) assessment, Sustainable Environment, 7:1, DOI: 10.1080/27658511.2021.1960097

“Understanding the ‘E’ in ESG.” S&amp;P Global, S&amp;P Global, 23 Oct. 2019, https://www.spglobal.com/en/research-insights/articles/understanding-the-e-in-esg. 

Lutkevich, Ben. “ESG vs. CSR vs. Sustainability: What's the Difference?” WhatIs.com, TechTarget, 29 Sept. 2022, https://www.techtarget.com/whatis/feature/ESG-vs-CSR-vs-sustainability-Whats-the-difference. 

QPM. 'Sustainability Data', Google LLC, Kaggle, 2022, https://www.kaggle.com/datasets/debashish311601/esg-scores-and-ratings.

**Appendix A - Questions:** Are we able to change big questions/data sets after our first proposal?

For what to do, see the [`../instructions/`](../instructions/) directory, specifically:

* [Design Brief](../instructions/project-design-brief.pdf)
* [Project Proposal Requirements](../instructions/p01-proposal-requirements.md)
