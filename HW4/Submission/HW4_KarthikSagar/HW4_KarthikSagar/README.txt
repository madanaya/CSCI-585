Q1)
    Linear Equation:

    MEDV = 
        -1084 * CRIM +
        0.0458 * ZN +
        2.7181 * CHAS=1 + 
        -17.376 * NOX + 
        3.8016 * RM + 
        -1.4927 * DIS +
        0.2996 * RAD +
        -0.0118 * TAX +
        -0.9465 * PTRATIO +
        0.0093 * B +
        -0.5226 * LSTAT + 
        36.3411

    Explanation - 
        P-values and coefficients in regression analysis work together to tell which relationships in your model
        are statistically significant and the nature of those relationships. Higher P - value indicates the output predicted
        is independent of the attribute. Lower P - value indicates the dependency and Higher P - value indicates independency.
        INDUS has high P-value of 0.738 and AGE has high P-value of 0.958. Generally, the threshold is 0.05 ( 5% or 1%). Since these attributes have
        high P-value, they are excluded from the Linear Equation. Also, Weka eliminates co linear attributes.

Q2) 
    Lowest RMSE Value: 2.5856
    Learning rate - 0.2
    Momentum - 0.1

Q3) 
    Linear Equation:

    num_rings = 
        -0.825 * sex_I +
        0.058 * sex_M +
        -0.458 * length +
        11.075 * diameter +
        10.762 * height +
        8.975 * whole_weight +
        -19.787 * shucked_weight + 
        -10.582 * viscera_weight + 
        8.742 * shell_weight + 
        3.895

Q5) 
    Cluster 0: 1388 items
    Cluster 1: 499 items
    Cluster 2: 448 items
    Cluster 3: 22 items
    Cluster 4: 172 items
    Cluster 5: 1648 items
    Total number of items: 4177

Q6) Linear Equation:

    num_rings = 
        - 11.933 * length
        + 25.766 * diameter
        + 20.358 * height
        + 2.836