#AE 220 : Aircraft Structures

## Formulae

Written using $$ \LaTeX $$ math format

#### In Einstein notation

* Point and unit vector [i, j, k] each iterate over x,y,z axis
* Displacement, distance [u, v, w] each iterate over x,y,z axis
    * u relates to i , v to j and z to k

#### Equations of Load Factor

* $$ n_i = \frac{a_i}{g} $$

#### Equations of Equilibrium

* $$ \frac{\partial \sigma_i}{\partial i} + \frac{\partial \tau_{jk}}{\partial j} + \frac{\partial \tau_{ik}}{\partial k} + X_i = 0 $$

#### Strain Displacement Relations

* $$ \epsilon_i = \frac{\partial u}{\partial i} $$
* $$ \gamma_{ij} = \frac{\partial u}{\partial j} + \frac{\partial v}{\partial i} $$

#### Stress Strain Relations

* $$ E \epsilon_i = [\sigma_i - \nu (\sigma_j + sigma_k)] $$, $$ \nu $$ = Poisson's ratio
* $$ G \gamma_{ij} = \tau_{ij} $$
* $$ G = 2(1+\nu)/E $$

#### Boundary Conditions

* $$ \bar{X_i} = \sigma_i l +\tau_{ij} m + \tau_{ik} n $$

#### Inclined Plane Stress

* $$ \tau = \frac{\sigma_i - sigma_j}{2}sin 2\theta - \tau_ij cos 2\theta $$

#### Principle Stress
* $$ tan 2\theta = \pm \frac{2\tau_{ij}}{\sigma_i - \sigma_j} $$
* $$ \sigma_{extremum} = \frac{\sigma_i + \sigma_j}{2} \pm \frac{1}{2} \sqrt{(\sigma_i - \sigma_j)^2 + 4\tau^2_{ij}} $$
* $$ \tau_{extremum} = \pm \frac{1}{2} \sqrt{(\sigma_i - \sigma_j)^2 + 4\tau^2_{ij}} $$
* $$ \tau_{extremum} = \frac{\sigma_{max} - \sigma{min}}{2} $$

#### Mohr's Circle
* Radius = $$ \tau_{max} $$

#### Compatibility Conditions
* $$ 2\frac{\partial^2 \epsilon_i}{\partial j \partial k} = \frac{\partial}{\partial i} \left(-\frac{\partial \gamma{jk}}{\partial i}+\frac{\partial \gamma{ik}}{\partial j+\frac{\partial \gamma{ij}}{\partial k}\right) $$

#### Plain Strain

* __Hint__: Put $$ \gamma/2 $$ in place of $$ \tau $$ and $$ \epsilon $$ in place of $$ \sigma $$. Rest of the expressions remain the same.
* $$ \frac{\partial^2 \gamma{ij}}{\partial i \partial_j} = \frac{\partial^2 \epsilon_j}{\partial i^2} + \frac{\partial^2 \epsilon_i}{\partial j^2} $$

#### Inclined Plane Strain

* $$ \frac{\gamma}{2} = \frac{\epsilon_i - epsilon_j}{2}sin 2\theta - \frac{\gamma_{ij}}{2} cos 2\theta $$
* OR $$ \gamma = (\epsilon_i - epsilon_j)sin 2\theta - \gamma_{ij} cos 2\theta $$

#### Principle Strain

* Use the hint.

#### Volumetric Strain
* $$ e = \frac{1-2\nu}{E}(\sum \sigma_i) \Rightarrow e = -\frac{3(1-2\nu)}{E} $$, where p is Hydrostatic stress(\sigma_i = -p)
* $$ e = -p/K $$ where K = Bulk Modulus
