# Library
```@docs
plot_bloch_sphere
BlochSphere
plot_bloch_sphere_animation(ket_list::Vector{Ket{T}} where {T<:Complex};
    qubit_id::Int = 1,
    animated_bloch_sphere::AnimatedBlochSphere = AnimatedBlochSphere())
```
```@raw html
<iframe src="animations/plot_bloch_sphere_animation_for_ket.html"
style="height:825px;width:100%;">
</iframe>
```
```@docs
plot_bloch_sphere_animation(density_matrix_list::Vector{T} where {T<:AbstractOperator};
    qubit_id::Int = 1,
    animated_bloch_sphere::AnimatedBlochSphere = AnimatedBlochSphere())
```
```@raw html
<iframe src="animations/plot_bloch_sphere_animation_for_operator.html"
style="height:825px;width:100%;">
</iframe>
```
```@docs
AnimatedBlochSphere
```
```@raw html
<iframe src="animations/plot_bloch_sphere_animation_without_interpolation.html"
style="height:825px;width:100%;">
</iframe>
```
```@docs
plot_histogram
viz_wigner
```