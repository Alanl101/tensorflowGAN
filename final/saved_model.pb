гл
КЮ
D
AddV2
x"T
y"T
z"T"
Ttype:
2	ђљ
B
AssignVariableOp
resource
value"dtype"
dtypetypeѕ
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
Џ
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

Щ
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%иЛ8"&
exponential_avg_factorfloat%  ђ?";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
.
Identity

input"T
output"T"	
Ttype
\
	LeakyRelu
features"T
activations"T"
alphafloat%═╠L>"
Ttype0:
2
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(ѕ
?
Mul
x"T
y"T
z"T"
Ttype:
2	љ

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetypeѕ
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
Ў
ResizeNearestNeighbor
images"T
size
resized_images"T"
Ttype:
2
	"
align_cornersbool( "
half_pixel_centersbool( 
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
Й
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ѕ
@
StaticRegexFullMatch	
input

output
"
patternstring
Ш
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
-
Tanh
x"T
y"T"
Ttype:

2
ќ
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ѕ"serve*2.6.22v2.6.1-9-gc2363d6d0258═­

u
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dђ1*
shared_namedense/kernel
n
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes
:	dђ1*
dtype0
m

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ1*
shared_name
dense/bias
f
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes	
:ђ1*
dtype0
І
batch_normalization/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ1**
shared_namebatch_normalization/gamma
ё
-batch_normalization/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization/gamma*
_output_shapes	
:ђ1*
dtype0
Ѕ
batch_normalization/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ1*)
shared_namebatch_normalization/beta
ѓ
,batch_normalization/beta/Read/ReadVariableOpReadVariableOpbatch_normalization/beta*
_output_shapes	
:ђ1*
dtype0
Ќ
batch_normalization/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ1*0
shared_name!batch_normalization/moving_mean
љ
3batch_normalization/moving_mean/Read/ReadVariableOpReadVariableOpbatch_normalization/moving_mean*
_output_shapes	
:ђ1*
dtype0
Ъ
#batch_normalization/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ1*4
shared_name%#batch_normalization/moving_variance
ў
7batch_normalization/moving_variance/Read/ReadVariableOpReadVariableOp#batch_normalization/moving_variance*
_output_shapes	
:ђ1*
dtype0

conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ@*
shared_nameconv2d/kernel
x
!conv2d/kernel/Read/ReadVariableOpReadVariableOpconv2d/kernel*'
_output_shapes
:ђ@*
dtype0
n
conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d/bias
g
conv2d/bias/Read/ReadVariableOpReadVariableOpconv2d/bias*
_output_shapes
:@*
dtype0
ј
batch_normalization_1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namebatch_normalization_1/gamma
Є
/batch_normalization_1/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_1/gamma*
_output_shapes
:@*
dtype0
ї
batch_normalization_1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*+
shared_namebatch_normalization_1/beta
Ё
.batch_normalization_1/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_1/beta*
_output_shapes
:@*
dtype0
џ
!batch_normalization_1/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!batch_normalization_1/moving_mean
Њ
5batch_normalization_1/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_1/moving_mean*
_output_shapes
:@*
dtype0
б
%batch_normalization_1/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*6
shared_name'%batch_normalization_1/moving_variance
Џ
9batch_normalization_1/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_1/moving_variance*
_output_shapes
:@*
dtype0
ѓ
conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv2d_1/kernel
{
#conv2d_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_1/kernel*&
_output_shapes
:@*
dtype0
r
conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_1/bias
k
!conv2d_1/bias/Read/ReadVariableOpReadVariableOpconv2d_1/bias*
_output_shapes
:*
dtype0

NoOpNoOp
│-
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Ь,
valueС,Bр, B┌,
┘
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
layer-7
	layer_with_weights-4
	layer-8

	variables
trainable_variables
regularization_losses
	keras_api

signatures
x

activation

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
Ќ
axis
	gamma
beta
moving_mean
moving_variance
	variables
trainable_variables
regularization_losses
	keras_api
R
	variables
 trainable_variables
!regularization_losses
"	keras_api
R
#	variables
$trainable_variables
%regularization_losses
&	keras_api
h

'kernel
(bias
)	variables
*trainable_variables
+regularization_losses
,	keras_api
Ќ
-axis
	.gamma
/beta
0moving_mean
1moving_variance
2	variables
3trainable_variables
4regularization_losses
5	keras_api
b
6
activation
7	variables
8trainable_variables
9regularization_losses
:	keras_api
R
;	variables
<trainable_variables
=regularization_losses
>	keras_api
h

?kernel
@bias
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
f
0
1
2
3
4
5
'6
(7
.8
/9
010
111
?12
@13
F
0
1
2
3
'4
(5
.6
/7
?8
@9
 
Г

	variables
Enon_trainable_variables
Fmetrics
Glayer_metrics
trainable_variables
Hlayer_regularization_losses

Ilayers
regularization_losses
 
R
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
XV
VARIABLE_VALUEdense/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
dense/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
Г

Nlayers
Onon_trainable_variables
	variables
Player_metrics
Qmetrics
trainable_variables
Rlayer_regularization_losses
regularization_losses
 
db
VARIABLE_VALUEbatch_normalization/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUEbatch_normalization/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUEbatch_normalization/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE#batch_normalization/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

0
1
2
3

0
1
 
Г

Slayers
Tnon_trainable_variables
	variables
Ulayer_metrics
Vmetrics
trainable_variables
Wlayer_regularization_losses
regularization_losses
 
 
 
Г

Xlayers
Ynon_trainable_variables
	variables
Zlayer_metrics
[metrics
 trainable_variables
\layer_regularization_losses
!regularization_losses
 
 
 
Г

]layers
^non_trainable_variables
#	variables
_layer_metrics
`metrics
$trainable_variables
alayer_regularization_losses
%regularization_losses
YW
VARIABLE_VALUEconv2d/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEconv2d/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

'0
(1

'0
(1
 
Г

blayers
cnon_trainable_variables
)	variables
dlayer_metrics
emetrics
*trainable_variables
flayer_regularization_losses
+regularization_losses
 
fd
VARIABLE_VALUEbatch_normalization_1/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEbatch_normalization_1/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE!batch_normalization_1/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE%batch_normalization_1/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

.0
/1
02
13

.0
/1
 
Г

glayers
hnon_trainable_variables
2	variables
ilayer_metrics
jmetrics
3trainable_variables
klayer_regularization_losses
4regularization_losses
R
l	variables
mtrainable_variables
nregularization_losses
o	keras_api
 
 
 
Г

players
qnon_trainable_variables
7	variables
rlayer_metrics
smetrics
8trainable_variables
tlayer_regularization_losses
9regularization_losses
 
 
 
Г

ulayers
vnon_trainable_variables
;	variables
wlayer_metrics
xmetrics
<trainable_variables
ylayer_regularization_losses
=regularization_losses
[Y
VARIABLE_VALUEconv2d_1/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_1/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

?0
@1

?0
@1
 
Г

zlayers
{non_trainable_variables
A	variables
|layer_metrics
}metrics
Btrainable_variables
~layer_regularization_losses
Cregularization_losses

0
1
02
13
 
 
 
?
0
1
2
3
4
5
6
7
	8
 
 
 
▒

layers
ђnon_trainable_variables
J	variables
Ђlayer_metrics
ѓmetrics
Ktrainable_variables
 Ѓlayer_regularization_losses
Lregularization_losses

0
 
 
 
 
 

0
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

00
11
 
 
 
 
 
 
▓
ёlayers
Ёnon_trainable_variables
l	variables
єlayer_metrics
Єmetrics
mtrainable_variables
 ѕlayer_regularization_losses
nregularization_losses

60
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
~
serving_default_dense_inputPlaceholder*'
_output_shapes
:         d*
dtype0*
shape:         d
▓
StatefulPartitionedCallStatefulPartitionedCallserving_default_dense_inputdense/kernel
dense/bias#batch_normalization/moving_variancebatch_normalization/gammabatch_normalization/moving_meanbatch_normalization/betaconv2d/kernelconv2d/biasbatch_normalization_1/gammabatch_normalization_1/beta!batch_normalization_1/moving_mean%batch_normalization_1/moving_varianceconv2d_1/kernelconv2d_1/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8ѓ *.
f)R'
%__inference_signature_wrapper_3044028
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Ў
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp-batch_normalization/gamma/Read/ReadVariableOp,batch_normalization/beta/Read/ReadVariableOp3batch_normalization/moving_mean/Read/ReadVariableOp7batch_normalization/moving_variance/Read/ReadVariableOp!conv2d/kernel/Read/ReadVariableOpconv2d/bias/Read/ReadVariableOp/batch_normalization_1/gamma/Read/ReadVariableOp.batch_normalization_1/beta/Read/ReadVariableOp5batch_normalization_1/moving_mean/Read/ReadVariableOp9batch_normalization_1/moving_variance/Read/ReadVariableOp#conv2d_1/kernel/Read/ReadVariableOp!conv2d_1/bias/Read/ReadVariableOpConst*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *)
f$R"
 __inference__traced_save_3044671
Ч
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense/kernel
dense/biasbatch_normalization/gammabatch_normalization/betabatch_normalization/moving_mean#batch_normalization/moving_varianceconv2d/kernelconv2d/biasbatch_normalization_1/gammabatch_normalization_1/beta!batch_normalization_1/moving_mean%batch_normalization_1/moving_varianceconv2d_1/kernelconv2d_1/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *,
f'R%
#__inference__traced_restore_3044723░њ

х
c
G__inference_activation_layer_call_and_return_conditional_losses_3043615

inputs
identityx
leaky_re_lu_1/LeakyRelu	LeakyReluinputs*/
_output_shapes
:         @2
leaky_re_lu_1/LeakyReluЂ
IdentityIdentity%leaky_re_lu_1/LeakyRelu:activations:0*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
Ѕ
§
C__inference_conv2d_layer_call_and_return_conditional_losses_3043577

inputs9
conv2d_readvariableop_resource:ђ@-
biasadd_readvariableop_resource:@
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpќ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:ђ@*
dtype02
Conv2D/ReadVariableOpБ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
2
Conv2Dї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpѕ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2	
BiasAdds
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:         @2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         ђ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
¤
┴
R__inference_batch_normalization_1_layer_call_and_return_conditional_losses_3043729

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpГ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1п
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @:@:@:@:@:*
epsilon%oЃ:*
exponential_avg_factor%
О#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:         @2

Identity▄
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         @: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
С
Ю
R__inference_batch_normalization_1_layer_call_and_return_conditional_losses_3043369

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpГ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1▄
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oЃ:*
is_training( 2
FusedBatchNormV3Ѕ
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @2

IdentityИ
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
ч
м
7__inference_batch_normalization_1_layer_call_fn_3044546

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityѕбStatefulPartitionedCallЦ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *[
fVRT
R__inference_batch_normalization_1_layer_call_and_return_conditional_losses_30437292
StatefulPartitionedCallЃ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         @2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         @: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
ћ
`
D__inference_reshape_layer_call_and_return_conditional_losses_3044368

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Р
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliced
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/1d
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/2e
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :ђ2
Reshape/shape/3║
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapex
ReshapeReshapeinputsReshape/shape:output:0*
T0*0
_output_shapes
:         ђ2	
Reshapem
IdentityIdentityReshape:output:0*
T0*0
_output_shapes
:         ђ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         ђ1:P L
(
_output_shapes
:         ђ1
 
_user_specified_nameinputs
т
H
,__inference_activation_layer_call_fn_3044556

inputs
identityл
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *P
fKRI
G__inference_activation_layer_call_and_return_conditional_losses_30436152
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
Я
н
5__inference_batch_normalization_layer_call_fn_3044341

inputs
unknown:	ђ1
	unknown_0:	ђ1
	unknown_1:	ђ1
	unknown_2:	ђ1
identityѕбStatefulPartitionedCallъ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ1*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *Y
fTRR
P__inference_batch_normalization_layer_call_and_return_conditional_losses_30431732
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         ђ12

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         ђ1: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         ђ1
 
_user_specified_nameinputs
Ц
h
L__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_3043624

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
Constc
Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2	
Const_1X
mulMulConst:output:0Const_1:output:0*
T0*
_output_shapes
:2
mul║
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*/
_output_shapes
:         @*
half_pixel_centers(2
resize/ResizeNearestNeighborЅ
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
ѕA
╣	
#__inference__traced_restore_3044723
file_prefix0
assignvariableop_dense_kernel:	dђ1,
assignvariableop_1_dense_bias:	ђ1;
,assignvariableop_2_batch_normalization_gamma:	ђ1:
+assignvariableop_3_batch_normalization_beta:	ђ1A
2assignvariableop_4_batch_normalization_moving_mean:	ђ1E
6assignvariableop_5_batch_normalization_moving_variance:	ђ1;
 assignvariableop_6_conv2d_kernel:ђ@,
assignvariableop_7_conv2d_bias:@<
.assignvariableop_8_batch_normalization_1_gamma:@;
-assignvariableop_9_batch_normalization_1_beta:@C
5assignvariableop_10_batch_normalization_1_moving_mean:@G
9assignvariableop_11_batch_normalization_1_moving_variance:@=
#assignvariableop_12_conv2d_1_kernel:@/
!assignvariableop_13_conv2d_1_bias:
identity_15ѕбAssignVariableOpбAssignVariableOp_1бAssignVariableOp_10бAssignVariableOp_11бAssignVariableOp_12бAssignVariableOp_13бAssignVariableOp_2бAssignVariableOp_3бAssignVariableOp_4бAssignVariableOp_5бAssignVariableOp_6бAssignVariableOp_7бAssignVariableOp_8бAssignVariableOp_9К
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*М
value╔BкB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesг
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesШ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*P
_output_shapes>
<:::::::::::::::*
dtypes
22
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identityю
AssignVariableOpAssignVariableOpassignvariableop_dense_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1б
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2▒
AssignVariableOp_2AssignVariableOp,assignvariableop_2_batch_normalization_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3░
AssignVariableOp_3AssignVariableOp+assignvariableop_3_batch_normalization_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4и
AssignVariableOp_4AssignVariableOp2assignvariableop_4_batch_normalization_moving_meanIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5╗
AssignVariableOp_5AssignVariableOp6assignvariableop_5_batch_normalization_moving_varianceIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6Ц
AssignVariableOp_6AssignVariableOp assignvariableop_6_conv2d_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7Б
AssignVariableOp_7AssignVariableOpassignvariableop_7_conv2d_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8│
AssignVariableOp_8AssignVariableOp.assignvariableop_8_batch_normalization_1_gammaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9▓
AssignVariableOp_9AssignVariableOp-assignvariableop_9_batch_normalization_1_betaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10й
AssignVariableOp_10AssignVariableOp5assignvariableop_10_batch_normalization_1_moving_meanIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11┴
AssignVariableOp_11AssignVariableOp9assignvariableop_11_batch_normalization_1_moving_varianceIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12Ф
AssignVariableOp_12AssignVariableOp#assignvariableop_12_conv2d_1_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13Е
AssignVariableOp_13AssignVariableOp!assignvariableop_13_conv2d_1_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_139
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpњ
Identity_14Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_14f
Identity_15IdentityIdentity_14:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_15Щ
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_15Identity_15:output:0*1
_input_shapes 
: : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
у*
ь
P__inference_batch_normalization_layer_call_and_return_conditional_losses_3043233

inputs6
'assignmovingavg_readvariableop_resource:	ђ18
)assignmovingavg_1_readvariableop_resource:	ђ14
%batchnorm_mul_readvariableop_resource:	ђ10
!batchnorm_readvariableop_resource:	ђ1
identityѕбAssignMovingAvgбAssignMovingAvg/ReadVariableOpбAssignMovingAvg_1б AssignMovingAvg_1/ReadVariableOpбbatchnorm/ReadVariableOpбbatchnorm/mul/ReadVariableOpі
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indicesљ
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	ђ1*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	ђ12
moments/StopGradientЦ
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:         ђ12
moments/SquaredDifferenceњ
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices│
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	ђ1*
	keep_dims(2
moments/varianceЂ
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:ђ1*
squeeze_dims
 2
moments/SqueezeЅ
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:ђ1*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<2
AssignMovingAvg/decayЦ
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:ђ1*
dtype02 
AssignMovingAvg/ReadVariableOpЎ
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:ђ12
AssignMovingAvg/subљ
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:ђ12
AssignMovingAvg/mul┐
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<2
AssignMovingAvg_1/decayФ
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:ђ1*
dtype02"
 AssignMovingAvg_1/ReadVariableOpА
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:ђ12
AssignMovingAvg_1/subў
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:ђ12
AssignMovingAvg_1/mul╔
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oЃ:2
batchnorm/add/yЃ
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:ђ12
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:ђ12
batchnorm/RsqrtЪ
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:ђ1*
dtype02
batchnorm/mul/ReadVariableOpє
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:ђ12
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:         ђ12
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:ђ12
batchnorm/mul_2Њ
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:ђ1*
dtype02
batchnorm/ReadVariableOpѓ
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:ђ12
batchnorm/subє
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:         ђ12
batchnorm/add_1o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:         ђ12

IdentityЫ
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         ђ1: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:         ђ1
 
_user_specified_nameinputs
є
│
P__inference_batch_normalization_layer_call_and_return_conditional_losses_3044294

inputs0
!batchnorm_readvariableop_resource:	ђ14
%batchnorm_mul_readvariableop_resource:	ђ12
#batchnorm_readvariableop_1_resource:	ђ12
#batchnorm_readvariableop_2_resource:	ђ1
identityѕбbatchnorm/ReadVariableOpбbatchnorm/ReadVariableOp_1бbatchnorm/ReadVariableOp_2бbatchnorm/mul/ReadVariableOpЊ
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:ђ1*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oЃ:2
batchnorm/add/yЅ
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:ђ12
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:ђ12
batchnorm/RsqrtЪ
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:ђ1*
dtype02
batchnorm/mul/ReadVariableOpє
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:ђ12
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:         ђ12
batchnorm/mul_1Ў
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:ђ1*
dtype02
batchnorm/ReadVariableOp_1є
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:ђ12
batchnorm/mul_2Ў
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:ђ1*
dtype02
batchnorm/ReadVariableOp_2ё
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:ђ12
batchnorm/subє
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:         ђ12
batchnorm/add_1o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:         ђ12

Identity┬
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         ђ1: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:         ђ1
 
_user_specified_nameinputs
Ц
h
L__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_3044576

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
Constc
Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2	
Const_1X
mulMulConst:output:0Const_1:output:0*
T0*
_output_shapes
:2
mul║
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*/
_output_shapes
:         @*
half_pixel_centers(2
resize/ResizeNearestNeighborЅ
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
з
т
%__inference_signature_wrapper_3044028
dense_input
unknown:	dђ1
	unknown_0:	ђ1
	unknown_1:	ђ1
	unknown_2:	ђ1
	unknown_3:	ђ1
	unknown_4:	ђ1$
	unknown_5:ђ@
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@$

unknown_11:@

unknown_12:
identityѕбStatefulPartitionedCallЂ
StatefulPartitionedCallStatefulPartitionedCalldense_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8ѓ *+
f&R$
"__inference__wrapped_model_30431492
StatefulPartitionedCallЃ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:         d: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
'
_output_shapes
:         d
%
_user_specified_namedense_input
и
ш
B__inference_dense_layer_call_and_return_conditional_losses_3043527

inputs1
matmul_readvariableop_resource:	dђ1.
biasadd_readvariableop_resource:	ђ1
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpј
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	dђ1*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђ12
MatMulЇ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ1*
dtype02
BiasAdd/ReadVariableOpѓ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђ12	
BiasAddw
leaky_re_lu/LeakyRelu	LeakyReluBiasAdd:output:0*(
_output_shapes
:         ђ12
leaky_re_lu/LeakyRelu
IdentityIdentity#leaky_re_lu/LeakyRelu:activations:0^NoOp*
T0*(
_output_shapes
:         ђ12

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs
▄
M
1__inference_up_sampling2d_1_layer_call_fn_3044581

inputs
identity­
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *U
fPRN
L__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_30434892
PartitionedCallЈ
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
╬.
Т
G__inference_sequential_layer_call_and_return_conditional_losses_3043952
dense_input 
dense_3043914:	dђ1
dense_3043916:	ђ1*
batch_normalization_3043919:	ђ1*
batch_normalization_3043921:	ђ1*
batch_normalization_3043923:	ђ1*
batch_normalization_3043925:	ђ1)
conv2d_3043930:ђ@
conv2d_3043932:@+
batch_normalization_1_3043935:@+
batch_normalization_1_3043937:@+
batch_normalization_1_3043939:@+
batch_normalization_1_3043941:@*
conv2d_1_3043946:@
conv2d_1_3043948:
identityѕб+batch_normalization/StatefulPartitionedCallб-batch_normalization_1/StatefulPartitionedCallбconv2d/StatefulPartitionedCallб conv2d_1/StatefulPartitionedCallбdense/StatefulPartitionedCallЉ
dense/StatefulPartitionedCallStatefulPartitionedCalldense_inputdense_3043914dense_3043916*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ1*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_30435272
dense/StatefulPartitionedCall░
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0batch_normalization_3043919batch_normalization_3043921batch_normalization_3043923batch_normalization_3043925*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ1*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *Y
fTRR
P__inference_batch_normalization_layer_call_and_return_conditional_losses_30431732-
+batch_normalization/StatefulPartitionedCallї
reshape/PartitionedCallPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_reshape_layer_call_and_return_conditional_losses_30435562
reshape/PartitionedCallі
up_sampling2d/PartitionedCallPartitionedCall reshape/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *S
fNRL
J__inference_up_sampling2d_layer_call_and_return_conditional_losses_30435652
up_sampling2d/PartitionedCallИ
conv2d/StatefulPartitionedCallStatefulPartitionedCall&up_sampling2d/PartitionedCall:output:0conv2d_3043930conv2d_3043932*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_conv2d_layer_call_and_return_conditional_losses_30435772 
conv2d/StatefulPartitionedCallк
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0batch_normalization_1_3043935batch_normalization_1_3043937batch_normalization_1_3043939batch_normalization_1_3043941*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *[
fVRT
R__inference_batch_normalization_1_layer_call_and_return_conditional_losses_30436002/
-batch_normalization_1/StatefulPartitionedCallќ
activation/PartitionedCallPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *P
fKRI
G__inference_activation_layer_call_and_return_conditional_losses_30436152
activation/PartitionedCallњ
up_sampling2d_1/PartitionedCallPartitionedCall#activation/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *U
fPRN
L__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_30436242!
up_sampling2d_1/PartitionedCall─
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_1/PartitionedCall:output:0conv2d_1_3043946conv2d_1_3043948*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_conv2d_1_layer_call_and_return_conditional_losses_30436372"
 conv2d_1/StatefulPartitionedCallї
IdentityIdentity)conv2d_1/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         2

Identityљ
NoOpNoOp,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall^dense/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:         d: : : : : : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:T P
'
_output_shapes
:         d
%
_user_specified_namedense_input
пї
щ
G__inference_sequential_layer_call_and_return_conditional_losses_3044188

inputs7
$dense_matmul_readvariableop_resource:	dђ14
%dense_biasadd_readvariableop_resource:	ђ1J
;batch_normalization_assignmovingavg_readvariableop_resource:	ђ1L
=batch_normalization_assignmovingavg_1_readvariableop_resource:	ђ1H
9batch_normalization_batchnorm_mul_readvariableop_resource:	ђ1D
5batch_normalization_batchnorm_readvariableop_resource:	ђ1@
%conv2d_conv2d_readvariableop_resource:ђ@4
&conv2d_biasadd_readvariableop_resource:@;
-batch_normalization_1_readvariableop_resource:@=
/batch_normalization_1_readvariableop_1_resource:@L
>batch_normalization_1_fusedbatchnormv3_readvariableop_resource:@N
@batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource:@A
'conv2d_1_conv2d_readvariableop_resource:@6
(conv2d_1_biasadd_readvariableop_resource:
identityѕб#batch_normalization/AssignMovingAvgб2batch_normalization/AssignMovingAvg/ReadVariableOpб%batch_normalization/AssignMovingAvg_1б4batch_normalization/AssignMovingAvg_1/ReadVariableOpб,batch_normalization/batchnorm/ReadVariableOpб0batch_normalization/batchnorm/mul/ReadVariableOpб$batch_normalization_1/AssignNewValueб&batch_normalization_1/AssignNewValue_1б5batch_normalization_1/FusedBatchNormV3/ReadVariableOpб7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1б$batch_normalization_1/ReadVariableOpб&batch_normalization_1/ReadVariableOp_1бconv2d/BiasAdd/ReadVariableOpбconv2d/Conv2D/ReadVariableOpбconv2d_1/BiasAdd/ReadVariableOpбconv2d_1/Conv2D/ReadVariableOpбdense/BiasAdd/ReadVariableOpбdense/MatMul/ReadVariableOpа
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	dђ1*
dtype02
dense/MatMul/ReadVariableOpє
dense/MatMulMatMulinputs#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђ12
dense/MatMulЪ
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:ђ1*
dtype02
dense/BiasAdd/ReadVariableOpџ
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђ12
dense/BiasAddЅ
dense/leaky_re_lu/LeakyRelu	LeakyReludense/BiasAdd:output:0*(
_output_shapes
:         ђ12
dense/leaky_re_lu/LeakyRelu▓
2batch_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 24
2batch_normalization/moments/mean/reduction_indices№
 batch_normalization/moments/meanMean)dense/leaky_re_lu/LeakyRelu:activations:0;batch_normalization/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	ђ1*
	keep_dims(2"
 batch_normalization/moments/mean╣
(batch_normalization/moments/StopGradientStopGradient)batch_normalization/moments/mean:output:0*
T0*
_output_shapes
:	ђ12*
(batch_normalization/moments/StopGradientё
-batch_normalization/moments/SquaredDifferenceSquaredDifference)dense/leaky_re_lu/LeakyRelu:activations:01batch_normalization/moments/StopGradient:output:0*
T0*(
_output_shapes
:         ђ12/
-batch_normalization/moments/SquaredDifference║
6batch_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 28
6batch_normalization/moments/variance/reduction_indicesЃ
$batch_normalization/moments/varianceMean1batch_normalization/moments/SquaredDifference:z:0?batch_normalization/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	ђ1*
	keep_dims(2&
$batch_normalization/moments/varianceй
#batch_normalization/moments/SqueezeSqueeze)batch_normalization/moments/mean:output:0*
T0*
_output_shapes	
:ђ1*
squeeze_dims
 2%
#batch_normalization/moments/Squeeze┼
%batch_normalization/moments/Squeeze_1Squeeze-batch_normalization/moments/variance:output:0*
T0*
_output_shapes	
:ђ1*
squeeze_dims
 2'
%batch_normalization/moments/Squeeze_1Џ
)batch_normalization/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<2+
)batch_normalization/AssignMovingAvg/decayр
2batch_normalization/AssignMovingAvg/ReadVariableOpReadVariableOp;batch_normalization_assignmovingavg_readvariableop_resource*
_output_shapes	
:ђ1*
dtype024
2batch_normalization/AssignMovingAvg/ReadVariableOpж
'batch_normalization/AssignMovingAvg/subSub:batch_normalization/AssignMovingAvg/ReadVariableOp:value:0,batch_normalization/moments/Squeeze:output:0*
T0*
_output_shapes	
:ђ12)
'batch_normalization/AssignMovingAvg/subЯ
'batch_normalization/AssignMovingAvg/mulMul+batch_normalization/AssignMovingAvg/sub:z:02batch_normalization/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:ђ12)
'batch_normalization/AssignMovingAvg/mulБ
#batch_normalization/AssignMovingAvgAssignSubVariableOp;batch_normalization_assignmovingavg_readvariableop_resource+batch_normalization/AssignMovingAvg/mul:z:03^batch_normalization/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02%
#batch_normalization/AssignMovingAvgЪ
+batch_normalization/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<2-
+batch_normalization/AssignMovingAvg_1/decayу
4batch_normalization/AssignMovingAvg_1/ReadVariableOpReadVariableOp=batch_normalization_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:ђ1*
dtype026
4batch_normalization/AssignMovingAvg_1/ReadVariableOpы
)batch_normalization/AssignMovingAvg_1/subSub<batch_normalization/AssignMovingAvg_1/ReadVariableOp:value:0.batch_normalization/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:ђ12+
)batch_normalization/AssignMovingAvg_1/subУ
)batch_normalization/AssignMovingAvg_1/mulMul-batch_normalization/AssignMovingAvg_1/sub:z:04batch_normalization/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:ђ12+
)batch_normalization/AssignMovingAvg_1/mulГ
%batch_normalization/AssignMovingAvg_1AssignSubVariableOp=batch_normalization_assignmovingavg_1_readvariableop_resource-batch_normalization/AssignMovingAvg_1/mul:z:05^batch_normalization/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization/AssignMovingAvg_1Ј
#batch_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oЃ:2%
#batch_normalization/batchnorm/add/yМ
!batch_normalization/batchnorm/addAddV2.batch_normalization/moments/Squeeze_1:output:0,batch_normalization/batchnorm/add/y:output:0*
T0*
_output_shapes	
:ђ12#
!batch_normalization/batchnorm/addа
#batch_normalization/batchnorm/RsqrtRsqrt%batch_normalization/batchnorm/add:z:0*
T0*
_output_shapes	
:ђ12%
#batch_normalization/batchnorm/Rsqrt█
0batch_normalization/batchnorm/mul/ReadVariableOpReadVariableOp9batch_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes	
:ђ1*
dtype022
0batch_normalization/batchnorm/mul/ReadVariableOpо
!batch_normalization/batchnorm/mulMul'batch_normalization/batchnorm/Rsqrt:y:08batch_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:ђ12#
!batch_normalization/batchnorm/mulо
#batch_normalization/batchnorm/mul_1Mul)dense/leaky_re_lu/LeakyRelu:activations:0%batch_normalization/batchnorm/mul:z:0*
T0*(
_output_shapes
:         ђ12%
#batch_normalization/batchnorm/mul_1╠
#batch_normalization/batchnorm/mul_2Mul,batch_normalization/moments/Squeeze:output:0%batch_normalization/batchnorm/mul:z:0*
T0*
_output_shapes	
:ђ12%
#batch_normalization/batchnorm/mul_2¤
,batch_normalization/batchnorm/ReadVariableOpReadVariableOp5batch_normalization_batchnorm_readvariableop_resource*
_output_shapes	
:ђ1*
dtype02.
,batch_normalization/batchnorm/ReadVariableOpм
!batch_normalization/batchnorm/subSub4batch_normalization/batchnorm/ReadVariableOp:value:0'batch_normalization/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:ђ12#
!batch_normalization/batchnorm/subо
#batch_normalization/batchnorm/add_1AddV2'batch_normalization/batchnorm/mul_1:z:0%batch_normalization/batchnorm/sub:z:0*
T0*(
_output_shapes
:         ђ12%
#batch_normalization/batchnorm/add_1u
reshape/ShapeShape'batch_normalization/batchnorm/add_1:z:0*
T0*
_output_shapes
:2
reshape/Shapeё
reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
reshape/strided_slice/stackѕ
reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
reshape/strided_slice/stack_1ѕ
reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
reshape/strided_slice/stack_2њ
reshape/strided_sliceStridedSlicereshape/Shape:output:0$reshape/strided_slice/stack:output:0&reshape/strided_slice/stack_1:output:0&reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape/strided_slicet
reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape/Reshape/shape/1t
reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape/Reshape/shape/2u
reshape/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :ђ2
reshape/Reshape/shape/3Ж
reshape/Reshape/shapePackreshape/strided_slice:output:0 reshape/Reshape/shape/1:output:0 reshape/Reshape/shape/2:output:0 reshape/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
reshape/Reshape/shape▒
reshape/ReshapeReshape'batch_normalization/batchnorm/add_1:z:0reshape/Reshape/shape:output:0*
T0*0
_output_shapes
:         ђ2
reshape/Reshape{
up_sampling2d/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d/Const
up_sampling2d/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d/Const_1љ
up_sampling2d/mulMulup_sampling2d/Const:output:0up_sampling2d/Const_1:output:0*
T0*
_output_shapes
:2
up_sampling2d/mulэ
*up_sampling2d/resize/ResizeNearestNeighborResizeNearestNeighborreshape/Reshape:output:0up_sampling2d/mul:z:0*
T0*0
_output_shapes
:         ђ*
half_pixel_centers(2,
*up_sampling2d/resize/ResizeNearestNeighborФ
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*'
_output_shapes
:ђ@*
dtype02
conv2d/Conv2D/ReadVariableOpь
conv2d/Conv2DConv2D;up_sampling2d/resize/ResizeNearestNeighbor:resized_images:0$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
2
conv2d/Conv2DА
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
conv2d/BiasAdd/ReadVariableOpц
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2
conv2d/BiasAddХ
$batch_normalization_1/ReadVariableOpReadVariableOp-batch_normalization_1_readvariableop_resource*
_output_shapes
:@*
dtype02&
$batch_normalization_1/ReadVariableOp╝
&batch_normalization_1/ReadVariableOp_1ReadVariableOp/batch_normalization_1_readvariableop_1_resource*
_output_shapes
:@*
dtype02(
&batch_normalization_1/ReadVariableOp_1ж
5batch_normalization_1/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype027
5batch_normalization_1/FusedBatchNormV3/ReadVariableOp№
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype029
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ь
&batch_normalization_1/FusedBatchNormV3FusedBatchNormV3conv2d/BiasAdd:output:0,batch_normalization_1/ReadVariableOp:value:0.batch_normalization_1/ReadVariableOp_1:value:0=batch_normalization_1/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @:@:@:@:@:*
epsilon%oЃ:*
exponential_avg_factor%
О#<2(
&batch_normalization_1/FusedBatchNormV3░
$batch_normalization_1/AssignNewValueAssignVariableOp>batch_normalization_1_fusedbatchnormv3_readvariableop_resource3batch_normalization_1/FusedBatchNormV3:batch_mean:06^batch_normalization_1/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02&
$batch_normalization_1/AssignNewValue╝
&batch_normalization_1/AssignNewValue_1AssignVariableOp@batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource7batch_normalization_1/FusedBatchNormV3:batch_variance:08^batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02(
&batch_normalization_1/AssignNewValue_1▓
"activation/leaky_re_lu_1/LeakyRelu	LeakyRelu*batch_normalization_1/FusedBatchNormV3:y:0*/
_output_shapes
:         @2$
"activation/leaky_re_lu_1/LeakyRelu
up_sampling2d_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_1/ConstЃ
up_sampling2d_1/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_1/Const_1ў
up_sampling2d_1/mulMulup_sampling2d_1/Const:output:0 up_sampling2d_1/Const_1:output:0*
T0*
_output_shapes
:2
up_sampling2d_1/mulћ
,up_sampling2d_1/resize/ResizeNearestNeighborResizeNearestNeighbor0activation/leaky_re_lu_1/LeakyRelu:activations:0up_sampling2d_1/mul:z:0*
T0*/
_output_shapes
:         @*
half_pixel_centers(2.
,up_sampling2d_1/resize/ResizeNearestNeighbor░
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02 
conv2d_1/Conv2D/ReadVariableOpш
conv2d_1/Conv2DConv2D=up_sampling2d_1/resize/ResizeNearestNeighbor:resized_images:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
paddingSAME*
strides
2
conv2d_1/Conv2DД
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
conv2d_1/BiasAdd/ReadVariableOpг
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         2
conv2d_1/BiasAdd{
conv2d_1/TanhTanhconv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:         2
conv2d_1/Tanht
IdentityIdentityconv2d_1/Tanh:y:0^NoOp*
T0*/
_output_shapes
:         2

Identity╗
NoOpNoOp$^batch_normalization/AssignMovingAvg3^batch_normalization/AssignMovingAvg/ReadVariableOp&^batch_normalization/AssignMovingAvg_15^batch_normalization/AssignMovingAvg_1/ReadVariableOp-^batch_normalization/batchnorm/ReadVariableOp1^batch_normalization/batchnorm/mul/ReadVariableOp%^batch_normalization_1/AssignNewValue'^batch_normalization_1/AssignNewValue_16^batch_normalization_1/FusedBatchNormV3/ReadVariableOp8^batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_1/ReadVariableOp'^batch_normalization_1/ReadVariableOp_1^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:         d: : : : : : : : : : : : : : 2J
#batch_normalization/AssignMovingAvg#batch_normalization/AssignMovingAvg2h
2batch_normalization/AssignMovingAvg/ReadVariableOp2batch_normalization/AssignMovingAvg/ReadVariableOp2N
%batch_normalization/AssignMovingAvg_1%batch_normalization/AssignMovingAvg_12l
4batch_normalization/AssignMovingAvg_1/ReadVariableOp4batch_normalization/AssignMovingAvg_1/ReadVariableOp2\
,batch_normalization/batchnorm/ReadVariableOp,batch_normalization/batchnorm/ReadVariableOp2d
0batch_normalization/batchnorm/mul/ReadVariableOp0batch_normalization/batchnorm/mul/ReadVariableOp2L
$batch_normalization_1/AssignNewValue$batch_normalization_1/AssignNewValue2P
&batch_normalization_1/AssignNewValue_1&batch_normalization_1/AssignNewValue_12n
5batch_normalization_1/FusedBatchNormV3/ReadVariableOp5batch_normalization_1/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_17batch_normalization_1/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_1/ReadVariableOp$batch_normalization_1/ReadVariableOp2P
&batch_normalization_1/ReadVariableOp_1&batch_normalization_1/ReadVariableOp_12>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs
№
M
1__inference_up_sampling2d_1_layer_call_fn_3044586

inputs
identityН
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *U
fPRN
L__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_30436242
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
Џ
Ю
R__inference_batch_normalization_1_layer_call_and_return_conditional_losses_3044476

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpГ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╩
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @:@:@:@:@:*
epsilon%oЃ:*
is_training( 2
FusedBatchNormV3w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:         @2

IdentityИ
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         @: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
к*
з
 __inference__traced_save_3044671
file_prefix+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop8
4savev2_batch_normalization_gamma_read_readvariableop7
3savev2_batch_normalization_beta_read_readvariableop>
:savev2_batch_normalization_moving_mean_read_readvariableopB
>savev2_batch_normalization_moving_variance_read_readvariableop,
(savev2_conv2d_kernel_read_readvariableop*
&savev2_conv2d_bias_read_readvariableop:
6savev2_batch_normalization_1_gamma_read_readvariableop9
5savev2_batch_normalization_1_beta_read_readvariableop@
<savev2_batch_normalization_1_moving_mean_read_readvariableopD
@savev2_batch_normalization_1_moving_variance_read_readvariableop.
*savev2_conv2d_1_kernel_read_readvariableop,
(savev2_conv2d_1_bias_read_readvariableop
savev2_const

identity_1ѕбMergeV2CheckpointsЈ
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1І
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shardд
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename┴
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*М
value╔BкB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesд
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesќ
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop4savev2_batch_normalization_gamma_read_readvariableop3savev2_batch_normalization_beta_read_readvariableop:savev2_batch_normalization_moving_mean_read_readvariableop>savev2_batch_normalization_moving_variance_read_readvariableop(savev2_conv2d_kernel_read_readvariableop&savev2_conv2d_bias_read_readvariableop6savev2_batch_normalization_1_gamma_read_readvariableop5savev2_batch_normalization_1_beta_read_readvariableop<savev2_batch_normalization_1_moving_mean_read_readvariableop@savev2_batch_normalization_1_moving_variance_read_readvariableop*savev2_conv2d_1_kernel_read_readvariableop(savev2_conv2d_1_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
22
SaveV2║
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixesА
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1c
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*ј
_input_shapes}
{: :	dђ1:ђ1:ђ1:ђ1:ђ1:ђ1:ђ@:@:@:@:@:@:@:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	dђ1:!

_output_shapes	
:ђ1:!

_output_shapes	
:ђ1:!

_output_shapes	
:ђ1:!

_output_shapes	
:ђ1:!

_output_shapes	
:ђ1:-)
'
_output_shapes
:ђ@: 

_output_shapes
:@: 	

_output_shapes
:@: 


_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@: 

_output_shapes
::

_output_shapes
: 
┐.
р
G__inference_sequential_layer_call_and_return_conditional_losses_3043644

inputs 
dense_3043528:	dђ1
dense_3043530:	ђ1*
batch_normalization_3043533:	ђ1*
batch_normalization_3043535:	ђ1*
batch_normalization_3043537:	ђ1*
batch_normalization_3043539:	ђ1)
conv2d_3043578:ђ@
conv2d_3043580:@+
batch_normalization_1_3043601:@+
batch_normalization_1_3043603:@+
batch_normalization_1_3043605:@+
batch_normalization_1_3043607:@*
conv2d_1_3043638:@
conv2d_1_3043640:
identityѕб+batch_normalization/StatefulPartitionedCallб-batch_normalization_1/StatefulPartitionedCallбconv2d/StatefulPartitionedCallб conv2d_1/StatefulPartitionedCallбdense/StatefulPartitionedCallї
dense/StatefulPartitionedCallStatefulPartitionedCallinputsdense_3043528dense_3043530*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ1*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_30435272
dense/StatefulPartitionedCall░
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0batch_normalization_3043533batch_normalization_3043535batch_normalization_3043537batch_normalization_3043539*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ1*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *Y
fTRR
P__inference_batch_normalization_layer_call_and_return_conditional_losses_30431732-
+batch_normalization/StatefulPartitionedCallї
reshape/PartitionedCallPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_reshape_layer_call_and_return_conditional_losses_30435562
reshape/PartitionedCallі
up_sampling2d/PartitionedCallPartitionedCall reshape/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *S
fNRL
J__inference_up_sampling2d_layer_call_and_return_conditional_losses_30435652
up_sampling2d/PartitionedCallИ
conv2d/StatefulPartitionedCallStatefulPartitionedCall&up_sampling2d/PartitionedCall:output:0conv2d_3043578conv2d_3043580*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_conv2d_layer_call_and_return_conditional_losses_30435772 
conv2d/StatefulPartitionedCallк
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0batch_normalization_1_3043601batch_normalization_1_3043603batch_normalization_1_3043605batch_normalization_1_3043607*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *[
fVRT
R__inference_batch_normalization_1_layer_call_and_return_conditional_losses_30436002/
-batch_normalization_1/StatefulPartitionedCallќ
activation/PartitionedCallPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *P
fKRI
G__inference_activation_layer_call_and_return_conditional_losses_30436152
activation/PartitionedCallњ
up_sampling2d_1/PartitionedCallPartitionedCall#activation/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *U
fPRN
L__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_30436242!
up_sampling2d_1/PartitionedCall─
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_1/PartitionedCall:output:0conv2d_1_3043638conv2d_1_3043640*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_conv2d_1_layer_call_and_return_conditional_losses_30436372"
 conv2d_1/StatefulPartitionedCallї
IdentityIdentity)conv2d_1/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         2

Identityљ
NoOpNoOp,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall^dense/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:         d: : : : : : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs
╗.
р
G__inference_sequential_layer_call_and_return_conditional_losses_3043847

inputs 
dense_3043809:	dђ1
dense_3043811:	ђ1*
batch_normalization_3043814:	ђ1*
batch_normalization_3043816:	ђ1*
batch_normalization_3043818:	ђ1*
batch_normalization_3043820:	ђ1)
conv2d_3043825:ђ@
conv2d_3043827:@+
batch_normalization_1_3043830:@+
batch_normalization_1_3043832:@+
batch_normalization_1_3043834:@+
batch_normalization_1_3043836:@*
conv2d_1_3043841:@
conv2d_1_3043843:
identityѕб+batch_normalization/StatefulPartitionedCallб-batch_normalization_1/StatefulPartitionedCallбconv2d/StatefulPartitionedCallб conv2d_1/StatefulPartitionedCallбdense/StatefulPartitionedCallї
dense/StatefulPartitionedCallStatefulPartitionedCallinputsdense_3043809dense_3043811*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ1*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_30435272
dense/StatefulPartitionedCall«
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0batch_normalization_3043814batch_normalization_3043816batch_normalization_3043818batch_normalization_3043820*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ1*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *Y
fTRR
P__inference_batch_normalization_layer_call_and_return_conditional_losses_30432332-
+batch_normalization/StatefulPartitionedCallї
reshape/PartitionedCallPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_reshape_layer_call_and_return_conditional_losses_30435562
reshape/PartitionedCallі
up_sampling2d/PartitionedCallPartitionedCall reshape/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *S
fNRL
J__inference_up_sampling2d_layer_call_and_return_conditional_losses_30435652
up_sampling2d/PartitionedCallИ
conv2d/StatefulPartitionedCallStatefulPartitionedCall&up_sampling2d/PartitionedCall:output:0conv2d_3043825conv2d_3043827*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_conv2d_layer_call_and_return_conditional_losses_30435772 
conv2d/StatefulPartitionedCall─
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0batch_normalization_1_3043830batch_normalization_1_3043832batch_normalization_1_3043834batch_normalization_1_3043836*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *[
fVRT
R__inference_batch_normalization_1_layer_call_and_return_conditional_losses_30437292/
-batch_normalization_1/StatefulPartitionedCallќ
activation/PartitionedCallPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *P
fKRI
G__inference_activation_layer_call_and_return_conditional_losses_30436152
activation/PartitionedCallњ
up_sampling2d_1/PartitionedCallPartitionedCall#activation/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *U
fPRN
L__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_30436242!
up_sampling2d_1/PartitionedCall─
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_1/PartitionedCall:output:0conv2d_1_3043841conv2d_1_3043843*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_conv2d_1_layer_call_and_return_conditional_losses_30436372"
 conv2d_1/StatefulPartitionedCallї
IdentityIdentity)conv2d_1/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         2

Identityљ
NoOpNoOp,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall^dense/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:         d: : : : : : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs
Еf
К
G__inference_sequential_layer_call_and_return_conditional_losses_3044101

inputs7
$dense_matmul_readvariableop_resource:	dђ14
%dense_biasadd_readvariableop_resource:	ђ1D
5batch_normalization_batchnorm_readvariableop_resource:	ђ1H
9batch_normalization_batchnorm_mul_readvariableop_resource:	ђ1F
7batch_normalization_batchnorm_readvariableop_1_resource:	ђ1F
7batch_normalization_batchnorm_readvariableop_2_resource:	ђ1@
%conv2d_conv2d_readvariableop_resource:ђ@4
&conv2d_biasadd_readvariableop_resource:@;
-batch_normalization_1_readvariableop_resource:@=
/batch_normalization_1_readvariableop_1_resource:@L
>batch_normalization_1_fusedbatchnormv3_readvariableop_resource:@N
@batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource:@A
'conv2d_1_conv2d_readvariableop_resource:@6
(conv2d_1_biasadd_readvariableop_resource:
identityѕб,batch_normalization/batchnorm/ReadVariableOpб.batch_normalization/batchnorm/ReadVariableOp_1б.batch_normalization/batchnorm/ReadVariableOp_2б0batch_normalization/batchnorm/mul/ReadVariableOpб5batch_normalization_1/FusedBatchNormV3/ReadVariableOpб7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1б$batch_normalization_1/ReadVariableOpб&batch_normalization_1/ReadVariableOp_1бconv2d/BiasAdd/ReadVariableOpбconv2d/Conv2D/ReadVariableOpбconv2d_1/BiasAdd/ReadVariableOpбconv2d_1/Conv2D/ReadVariableOpбdense/BiasAdd/ReadVariableOpбdense/MatMul/ReadVariableOpа
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	dђ1*
dtype02
dense/MatMul/ReadVariableOpє
dense/MatMulMatMulinputs#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђ12
dense/MatMulЪ
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:ђ1*
dtype02
dense/BiasAdd/ReadVariableOpџ
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђ12
dense/BiasAddЅ
dense/leaky_re_lu/LeakyRelu	LeakyReludense/BiasAdd:output:0*(
_output_shapes
:         ђ12
dense/leaky_re_lu/LeakyRelu¤
,batch_normalization/batchnorm/ReadVariableOpReadVariableOp5batch_normalization_batchnorm_readvariableop_resource*
_output_shapes	
:ђ1*
dtype02.
,batch_normalization/batchnorm/ReadVariableOpЈ
#batch_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oЃ:2%
#batch_normalization/batchnorm/add/y┘
!batch_normalization/batchnorm/addAddV24batch_normalization/batchnorm/ReadVariableOp:value:0,batch_normalization/batchnorm/add/y:output:0*
T0*
_output_shapes	
:ђ12#
!batch_normalization/batchnorm/addа
#batch_normalization/batchnorm/RsqrtRsqrt%batch_normalization/batchnorm/add:z:0*
T0*
_output_shapes	
:ђ12%
#batch_normalization/batchnorm/Rsqrt█
0batch_normalization/batchnorm/mul/ReadVariableOpReadVariableOp9batch_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes	
:ђ1*
dtype022
0batch_normalization/batchnorm/mul/ReadVariableOpо
!batch_normalization/batchnorm/mulMul'batch_normalization/batchnorm/Rsqrt:y:08batch_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:ђ12#
!batch_normalization/batchnorm/mulо
#batch_normalization/batchnorm/mul_1Mul)dense/leaky_re_lu/LeakyRelu:activations:0%batch_normalization/batchnorm/mul:z:0*
T0*(
_output_shapes
:         ђ12%
#batch_normalization/batchnorm/mul_1Н
.batch_normalization/batchnorm/ReadVariableOp_1ReadVariableOp7batch_normalization_batchnorm_readvariableop_1_resource*
_output_shapes	
:ђ1*
dtype020
.batch_normalization/batchnorm/ReadVariableOp_1о
#batch_normalization/batchnorm/mul_2Mul6batch_normalization/batchnorm/ReadVariableOp_1:value:0%batch_normalization/batchnorm/mul:z:0*
T0*
_output_shapes	
:ђ12%
#batch_normalization/batchnorm/mul_2Н
.batch_normalization/batchnorm/ReadVariableOp_2ReadVariableOp7batch_normalization_batchnorm_readvariableop_2_resource*
_output_shapes	
:ђ1*
dtype020
.batch_normalization/batchnorm/ReadVariableOp_2н
!batch_normalization/batchnorm/subSub6batch_normalization/batchnorm/ReadVariableOp_2:value:0'batch_normalization/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:ђ12#
!batch_normalization/batchnorm/subо
#batch_normalization/batchnorm/add_1AddV2'batch_normalization/batchnorm/mul_1:z:0%batch_normalization/batchnorm/sub:z:0*
T0*(
_output_shapes
:         ђ12%
#batch_normalization/batchnorm/add_1u
reshape/ShapeShape'batch_normalization/batchnorm/add_1:z:0*
T0*
_output_shapes
:2
reshape/Shapeё
reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
reshape/strided_slice/stackѕ
reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
reshape/strided_slice/stack_1ѕ
reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
reshape/strided_slice/stack_2њ
reshape/strided_sliceStridedSlicereshape/Shape:output:0$reshape/strided_slice/stack:output:0&reshape/strided_slice/stack_1:output:0&reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape/strided_slicet
reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape/Reshape/shape/1t
reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape/Reshape/shape/2u
reshape/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :ђ2
reshape/Reshape/shape/3Ж
reshape/Reshape/shapePackreshape/strided_slice:output:0 reshape/Reshape/shape/1:output:0 reshape/Reshape/shape/2:output:0 reshape/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
reshape/Reshape/shape▒
reshape/ReshapeReshape'batch_normalization/batchnorm/add_1:z:0reshape/Reshape/shape:output:0*
T0*0
_output_shapes
:         ђ2
reshape/Reshape{
up_sampling2d/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d/Const
up_sampling2d/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d/Const_1љ
up_sampling2d/mulMulup_sampling2d/Const:output:0up_sampling2d/Const_1:output:0*
T0*
_output_shapes
:2
up_sampling2d/mulэ
*up_sampling2d/resize/ResizeNearestNeighborResizeNearestNeighborreshape/Reshape:output:0up_sampling2d/mul:z:0*
T0*0
_output_shapes
:         ђ*
half_pixel_centers(2,
*up_sampling2d/resize/ResizeNearestNeighborФ
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*'
_output_shapes
:ђ@*
dtype02
conv2d/Conv2D/ReadVariableOpь
conv2d/Conv2DConv2D;up_sampling2d/resize/ResizeNearestNeighbor:resized_images:0$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
2
conv2d/Conv2DА
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
conv2d/BiasAdd/ReadVariableOpц
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2
conv2d/BiasAddХ
$batch_normalization_1/ReadVariableOpReadVariableOp-batch_normalization_1_readvariableop_resource*
_output_shapes
:@*
dtype02&
$batch_normalization_1/ReadVariableOp╝
&batch_normalization_1/ReadVariableOp_1ReadVariableOp/batch_normalization_1_readvariableop_1_resource*
_output_shapes
:@*
dtype02(
&batch_normalization_1/ReadVariableOp_1ж
5batch_normalization_1/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype027
5batch_normalization_1/FusedBatchNormV3/ReadVariableOp№
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype029
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1▀
&batch_normalization_1/FusedBatchNormV3FusedBatchNormV3conv2d/BiasAdd:output:0,batch_normalization_1/ReadVariableOp:value:0.batch_normalization_1/ReadVariableOp_1:value:0=batch_normalization_1/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @:@:@:@:@:*
epsilon%oЃ:*
is_training( 2(
&batch_normalization_1/FusedBatchNormV3▓
"activation/leaky_re_lu_1/LeakyRelu	LeakyRelu*batch_normalization_1/FusedBatchNormV3:y:0*/
_output_shapes
:         @2$
"activation/leaky_re_lu_1/LeakyRelu
up_sampling2d_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_1/ConstЃ
up_sampling2d_1/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_1/Const_1ў
up_sampling2d_1/mulMulup_sampling2d_1/Const:output:0 up_sampling2d_1/Const_1:output:0*
T0*
_output_shapes
:2
up_sampling2d_1/mulћ
,up_sampling2d_1/resize/ResizeNearestNeighborResizeNearestNeighbor0activation/leaky_re_lu_1/LeakyRelu:activations:0up_sampling2d_1/mul:z:0*
T0*/
_output_shapes
:         @*
half_pixel_centers(2.
,up_sampling2d_1/resize/ResizeNearestNeighbor░
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02 
conv2d_1/Conv2D/ReadVariableOpш
conv2d_1/Conv2DConv2D=up_sampling2d_1/resize/ResizeNearestNeighbor:resized_images:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
paddingSAME*
strides
2
conv2d_1/Conv2DД
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
conv2d_1/BiasAdd/ReadVariableOpг
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         2
conv2d_1/BiasAdd{
conv2d_1/TanhTanhconv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:         2
conv2d_1/Tanht
IdentityIdentityconv2d_1/Tanh:y:0^NoOp*
T0*/
_output_shapes
:         2

IdentityЊ
NoOpNoOp-^batch_normalization/batchnorm/ReadVariableOp/^batch_normalization/batchnorm/ReadVariableOp_1/^batch_normalization/batchnorm/ReadVariableOp_21^batch_normalization/batchnorm/mul/ReadVariableOp6^batch_normalization_1/FusedBatchNormV3/ReadVariableOp8^batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_1/ReadVariableOp'^batch_normalization_1/ReadVariableOp_1^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:         d: : : : : : : : : : : : : : 2\
,batch_normalization/batchnorm/ReadVariableOp,batch_normalization/batchnorm/ReadVariableOp2`
.batch_normalization/batchnorm/ReadVariableOp_1.batch_normalization/batchnorm/ReadVariableOp_12`
.batch_normalization/batchnorm/ReadVariableOp_2.batch_normalization/batchnorm/ReadVariableOp_22d
0batch_normalization/batchnorm/mul/ReadVariableOp0batch_normalization/batchnorm/mul/ReadVariableOp2n
5batch_normalization_1/FusedBatchNormV3/ReadVariableOp5batch_normalization_1/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_17batch_normalization_1/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_1/ReadVariableOp$batch_normalization_1/ReadVariableOp2P
&batch_normalization_1/ReadVariableOp_1&batch_normalization_1/ReadVariableOp_12>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs
Д
f
J__inference_up_sampling2d_layer_call_and_return_conditional_losses_3043565

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
Constc
Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2	
Const_1X
mulMulConst:output:0Const_1:output:0*
T0*
_output_shapes
:2
mul╗
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*0
_output_shapes
:         ђ*
half_pixel_centers(2
resize/ResizeNearestNeighborі
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*0
_output_shapes
:         ђ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         ђ:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
ї
у
,__inference_sequential_layer_call_fn_3044254

inputs
unknown:	dђ1
	unknown_0:	ђ1
	unknown_1:	ђ1
	unknown_2:	ђ1
	unknown_3:	ђ1
	unknown_4:	ђ1$
	unknown_5:ђ@
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@$

unknown_11:@

unknown_12:
identityѕбStatefulPartitionedCallЮ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8ѓ *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_30438472
StatefulPartitionedCallЃ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:         d: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs
и
ш
B__inference_dense_layer_call_and_return_conditional_losses_3044265

inputs1
matmul_readvariableop_resource:	dђ1.
biasadd_readvariableop_resource:	ђ1
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpј
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	dђ1*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђ12
MatMulЇ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ1*
dtype02
BiasAdd/ReadVariableOpѓ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђ12	
BiasAddw
leaky_re_lu/LeakyRelu	LeakyReluBiasAdd:output:0*(
_output_shapes
:         ђ12
leaky_re_lu/LeakyRelu
IdentityIdentity#leaky_re_lu/LeakyRelu:activations:0^NoOp*
T0*(
_output_shapes
:         ђ12

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs
ў
┴
R__inference_batch_normalization_1_layer_call_and_return_conditional_losses_3043413

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpГ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Ж
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oЃ:*
exponential_avg_factor%
О#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1Ѕ
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @2

Identity▄
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
љ
у
,__inference_sequential_layer_call_fn_3044221

inputs
unknown:	dђ1
	unknown_0:	ђ1
	unknown_1:	ђ1
	unknown_2:	ђ1
	unknown_3:	ђ1
	unknown_4:	ђ1$
	unknown_5:ђ@
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@$

unknown_11:@

unknown_12:
identityѕбStatefulPartitionedCallА
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8ѓ *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_30436442
StatefulPartitionedCallЃ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:         d: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs
¤
┴
R__inference_batch_normalization_1_layer_call_and_return_conditional_losses_3044494

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpГ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1п
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @:@:@:@:@:*
epsilon%oЃ:*
exponential_avg_factor%
О#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:         @2

Identity▄
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         @: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
Ѕ
§
C__inference_conv2d_layer_call_and_return_conditional_losses_3044413

inputs9
conv2d_readvariableop_resource:ђ@-
biasadd_readvariableop_resource:@
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpќ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:ђ@*
dtype02
Conv2D/ReadVariableOpБ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
2
Conv2Dї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpѕ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2	
BiasAdds
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:         @2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         ђ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
р
■
E__inference_conv2d_1_layer_call_and_return_conditional_losses_3043637

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpЋ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOpБ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
paddingSAME*
strides
2
Conv2Dї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpѕ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         2	
BiasAdd`
TanhTanhBiasAdd:output:0*
T0*/
_output_shapes
:         2
Tanhk
IdentityIdentityTanh:y:0^NoOp*
T0*/
_output_shapes
:         2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
┴z
█
"__inference__wrapped_model_3043149
dense_inputB
/sequential_dense_matmul_readvariableop_resource:	dђ1?
0sequential_dense_biasadd_readvariableop_resource:	ђ1O
@sequential_batch_normalization_batchnorm_readvariableop_resource:	ђ1S
Dsequential_batch_normalization_batchnorm_mul_readvariableop_resource:	ђ1Q
Bsequential_batch_normalization_batchnorm_readvariableop_1_resource:	ђ1Q
Bsequential_batch_normalization_batchnorm_readvariableop_2_resource:	ђ1K
0sequential_conv2d_conv2d_readvariableop_resource:ђ@?
1sequential_conv2d_biasadd_readvariableop_resource:@F
8sequential_batch_normalization_1_readvariableop_resource:@H
:sequential_batch_normalization_1_readvariableop_1_resource:@W
Isequential_batch_normalization_1_fusedbatchnormv3_readvariableop_resource:@Y
Ksequential_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource:@L
2sequential_conv2d_1_conv2d_readvariableop_resource:@A
3sequential_conv2d_1_biasadd_readvariableop_resource:
identityѕб7sequential/batch_normalization/batchnorm/ReadVariableOpб9sequential/batch_normalization/batchnorm/ReadVariableOp_1б9sequential/batch_normalization/batchnorm/ReadVariableOp_2б;sequential/batch_normalization/batchnorm/mul/ReadVariableOpб@sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOpбBsequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1б/sequential/batch_normalization_1/ReadVariableOpб1sequential/batch_normalization_1/ReadVariableOp_1б(sequential/conv2d/BiasAdd/ReadVariableOpб'sequential/conv2d/Conv2D/ReadVariableOpб*sequential/conv2d_1/BiasAdd/ReadVariableOpб)sequential/conv2d_1/Conv2D/ReadVariableOpб'sequential/dense/BiasAdd/ReadVariableOpб&sequential/dense/MatMul/ReadVariableOp┴
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource*
_output_shapes
:	dђ1*
dtype02(
&sequential/dense/MatMul/ReadVariableOpг
sequential/dense/MatMulMatMuldense_input.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђ12
sequential/dense/MatMul└
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes	
:ђ1*
dtype02)
'sequential/dense/BiasAdd/ReadVariableOpк
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ђ12
sequential/dense/BiasAddф
&sequential/dense/leaky_re_lu/LeakyRelu	LeakyRelu!sequential/dense/BiasAdd:output:0*(
_output_shapes
:         ђ12(
&sequential/dense/leaky_re_lu/LeakyRelu­
7sequential/batch_normalization/batchnorm/ReadVariableOpReadVariableOp@sequential_batch_normalization_batchnorm_readvariableop_resource*
_output_shapes	
:ђ1*
dtype029
7sequential/batch_normalization/batchnorm/ReadVariableOpЦ
.sequential/batch_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oЃ:20
.sequential/batch_normalization/batchnorm/add/yЁ
,sequential/batch_normalization/batchnorm/addAddV2?sequential/batch_normalization/batchnorm/ReadVariableOp:value:07sequential/batch_normalization/batchnorm/add/y:output:0*
T0*
_output_shapes	
:ђ12.
,sequential/batch_normalization/batchnorm/add┴
.sequential/batch_normalization/batchnorm/RsqrtRsqrt0sequential/batch_normalization/batchnorm/add:z:0*
T0*
_output_shapes	
:ђ120
.sequential/batch_normalization/batchnorm/RsqrtЧ
;sequential/batch_normalization/batchnorm/mul/ReadVariableOpReadVariableOpDsequential_batch_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes	
:ђ1*
dtype02=
;sequential/batch_normalization/batchnorm/mul/ReadVariableOpѓ
,sequential/batch_normalization/batchnorm/mulMul2sequential/batch_normalization/batchnorm/Rsqrt:y:0Csequential/batch_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:ђ12.
,sequential/batch_normalization/batchnorm/mulѓ
.sequential/batch_normalization/batchnorm/mul_1Mul4sequential/dense/leaky_re_lu/LeakyRelu:activations:00sequential/batch_normalization/batchnorm/mul:z:0*
T0*(
_output_shapes
:         ђ120
.sequential/batch_normalization/batchnorm/mul_1Ш
9sequential/batch_normalization/batchnorm/ReadVariableOp_1ReadVariableOpBsequential_batch_normalization_batchnorm_readvariableop_1_resource*
_output_shapes	
:ђ1*
dtype02;
9sequential/batch_normalization/batchnorm/ReadVariableOp_1ѓ
.sequential/batch_normalization/batchnorm/mul_2MulAsequential/batch_normalization/batchnorm/ReadVariableOp_1:value:00sequential/batch_normalization/batchnorm/mul:z:0*
T0*
_output_shapes	
:ђ120
.sequential/batch_normalization/batchnorm/mul_2Ш
9sequential/batch_normalization/batchnorm/ReadVariableOp_2ReadVariableOpBsequential_batch_normalization_batchnorm_readvariableop_2_resource*
_output_shapes	
:ђ1*
dtype02;
9sequential/batch_normalization/batchnorm/ReadVariableOp_2ђ
,sequential/batch_normalization/batchnorm/subSubAsequential/batch_normalization/batchnorm/ReadVariableOp_2:value:02sequential/batch_normalization/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:ђ12.
,sequential/batch_normalization/batchnorm/subѓ
.sequential/batch_normalization/batchnorm/add_1AddV22sequential/batch_normalization/batchnorm/mul_1:z:00sequential/batch_normalization/batchnorm/sub:z:0*
T0*(
_output_shapes
:         ђ120
.sequential/batch_normalization/batchnorm/add_1ќ
sequential/reshape/ShapeShape2sequential/batch_normalization/batchnorm/add_1:z:0*
T0*
_output_shapes
:2
sequential/reshape/Shapeџ
&sequential/reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&sequential/reshape/strided_slice/stackъ
(sequential/reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(sequential/reshape/strided_slice/stack_1ъ
(sequential/reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(sequential/reshape/strided_slice/stack_2н
 sequential/reshape/strided_sliceStridedSlice!sequential/reshape/Shape:output:0/sequential/reshape/strided_slice/stack:output:01sequential/reshape/strided_slice/stack_1:output:01sequential/reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 sequential/reshape/strided_sliceі
"sequential/reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2$
"sequential/reshape/Reshape/shape/1і
"sequential/reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2$
"sequential/reshape/Reshape/shape/2І
"sequential/reshape/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :ђ2$
"sequential/reshape/Reshape/shape/3г
 sequential/reshape/Reshape/shapePack)sequential/reshape/strided_slice:output:0+sequential/reshape/Reshape/shape/1:output:0+sequential/reshape/Reshape/shape/2:output:0+sequential/reshape/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2"
 sequential/reshape/Reshape/shapeП
sequential/reshape/ReshapeReshape2sequential/batch_normalization/batchnorm/add_1:z:0)sequential/reshape/Reshape/shape:output:0*
T0*0
_output_shapes
:         ђ2
sequential/reshape/ReshapeЉ
sequential/up_sampling2d/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2 
sequential/up_sampling2d/ConstЋ
 sequential/up_sampling2d/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2"
 sequential/up_sampling2d/Const_1╝
sequential/up_sampling2d/mulMul'sequential/up_sampling2d/Const:output:0)sequential/up_sampling2d/Const_1:output:0*
T0*
_output_shapes
:2
sequential/up_sampling2d/mulБ
5sequential/up_sampling2d/resize/ResizeNearestNeighborResizeNearestNeighbor#sequential/reshape/Reshape:output:0 sequential/up_sampling2d/mul:z:0*
T0*0
_output_shapes
:         ђ*
half_pixel_centers(27
5sequential/up_sampling2d/resize/ResizeNearestNeighbor╠
'sequential/conv2d/Conv2D/ReadVariableOpReadVariableOp0sequential_conv2d_conv2d_readvariableop_resource*'
_output_shapes
:ђ@*
dtype02)
'sequential/conv2d/Conv2D/ReadVariableOpЎ
sequential/conv2d/Conv2DConv2DFsequential/up_sampling2d/resize/ResizeNearestNeighbor:resized_images:0/sequential/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
2
sequential/conv2d/Conv2D┬
(sequential/conv2d/BiasAdd/ReadVariableOpReadVariableOp1sequential_conv2d_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(sequential/conv2d/BiasAdd/ReadVariableOpл
sequential/conv2d/BiasAddBiasAdd!sequential/conv2d/Conv2D:output:00sequential/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2
sequential/conv2d/BiasAddО
/sequential/batch_normalization_1/ReadVariableOpReadVariableOp8sequential_batch_normalization_1_readvariableop_resource*
_output_shapes
:@*
dtype021
/sequential/batch_normalization_1/ReadVariableOpП
1sequential/batch_normalization_1/ReadVariableOp_1ReadVariableOp:sequential_batch_normalization_1_readvariableop_1_resource*
_output_shapes
:@*
dtype023
1sequential/batch_normalization_1/ReadVariableOp_1і
@sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOpReadVariableOpIsequential_batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02B
@sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOpљ
Bsequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpKsequential_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02D
Bsequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1г
1sequential/batch_normalization_1/FusedBatchNormV3FusedBatchNormV3"sequential/conv2d/BiasAdd:output:07sequential/batch_normalization_1/ReadVariableOp:value:09sequential/batch_normalization_1/ReadVariableOp_1:value:0Hsequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp:value:0Jsequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @:@:@:@:@:*
epsilon%oЃ:*
is_training( 23
1sequential/batch_normalization_1/FusedBatchNormV3М
-sequential/activation/leaky_re_lu_1/LeakyRelu	LeakyRelu5sequential/batch_normalization_1/FusedBatchNormV3:y:0*/
_output_shapes
:         @2/
-sequential/activation/leaky_re_lu_1/LeakyReluЋ
 sequential/up_sampling2d_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2"
 sequential/up_sampling2d_1/ConstЎ
"sequential/up_sampling2d_1/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2$
"sequential/up_sampling2d_1/Const_1─
sequential/up_sampling2d_1/mulMul)sequential/up_sampling2d_1/Const:output:0+sequential/up_sampling2d_1/Const_1:output:0*
T0*
_output_shapes
:2 
sequential/up_sampling2d_1/mul└
7sequential/up_sampling2d_1/resize/ResizeNearestNeighborResizeNearestNeighbor;sequential/activation/leaky_re_lu_1/LeakyRelu:activations:0"sequential/up_sampling2d_1/mul:z:0*
T0*/
_output_shapes
:         @*
half_pixel_centers(29
7sequential/up_sampling2d_1/resize/ResizeNearestNeighborЛ
)sequential/conv2d_1/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02+
)sequential/conv2d_1/Conv2D/ReadVariableOpА
sequential/conv2d_1/Conv2DConv2DHsequential/up_sampling2d_1/resize/ResizeNearestNeighbor:resized_images:01sequential/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
paddingSAME*
strides
2
sequential/conv2d_1/Conv2D╚
*sequential/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*sequential/conv2d_1/BiasAdd/ReadVariableOpп
sequential/conv2d_1/BiasAddBiasAdd#sequential/conv2d_1/Conv2D:output:02sequential/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         2
sequential/conv2d_1/BiasAddю
sequential/conv2d_1/TanhTanh$sequential/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:         2
sequential/conv2d_1/Tanh
IdentityIdentitysequential/conv2d_1/Tanh:y:0^NoOp*
T0*/
_output_shapes
:         2

IdentityГ
NoOpNoOp8^sequential/batch_normalization/batchnorm/ReadVariableOp:^sequential/batch_normalization/batchnorm/ReadVariableOp_1:^sequential/batch_normalization/batchnorm/ReadVariableOp_2<^sequential/batch_normalization/batchnorm/mul/ReadVariableOpA^sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOpC^sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_10^sequential/batch_normalization_1/ReadVariableOp2^sequential/batch_normalization_1/ReadVariableOp_1)^sequential/conv2d/BiasAdd/ReadVariableOp(^sequential/conv2d/Conv2D/ReadVariableOp+^sequential/conv2d_1/BiasAdd/ReadVariableOp*^sequential/conv2d_1/Conv2D/ReadVariableOp(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:         d: : : : : : : : : : : : : : 2r
7sequential/batch_normalization/batchnorm/ReadVariableOp7sequential/batch_normalization/batchnorm/ReadVariableOp2v
9sequential/batch_normalization/batchnorm/ReadVariableOp_19sequential/batch_normalization/batchnorm/ReadVariableOp_12v
9sequential/batch_normalization/batchnorm/ReadVariableOp_29sequential/batch_normalization/batchnorm/ReadVariableOp_22z
;sequential/batch_normalization/batchnorm/mul/ReadVariableOp;sequential/batch_normalization/batchnorm/mul/ReadVariableOp2ё
@sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp@sequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp2ѕ
Bsequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1Bsequential/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_12b
/sequential/batch_normalization_1/ReadVariableOp/sequential/batch_normalization_1/ReadVariableOp2f
1sequential/batch_normalization_1/ReadVariableOp_11sequential/batch_normalization_1/ReadVariableOp_12T
(sequential/conv2d/BiasAdd/ReadVariableOp(sequential/conv2d/BiasAdd/ReadVariableOp2R
'sequential/conv2d/Conv2D/ReadVariableOp'sequential/conv2d/Conv2D/ReadVariableOp2X
*sequential/conv2d_1/BiasAdd/ReadVariableOp*sequential/conv2d_1/BiasAdd/ReadVariableOp2V
)sequential/conv2d_1/Conv2D/ReadVariableOp)sequential/conv2d_1/Conv2D/ReadVariableOp2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp:T P
'
_output_shapes
:         d
%
_user_specified_namedense_input
ў
┴
R__inference_batch_normalization_1_layer_call_and_return_conditional_losses_3044458

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpГ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Ж
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oЃ:*
exponential_avg_factor%
О#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1Ѕ
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @2

Identity▄
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
§
м
7__inference_batch_normalization_1_layer_call_fn_3044533

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityѕбStatefulPartitionedCallД
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *[
fVRT
R__inference_batch_normalization_1_layer_call_and_return_conditional_losses_30436002
StatefulPartitionedCallЃ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         @2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         @: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
Ъ
В
,__inference_sequential_layer_call_fn_3043675
dense_input
unknown:	dђ1
	unknown_0:	ђ1
	unknown_1:	ђ1
	unknown_2:	ђ1
	unknown_3:	ђ1
	unknown_4:	ђ1$
	unknown_5:ђ@
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@$

unknown_11:@

unknown_12:
identityѕбStatefulPartitionedCallд
StatefulPartitionedCallStatefulPartitionedCalldense_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8ѓ *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_30436442
StatefulPartitionedCallЃ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:         d: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
'
_output_shapes
:         d
%
_user_specified_namedense_input
х
c
G__inference_activation_layer_call_and_return_conditional_losses_3044551

inputs
identityx
leaky_re_lu_1/LeakyRelu	LeakyReluinputs*/
_output_shapes
:         @2
leaky_re_lu_1/LeakyReluЂ
IdentityIdentity%leaky_re_lu_1/LeakyRelu:activations:0*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
Џ
В
,__inference_sequential_layer_call_fn_3043911
dense_input
unknown:	dђ1
	unknown_0:	ђ1
	unknown_1:	ђ1
	unknown_2:	ђ1
	unknown_3:	ђ1
	unknown_4:	ђ1$
	unknown_5:ђ@
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@$

unknown_11:@

unknown_12:
identityѕбStatefulPartitionedCallб
StatefulPartitionedCallStatefulPartitionedCalldense_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8ѓ *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_30438472
StatefulPartitionedCallЃ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:         d: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
'
_output_shapes
:         d
%
_user_specified_namedense_input
М
E
)__inference_reshape_layer_call_fn_3044373

inputs
identity╬
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_reshape_layer_call_and_return_conditional_losses_30435562
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:         ђ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         ђ1:P L
(
_output_shapes
:         ђ1
 
_user_specified_nameinputs
│
h
L__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_3044568

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2╬
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2
strided_slice_
ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
Const^
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:2
mulН
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4                                    *
half_pixel_centers(2
resize/ResizeNearestNeighborц
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
ћ
`
D__inference_reshape_layer_call_and_return_conditional_losses_3043556

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Р
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliced
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/1d
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/2e
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :ђ2
Reshape/shape/3║
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapex
ReshapeReshapeinputsReshape/shape:output:0*
T0*0
_output_shapes
:         ђ2	
Reshapem
IdentityIdentityReshape:output:0*
T0*0
_output_shapes
:         ђ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         ђ1:P L
(
_output_shapes
:         ђ1
 
_user_specified_nameinputs
З
ќ
'__inference_dense_layer_call_fn_3044274

inputs
unknown:	dђ1
	unknown_0:	ђ1
identityѕбStatefulPartitionedCallШ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ1*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_30435272
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         ђ12

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         d: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs
є
│
P__inference_batch_normalization_layer_call_and_return_conditional_losses_3043173

inputs0
!batchnorm_readvariableop_resource:	ђ14
%batchnorm_mul_readvariableop_resource:	ђ12
#batchnorm_readvariableop_1_resource:	ђ12
#batchnorm_readvariableop_2_resource:	ђ1
identityѕбbatchnorm/ReadVariableOpбbatchnorm/ReadVariableOp_1бbatchnorm/ReadVariableOp_2бbatchnorm/mul/ReadVariableOpЊ
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:ђ1*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oЃ:2
batchnorm/add/yЅ
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:ђ12
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:ђ12
batchnorm/RsqrtЪ
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:ђ1*
dtype02
batchnorm/mul/ReadVariableOpє
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:ђ12
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:         ђ12
batchnorm/mul_1Ў
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:ђ1*
dtype02
batchnorm/ReadVariableOp_1є
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:ђ12
batchnorm/mul_2Ў
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:ђ1*
dtype02
batchnorm/ReadVariableOp_2ё
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:ђ12
batchnorm/subє
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:         ђ12
batchnorm/add_1o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:         ђ12

Identity┬
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         ђ1: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:         ђ1
 
_user_specified_nameinputs
у*
ь
P__inference_batch_normalization_layer_call_and_return_conditional_losses_3044328

inputs6
'assignmovingavg_readvariableop_resource:	ђ18
)assignmovingavg_1_readvariableop_resource:	ђ14
%batchnorm_mul_readvariableop_resource:	ђ10
!batchnorm_readvariableop_resource:	ђ1
identityѕбAssignMovingAvgбAssignMovingAvg/ReadVariableOpбAssignMovingAvg_1б AssignMovingAvg_1/ReadVariableOpбbatchnorm/ReadVariableOpбbatchnorm/mul/ReadVariableOpі
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indicesљ
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	ђ1*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	ђ12
moments/StopGradientЦ
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:         ђ12
moments/SquaredDifferenceњ
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices│
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	ђ1*
	keep_dims(2
moments/varianceЂ
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:ђ1*
squeeze_dims
 2
moments/SqueezeЅ
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:ђ1*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<2
AssignMovingAvg/decayЦ
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:ђ1*
dtype02 
AssignMovingAvg/ReadVariableOpЎ
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:ђ12
AssignMovingAvg/subљ
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:ђ12
AssignMovingAvg/mul┐
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<2
AssignMovingAvg_1/decayФ
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:ђ1*
dtype02"
 AssignMovingAvg_1/ReadVariableOpА
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:ђ12
AssignMovingAvg_1/subў
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:ђ12
AssignMovingAvg_1/mul╔
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oЃ:2
batchnorm/add/yЃ
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:ђ12
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:ђ12
batchnorm/RsqrtЪ
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:ђ1*
dtype02
batchnorm/mul/ReadVariableOpє
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:ђ12
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:         ђ12
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:ђ12
batchnorm/mul_2Њ
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:ђ1*
dtype02
batchnorm/ReadVariableOpѓ
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:ђ12
batchnorm/subє
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:         ђ12
batchnorm/add_1o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:         ђ12

IdentityЫ
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         ђ1: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:         ђ1
 
_user_specified_nameinputs
я
н
5__inference_batch_normalization_layer_call_fn_3044354

inputs
unknown:	ђ1
	unknown_0:	ђ1
	unknown_1:	ђ1
	unknown_2:	ђ1
identityѕбStatefulPartitionedCallю
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ1*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *Y
fTRR
P__inference_batch_normalization_layer_call_and_return_conditional_losses_30432332
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         ђ12

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         ђ1: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         ђ1
 
_user_specified_nameinputs
▒
f
J__inference_up_sampling2d_layer_call_and_return_conditional_losses_3044385

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2╬
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2
strided_slice_
ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
Const^
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:2
mulН
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4                                    *
half_pixel_centers(2
resize/ResizeNearestNeighborц
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
├	
м
7__inference_batch_normalization_1_layer_call_fn_3044520

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityѕбStatefulPartitionedCallи
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *[
fVRT
R__inference_batch_normalization_1_layer_call_and_return_conditional_losses_30434132
StatefulPartitionedCallЋ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
▒
f
J__inference_up_sampling2d_layer_call_and_return_conditional_losses_3043327

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2╬
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2
strided_slice_
ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
Const^
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:2
mulН
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4                                    *
half_pixel_centers(2
resize/ResizeNearestNeighborц
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
р
■
E__inference_conv2d_1_layer_call_and_return_conditional_losses_3044597

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpЋ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOpБ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
paddingSAME*
strides
2
Conv2Dї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpѕ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         2	
BiasAdd`
TanhTanhBiasAdd:output:0*
T0*/
_output_shapes
:         2
Tanhk
IdentityIdentityTanh:y:0^NoOp*
T0*/
_output_shapes
:         2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
╩.
Т
G__inference_sequential_layer_call_and_return_conditional_losses_3043993
dense_input 
dense_3043955:	dђ1
dense_3043957:	ђ1*
batch_normalization_3043960:	ђ1*
batch_normalization_3043962:	ђ1*
batch_normalization_3043964:	ђ1*
batch_normalization_3043966:	ђ1)
conv2d_3043971:ђ@
conv2d_3043973:@+
batch_normalization_1_3043976:@+
batch_normalization_1_3043978:@+
batch_normalization_1_3043980:@+
batch_normalization_1_3043982:@*
conv2d_1_3043987:@
conv2d_1_3043989:
identityѕб+batch_normalization/StatefulPartitionedCallб-batch_normalization_1/StatefulPartitionedCallбconv2d/StatefulPartitionedCallб conv2d_1/StatefulPartitionedCallбdense/StatefulPartitionedCallЉ
dense/StatefulPartitionedCallStatefulPartitionedCalldense_inputdense_3043955dense_3043957*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ1*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_30435272
dense/StatefulPartitionedCall«
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0batch_normalization_3043960batch_normalization_3043962batch_normalization_3043964batch_normalization_3043966*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ1*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *Y
fTRR
P__inference_batch_normalization_layer_call_and_return_conditional_losses_30432332-
+batch_normalization/StatefulPartitionedCallї
reshape/PartitionedCallPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_reshape_layer_call_and_return_conditional_losses_30435562
reshape/PartitionedCallі
up_sampling2d/PartitionedCallPartitionedCall reshape/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *S
fNRL
J__inference_up_sampling2d_layer_call_and_return_conditional_losses_30435652
up_sampling2d/PartitionedCallИ
conv2d/StatefulPartitionedCallStatefulPartitionedCall&up_sampling2d/PartitionedCall:output:0conv2d_3043971conv2d_3043973*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_conv2d_layer_call_and_return_conditional_losses_30435772 
conv2d/StatefulPartitionedCall─
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0batch_normalization_1_3043976batch_normalization_1_3043978batch_normalization_1_3043980batch_normalization_1_3043982*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *[
fVRT
R__inference_batch_normalization_1_layer_call_and_return_conditional_losses_30437292/
-batch_normalization_1/StatefulPartitionedCallќ
activation/PartitionedCallPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *P
fKRI
G__inference_activation_layer_call_and_return_conditional_losses_30436152
activation/PartitionedCallњ
up_sampling2d_1/PartitionedCallPartitionedCall#activation/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *U
fPRN
L__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_30436242!
up_sampling2d_1/PartitionedCall─
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_1/PartitionedCall:output:0conv2d_1_3043987conv2d_1_3043989*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_conv2d_1_layer_call_and_return_conditional_losses_30436372"
 conv2d_1/StatefulPartitionedCallї
IdentityIdentity)conv2d_1/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         2

Identityљ
NoOpNoOp,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall^dense/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:         d: : : : : : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:T P
'
_output_shapes
:         d
%
_user_specified_namedense_input
Д
f
J__inference_up_sampling2d_layer_call_and_return_conditional_losses_3044393

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
Constc
Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2	
Const_1X
mulMulConst:output:0Const_1:output:0*
T0*
_output_shapes
:2
mul╗
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*0
_output_shapes
:         ђ*
half_pixel_centers(2
resize/ResizeNearestNeighborі
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*0
_output_shapes
:         ђ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         ђ:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
┼	
м
7__inference_batch_normalization_1_layer_call_fn_3044507

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityѕбStatefulPartitionedCall╣
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *[
fVRT
R__inference_batch_normalization_1_layer_call_and_return_conditional_losses_30433692
StatefulPartitionedCallЋ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
Ъ
Ъ
*__inference_conv2d_1_layer_call_fn_3044606

inputs!
unknown:@
	unknown_0:
identityѕбStatefulPartitionedCallђ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_conv2d_1_layer_call_and_return_conditional_losses_30436372
StatefulPartitionedCallЃ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
п
K
/__inference_up_sampling2d_layer_call_fn_3044398

inputs
identityЬ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *S
fNRL
J__inference_up_sampling2d_layer_call_and_return_conditional_losses_30433272
PartitionedCallЈ
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Џ
Ю
R__inference_batch_normalization_1_layer_call_and_return_conditional_losses_3043600

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpГ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╩
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @:@:@:@:@:*
epsilon%oЃ:*
is_training( 2
FusedBatchNormV3w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:         @2

IdentityИ
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         @: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
С
Ю
R__inference_batch_normalization_1_layer_call_and_return_conditional_losses_3044440

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpГ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1▄
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oЃ:*
is_training( 2
FusedBatchNormV3Ѕ
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @2

IdentityИ
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
№
K
/__inference_up_sampling2d_layer_call_fn_3044403

inputs
identityн
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *S
fNRL
J__inference_up_sampling2d_layer_call_and_return_conditional_losses_30435652
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:         ђ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         ђ:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
ъ
ъ
(__inference_conv2d_layer_call_fn_3044422

inputs"
unknown:ђ@
	unknown_0:@
identityѕбStatefulPartitionedCall■
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_conv2d_layer_call_and_return_conditional_losses_30435772
StatefulPartitionedCallЃ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         @2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         ђ: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
│
h
L__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_3043489

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2╬
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2
strided_slice_
ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
Const^
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:2
mulН
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4                                    *
half_pixel_centers(2
resize/ResizeNearestNeighborц
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs"еL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*╗
serving_defaultД
C
dense_input4
serving_default_dense_input:0         dD
conv2d_18
StatefulPartitionedCall:0         tensorflow/serving/predict:а├
Л
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
layer-7
	layer_with_weights-4
	layer-8

	variables
trainable_variables
regularization_losses
	keras_api

signatures
+Ѕ&call_and_return_all_conditional_losses
і_default_save_signature
І__call__"
_tf_keras_sequential
═

activation

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
+ї&call_and_return_all_conditional_losses
Ї__call__"
_tf_keras_layer
В
axis
	gamma
beta
moving_mean
moving_variance
	variables
trainable_variables
regularization_losses
	keras_api
+ј&call_and_return_all_conditional_losses
Ј__call__"
_tf_keras_layer
Д
	variables
 trainable_variables
!regularization_losses
"	keras_api
+љ&call_and_return_all_conditional_losses
Љ__call__"
_tf_keras_layer
Д
#	variables
$trainable_variables
%regularization_losses
&	keras_api
+њ&call_and_return_all_conditional_losses
Њ__call__"
_tf_keras_layer
й

'kernel
(bias
)	variables
*trainable_variables
+regularization_losses
,	keras_api
+ћ&call_and_return_all_conditional_losses
Ћ__call__"
_tf_keras_layer
В
-axis
	.gamma
/beta
0moving_mean
1moving_variance
2	variables
3trainable_variables
4regularization_losses
5	keras_api
+ќ&call_and_return_all_conditional_losses
Ќ__call__"
_tf_keras_layer
и
6
activation
7	variables
8trainable_variables
9regularization_losses
:	keras_api
+ў&call_and_return_all_conditional_losses
Ў__call__"
_tf_keras_layer
Д
;	variables
<trainable_variables
=regularization_losses
>	keras_api
+џ&call_and_return_all_conditional_losses
Џ__call__"
_tf_keras_layer
й

?kernel
@bias
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
+ю&call_and_return_all_conditional_losses
Ю__call__"
_tf_keras_layer
є
0
1
2
3
4
5
'6
(7
.8
/9
010
111
?12
@13"
trackable_list_wrapper
f
0
1
2
3
'4
(5
.6
/7
?8
@9"
trackable_list_wrapper
 "
trackable_list_wrapper
╬

	variables
Enon_trainable_variables
Fmetrics
Glayer_metrics
trainable_variables
Hlayer_regularization_losses

Ilayers
regularization_losses
І__call__
і_default_save_signature
+Ѕ&call_and_return_all_conditional_losses
'Ѕ"call_and_return_conditional_losses"
_generic_user_object
-
ъserving_default"
signature_map
Д
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
+Ъ&call_and_return_all_conditional_losses
а__call__"
_tf_keras_layer
:	dђ12dense/kernel
:ђ12
dense/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
░

Nlayers
Onon_trainable_variables
	variables
Player_metrics
Qmetrics
trainable_variables
Rlayer_regularization_losses
regularization_losses
Ї__call__
+ї&call_and_return_all_conditional_losses
'ї"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
(:&ђ12batch_normalization/gamma
':%ђ12batch_normalization/beta
0:.ђ1 (2batch_normalization/moving_mean
4:2ђ1 (2#batch_normalization/moving_variance
<
0
1
2
3"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
░

Slayers
Tnon_trainable_variables
	variables
Ulayer_metrics
Vmetrics
trainable_variables
Wlayer_regularization_losses
regularization_losses
Ј__call__
+ј&call_and_return_all_conditional_losses
'ј"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
░

Xlayers
Ynon_trainable_variables
	variables
Zlayer_metrics
[metrics
 trainable_variables
\layer_regularization_losses
!regularization_losses
Љ__call__
+љ&call_and_return_all_conditional_losses
'љ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
░

]layers
^non_trainable_variables
#	variables
_layer_metrics
`metrics
$trainable_variables
alayer_regularization_losses
%regularization_losses
Њ__call__
+њ&call_and_return_all_conditional_losses
'њ"call_and_return_conditional_losses"
_generic_user_object
(:&ђ@2conv2d/kernel
:@2conv2d/bias
.
'0
(1"
trackable_list_wrapper
.
'0
(1"
trackable_list_wrapper
 "
trackable_list_wrapper
░

blayers
cnon_trainable_variables
)	variables
dlayer_metrics
emetrics
*trainable_variables
flayer_regularization_losses
+regularization_losses
Ћ__call__
+ћ&call_and_return_all_conditional_losses
'ћ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
):'@2batch_normalization_1/gamma
(:&@2batch_normalization_1/beta
1:/@ (2!batch_normalization_1/moving_mean
5:3@ (2%batch_normalization_1/moving_variance
<
.0
/1
02
13"
trackable_list_wrapper
.
.0
/1"
trackable_list_wrapper
 "
trackable_list_wrapper
░

glayers
hnon_trainable_variables
2	variables
ilayer_metrics
jmetrics
3trainable_variables
klayer_regularization_losses
4regularization_losses
Ќ__call__
+ќ&call_and_return_all_conditional_losses
'ќ"call_and_return_conditional_losses"
_generic_user_object
Д
l	variables
mtrainable_variables
nregularization_losses
o	keras_api
+А&call_and_return_all_conditional_losses
б__call__"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
░

players
qnon_trainable_variables
7	variables
rlayer_metrics
smetrics
8trainable_variables
tlayer_regularization_losses
9regularization_losses
Ў__call__
+ў&call_and_return_all_conditional_losses
'ў"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
░

ulayers
vnon_trainable_variables
;	variables
wlayer_metrics
xmetrics
<trainable_variables
ylayer_regularization_losses
=regularization_losses
Џ__call__
+џ&call_and_return_all_conditional_losses
'џ"call_and_return_conditional_losses"
_generic_user_object
):'@2conv2d_1/kernel
:2conv2d_1/bias
.
?0
@1"
trackable_list_wrapper
.
?0
@1"
trackable_list_wrapper
 "
trackable_list_wrapper
░

zlayers
{non_trainable_variables
A	variables
|layer_metrics
}metrics
Btrainable_variables
~layer_regularization_losses
Cregularization_losses
Ю__call__
+ю&call_and_return_all_conditional_losses
'ю"call_and_return_conditional_losses"
_generic_user_object
<
0
1
02
13"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
_
0
1
2
3
4
5
6
7
	8"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
┤

layers
ђnon_trainable_variables
J	variables
Ђlayer_metrics
ѓmetrics
Ktrainable_variables
 Ѓlayer_regularization_losses
Lregularization_losses
а__call__
+Ъ&call_and_return_all_conditional_losses
'Ъ"call_and_return_conditional_losses"
_generic_user_object
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
00
11"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
х
ёlayers
Ёnon_trainable_variables
l	variables
єlayer_metrics
Єmetrics
mtrainable_variables
 ѕlayer_regularization_losses
nregularization_losses
б__call__
+А&call_and_return_all_conditional_losses
'А"call_and_return_conditional_losses"
_generic_user_object
'
60"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Ж2у
G__inference_sequential_layer_call_and_return_conditional_losses_3044101
G__inference_sequential_layer_call_and_return_conditional_losses_3044188
G__inference_sequential_layer_call_and_return_conditional_losses_3043952
G__inference_sequential_layer_call_and_return_conditional_losses_3043993└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
ЛB╬
"__inference__wrapped_model_3043149dense_input"ў
Љ▓Ї
FullArgSpec
argsџ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
■2ч
,__inference_sequential_layer_call_fn_3043675
,__inference_sequential_layer_call_fn_3044221
,__inference_sequential_layer_call_fn_3044254
,__inference_sequential_layer_call_fn_3043911└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
В2ж
B__inference_dense_layer_call_and_return_conditional_losses_3044265б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Л2╬
'__inference_dense_layer_call_fn_3044274б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
я2█
P__inference_batch_normalization_layer_call_and_return_conditional_losses_3044294
P__inference_batch_normalization_layer_call_and_return_conditional_losses_3044328┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
е2Ц
5__inference_batch_normalization_layer_call_fn_3044341
5__inference_batch_normalization_layer_call_fn_3044354┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
Ь2в
D__inference_reshape_layer_call_and_return_conditional_losses_3044368б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
М2л
)__inference_reshape_layer_call_fn_3044373б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
└2й
J__inference_up_sampling2d_layer_call_and_return_conditional_losses_3044385
J__inference_up_sampling2d_layer_call_and_return_conditional_losses_3044393б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
і2Є
/__inference_up_sampling2d_layer_call_fn_3044398
/__inference_up_sampling2d_layer_call_fn_3044403б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ь2Ж
C__inference_conv2d_layer_call_and_return_conditional_losses_3044413б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
м2¤
(__inference_conv2d_layer_call_fn_3044422б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
і2Є
R__inference_batch_normalization_1_layer_call_and_return_conditional_losses_3044440
R__inference_batch_normalization_1_layer_call_and_return_conditional_losses_3044458
R__inference_batch_normalization_1_layer_call_and_return_conditional_losses_3044476
R__inference_batch_normalization_1_layer_call_and_return_conditional_losses_3044494┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
ъ2Џ
7__inference_batch_normalization_1_layer_call_fn_3044507
7__inference_batch_normalization_1_layer_call_fn_3044520
7__inference_batch_normalization_1_layer_call_fn_3044533
7__inference_batch_normalization_1_layer_call_fn_3044546┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
ы2Ь
G__inference_activation_layer_call_and_return_conditional_losses_3044551б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
о2М
,__inference_activation_layer_call_fn_3044556б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
─2┴
L__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_3044568
L__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_3044576б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ј2І
1__inference_up_sampling2d_1_layer_call_fn_3044581
1__inference_up_sampling2d_1_layer_call_fn_3044586б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
№2В
E__inference_conv2d_1_layer_call_and_return_conditional_losses_3044597б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
н2Л
*__inference_conv2d_1_layer_call_fn_3044606б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
лB═
%__inference_signature_wrapper_3044028dense_input"ћ
Ї▓Ѕ
FullArgSpec
argsџ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
е2Цб
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
е2Цб
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
е2Цб
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
е2Цб
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 ф
"__inference__wrapped_model_3043149Ѓ'(./01?@4б1
*б'
%і"
dense_input         d
ф ";ф8
6
conv2d_1*і'
conv2d_1         │
G__inference_activation_layer_call_and_return_conditional_losses_3044551h7б4
-б*
(і%
inputs         @
ф "-б*
#і 
0         @
џ І
,__inference_activation_layer_call_fn_3044556[7б4
-б*
(і%
inputs         @
ф " і         @ь
R__inference_batch_normalization_1_layer_call_and_return_conditional_losses_3044440ќ./01MбJ
Cб@
:і7
inputs+                           @
p 
ф "?б<
5і2
0+                           @
џ ь
R__inference_batch_normalization_1_layer_call_and_return_conditional_losses_3044458ќ./01MбJ
Cб@
:і7
inputs+                           @
p
ф "?б<
5і2
0+                           @
џ ╚
R__inference_batch_normalization_1_layer_call_and_return_conditional_losses_3044476r./01;б8
1б.
(і%
inputs         @
p 
ф "-б*
#і 
0         @
џ ╚
R__inference_batch_normalization_1_layer_call_and_return_conditional_losses_3044494r./01;б8
1б.
(і%
inputs         @
p
ф "-б*
#і 
0         @
џ ┼
7__inference_batch_normalization_1_layer_call_fn_3044507Ѕ./01MбJ
Cб@
:і7
inputs+                           @
p 
ф "2і/+                           @┼
7__inference_batch_normalization_1_layer_call_fn_3044520Ѕ./01MбJ
Cб@
:і7
inputs+                           @
p
ф "2і/+                           @а
7__inference_batch_normalization_1_layer_call_fn_3044533e./01;б8
1б.
(і%
inputs         @
p 
ф " і         @а
7__inference_batch_normalization_1_layer_call_fn_3044546e./01;б8
1б.
(і%
inputs         @
p
ф " і         @И
P__inference_batch_normalization_layer_call_and_return_conditional_losses_3044294d4б1
*б'
!і
inputs         ђ1
p 
ф "&б#
і
0         ђ1
џ И
P__inference_batch_normalization_layer_call_and_return_conditional_losses_3044328d4б1
*б'
!і
inputs         ђ1
p
ф "&б#
і
0         ђ1
џ љ
5__inference_batch_normalization_layer_call_fn_3044341W4б1
*б'
!і
inputs         ђ1
p 
ф "і         ђ1љ
5__inference_batch_normalization_layer_call_fn_3044354W4б1
*б'
!і
inputs         ђ1
p
ф "і         ђ1х
E__inference_conv2d_1_layer_call_and_return_conditional_losses_3044597l?@7б4
-б*
(і%
inputs         @
ф "-б*
#і 
0         
џ Ї
*__inference_conv2d_1_layer_call_fn_3044606_?@7б4
-б*
(і%
inputs         @
ф " і         ┤
C__inference_conv2d_layer_call_and_return_conditional_losses_3044413m'(8б5
.б+
)і&
inputs         ђ
ф "-б*
#і 
0         @
џ ї
(__inference_conv2d_layer_call_fn_3044422`'(8б5
.б+
)і&
inputs         ђ
ф " і         @Б
B__inference_dense_layer_call_and_return_conditional_losses_3044265]/б,
%б"
 і
inputs         d
ф "&б#
і
0         ђ1
џ {
'__inference_dense_layer_call_fn_3044274P/б,
%б"
 і
inputs         d
ф "і         ђ1ф
D__inference_reshape_layer_call_and_return_conditional_losses_3044368b0б-
&б#
!і
inputs         ђ1
ф ".б+
$і!
0         ђ
џ ѓ
)__inference_reshape_layer_call_fn_3044373U0б-
&б#
!і
inputs         ђ1
ф "!і         ђ╚
G__inference_sequential_layer_call_and_return_conditional_losses_3043952}'(./01?@<б9
2б/
%і"
dense_input         d
p 

 
ф "-б*
#і 
0         
џ ╚
G__inference_sequential_layer_call_and_return_conditional_losses_3043993}'(./01?@<б9
2б/
%і"
dense_input         d
p

 
ф "-б*
#і 
0         
џ ├
G__inference_sequential_layer_call_and_return_conditional_losses_3044101x'(./01?@7б4
-б*
 і
inputs         d
p 

 
ф "-б*
#і 
0         
џ ├
G__inference_sequential_layer_call_and_return_conditional_losses_3044188x'(./01?@7б4
-б*
 і
inputs         d
p

 
ф "-б*
#і 
0         
џ а
,__inference_sequential_layer_call_fn_3043675p'(./01?@<б9
2б/
%і"
dense_input         d
p 

 
ф " і         а
,__inference_sequential_layer_call_fn_3043911p'(./01?@<б9
2б/
%і"
dense_input         d
p

 
ф " і         Џ
,__inference_sequential_layer_call_fn_3044221k'(./01?@7б4
-б*
 і
inputs         d
p 

 
ф " і         Џ
,__inference_sequential_layer_call_fn_3044254k'(./01?@7б4
-б*
 і
inputs         d
p

 
ф " і         ╝
%__inference_signature_wrapper_3044028њ'(./01?@Cб@
б 
9ф6
4
dense_input%і"
dense_input         d";ф8
6
conv2d_1*і'
conv2d_1         №
L__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_3044568ъRбO
HбE
Cі@
inputs4                                    
ф "HбE
>і;
04                                    
џ И
L__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_3044576h7б4
-б*
(і%
inputs         @
ф "-б*
#і 
0         @
џ К
1__inference_up_sampling2d_1_layer_call_fn_3044581ЉRбO
HбE
Cі@
inputs4                                    
ф ";і84                                    љ
1__inference_up_sampling2d_1_layer_call_fn_3044586[7б4
-б*
(і%
inputs         @
ф " і         @ь
J__inference_up_sampling2d_layer_call_and_return_conditional_losses_3044385ъRбO
HбE
Cі@
inputs4                                    
ф "HбE
>і;
04                                    
џ И
J__inference_up_sampling2d_layer_call_and_return_conditional_losses_3044393j8б5
.б+
)і&
inputs         ђ
ф ".б+
$і!
0         ђ
џ ┼
/__inference_up_sampling2d_layer_call_fn_3044398ЉRбO
HбE
Cі@
inputs4                                    
ф ";і84                                    љ
/__inference_up_sampling2d_layer_call_fn_3044403]8б5
.б+
)і&
inputs         ђ
ф "!і         ђ