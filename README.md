# Impact-assessment
Impact Evaluation Using Geospatial Analysis: How the Lima Metro Affects Employment and Underemployment Rates

The following codes focus on the implementation of Line 1 of the Lima Metro. Therefore, data is gathered from periods before and after its implementation, which occurred partially in 2009 and was fully operational by 2014. A crucial point for this research is that Martínez et al. (2020) serves as a guide for both data collection and methodological approach.

The main dataset used is from the INEI, specifically the National Household Survey (ENAHO), particularly Module 5: Employment and Income, which provides the individual's socioeconomic characteristics, as well as Module 1, which offers housing-related information to characterize the clusters. This cross-sectional dataset will be combined by sub-periods (2007–2009, 2010–2011, 2012–2014, 2015–2017).

Additionally, the 2008 Economic Census will be used to characterize districts based on the number of jobs they generate. Finally, an Origin-Destination survey conducted by JICA in 2004, which contains individual-level travel data, will be used to further characterize the districts.

The model is represented by:

Y_it=α+Σ_k y_k P_kt+δT_i+Σ_k β_k P_kt T_i+θ_i x_it+ε_it

Where Y_it represents the current status of individual i, being either employed or underemployed, which is the outcome variable analyzed. T_i is a dummy variable equal to 1 if individual i lives in the area of influence of Line 1, and 0 otherwise, The P_kt variables are dummy variables equal to 1 for different sub-periods after the introduction of Line 1 (2010–2011, 2012–2014, 2015–2017) and 0 otherwise, and β_k coefficients are the parameters of interest, which measure the effects of the improved transportation system in each sub-period k. x is a vector of individual-level covariates for individual i at time t. Finally, ε_it represents an error term..

Martinez, D., Mitnik, O., Salgado, E., Scholl, L., & Yañez-Pagans, P. (2020). Connecting to Economic Opportunity: the Role of Public Transport in Promoting Women’s Employment in Lima. Journal Of Economics, 3(1). https://doi.org/10.1007/s41996-019-00039-9
