��
��
B
AssignVariableOp
resource
value"dtype"
dtypetype�
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
�
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
�
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
epsilonfloat%��8"&
exponential_avg_factorfloat%  �?";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
.
Identity

input"T
output"T"	
Ttype
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
delete_old_dirsbool(�
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
dtypetype�
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
�
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
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.7.02v2.7.0-0-gc256c071bb28ؑ
~
conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d/kernel
w
!conv2d/kernel/Read/ReadVariableOpReadVariableOpconv2d/kernel*&
_output_shapes
:*
dtype0
n
conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d/bias
g
conv2d/bias/Read/ReadVariableOpReadVariableOpconv2d/bias*
_output_shapes
:*
dtype0
�
conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_1/kernel
{
#conv2d_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_1/kernel*&
_output_shapes
: *
dtype0
r
conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_1/bias
k
!conv2d_1/bias/Read/ReadVariableOpReadVariableOpconv2d_1/bias*
_output_shapes
: *
dtype0
�
conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: 0* 
shared_nameconv2d_2/kernel
{
#conv2d_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_2/kernel*&
_output_shapes
: 0*
dtype0
r
conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*
shared_nameconv2d_2/bias
k
!conv2d_2/bias/Read/ReadVariableOpReadVariableOpconv2d_2/bias*
_output_shapes
:0*
dtype0
�
conv2d_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:0@* 
shared_nameconv2d_3/kernel
{
#conv2d_3/kernel/Read/ReadVariableOpReadVariableOpconv2d_3/kernel*&
_output_shapes
:0@*
dtype0
r
conv2d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_3/bias
k
!conv2d_3/bias/Read/ReadVariableOpReadVariableOpconv2d_3/bias*
_output_shapes
:@*
dtype0
�
conv2d_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@H* 
shared_nameconv2d_4/kernel
{
#conv2d_4/kernel/Read/ReadVariableOpReadVariableOpconv2d_4/kernel*&
_output_shapes
:@H*
dtype0
r
conv2d_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:H*
shared_nameconv2d_4/bias
k
!conv2d_4/bias/Read/ReadVariableOpReadVariableOpconv2d_4/bias*
_output_shapes
:H*
dtype0
�
batch_normalization/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:H**
shared_namebatch_normalization/gamma
�
-batch_normalization/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization/gamma*
_output_shapes
:H*
dtype0
�
batch_normalization/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:H*)
shared_namebatch_normalization/beta
�
,batch_normalization/beta/Read/ReadVariableOpReadVariableOpbatch_normalization/beta*
_output_shapes
:H*
dtype0
�
batch_normalization/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:H*0
shared_name!batch_normalization/moving_mean
�
3batch_normalization/moving_mean/Read/ReadVariableOpReadVariableOpbatch_normalization/moving_mean*
_output_shapes
:H*
dtype0
�
#batch_normalization/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:H*4
shared_name%#batch_normalization/moving_variance
�
7batch_normalization/moving_variance/Read/ReadVariableOpReadVariableOp#batch_normalization/moving_variance*
_output_shapes
:H*
dtype0
v
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
�	�*
shared_namedense/kernel
o
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel* 
_output_shapes
:
�	�*
dtype0
m

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_name
dense/bias
f
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes	
:�*
dtype0
z
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*
shared_namedense_1/kernel
s
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel* 
_output_shapes
:
��*
dtype0
q
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_namedense_1/bias
j
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes	
:�*
dtype0

NoOpNoOp
�0
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�/
value�/B�/ B�/
�
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
layer_with_weights-5
layer-6
layer-7
	layer_with_weights-6
	layer-8

layer_with_weights-7

layer-9

signatures
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
%
#_self_saveable_object_factories
�

kernel
bias
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
�

kernel
bias
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
�

 kernel
!bias
#"_self_saveable_object_factories
#	variables
$trainable_variables
%regularization_losses
&	keras_api
�

'kernel
(bias
#)_self_saveable_object_factories
*	variables
+trainable_variables
,regularization_losses
-	keras_api
�

.kernel
/bias
#0_self_saveable_object_factories
1	variables
2trainable_variables
3regularization_losses
4	keras_api
�
5axis
	6gamma
7beta
8moving_mean
9moving_variance
#:_self_saveable_object_factories
;	variables
<trainable_variables
=regularization_losses
>	keras_api
w
#?_self_saveable_object_factories
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
�

Dkernel
Ebias
#F_self_saveable_object_factories
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
�

Kkernel
Lbias
#M_self_saveable_object_factories
N	variables
Otrainable_variables
Pregularization_losses
Q	keras_api
 
 
�
0
1
2
3
 4
!5
'6
(7
.8
/9
610
711
812
913
D14
E15
K16
L17
v
0
1
2
3
 4
!5
'6
(7
.8
/9
610
711
D12
E13
K14
L15
 
�
Rnon_trainable_variables

Slayers
Tmetrics
Ulayer_regularization_losses
Vlayer_metrics
	variables
trainable_variables
regularization_losses
 
YW
VARIABLE_VALUEconv2d/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEconv2d/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
 
�
Wnon_trainable_variables

Xlayers
Ymetrics
Zlayer_regularization_losses
[layer_metrics
	variables
trainable_variables
regularization_losses
[Y
VARIABLE_VALUEconv2d_1/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_1/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
 
�
\non_trainable_variables

]layers
^metrics
_layer_regularization_losses
`layer_metrics
	variables
trainable_variables
regularization_losses
[Y
VARIABLE_VALUEconv2d_2/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_2/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

 0
!1

 0
!1
 
�
anon_trainable_variables

blayers
cmetrics
dlayer_regularization_losses
elayer_metrics
#	variables
$trainable_variables
%regularization_losses
[Y
VARIABLE_VALUEconv2d_3/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_3/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

'0
(1

'0
(1
 
�
fnon_trainable_variables

glayers
hmetrics
ilayer_regularization_losses
jlayer_metrics
*	variables
+trainable_variables
,regularization_losses
[Y
VARIABLE_VALUEconv2d_4/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_4/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
 

.0
/1

.0
/1
 
�
knon_trainable_variables

llayers
mmetrics
nlayer_regularization_losses
olayer_metrics
1	variables
2trainable_variables
3regularization_losses
 
db
VARIABLE_VALUEbatch_normalization/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUEbatch_normalization/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUEbatch_normalization/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE#batch_normalization/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

60
71
82
93

60
71
 
�
pnon_trainable_variables

qlayers
rmetrics
slayer_regularization_losses
tlayer_metrics
;	variables
<trainable_variables
=regularization_losses
 
 
 
 
�
unon_trainable_variables

vlayers
wmetrics
xlayer_regularization_losses
ylayer_metrics
@	variables
Atrainable_variables
Bregularization_losses
XV
VARIABLE_VALUEdense/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
dense/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE
 

D0
E1

D0
E1
 
�
znon_trainable_variables

{layers
|metrics
}layer_regularization_losses
~layer_metrics
G	variables
Htrainable_variables
Iregularization_losses
ZX
VARIABLE_VALUEdense_1/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_1/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE
 

K0
L1

K0
L1
 
�
non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
N	variables
Otrainable_variables
Pregularization_losses

80
91
F
0
1
2
3
4
5
6
7
	8

9
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
 
 
 
 

80
91
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
�
serving_default_input_1Placeholder*/
_output_shapes
:���������*
dtype0*$
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1conv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasconv2d_3/kernelconv2d_3/biasconv2d_4/kernelconv2d_4/biasbatch_normalization/gammabatch_normalization/betabatch_normalization/moving_mean#batch_normalization/moving_variancedense/kernel
dense/biasdense_1/kerneldense_1/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*4
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *-
f(R&
$__inference_signature_wrapper_257299
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename!conv2d/kernel/Read/ReadVariableOpconv2d/bias/Read/ReadVariableOp#conv2d_1/kernel/Read/ReadVariableOp!conv2d_1/bias/Read/ReadVariableOp#conv2d_2/kernel/Read/ReadVariableOp!conv2d_2/bias/Read/ReadVariableOp#conv2d_3/kernel/Read/ReadVariableOp!conv2d_3/bias/Read/ReadVariableOp#conv2d_4/kernel/Read/ReadVariableOp!conv2d_4/bias/Read/ReadVariableOp-batch_normalization/gamma/Read/ReadVariableOp,batch_normalization/beta/Read/ReadVariableOp3batch_normalization/moving_mean/Read/ReadVariableOp7batch_normalization/moving_variance/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOpConst*
Tin
2*
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
GPU2*0J 8� *(
f#R!
__inference__traced_save_258271
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasconv2d_3/kernelconv2d_3/biasconv2d_4/kernelconv2d_4/biasbatch_normalization/gammabatch_normalization/betabatch_normalization/moving_mean#batch_normalization/moving_variancedense/kernel
dense/biasdense_1/kerneldense_1/bias*
Tin
2*
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
GPU2*0J 8� *+
f&R$
"__inference__traced_restore_258335ª
��
�
C__inference_encoder_layer_call_and_return_conditional_losses_256853

inputs'
conv2d_256732:
conv2d_256734:)
conv2d_1_256737: 
conv2d_1_256739: )
conv2d_2_256742: 0
conv2d_2_256744:0)
conv2d_3_256747:0@
conv2d_3_256749:@)
conv2d_4_256752:@H
conv2d_4_256754:H(
batch_normalization_256757:H(
batch_normalization_256759:H(
batch_normalization_256761:H(
batch_normalization_256763:H 
dense_256767:
�	�
dense_256769:	�"
dense_1_256772:
��
dense_1_256774:	�
identity��+batch_normalization/StatefulPartitionedCall�conv2d/StatefulPartitionedCall� conv2d_1/StatefulPartitionedCall� conv2d_2/StatefulPartitionedCall� conv2d_3/StatefulPartitionedCall� conv2d_4/StatefulPartitionedCall�dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�%kernel/Regularizer/Abs/ReadVariableOp�(kernel/Regularizer/Square/ReadVariableOp�'kernel/Regularizer_1/Abs/ReadVariableOp�*kernel/Regularizer_1/Square/ReadVariableOp�'kernel/Regularizer_2/Abs/ReadVariableOp�*kernel/Regularizer_2/Square/ReadVariableOp�'kernel/Regularizer_3/Abs/ReadVariableOp�*kernel/Regularizer_3/Square/ReadVariableOp�'kernel/Regularizer_4/Abs/ReadVariableOp�*kernel/Regularizer_4/Square/ReadVariableOp�
conv2d/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_256732conv2d_256734*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv2d_layer_call_and_return_conditional_losses_256248�
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0conv2d_1_256737conv2d_1_256739*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_1_layer_call_and_return_conditional_losses_256280�
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0conv2d_2_256742conv2d_2_256744*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_2_layer_call_and_return_conditional_losses_256312�
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0conv2d_3_256747conv2d_3_256749*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_3_layer_call_and_return_conditional_losses_256344�
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0conv2d_4_256752conv2d_4_256754*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������H*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_4_layer_call_and_return_conditional_losses_256376�
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0batch_normalization_256757batch_normalization_256759batch_normalization_256761batch_normalization_256763*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������H*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *X
fSRQ
O__inference_batch_normalization_layer_call_and_return_conditional_losses_256625�
flatten/PartitionedCallPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������	* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_256415�
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_256767dense_256769*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_256428�
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_256772dense_1_256774*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_256445]
kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    {
%kernel/Regularizer/Abs/ReadVariableOpReadVariableOpconv2d_256732*&
_output_shapes
:*
dtype0}
kernel/Regularizer/AbsAbs-kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:s
kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer/SumSumkernel/Regularizer/Abs:y:0#kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
kernel/Regularizer/addAddV2!kernel/Regularizer/Const:output:0kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: ~
(kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_256732*&
_output_shapes
:*
dtype0�
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:s
kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*%
valueB"             �
kernel/Regularizer/Sum_1Sumkernel/Regularizer/Square:y:0#kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: _
kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
kernel/Regularizer/mul_1Mul#kernel/Regularizer/mul_1/x:output:0!kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: |
kernel/Regularizer/add_1AddV2kernel/Regularizer/add:z:0kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: _
kernel/Regularizer_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
'kernel/Regularizer_1/Abs/ReadVariableOpReadVariableOpconv2d_1_256737*&
_output_shapes
: *
dtype0�
kernel/Regularizer_1/AbsAbs/kernel/Regularizer_1/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
: u
kernel/Regularizer_1/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             �
kernel/Regularizer_1/SumSumkernel/Regularizer_1/Abs:y:0%kernel/Regularizer_1/Const_1:output:0*
T0*
_output_shapes
: _
kernel/Regularizer_1/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
kernel/Regularizer_1/mulMul#kernel/Regularizer_1/mul/x:output:0!kernel/Regularizer_1/Sum:output:0*
T0*
_output_shapes
: �
kernel/Regularizer_1/addAddV2#kernel/Regularizer_1/Const:output:0kernel/Regularizer_1/mul:z:0*
T0*
_output_shapes
: �
*kernel/Regularizer_1/Square/ReadVariableOpReadVariableOpconv2d_1_256737*&
_output_shapes
: *
dtype0�
kernel/Regularizer_1/SquareSquare2kernel/Regularizer_1/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: u
kernel/Regularizer_1/Const_2Const*
_output_shapes
:*
dtype0*%
valueB"             �
kernel/Regularizer_1/Sum_1Sumkernel/Regularizer_1/Square:y:0%kernel/Regularizer_1/Const_2:output:0*
T0*
_output_shapes
: a
kernel/Regularizer_1/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
kernel/Regularizer_1/mul_1Mul%kernel/Regularizer_1/mul_1/x:output:0#kernel/Regularizer_1/Sum_1:output:0*
T0*
_output_shapes
: �
kernel/Regularizer_1/add_1AddV2kernel/Regularizer_1/add:z:0kernel/Regularizer_1/mul_1:z:0*
T0*
_output_shapes
: _
kernel/Regularizer_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
'kernel/Regularizer_2/Abs/ReadVariableOpReadVariableOpconv2d_2_256742*&
_output_shapes
: 0*
dtype0�
kernel/Regularizer_2/AbsAbs/kernel/Regularizer_2/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
: 0u
kernel/Regularizer_2/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             �
kernel/Regularizer_2/SumSumkernel/Regularizer_2/Abs:y:0%kernel/Regularizer_2/Const_1:output:0*
T0*
_output_shapes
: _
kernel/Regularizer_2/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
kernel/Regularizer_2/mulMul#kernel/Regularizer_2/mul/x:output:0!kernel/Regularizer_2/Sum:output:0*
T0*
_output_shapes
: �
kernel/Regularizer_2/addAddV2#kernel/Regularizer_2/Const:output:0kernel/Regularizer_2/mul:z:0*
T0*
_output_shapes
: �
*kernel/Regularizer_2/Square/ReadVariableOpReadVariableOpconv2d_2_256742*&
_output_shapes
: 0*
dtype0�
kernel/Regularizer_2/SquareSquare2kernel/Regularizer_2/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: 0u
kernel/Regularizer_2/Const_2Const*
_output_shapes
:*
dtype0*%
valueB"             �
kernel/Regularizer_2/Sum_1Sumkernel/Regularizer_2/Square:y:0%kernel/Regularizer_2/Const_2:output:0*
T0*
_output_shapes
: a
kernel/Regularizer_2/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
kernel/Regularizer_2/mul_1Mul%kernel/Regularizer_2/mul_1/x:output:0#kernel/Regularizer_2/Sum_1:output:0*
T0*
_output_shapes
: �
kernel/Regularizer_2/add_1AddV2kernel/Regularizer_2/add:z:0kernel/Regularizer_2/mul_1:z:0*
T0*
_output_shapes
: _
kernel/Regularizer_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
'kernel/Regularizer_3/Abs/ReadVariableOpReadVariableOpconv2d_3_256747*&
_output_shapes
:0@*
dtype0�
kernel/Regularizer_3/AbsAbs/kernel/Regularizer_3/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:0@u
kernel/Regularizer_3/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             �
kernel/Regularizer_3/SumSumkernel/Regularizer_3/Abs:y:0%kernel/Regularizer_3/Const_1:output:0*
T0*
_output_shapes
: _
kernel/Regularizer_3/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
kernel/Regularizer_3/mulMul#kernel/Regularizer_3/mul/x:output:0!kernel/Regularizer_3/Sum:output:0*
T0*
_output_shapes
: �
kernel/Regularizer_3/addAddV2#kernel/Regularizer_3/Const:output:0kernel/Regularizer_3/mul:z:0*
T0*
_output_shapes
: �
*kernel/Regularizer_3/Square/ReadVariableOpReadVariableOpconv2d_3_256747*&
_output_shapes
:0@*
dtype0�
kernel/Regularizer_3/SquareSquare2kernel/Regularizer_3/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:0@u
kernel/Regularizer_3/Const_2Const*
_output_shapes
:*
dtype0*%
valueB"             �
kernel/Regularizer_3/Sum_1Sumkernel/Regularizer_3/Square:y:0%kernel/Regularizer_3/Const_2:output:0*
T0*
_output_shapes
: a
kernel/Regularizer_3/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
kernel/Regularizer_3/mul_1Mul%kernel/Regularizer_3/mul_1/x:output:0#kernel/Regularizer_3/Sum_1:output:0*
T0*
_output_shapes
: �
kernel/Regularizer_3/add_1AddV2kernel/Regularizer_3/add:z:0kernel/Regularizer_3/mul_1:z:0*
T0*
_output_shapes
: _
kernel/Regularizer_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
'kernel/Regularizer_4/Abs/ReadVariableOpReadVariableOpconv2d_4_256752*&
_output_shapes
:@H*
dtype0�
kernel/Regularizer_4/AbsAbs/kernel/Regularizer_4/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:@Hu
kernel/Regularizer_4/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             �
kernel/Regularizer_4/SumSumkernel/Regularizer_4/Abs:y:0%kernel/Regularizer_4/Const_1:output:0*
T0*
_output_shapes
: _
kernel/Regularizer_4/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
kernel/Regularizer_4/mulMul#kernel/Regularizer_4/mul/x:output:0!kernel/Regularizer_4/Sum:output:0*
T0*
_output_shapes
: �
kernel/Regularizer_4/addAddV2#kernel/Regularizer_4/Const:output:0kernel/Regularizer_4/mul:z:0*
T0*
_output_shapes
: �
*kernel/Regularizer_4/Square/ReadVariableOpReadVariableOpconv2d_4_256752*&
_output_shapes
:@H*
dtype0�
kernel/Regularizer_4/SquareSquare2kernel/Regularizer_4/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@Hu
kernel/Regularizer_4/Const_2Const*
_output_shapes
:*
dtype0*%
valueB"             �
kernel/Regularizer_4/Sum_1Sumkernel/Regularizer_4/Square:y:0%kernel/Regularizer_4/Const_2:output:0*
T0*
_output_shapes
: a
kernel/Regularizer_4/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
kernel/Regularizer_4/mul_1Mul%kernel/Regularizer_4/mul_1/x:output:0#kernel/Regularizer_4/Sum_1:output:0*
T0*
_output_shapes
: �
kernel/Regularizer_4/add_1AddV2kernel/Regularizer_4/add:z:0kernel/Regularizer_4/mul_1:z:0*
T0*
_output_shapes
: x
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp,^batch_normalization/StatefulPartitionedCall^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall&^kernel/Regularizer/Abs/ReadVariableOp)^kernel/Regularizer/Square/ReadVariableOp(^kernel/Regularizer_1/Abs/ReadVariableOp+^kernel/Regularizer_1/Square/ReadVariableOp(^kernel/Regularizer_2/Abs/ReadVariableOp+^kernel/Regularizer_2/Square/ReadVariableOp(^kernel/Regularizer_3/Abs/ReadVariableOp+^kernel/Regularizer_3/Square/ReadVariableOp(^kernel/Regularizer_4/Abs/ReadVariableOp+^kernel/Regularizer_4/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������: : : : : : : : : : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2N
%kernel/Regularizer/Abs/ReadVariableOp%kernel/Regularizer/Abs/ReadVariableOp2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp2R
'kernel/Regularizer_1/Abs/ReadVariableOp'kernel/Regularizer_1/Abs/ReadVariableOp2X
*kernel/Regularizer_1/Square/ReadVariableOp*kernel/Regularizer_1/Square/ReadVariableOp2R
'kernel/Regularizer_2/Abs/ReadVariableOp'kernel/Regularizer_2/Abs/ReadVariableOp2X
*kernel/Regularizer_2/Square/ReadVariableOp*kernel/Regularizer_2/Square/ReadVariableOp2R
'kernel/Regularizer_3/Abs/ReadVariableOp'kernel/Regularizer_3/Abs/ReadVariableOp2X
*kernel/Regularizer_3/Square/ReadVariableOp*kernel/Regularizer_3/Square/ReadVariableOp2R
'kernel/Regularizer_4/Abs/ReadVariableOp'kernel/Regularizer_4/Abs/ReadVariableOp2X
*kernel/Regularizer_4/Square/ReadVariableOp*kernel/Regularizer_4/Square/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
(__inference_encoder_layer_call_fn_256566
input_1!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: 0
	unknown_4:0#
	unknown_5:0@
	unknown_6:@#
	unknown_7:@H
	unknown_8:H
	unknown_9:H

unknown_10:H

unknown_11:H

unknown_12:H

unknown_13:
�	�

unknown_14:	�

unknown_15:
��

unknown_16:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*4
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_encoder_layer_call_and_return_conditional_losses_256527p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:���������
!
_user_specified_name	input_1
�
�
__inference_loss_fn_2_258154H
.kernel_regularizer_abs_readvariableop_resource: 0
identity��%kernel/Regularizer/Abs/ReadVariableOp�(kernel/Regularizer/Square/ReadVariableOp]
kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
%kernel/Regularizer/Abs/ReadVariableOpReadVariableOp.kernel_regularizer_abs_readvariableop_resource*&
_output_shapes
: 0*
dtype0}
kernel/Regularizer/AbsAbs-kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
: 0s
kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer/SumSumkernel/Regularizer/Abs:y:0#kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
kernel/Regularizer/addAddV2!kernel/Regularizer/Const:output:0kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
(kernel/Regularizer/Square/ReadVariableOpReadVariableOp.kernel_regularizer_abs_readvariableop_resource*&
_output_shapes
: 0*
dtype0�
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: 0s
kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*%
valueB"             �
kernel/Regularizer/Sum_1Sumkernel/Regularizer/Square:y:0#kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: _
kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
kernel/Regularizer/mul_1Mul#kernel/Regularizer/mul_1/x:output:0!kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: |
kernel/Regularizer/add_1AddV2kernel/Regularizer/add:z:0kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: Z
IdentityIdentitykernel/Regularizer/add_1:z:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp&^kernel/Regularizer/Abs/ReadVariableOp)^kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2N
%kernel/Regularizer/Abs/ReadVariableOp%kernel/Regularizer/Abs/ReadVariableOp2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp
�]
�
!__inference__wrapped_model_256151
input_1G
-encoder_conv2d_conv2d_readvariableop_resource:<
.encoder_conv2d_biasadd_readvariableop_resource:I
/encoder_conv2d_1_conv2d_readvariableop_resource: >
0encoder_conv2d_1_biasadd_readvariableop_resource: I
/encoder_conv2d_2_conv2d_readvariableop_resource: 0>
0encoder_conv2d_2_biasadd_readvariableop_resource:0I
/encoder_conv2d_3_conv2d_readvariableop_resource:0@>
0encoder_conv2d_3_biasadd_readvariableop_resource:@I
/encoder_conv2d_4_conv2d_readvariableop_resource:@H>
0encoder_conv2d_4_biasadd_readvariableop_resource:HA
3encoder_batch_normalization_readvariableop_resource:HC
5encoder_batch_normalization_readvariableop_1_resource:HR
Dencoder_batch_normalization_fusedbatchnormv3_readvariableop_resource:HT
Fencoder_batch_normalization_fusedbatchnormv3_readvariableop_1_resource:H@
,encoder_dense_matmul_readvariableop_resource:
�	�<
-encoder_dense_biasadd_readvariableop_resource:	�B
.encoder_dense_1_matmul_readvariableop_resource:
��>
/encoder_dense_1_biasadd_readvariableop_resource:	�
identity��;encoder/batch_normalization/FusedBatchNormV3/ReadVariableOp�=encoder/batch_normalization/FusedBatchNormV3/ReadVariableOp_1�*encoder/batch_normalization/ReadVariableOp�,encoder/batch_normalization/ReadVariableOp_1�%encoder/conv2d/BiasAdd/ReadVariableOp�$encoder/conv2d/Conv2D/ReadVariableOp�'encoder/conv2d_1/BiasAdd/ReadVariableOp�&encoder/conv2d_1/Conv2D/ReadVariableOp�'encoder/conv2d_2/BiasAdd/ReadVariableOp�&encoder/conv2d_2/Conv2D/ReadVariableOp�'encoder/conv2d_3/BiasAdd/ReadVariableOp�&encoder/conv2d_3/Conv2D/ReadVariableOp�'encoder/conv2d_4/BiasAdd/ReadVariableOp�&encoder/conv2d_4/Conv2D/ReadVariableOp�$encoder/dense/BiasAdd/ReadVariableOp�#encoder/dense/MatMul/ReadVariableOp�&encoder/dense_1/BiasAdd/ReadVariableOp�%encoder/dense_1/MatMul/ReadVariableOp�
$encoder/conv2d/Conv2D/ReadVariableOpReadVariableOp-encoder_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
encoder/conv2d/Conv2DConv2Dinput_1,encoder/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
%encoder/conv2d/BiasAdd/ReadVariableOpReadVariableOp.encoder_conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
encoder/conv2d/BiasAddBiasAddencoder/conv2d/Conv2D:output:0-encoder/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������v
encoder/conv2d/ReluReluencoder/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:����������
&encoder/conv2d_1/Conv2D/ReadVariableOpReadVariableOp/encoder_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
encoder/conv2d_1/Conv2DConv2D!encoder/conv2d/Relu:activations:0.encoder/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� *
paddingSAME*
strides
�
'encoder/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp0encoder_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
encoder/conv2d_1/BiasAddBiasAdd encoder/conv2d_1/Conv2D:output:0/encoder/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� z
encoder/conv2d_1/ReluRelu!encoder/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:��������� �
&encoder/conv2d_2/Conv2D/ReadVariableOpReadVariableOp/encoder_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: 0*
dtype0�
encoder/conv2d_2/Conv2DConv2D#encoder/conv2d_1/Relu:activations:0.encoder/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������0*
paddingSAME*
strides
�
'encoder/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp0encoder_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype0�
encoder/conv2d_2/BiasAddBiasAdd encoder/conv2d_2/Conv2D:output:0/encoder/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������0z
encoder/conv2d_2/ReluRelu!encoder/conv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:���������0�
&encoder/conv2d_3/Conv2D/ReadVariableOpReadVariableOp/encoder_conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:0@*
dtype0�
encoder/conv2d_3/Conv2DConv2D#encoder/conv2d_2/Relu:activations:0.encoder/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
�
'encoder/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp0encoder_conv2d_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
encoder/conv2d_3/BiasAddBiasAdd encoder/conv2d_3/Conv2D:output:0/encoder/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@z
encoder/conv2d_3/ReluRelu!encoder/conv2d_3/BiasAdd:output:0*
T0*/
_output_shapes
:���������@�
&encoder/conv2d_4/Conv2D/ReadVariableOpReadVariableOp/encoder_conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
:@H*
dtype0�
encoder/conv2d_4/Conv2DConv2D#encoder/conv2d_3/Relu:activations:0.encoder/conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������H*
paddingSAME*
strides
�
'encoder/conv2d_4/BiasAdd/ReadVariableOpReadVariableOp0encoder_conv2d_4_biasadd_readvariableop_resource*
_output_shapes
:H*
dtype0�
encoder/conv2d_4/BiasAddBiasAdd encoder/conv2d_4/Conv2D:output:0/encoder/conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������Hz
encoder/conv2d_4/ReluRelu!encoder/conv2d_4/BiasAdd:output:0*
T0*/
_output_shapes
:���������H�
*encoder/batch_normalization/ReadVariableOpReadVariableOp3encoder_batch_normalization_readvariableop_resource*
_output_shapes
:H*
dtype0�
,encoder/batch_normalization/ReadVariableOp_1ReadVariableOp5encoder_batch_normalization_readvariableop_1_resource*
_output_shapes
:H*
dtype0�
;encoder/batch_normalization/FusedBatchNormV3/ReadVariableOpReadVariableOpDencoder_batch_normalization_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:H*
dtype0�
=encoder/batch_normalization/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpFencoder_batch_normalization_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:H*
dtype0�
,encoder/batch_normalization/FusedBatchNormV3FusedBatchNormV3#encoder/conv2d_4/Relu:activations:02encoder/batch_normalization/ReadVariableOp:value:04encoder/batch_normalization/ReadVariableOp_1:value:0Cencoder/batch_normalization/FusedBatchNormV3/ReadVariableOp:value:0Eencoder/batch_normalization/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������H:H:H:H:H:*
epsilon%o�:*
is_training( f
encoder/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����  �
encoder/flatten/ReshapeReshape0encoder/batch_normalization/FusedBatchNormV3:y:0encoder/flatten/Const:output:0*
T0*(
_output_shapes
:����������	�
#encoder/dense/MatMul/ReadVariableOpReadVariableOp,encoder_dense_matmul_readvariableop_resource* 
_output_shapes
:
�	�*
dtype0�
encoder/dense/MatMulMatMul encoder/flatten/Reshape:output:0+encoder/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
$encoder/dense/BiasAdd/ReadVariableOpReadVariableOp-encoder_dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
encoder/dense/BiasAddBiasAddencoder/dense/MatMul:product:0,encoder/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������m
encoder/dense/ReluReluencoder/dense/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
%encoder/dense_1/MatMul/ReadVariableOpReadVariableOp.encoder_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
encoder/dense_1/MatMulMatMul encoder/dense/Relu:activations:0-encoder/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
&encoder/dense_1/BiasAdd/ReadVariableOpReadVariableOp/encoder_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
encoder/dense_1/BiasAddBiasAdd encoder/dense_1/MatMul:product:0.encoder/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������q
encoder/dense_1/ReluRelu encoder/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:����������r
IdentityIdentity"encoder/dense_1/Relu:activations:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp<^encoder/batch_normalization/FusedBatchNormV3/ReadVariableOp>^encoder/batch_normalization/FusedBatchNormV3/ReadVariableOp_1+^encoder/batch_normalization/ReadVariableOp-^encoder/batch_normalization/ReadVariableOp_1&^encoder/conv2d/BiasAdd/ReadVariableOp%^encoder/conv2d/Conv2D/ReadVariableOp(^encoder/conv2d_1/BiasAdd/ReadVariableOp'^encoder/conv2d_1/Conv2D/ReadVariableOp(^encoder/conv2d_2/BiasAdd/ReadVariableOp'^encoder/conv2d_2/Conv2D/ReadVariableOp(^encoder/conv2d_3/BiasAdd/ReadVariableOp'^encoder/conv2d_3/Conv2D/ReadVariableOp(^encoder/conv2d_4/BiasAdd/ReadVariableOp'^encoder/conv2d_4/Conv2D/ReadVariableOp%^encoder/dense/BiasAdd/ReadVariableOp$^encoder/dense/MatMul/ReadVariableOp'^encoder/dense_1/BiasAdd/ReadVariableOp&^encoder/dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������: : : : : : : : : : : : : : : : : : 2z
;encoder/batch_normalization/FusedBatchNormV3/ReadVariableOp;encoder/batch_normalization/FusedBatchNormV3/ReadVariableOp2~
=encoder/batch_normalization/FusedBatchNormV3/ReadVariableOp_1=encoder/batch_normalization/FusedBatchNormV3/ReadVariableOp_12X
*encoder/batch_normalization/ReadVariableOp*encoder/batch_normalization/ReadVariableOp2\
,encoder/batch_normalization/ReadVariableOp_1,encoder/batch_normalization/ReadVariableOp_12N
%encoder/conv2d/BiasAdd/ReadVariableOp%encoder/conv2d/BiasAdd/ReadVariableOp2L
$encoder/conv2d/Conv2D/ReadVariableOp$encoder/conv2d/Conv2D/ReadVariableOp2R
'encoder/conv2d_1/BiasAdd/ReadVariableOp'encoder/conv2d_1/BiasAdd/ReadVariableOp2P
&encoder/conv2d_1/Conv2D/ReadVariableOp&encoder/conv2d_1/Conv2D/ReadVariableOp2R
'encoder/conv2d_2/BiasAdd/ReadVariableOp'encoder/conv2d_2/BiasAdd/ReadVariableOp2P
&encoder/conv2d_2/Conv2D/ReadVariableOp&encoder/conv2d_2/Conv2D/ReadVariableOp2R
'encoder/conv2d_3/BiasAdd/ReadVariableOp'encoder/conv2d_3/BiasAdd/ReadVariableOp2P
&encoder/conv2d_3/Conv2D/ReadVariableOp&encoder/conv2d_3/Conv2D/ReadVariableOp2R
'encoder/conv2d_4/BiasAdd/ReadVariableOp'encoder/conv2d_4/BiasAdd/ReadVariableOp2P
&encoder/conv2d_4/Conv2D/ReadVariableOp&encoder/conv2d_4/Conv2D/ReadVariableOp2L
$encoder/dense/BiasAdd/ReadVariableOp$encoder/dense/BiasAdd/ReadVariableOp2J
#encoder/dense/MatMul/ReadVariableOp#encoder/dense/MatMul/ReadVariableOp2P
&encoder/dense_1/BiasAdd/ReadVariableOp&encoder/dense_1/BiasAdd/ReadVariableOp2N
%encoder/dense_1/MatMul/ReadVariableOp%encoder/dense_1/MatMul/ReadVariableOp:X T
/
_output_shapes
:���������
!
_user_specified_name	input_1
�
�
D__inference_conv2d_2_layer_call_and_return_conditional_losses_256312

inputs8
conv2d_readvariableop_resource: 0-
biasadd_readvariableop_resource:0
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�%kernel/Regularizer/Abs/ReadVariableOp�(kernel/Regularizer/Square/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: 0*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������0*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:0*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������0X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������0]
kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
%kernel/Regularizer/Abs/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: 0*
dtype0}
kernel/Regularizer/AbsAbs-kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
: 0s
kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer/SumSumkernel/Regularizer/Abs:y:0#kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
kernel/Regularizer/addAddV2!kernel/Regularizer/Const:output:0kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
(kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: 0*
dtype0�
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: 0s
kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*%
valueB"             �
kernel/Regularizer/Sum_1Sumkernel/Regularizer/Square:y:0#kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: _
kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
kernel/Regularizer/mul_1Mul#kernel/Regularizer/mul_1/x:output:0!kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: |
kernel/Regularizer/add_1AddV2kernel/Regularizer/add:z:0kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������0�
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp&^kernel/Regularizer/Abs/ReadVariableOp)^kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2N
%kernel/Regularizer/Abs/ReadVariableOp%kernel/Regularizer/Abs/ReadVariableOp2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
_
C__inference_flatten_layer_call_and_return_conditional_losses_258054

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"�����  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������	Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������	"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������H:W S
/
_output_shapes
:���������H
 
_user_specified_nameinputs
�
�
O__inference_batch_normalization_layer_call_and_return_conditional_losses_256173

inputs%
readvariableop_resource:H'
readvariableop_1_resource:H6
(fusedbatchnormv3_readvariableop_resource:H8
*fusedbatchnormv3_readvariableop_1_resource:H
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:H*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:H*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:H*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:H*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������H:H:H:H:H:*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������H�
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������H: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������H
 
_user_specified_nameinputs
�
�
4__inference_batch_normalization_layer_call_fn_257958

inputs
unknown:H
	unknown_0:H
	unknown_1:H
	unknown_2:H
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������H*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *X
fSRQ
O__inference_batch_normalization_layer_call_and_return_conditional_losses_256399w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������H`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������H: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������H
 
_user_specified_nameinputs
�
�
O__inference_batch_normalization_layer_call_and_return_conditional_losses_258025

inputs%
readvariableop_resource:H'
readvariableop_1_resource:H6
(fusedbatchnormv3_readvariableop_resource:H8
*fusedbatchnormv3_readvariableop_1_resource:H
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:H*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:H*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:H*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:H*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������H:H:H:H:H:*
epsilon%o�:*
is_training( k
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:���������H�
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������H: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:���������H
 
_user_specified_nameinputs
�
�
$__inference_signature_wrapper_257299
input_1!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: 0
	unknown_4:0#
	unknown_5:0@
	unknown_6:@#
	unknown_7:@H
	unknown_8:H
	unknown_9:H

unknown_10:H

unknown_11:H

unknown_12:H

unknown_13:
�	�

unknown_14:	�

unknown_15:
��

unknown_16:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*4
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� **
f%R#
!__inference__wrapped_model_256151p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:���������
!
_user_specified_name	input_1
�	
�
4__inference_batch_normalization_layer_call_fn_257945

inputs
unknown:H
	unknown_0:H
	unknown_1:H
	unknown_2:H
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������H*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *X
fSRQ
O__inference_batch_normalization_layer_call_and_return_conditional_losses_256204�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������H`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������H: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������H
 
_user_specified_nameinputs
�

�
A__inference_dense_layer_call_and_return_conditional_losses_258074

inputs2
matmul_readvariableop_resource:
�	�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
�	�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������	: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������	
 
_user_specified_nameinputs
�
�
D__inference_conv2d_4_layer_call_and_return_conditional_losses_256376

inputs8
conv2d_readvariableop_resource:@H-
biasadd_readvariableop_resource:H
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�%kernel/Regularizer/Abs/ReadVariableOp�(kernel/Regularizer/Square/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@H*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������H*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:H*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������HX
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������H]
kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
%kernel/Regularizer/Abs/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@H*
dtype0}
kernel/Regularizer/AbsAbs-kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:@Hs
kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer/SumSumkernel/Regularizer/Abs:y:0#kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
kernel/Regularizer/addAddV2!kernel/Regularizer/Const:output:0kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
(kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@H*
dtype0�
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@Hs
kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*%
valueB"             �
kernel/Regularizer/Sum_1Sumkernel/Regularizer/Square:y:0#kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: _
kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
kernel/Regularizer/mul_1Mul#kernel/Regularizer/mul_1/x:output:0!kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: |
kernel/Regularizer/add_1AddV2kernel/Regularizer/add:z:0kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������H�
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp&^kernel/Regularizer/Abs/ReadVariableOp)^kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2N
%kernel/Regularizer/Abs/ReadVariableOp%kernel/Regularizer/Abs/ReadVariableOp2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�J
�
"__inference__traced_restore_258335
file_prefix8
assignvariableop_conv2d_kernel:,
assignvariableop_1_conv2d_bias:<
"assignvariableop_2_conv2d_1_kernel: .
 assignvariableop_3_conv2d_1_bias: <
"assignvariableop_4_conv2d_2_kernel: 0.
 assignvariableop_5_conv2d_2_bias:0<
"assignvariableop_6_conv2d_3_kernel:0@.
 assignvariableop_7_conv2d_3_bias:@<
"assignvariableop_8_conv2d_4_kernel:@H.
 assignvariableop_9_conv2d_4_bias:H;
-assignvariableop_10_batch_normalization_gamma:H:
,assignvariableop_11_batch_normalization_beta:HA
3assignvariableop_12_batch_normalization_moving_mean:HE
7assignvariableop_13_batch_normalization_moving_variance:H4
 assignvariableop_14_dense_kernel:
�	�-
assignvariableop_15_dense_bias:	�6
"assignvariableop_16_dense_1_kernel:
��/
 assignvariableop_17_dense_1_bias:	�
identity_19��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_2�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*9
value0B.B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*`
_output_shapesN
L:::::::::::::::::::*!
dtypes
2[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOpassignvariableop_conv2d_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpassignvariableop_1_conv2d_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp"assignvariableop_2_conv2d_1_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp assignvariableop_3_conv2d_1_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp"assignvariableop_4_conv2d_2_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp assignvariableop_5_conv2d_2_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp"assignvariableop_6_conv2d_3_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp assignvariableop_7_conv2d_3_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp"assignvariableop_8_conv2d_4_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp assignvariableop_9_conv2d_4_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp-assignvariableop_10_batch_normalization_gammaIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp,assignvariableop_11_batch_normalization_betaIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp3assignvariableop_12_batch_normalization_moving_meanIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp7assignvariableop_13_batch_normalization_moving_varianceIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp assignvariableop_14_dense_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOpassignvariableop_15_dense_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp"assignvariableop_16_dense_1_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp assignvariableop_17_dense_1_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 �
Identity_18Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_19IdentityIdentity_18:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_19Identity_19:output:0*9
_input_shapes(
&: : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172(
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
ܪ
�
C__inference_encoder_layer_call_and_return_conditional_losses_257525

inputs?
%conv2d_conv2d_readvariableop_resource:4
&conv2d_biasadd_readvariableop_resource:A
'conv2d_1_conv2d_readvariableop_resource: 6
(conv2d_1_biasadd_readvariableop_resource: A
'conv2d_2_conv2d_readvariableop_resource: 06
(conv2d_2_biasadd_readvariableop_resource:0A
'conv2d_3_conv2d_readvariableop_resource:0@6
(conv2d_3_biasadd_readvariableop_resource:@A
'conv2d_4_conv2d_readvariableop_resource:@H6
(conv2d_4_biasadd_readvariableop_resource:H9
+batch_normalization_readvariableop_resource:H;
-batch_normalization_readvariableop_1_resource:HJ
<batch_normalization_fusedbatchnormv3_readvariableop_resource:HL
>batch_normalization_fusedbatchnormv3_readvariableop_1_resource:H8
$dense_matmul_readvariableop_resource:
�	�4
%dense_biasadd_readvariableop_resource:	�:
&dense_1_matmul_readvariableop_resource:
��6
'dense_1_biasadd_readvariableop_resource:	�
identity��3batch_normalization/FusedBatchNormV3/ReadVariableOp�5batch_normalization/FusedBatchNormV3/ReadVariableOp_1�"batch_normalization/ReadVariableOp�$batch_normalization/ReadVariableOp_1�conv2d/BiasAdd/ReadVariableOp�conv2d/Conv2D/ReadVariableOp�conv2d_1/BiasAdd/ReadVariableOp�conv2d_1/Conv2D/ReadVariableOp�conv2d_2/BiasAdd/ReadVariableOp�conv2d_2/Conv2D/ReadVariableOp�conv2d_3/BiasAdd/ReadVariableOp�conv2d_3/Conv2D/ReadVariableOp�conv2d_4/BiasAdd/ReadVariableOp�conv2d_4/Conv2D/ReadVariableOp�dense/BiasAdd/ReadVariableOp�dense/MatMul/ReadVariableOp�dense_1/BiasAdd/ReadVariableOp�dense_1/MatMul/ReadVariableOp�%kernel/Regularizer/Abs/ReadVariableOp�(kernel/Regularizer/Square/ReadVariableOp�'kernel/Regularizer_1/Abs/ReadVariableOp�*kernel/Regularizer_1/Square/ReadVariableOp�'kernel/Regularizer_2/Abs/ReadVariableOp�*kernel/Regularizer_2/Square/ReadVariableOp�'kernel/Regularizer_3/Abs/ReadVariableOp�*kernel/Regularizer_3/Square/ReadVariableOp�'kernel/Regularizer_4/Abs/ReadVariableOp�*kernel/Regularizer_4/Square/ReadVariableOp�
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d/Conv2DConv2Dinputs$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������f
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*/
_output_shapes
:����������
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
conv2d_1/Conv2DConv2Dconv2d/Relu:activations:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� *
paddingSAME*
strides
�
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� j
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:��������� �
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: 0*
dtype0�
conv2d_2/Conv2DConv2Dconv2d_1/Relu:activations:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������0*
paddingSAME*
strides
�
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype0�
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������0j
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:���������0�
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:0@*
dtype0�
conv2d_3/Conv2DConv2Dconv2d_2/Relu:activations:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
�
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@j
conv2d_3/ReluReluconv2d_3/BiasAdd:output:0*
T0*/
_output_shapes
:���������@�
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
:@H*
dtype0�
conv2d_4/Conv2DConv2Dconv2d_3/Relu:activations:0&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������H*
paddingSAME*
strides
�
conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes
:H*
dtype0�
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������Hj
conv2d_4/ReluReluconv2d_4/BiasAdd:output:0*
T0*/
_output_shapes
:���������H�
"batch_normalization/ReadVariableOpReadVariableOp+batch_normalization_readvariableop_resource*
_output_shapes
:H*
dtype0�
$batch_normalization/ReadVariableOp_1ReadVariableOp-batch_normalization_readvariableop_1_resource*
_output_shapes
:H*
dtype0�
3batch_normalization/FusedBatchNormV3/ReadVariableOpReadVariableOp<batch_normalization_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:H*
dtype0�
5batch_normalization/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp>batch_normalization_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:H*
dtype0�
$batch_normalization/FusedBatchNormV3FusedBatchNormV3conv2d_4/Relu:activations:0*batch_normalization/ReadVariableOp:value:0,batch_normalization/ReadVariableOp_1:value:0;batch_normalization/FusedBatchNormV3/ReadVariableOp:value:0=batch_normalization/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������H:H:H:H:H:*
epsilon%o�:*
is_training( ^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����  �
flatten/ReshapeReshape(batch_normalization/FusedBatchNormV3:y:0flatten/Const:output:0*
T0*(
_output_shapes
:����������	�
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
�	�*
dtype0�
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������]

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������a
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*(
_output_shapes
:����������]
kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
%kernel/Regularizer/Abs/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0}
kernel/Regularizer/AbsAbs-kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:s
kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer/SumSumkernel/Regularizer/Abs:y:0#kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
kernel/Regularizer/addAddV2!kernel/Regularizer/Const:output:0kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
(kernel/Regularizer/Square/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:s
kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*%
valueB"             �
kernel/Regularizer/Sum_1Sumkernel/Regularizer/Square:y:0#kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: _
kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
kernel/Regularizer/mul_1Mul#kernel/Regularizer/mul_1/x:output:0!kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: |
kernel/Regularizer/add_1AddV2kernel/Regularizer/add:z:0kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: _
kernel/Regularizer_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
'kernel/Regularizer_1/Abs/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
kernel/Regularizer_1/AbsAbs/kernel/Regularizer_1/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
: u
kernel/Regularizer_1/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             �
kernel/Regularizer_1/SumSumkernel/Regularizer_1/Abs:y:0%kernel/Regularizer_1/Const_1:output:0*
T0*
_output_shapes
: _
kernel/Regularizer_1/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
kernel/Regularizer_1/mulMul#kernel/Regularizer_1/mul/x:output:0!kernel/Regularizer_1/Sum:output:0*
T0*
_output_shapes
: �
kernel/Regularizer_1/addAddV2#kernel/Regularizer_1/Const:output:0kernel/Regularizer_1/mul:z:0*
T0*
_output_shapes
: �
*kernel/Regularizer_1/Square/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
kernel/Regularizer_1/SquareSquare2kernel/Regularizer_1/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: u
kernel/Regularizer_1/Const_2Const*
_output_shapes
:*
dtype0*%
valueB"             �
kernel/Regularizer_1/Sum_1Sumkernel/Regularizer_1/Square:y:0%kernel/Regularizer_1/Const_2:output:0*
T0*
_output_shapes
: a
kernel/Regularizer_1/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
kernel/Regularizer_1/mul_1Mul%kernel/Regularizer_1/mul_1/x:output:0#kernel/Regularizer_1/Sum_1:output:0*
T0*
_output_shapes
: �
kernel/Regularizer_1/add_1AddV2kernel/Regularizer_1/add:z:0kernel/Regularizer_1/mul_1:z:0*
T0*
_output_shapes
: _
kernel/Regularizer_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
'kernel/Regularizer_2/Abs/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: 0*
dtype0�
kernel/Regularizer_2/AbsAbs/kernel/Regularizer_2/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
: 0u
kernel/Regularizer_2/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             �
kernel/Regularizer_2/SumSumkernel/Regularizer_2/Abs:y:0%kernel/Regularizer_2/Const_1:output:0*
T0*
_output_shapes
: _
kernel/Regularizer_2/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
kernel/Regularizer_2/mulMul#kernel/Regularizer_2/mul/x:output:0!kernel/Regularizer_2/Sum:output:0*
T0*
_output_shapes
: �
kernel/Regularizer_2/addAddV2#kernel/Regularizer_2/Const:output:0kernel/Regularizer_2/mul:z:0*
T0*
_output_shapes
: �
*kernel/Regularizer_2/Square/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: 0*
dtype0�
kernel/Regularizer_2/SquareSquare2kernel/Regularizer_2/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: 0u
kernel/Regularizer_2/Const_2Const*
_output_shapes
:*
dtype0*%
valueB"             �
kernel/Regularizer_2/Sum_1Sumkernel/Regularizer_2/Square:y:0%kernel/Regularizer_2/Const_2:output:0*
T0*
_output_shapes
: a
kernel/Regularizer_2/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
kernel/Regularizer_2/mul_1Mul%kernel/Regularizer_2/mul_1/x:output:0#kernel/Regularizer_2/Sum_1:output:0*
T0*
_output_shapes
: �
kernel/Regularizer_2/add_1AddV2kernel/Regularizer_2/add:z:0kernel/Regularizer_2/mul_1:z:0*
T0*
_output_shapes
: _
kernel/Regularizer_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
'kernel/Regularizer_3/Abs/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:0@*
dtype0�
kernel/Regularizer_3/AbsAbs/kernel/Regularizer_3/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:0@u
kernel/Regularizer_3/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             �
kernel/Regularizer_3/SumSumkernel/Regularizer_3/Abs:y:0%kernel/Regularizer_3/Const_1:output:0*
T0*
_output_shapes
: _
kernel/Regularizer_3/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
kernel/Regularizer_3/mulMul#kernel/Regularizer_3/mul/x:output:0!kernel/Regularizer_3/Sum:output:0*
T0*
_output_shapes
: �
kernel/Regularizer_3/addAddV2#kernel/Regularizer_3/Const:output:0kernel/Regularizer_3/mul:z:0*
T0*
_output_shapes
: �
*kernel/Regularizer_3/Square/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:0@*
dtype0�
kernel/Regularizer_3/SquareSquare2kernel/Regularizer_3/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:0@u
kernel/Regularizer_3/Const_2Const*
_output_shapes
:*
dtype0*%
valueB"             �
kernel/Regularizer_3/Sum_1Sumkernel/Regularizer_3/Square:y:0%kernel/Regularizer_3/Const_2:output:0*
T0*
_output_shapes
: a
kernel/Regularizer_3/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
kernel/Regularizer_3/mul_1Mul%kernel/Regularizer_3/mul_1/x:output:0#kernel/Regularizer_3/Sum_1:output:0*
T0*
_output_shapes
: �
kernel/Regularizer_3/add_1AddV2kernel/Regularizer_3/add:z:0kernel/Regularizer_3/mul_1:z:0*
T0*
_output_shapes
: _
kernel/Regularizer_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
'kernel/Regularizer_4/Abs/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
:@H*
dtype0�
kernel/Regularizer_4/AbsAbs/kernel/Regularizer_4/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:@Hu
kernel/Regularizer_4/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             �
kernel/Regularizer_4/SumSumkernel/Regularizer_4/Abs:y:0%kernel/Regularizer_4/Const_1:output:0*
T0*
_output_shapes
: _
kernel/Regularizer_4/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
kernel/Regularizer_4/mulMul#kernel/Regularizer_4/mul/x:output:0!kernel/Regularizer_4/Sum:output:0*
T0*
_output_shapes
: �
kernel/Regularizer_4/addAddV2#kernel/Regularizer_4/Const:output:0kernel/Regularizer_4/mul:z:0*
T0*
_output_shapes
: �
*kernel/Regularizer_4/Square/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
:@H*
dtype0�
kernel/Regularizer_4/SquareSquare2kernel/Regularizer_4/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@Hu
kernel/Regularizer_4/Const_2Const*
_output_shapes
:*
dtype0*%
valueB"             �
kernel/Regularizer_4/Sum_1Sumkernel/Regularizer_4/Square:y:0%kernel/Regularizer_4/Const_2:output:0*
T0*
_output_shapes
: a
kernel/Regularizer_4/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
kernel/Regularizer_4/mul_1Mul%kernel/Regularizer_4/mul_1/x:output:0#kernel/Regularizer_4/Sum_1:output:0*
T0*
_output_shapes
: �
kernel/Regularizer_4/add_1AddV2kernel/Regularizer_4/add:z:0kernel/Regularizer_4/mul_1:z:0*
T0*
_output_shapes
: j
IdentityIdentitydense_1/Relu:activations:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp4^batch_normalization/FusedBatchNormV3/ReadVariableOp6^batch_normalization/FusedBatchNormV3/ReadVariableOp_1#^batch_normalization/ReadVariableOp%^batch_normalization/ReadVariableOp_1^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp&^kernel/Regularizer/Abs/ReadVariableOp)^kernel/Regularizer/Square/ReadVariableOp(^kernel/Regularizer_1/Abs/ReadVariableOp+^kernel/Regularizer_1/Square/ReadVariableOp(^kernel/Regularizer_2/Abs/ReadVariableOp+^kernel/Regularizer_2/Square/ReadVariableOp(^kernel/Regularizer_3/Abs/ReadVariableOp+^kernel/Regularizer_3/Square/ReadVariableOp(^kernel/Regularizer_4/Abs/ReadVariableOp+^kernel/Regularizer_4/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������: : : : : : : : : : : : : : : : : : 2j
3batch_normalization/FusedBatchNormV3/ReadVariableOp3batch_normalization/FusedBatchNormV3/ReadVariableOp2n
5batch_normalization/FusedBatchNormV3/ReadVariableOp_15batch_normalization/FusedBatchNormV3/ReadVariableOp_12H
"batch_normalization/ReadVariableOp"batch_normalization/ReadVariableOp2L
$batch_normalization/ReadVariableOp_1$batch_normalization/ReadVariableOp_12>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2N
%kernel/Regularizer/Abs/ReadVariableOp%kernel/Regularizer/Abs/ReadVariableOp2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp2R
'kernel/Regularizer_1/Abs/ReadVariableOp'kernel/Regularizer_1/Abs/ReadVariableOp2X
*kernel/Regularizer_1/Square/ReadVariableOp*kernel/Regularizer_1/Square/ReadVariableOp2R
'kernel/Regularizer_2/Abs/ReadVariableOp'kernel/Regularizer_2/Abs/ReadVariableOp2X
*kernel/Regularizer_2/Square/ReadVariableOp*kernel/Regularizer_2/Square/ReadVariableOp2R
'kernel/Regularizer_3/Abs/ReadVariableOp'kernel/Regularizer_3/Abs/ReadVariableOp2X
*kernel/Regularizer_3/Square/ReadVariableOp*kernel/Regularizer_3/Square/ReadVariableOp2R
'kernel/Regularizer_4/Abs/ReadVariableOp'kernel/Regularizer_4/Abs/ReadVariableOp2X
*kernel/Regularizer_4/Square/ReadVariableOp*kernel/Regularizer_4/Square/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
O__inference_batch_normalization_layer_call_and_return_conditional_losses_258007

inputs%
readvariableop_resource:H'
readvariableop_1_resource:H6
(fusedbatchnormv3_readvariableop_resource:H8
*fusedbatchnormv3_readvariableop_1_resource:H
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:H*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:H*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:H*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:H*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������H:H:H:H:H:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������H�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������H: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������H
 
_user_specified_nameinputs
�
_
C__inference_flatten_layer_call_and_return_conditional_losses_256415

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"�����  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������	Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������	"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������H:W S
/
_output_shapes
:���������H
 
_user_specified_nameinputs
�
�
(__inference_encoder_layer_call_fn_257340

inputs!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: 0
	unknown_4:0#
	unknown_5:0@
	unknown_6:@#
	unknown_7:@H
	unknown_8:H
	unknown_9:H

unknown_10:H

unknown_11:H

unknown_12:H

unknown_13:
�	�

unknown_14:	�

unknown_15:
��

unknown_16:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*4
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_encoder_layer_call_and_return_conditional_losses_256527p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
D__inference_conv2d_1_layer_call_and_return_conditional_losses_256280

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�%kernel/Regularizer/Abs/ReadVariableOp�(kernel/Regularizer/Square/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:��������� ]
kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
%kernel/Regularizer/Abs/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0}
kernel/Regularizer/AbsAbs-kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
: s
kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer/SumSumkernel/Regularizer/Abs:y:0#kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
kernel/Regularizer/addAddV2!kernel/Regularizer/Const:output:0kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
(kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: s
kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*%
valueB"             �
kernel/Regularizer/Sum_1Sumkernel/Regularizer/Square:y:0#kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: _
kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
kernel/Regularizer/mul_1Mul#kernel/Regularizer/mul_1/x:output:0!kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: |
kernel/Regularizer/add_1AddV2kernel/Regularizer/add:z:0kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:��������� �
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp&^kernel/Regularizer/Abs/ReadVariableOp)^kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2N
%kernel/Regularizer/Abs/ReadVariableOp%kernel/Regularizer/Abs/ReadVariableOp2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
C__inference_dense_1_layer_call_and_return_conditional_losses_256445

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
D
(__inference_flatten_layer_call_fn_258048

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������	* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_256415a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������	"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������H:W S
/
_output_shapes
:���������H
 
_user_specified_nameinputs
�
�
4__inference_batch_normalization_layer_call_fn_257971

inputs
unknown:H
	unknown_0:H
	unknown_1:H
	unknown_2:H
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������H*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *X
fSRQ
O__inference_batch_normalization_layer_call_and_return_conditional_losses_256625w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������H`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������H: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������H
 
_user_specified_nameinputs
�
�
__inference_loss_fn_3_258174H
.kernel_regularizer_abs_readvariableop_resource:0@
identity��%kernel/Regularizer/Abs/ReadVariableOp�(kernel/Regularizer/Square/ReadVariableOp]
kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
%kernel/Regularizer/Abs/ReadVariableOpReadVariableOp.kernel_regularizer_abs_readvariableop_resource*&
_output_shapes
:0@*
dtype0}
kernel/Regularizer/AbsAbs-kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:0@s
kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer/SumSumkernel/Regularizer/Abs:y:0#kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
kernel/Regularizer/addAddV2!kernel/Regularizer/Const:output:0kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
(kernel/Regularizer/Square/ReadVariableOpReadVariableOp.kernel_regularizer_abs_readvariableop_resource*&
_output_shapes
:0@*
dtype0�
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:0@s
kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*%
valueB"             �
kernel/Regularizer/Sum_1Sumkernel/Regularizer/Square:y:0#kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: _
kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
kernel/Regularizer/mul_1Mul#kernel/Regularizer/mul_1/x:output:0!kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: |
kernel/Regularizer/add_1AddV2kernel/Regularizer/add:z:0kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: Z
IdentityIdentitykernel/Regularizer/add_1:z:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp&^kernel/Regularizer/Abs/ReadVariableOp)^kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2N
%kernel/Regularizer/Abs/ReadVariableOp%kernel/Regularizer/Abs/ReadVariableOp2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp
��
�
C__inference_encoder_layer_call_and_return_conditional_losses_257669

inputs?
%conv2d_conv2d_readvariableop_resource:4
&conv2d_biasadd_readvariableop_resource:A
'conv2d_1_conv2d_readvariableop_resource: 6
(conv2d_1_biasadd_readvariableop_resource: A
'conv2d_2_conv2d_readvariableop_resource: 06
(conv2d_2_biasadd_readvariableop_resource:0A
'conv2d_3_conv2d_readvariableop_resource:0@6
(conv2d_3_biasadd_readvariableop_resource:@A
'conv2d_4_conv2d_readvariableop_resource:@H6
(conv2d_4_biasadd_readvariableop_resource:H9
+batch_normalization_readvariableop_resource:H;
-batch_normalization_readvariableop_1_resource:HJ
<batch_normalization_fusedbatchnormv3_readvariableop_resource:HL
>batch_normalization_fusedbatchnormv3_readvariableop_1_resource:H8
$dense_matmul_readvariableop_resource:
�	�4
%dense_biasadd_readvariableop_resource:	�:
&dense_1_matmul_readvariableop_resource:
��6
'dense_1_biasadd_readvariableop_resource:	�
identity��"batch_normalization/AssignNewValue�$batch_normalization/AssignNewValue_1�3batch_normalization/FusedBatchNormV3/ReadVariableOp�5batch_normalization/FusedBatchNormV3/ReadVariableOp_1�"batch_normalization/ReadVariableOp�$batch_normalization/ReadVariableOp_1�conv2d/BiasAdd/ReadVariableOp�conv2d/Conv2D/ReadVariableOp�conv2d_1/BiasAdd/ReadVariableOp�conv2d_1/Conv2D/ReadVariableOp�conv2d_2/BiasAdd/ReadVariableOp�conv2d_2/Conv2D/ReadVariableOp�conv2d_3/BiasAdd/ReadVariableOp�conv2d_3/Conv2D/ReadVariableOp�conv2d_4/BiasAdd/ReadVariableOp�conv2d_4/Conv2D/ReadVariableOp�dense/BiasAdd/ReadVariableOp�dense/MatMul/ReadVariableOp�dense_1/BiasAdd/ReadVariableOp�dense_1/MatMul/ReadVariableOp�%kernel/Regularizer/Abs/ReadVariableOp�(kernel/Regularizer/Square/ReadVariableOp�'kernel/Regularizer_1/Abs/ReadVariableOp�*kernel/Regularizer_1/Square/ReadVariableOp�'kernel/Regularizer_2/Abs/ReadVariableOp�*kernel/Regularizer_2/Square/ReadVariableOp�'kernel/Regularizer_3/Abs/ReadVariableOp�*kernel/Regularizer_3/Square/ReadVariableOp�'kernel/Regularizer_4/Abs/ReadVariableOp�*kernel/Regularizer_4/Square/ReadVariableOp�
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d/Conv2DConv2Dinputs$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������f
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*/
_output_shapes
:����������
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
conv2d_1/Conv2DConv2Dconv2d/Relu:activations:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� *
paddingSAME*
strides
�
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� j
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:��������� �
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: 0*
dtype0�
conv2d_2/Conv2DConv2Dconv2d_1/Relu:activations:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������0*
paddingSAME*
strides
�
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype0�
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������0j
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:���������0�
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:0@*
dtype0�
conv2d_3/Conv2DConv2Dconv2d_2/Relu:activations:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
�
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@j
conv2d_3/ReluReluconv2d_3/BiasAdd:output:0*
T0*/
_output_shapes
:���������@�
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
:@H*
dtype0�
conv2d_4/Conv2DConv2Dconv2d_3/Relu:activations:0&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������H*
paddingSAME*
strides
�
conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes
:H*
dtype0�
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������Hj
conv2d_4/ReluReluconv2d_4/BiasAdd:output:0*
T0*/
_output_shapes
:���������H�
"batch_normalization/ReadVariableOpReadVariableOp+batch_normalization_readvariableop_resource*
_output_shapes
:H*
dtype0�
$batch_normalization/ReadVariableOp_1ReadVariableOp-batch_normalization_readvariableop_1_resource*
_output_shapes
:H*
dtype0�
3batch_normalization/FusedBatchNormV3/ReadVariableOpReadVariableOp<batch_normalization_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:H*
dtype0�
5batch_normalization/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp>batch_normalization_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:H*
dtype0�
$batch_normalization/FusedBatchNormV3FusedBatchNormV3conv2d_4/Relu:activations:0*batch_normalization/ReadVariableOp:value:0,batch_normalization/ReadVariableOp_1:value:0;batch_normalization/FusedBatchNormV3/ReadVariableOp:value:0=batch_normalization/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������H:H:H:H:H:*
epsilon%o�:*
exponential_avg_factor%
�#<�
"batch_normalization/AssignNewValueAssignVariableOp<batch_normalization_fusedbatchnormv3_readvariableop_resource1batch_normalization/FusedBatchNormV3:batch_mean:04^batch_normalization/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0�
$batch_normalization/AssignNewValue_1AssignVariableOp>batch_normalization_fusedbatchnormv3_readvariableop_1_resource5batch_normalization/FusedBatchNormV3:batch_variance:06^batch_normalization/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����  �
flatten/ReshapeReshape(batch_normalization/FusedBatchNormV3:y:0flatten/Const:output:0*
T0*(
_output_shapes
:����������	�
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
�	�*
dtype0�
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������]

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������a
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*(
_output_shapes
:����������]
kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
%kernel/Regularizer/Abs/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0}
kernel/Regularizer/AbsAbs-kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:s
kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer/SumSumkernel/Regularizer/Abs:y:0#kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
kernel/Regularizer/addAddV2!kernel/Regularizer/Const:output:0kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
(kernel/Regularizer/Square/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:s
kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*%
valueB"             �
kernel/Regularizer/Sum_1Sumkernel/Regularizer/Square:y:0#kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: _
kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
kernel/Regularizer/mul_1Mul#kernel/Regularizer/mul_1/x:output:0!kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: |
kernel/Regularizer/add_1AddV2kernel/Regularizer/add:z:0kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: _
kernel/Regularizer_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
'kernel/Regularizer_1/Abs/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
kernel/Regularizer_1/AbsAbs/kernel/Regularizer_1/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
: u
kernel/Regularizer_1/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             �
kernel/Regularizer_1/SumSumkernel/Regularizer_1/Abs:y:0%kernel/Regularizer_1/Const_1:output:0*
T0*
_output_shapes
: _
kernel/Regularizer_1/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
kernel/Regularizer_1/mulMul#kernel/Regularizer_1/mul/x:output:0!kernel/Regularizer_1/Sum:output:0*
T0*
_output_shapes
: �
kernel/Regularizer_1/addAddV2#kernel/Regularizer_1/Const:output:0kernel/Regularizer_1/mul:z:0*
T0*
_output_shapes
: �
*kernel/Regularizer_1/Square/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
kernel/Regularizer_1/SquareSquare2kernel/Regularizer_1/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: u
kernel/Regularizer_1/Const_2Const*
_output_shapes
:*
dtype0*%
valueB"             �
kernel/Regularizer_1/Sum_1Sumkernel/Regularizer_1/Square:y:0%kernel/Regularizer_1/Const_2:output:0*
T0*
_output_shapes
: a
kernel/Regularizer_1/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
kernel/Regularizer_1/mul_1Mul%kernel/Regularizer_1/mul_1/x:output:0#kernel/Regularizer_1/Sum_1:output:0*
T0*
_output_shapes
: �
kernel/Regularizer_1/add_1AddV2kernel/Regularizer_1/add:z:0kernel/Regularizer_1/mul_1:z:0*
T0*
_output_shapes
: _
kernel/Regularizer_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
'kernel/Regularizer_2/Abs/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: 0*
dtype0�
kernel/Regularizer_2/AbsAbs/kernel/Regularizer_2/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
: 0u
kernel/Regularizer_2/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             �
kernel/Regularizer_2/SumSumkernel/Regularizer_2/Abs:y:0%kernel/Regularizer_2/Const_1:output:0*
T0*
_output_shapes
: _
kernel/Regularizer_2/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
kernel/Regularizer_2/mulMul#kernel/Regularizer_2/mul/x:output:0!kernel/Regularizer_2/Sum:output:0*
T0*
_output_shapes
: �
kernel/Regularizer_2/addAddV2#kernel/Regularizer_2/Const:output:0kernel/Regularizer_2/mul:z:0*
T0*
_output_shapes
: �
*kernel/Regularizer_2/Square/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: 0*
dtype0�
kernel/Regularizer_2/SquareSquare2kernel/Regularizer_2/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: 0u
kernel/Regularizer_2/Const_2Const*
_output_shapes
:*
dtype0*%
valueB"             �
kernel/Regularizer_2/Sum_1Sumkernel/Regularizer_2/Square:y:0%kernel/Regularizer_2/Const_2:output:0*
T0*
_output_shapes
: a
kernel/Regularizer_2/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
kernel/Regularizer_2/mul_1Mul%kernel/Regularizer_2/mul_1/x:output:0#kernel/Regularizer_2/Sum_1:output:0*
T0*
_output_shapes
: �
kernel/Regularizer_2/add_1AddV2kernel/Regularizer_2/add:z:0kernel/Regularizer_2/mul_1:z:0*
T0*
_output_shapes
: _
kernel/Regularizer_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
'kernel/Regularizer_3/Abs/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:0@*
dtype0�
kernel/Regularizer_3/AbsAbs/kernel/Regularizer_3/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:0@u
kernel/Regularizer_3/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             �
kernel/Regularizer_3/SumSumkernel/Regularizer_3/Abs:y:0%kernel/Regularizer_3/Const_1:output:0*
T0*
_output_shapes
: _
kernel/Regularizer_3/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
kernel/Regularizer_3/mulMul#kernel/Regularizer_3/mul/x:output:0!kernel/Regularizer_3/Sum:output:0*
T0*
_output_shapes
: �
kernel/Regularizer_3/addAddV2#kernel/Regularizer_3/Const:output:0kernel/Regularizer_3/mul:z:0*
T0*
_output_shapes
: �
*kernel/Regularizer_3/Square/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:0@*
dtype0�
kernel/Regularizer_3/SquareSquare2kernel/Regularizer_3/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:0@u
kernel/Regularizer_3/Const_2Const*
_output_shapes
:*
dtype0*%
valueB"             �
kernel/Regularizer_3/Sum_1Sumkernel/Regularizer_3/Square:y:0%kernel/Regularizer_3/Const_2:output:0*
T0*
_output_shapes
: a
kernel/Regularizer_3/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
kernel/Regularizer_3/mul_1Mul%kernel/Regularizer_3/mul_1/x:output:0#kernel/Regularizer_3/Sum_1:output:0*
T0*
_output_shapes
: �
kernel/Regularizer_3/add_1AddV2kernel/Regularizer_3/add:z:0kernel/Regularizer_3/mul_1:z:0*
T0*
_output_shapes
: _
kernel/Regularizer_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
'kernel/Regularizer_4/Abs/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
:@H*
dtype0�
kernel/Regularizer_4/AbsAbs/kernel/Regularizer_4/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:@Hu
kernel/Regularizer_4/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             �
kernel/Regularizer_4/SumSumkernel/Regularizer_4/Abs:y:0%kernel/Regularizer_4/Const_1:output:0*
T0*
_output_shapes
: _
kernel/Regularizer_4/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
kernel/Regularizer_4/mulMul#kernel/Regularizer_4/mul/x:output:0!kernel/Regularizer_4/Sum:output:0*
T0*
_output_shapes
: �
kernel/Regularizer_4/addAddV2#kernel/Regularizer_4/Const:output:0kernel/Regularizer_4/mul:z:0*
T0*
_output_shapes
: �
*kernel/Regularizer_4/Square/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
:@H*
dtype0�
kernel/Regularizer_4/SquareSquare2kernel/Regularizer_4/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@Hu
kernel/Regularizer_4/Const_2Const*
_output_shapes
:*
dtype0*%
valueB"             �
kernel/Regularizer_4/Sum_1Sumkernel/Regularizer_4/Square:y:0%kernel/Regularizer_4/Const_2:output:0*
T0*
_output_shapes
: a
kernel/Regularizer_4/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
kernel/Regularizer_4/mul_1Mul%kernel/Regularizer_4/mul_1/x:output:0#kernel/Regularizer_4/Sum_1:output:0*
T0*
_output_shapes
: �
kernel/Regularizer_4/add_1AddV2kernel/Regularizer_4/add:z:0kernel/Regularizer_4/mul_1:z:0*
T0*
_output_shapes
: j
IdentityIdentitydense_1/Relu:activations:0^NoOp*
T0*(
_output_shapes
:�����������	
NoOpNoOp#^batch_normalization/AssignNewValue%^batch_normalization/AssignNewValue_14^batch_normalization/FusedBatchNormV3/ReadVariableOp6^batch_normalization/FusedBatchNormV3/ReadVariableOp_1#^batch_normalization/ReadVariableOp%^batch_normalization/ReadVariableOp_1^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp&^kernel/Regularizer/Abs/ReadVariableOp)^kernel/Regularizer/Square/ReadVariableOp(^kernel/Regularizer_1/Abs/ReadVariableOp+^kernel/Regularizer_1/Square/ReadVariableOp(^kernel/Regularizer_2/Abs/ReadVariableOp+^kernel/Regularizer_2/Square/ReadVariableOp(^kernel/Regularizer_3/Abs/ReadVariableOp+^kernel/Regularizer_3/Square/ReadVariableOp(^kernel/Regularizer_4/Abs/ReadVariableOp+^kernel/Regularizer_4/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������: : : : : : : : : : : : : : : : : : 2H
"batch_normalization/AssignNewValue"batch_normalization/AssignNewValue2L
$batch_normalization/AssignNewValue_1$batch_normalization/AssignNewValue_12j
3batch_normalization/FusedBatchNormV3/ReadVariableOp3batch_normalization/FusedBatchNormV3/ReadVariableOp2n
5batch_normalization/FusedBatchNormV3/ReadVariableOp_15batch_normalization/FusedBatchNormV3/ReadVariableOp_12H
"batch_normalization/ReadVariableOp"batch_normalization/ReadVariableOp2L
$batch_normalization/ReadVariableOp_1$batch_normalization/ReadVariableOp_12>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2N
%kernel/Regularizer/Abs/ReadVariableOp%kernel/Regularizer/Abs/ReadVariableOp2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp2R
'kernel/Regularizer_1/Abs/ReadVariableOp'kernel/Regularizer_1/Abs/ReadVariableOp2X
*kernel/Regularizer_1/Square/ReadVariableOp*kernel/Regularizer_1/Square/ReadVariableOp2R
'kernel/Regularizer_2/Abs/ReadVariableOp'kernel/Regularizer_2/Abs/ReadVariableOp2X
*kernel/Regularizer_2/Square/ReadVariableOp*kernel/Regularizer_2/Square/ReadVariableOp2R
'kernel/Regularizer_3/Abs/ReadVariableOp'kernel/Regularizer_3/Abs/ReadVariableOp2X
*kernel/Regularizer_3/Square/ReadVariableOp*kernel/Regularizer_3/Square/ReadVariableOp2R
'kernel/Regularizer_4/Abs/ReadVariableOp'kernel/Regularizer_4/Abs/ReadVariableOp2X
*kernel/Regularizer_4/Square/ReadVariableOp*kernel/Regularizer_4/Square/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
)__inference_conv2d_1_layer_call_fn_257743

inputs!
unknown: 
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_1_layer_call_and_return_conditional_losses_256280w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:��������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
D__inference_conv2d_1_layer_call_and_return_conditional_losses_257769

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�%kernel/Regularizer/Abs/ReadVariableOp�(kernel/Regularizer/Square/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:��������� ]
kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
%kernel/Regularizer/Abs/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0}
kernel/Regularizer/AbsAbs-kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
: s
kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer/SumSumkernel/Regularizer/Abs:y:0#kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
kernel/Regularizer/addAddV2!kernel/Regularizer/Const:output:0kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
(kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: s
kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*%
valueB"             �
kernel/Regularizer/Sum_1Sumkernel/Regularizer/Square:y:0#kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: _
kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
kernel/Regularizer/mul_1Mul#kernel/Regularizer/mul_1/x:output:0!kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: |
kernel/Regularizer/add_1AddV2kernel/Regularizer/add:z:0kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:��������� �
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp&^kernel/Regularizer/Abs/ReadVariableOp)^kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2N
%kernel/Regularizer/Abs/ReadVariableOp%kernel/Regularizer/Abs/ReadVariableOp2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
O__inference_batch_normalization_layer_call_and_return_conditional_losses_258043

inputs%
readvariableop_resource:H'
readvariableop_1_resource:H6
(fusedbatchnormv3_readvariableop_resource:H8
*fusedbatchnormv3_readvariableop_1_resource:H
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:H*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:H*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:H*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:H*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������H:H:H:H:H:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0k
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:���������H�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������H: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:���������H
 
_user_specified_nameinputs
�
�
O__inference_batch_normalization_layer_call_and_return_conditional_losses_256625

inputs%
readvariableop_resource:H'
readvariableop_1_resource:H6
(fusedbatchnormv3_readvariableop_resource:H8
*fusedbatchnormv3_readvariableop_1_resource:H
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:H*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:H*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:H*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:H*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������H:H:H:H:H:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0k
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:���������H�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������H: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:���������H
 
_user_specified_nameinputs
�
�
O__inference_batch_normalization_layer_call_and_return_conditional_losses_256204

inputs%
readvariableop_resource:H'
readvariableop_1_resource:H6
(fusedbatchnormv3_readvariableop_resource:H8
*fusedbatchnormv3_readvariableop_1_resource:H
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:H*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:H*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:H*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:H*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������H:H:H:H:H:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������H�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������H: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������H
 
_user_specified_nameinputs
�
�
)__inference_conv2d_2_layer_call_fn_257793

inputs!
unknown: 0
	unknown_0:0
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_2_layer_call_and_return_conditional_losses_256312w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������0`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:��������� : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:��������� 
 
_user_specified_nameinputs
�

�
A__inference_dense_layer_call_and_return_conditional_losses_256428

inputs2
matmul_readvariableop_resource:
�	�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
�	�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������	: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������	
 
_user_specified_nameinputs
�
�
B__inference_conv2d_layer_call_and_return_conditional_losses_257719

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�%kernel/Regularizer/Abs/ReadVariableOp�(kernel/Regularizer/Square/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������]
kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
%kernel/Regularizer/Abs/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0}
kernel/Regularizer/AbsAbs-kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:s
kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer/SumSumkernel/Regularizer/Abs:y:0#kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
kernel/Regularizer/addAddV2!kernel/Regularizer/Const:output:0kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
(kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:s
kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*%
valueB"             �
kernel/Regularizer/Sum_1Sumkernel/Regularizer/Square:y:0#kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: _
kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
kernel/Regularizer/mul_1Mul#kernel/Regularizer/mul_1/x:output:0!kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: |
kernel/Regularizer/add_1AddV2kernel/Regularizer/add:z:0kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:����������
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp&^kernel/Regularizer/Abs/ReadVariableOp)^kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2N
%kernel/Regularizer/Abs/ReadVariableOp%kernel/Regularizer/Abs/ReadVariableOp2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
(__inference_encoder_layer_call_fn_256933
input_1!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: 0
	unknown_4:0#
	unknown_5:0@
	unknown_6:@#
	unknown_7:@H
	unknown_8:H
	unknown_9:H

unknown_10:H

unknown_11:H

unknown_12:H

unknown_13:
�	�

unknown_14:	�

unknown_15:
��

unknown_16:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_encoder_layer_call_and_return_conditional_losses_256853p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:���������
!
_user_specified_name	input_1
�
�
O__inference_batch_normalization_layer_call_and_return_conditional_losses_256399

inputs%
readvariableop_resource:H'
readvariableop_1_resource:H6
(fusedbatchnormv3_readvariableop_resource:H8
*fusedbatchnormv3_readvariableop_1_resource:H
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:H*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:H*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:H*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:H*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������H:H:H:H:H:*
epsilon%o�:*
is_training( k
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:���������H�
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������H: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:���������H
 
_user_specified_nameinputs
��
�
C__inference_encoder_layer_call_and_return_conditional_losses_256527

inputs'
conv2d_256249:
conv2d_256251:)
conv2d_1_256281: 
conv2d_1_256283: )
conv2d_2_256313: 0
conv2d_2_256315:0)
conv2d_3_256345:0@
conv2d_3_256347:@)
conv2d_4_256377:@H
conv2d_4_256379:H(
batch_normalization_256400:H(
batch_normalization_256402:H(
batch_normalization_256404:H(
batch_normalization_256406:H 
dense_256429:
�	�
dense_256431:	�"
dense_1_256446:
��
dense_1_256448:	�
identity��+batch_normalization/StatefulPartitionedCall�conv2d/StatefulPartitionedCall� conv2d_1/StatefulPartitionedCall� conv2d_2/StatefulPartitionedCall� conv2d_3/StatefulPartitionedCall� conv2d_4/StatefulPartitionedCall�dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�%kernel/Regularizer/Abs/ReadVariableOp�(kernel/Regularizer/Square/ReadVariableOp�'kernel/Regularizer_1/Abs/ReadVariableOp�*kernel/Regularizer_1/Square/ReadVariableOp�'kernel/Regularizer_2/Abs/ReadVariableOp�*kernel/Regularizer_2/Square/ReadVariableOp�'kernel/Regularizer_3/Abs/ReadVariableOp�*kernel/Regularizer_3/Square/ReadVariableOp�'kernel/Regularizer_4/Abs/ReadVariableOp�*kernel/Regularizer_4/Square/ReadVariableOp�
conv2d/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_256249conv2d_256251*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv2d_layer_call_and_return_conditional_losses_256248�
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0conv2d_1_256281conv2d_1_256283*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_1_layer_call_and_return_conditional_losses_256280�
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0conv2d_2_256313conv2d_2_256315*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_2_layer_call_and_return_conditional_losses_256312�
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0conv2d_3_256345conv2d_3_256347*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_3_layer_call_and_return_conditional_losses_256344�
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0conv2d_4_256377conv2d_4_256379*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������H*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_4_layer_call_and_return_conditional_losses_256376�
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0batch_normalization_256400batch_normalization_256402batch_normalization_256404batch_normalization_256406*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������H*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *X
fSRQ
O__inference_batch_normalization_layer_call_and_return_conditional_losses_256399�
flatten/PartitionedCallPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������	* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_256415�
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_256429dense_256431*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_256428�
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_256446dense_1_256448*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_256445]
kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    {
%kernel/Regularizer/Abs/ReadVariableOpReadVariableOpconv2d_256249*&
_output_shapes
:*
dtype0}
kernel/Regularizer/AbsAbs-kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:s
kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer/SumSumkernel/Regularizer/Abs:y:0#kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
kernel/Regularizer/addAddV2!kernel/Regularizer/Const:output:0kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: ~
(kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_256249*&
_output_shapes
:*
dtype0�
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:s
kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*%
valueB"             �
kernel/Regularizer/Sum_1Sumkernel/Regularizer/Square:y:0#kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: _
kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
kernel/Regularizer/mul_1Mul#kernel/Regularizer/mul_1/x:output:0!kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: |
kernel/Regularizer/add_1AddV2kernel/Regularizer/add:z:0kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: _
kernel/Regularizer_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
'kernel/Regularizer_1/Abs/ReadVariableOpReadVariableOpconv2d_1_256281*&
_output_shapes
: *
dtype0�
kernel/Regularizer_1/AbsAbs/kernel/Regularizer_1/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
: u
kernel/Regularizer_1/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             �
kernel/Regularizer_1/SumSumkernel/Regularizer_1/Abs:y:0%kernel/Regularizer_1/Const_1:output:0*
T0*
_output_shapes
: _
kernel/Regularizer_1/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
kernel/Regularizer_1/mulMul#kernel/Regularizer_1/mul/x:output:0!kernel/Regularizer_1/Sum:output:0*
T0*
_output_shapes
: �
kernel/Regularizer_1/addAddV2#kernel/Regularizer_1/Const:output:0kernel/Regularizer_1/mul:z:0*
T0*
_output_shapes
: �
*kernel/Regularizer_1/Square/ReadVariableOpReadVariableOpconv2d_1_256281*&
_output_shapes
: *
dtype0�
kernel/Regularizer_1/SquareSquare2kernel/Regularizer_1/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: u
kernel/Regularizer_1/Const_2Const*
_output_shapes
:*
dtype0*%
valueB"             �
kernel/Regularizer_1/Sum_1Sumkernel/Regularizer_1/Square:y:0%kernel/Regularizer_1/Const_2:output:0*
T0*
_output_shapes
: a
kernel/Regularizer_1/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
kernel/Regularizer_1/mul_1Mul%kernel/Regularizer_1/mul_1/x:output:0#kernel/Regularizer_1/Sum_1:output:0*
T0*
_output_shapes
: �
kernel/Regularizer_1/add_1AddV2kernel/Regularizer_1/add:z:0kernel/Regularizer_1/mul_1:z:0*
T0*
_output_shapes
: _
kernel/Regularizer_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
'kernel/Regularizer_2/Abs/ReadVariableOpReadVariableOpconv2d_2_256313*&
_output_shapes
: 0*
dtype0�
kernel/Regularizer_2/AbsAbs/kernel/Regularizer_2/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
: 0u
kernel/Regularizer_2/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             �
kernel/Regularizer_2/SumSumkernel/Regularizer_2/Abs:y:0%kernel/Regularizer_2/Const_1:output:0*
T0*
_output_shapes
: _
kernel/Regularizer_2/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
kernel/Regularizer_2/mulMul#kernel/Regularizer_2/mul/x:output:0!kernel/Regularizer_2/Sum:output:0*
T0*
_output_shapes
: �
kernel/Regularizer_2/addAddV2#kernel/Regularizer_2/Const:output:0kernel/Regularizer_2/mul:z:0*
T0*
_output_shapes
: �
*kernel/Regularizer_2/Square/ReadVariableOpReadVariableOpconv2d_2_256313*&
_output_shapes
: 0*
dtype0�
kernel/Regularizer_2/SquareSquare2kernel/Regularizer_2/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: 0u
kernel/Regularizer_2/Const_2Const*
_output_shapes
:*
dtype0*%
valueB"             �
kernel/Regularizer_2/Sum_1Sumkernel/Regularizer_2/Square:y:0%kernel/Regularizer_2/Const_2:output:0*
T0*
_output_shapes
: a
kernel/Regularizer_2/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
kernel/Regularizer_2/mul_1Mul%kernel/Regularizer_2/mul_1/x:output:0#kernel/Regularizer_2/Sum_1:output:0*
T0*
_output_shapes
: �
kernel/Regularizer_2/add_1AddV2kernel/Regularizer_2/add:z:0kernel/Regularizer_2/mul_1:z:0*
T0*
_output_shapes
: _
kernel/Regularizer_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
'kernel/Regularizer_3/Abs/ReadVariableOpReadVariableOpconv2d_3_256345*&
_output_shapes
:0@*
dtype0�
kernel/Regularizer_3/AbsAbs/kernel/Regularizer_3/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:0@u
kernel/Regularizer_3/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             �
kernel/Regularizer_3/SumSumkernel/Regularizer_3/Abs:y:0%kernel/Regularizer_3/Const_1:output:0*
T0*
_output_shapes
: _
kernel/Regularizer_3/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
kernel/Regularizer_3/mulMul#kernel/Regularizer_3/mul/x:output:0!kernel/Regularizer_3/Sum:output:0*
T0*
_output_shapes
: �
kernel/Regularizer_3/addAddV2#kernel/Regularizer_3/Const:output:0kernel/Regularizer_3/mul:z:0*
T0*
_output_shapes
: �
*kernel/Regularizer_3/Square/ReadVariableOpReadVariableOpconv2d_3_256345*&
_output_shapes
:0@*
dtype0�
kernel/Regularizer_3/SquareSquare2kernel/Regularizer_3/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:0@u
kernel/Regularizer_3/Const_2Const*
_output_shapes
:*
dtype0*%
valueB"             �
kernel/Regularizer_3/Sum_1Sumkernel/Regularizer_3/Square:y:0%kernel/Regularizer_3/Const_2:output:0*
T0*
_output_shapes
: a
kernel/Regularizer_3/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
kernel/Regularizer_3/mul_1Mul%kernel/Regularizer_3/mul_1/x:output:0#kernel/Regularizer_3/Sum_1:output:0*
T0*
_output_shapes
: �
kernel/Regularizer_3/add_1AddV2kernel/Regularizer_3/add:z:0kernel/Regularizer_3/mul_1:z:0*
T0*
_output_shapes
: _
kernel/Regularizer_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
'kernel/Regularizer_4/Abs/ReadVariableOpReadVariableOpconv2d_4_256377*&
_output_shapes
:@H*
dtype0�
kernel/Regularizer_4/AbsAbs/kernel/Regularizer_4/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:@Hu
kernel/Regularizer_4/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             �
kernel/Regularizer_4/SumSumkernel/Regularizer_4/Abs:y:0%kernel/Regularizer_4/Const_1:output:0*
T0*
_output_shapes
: _
kernel/Regularizer_4/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
kernel/Regularizer_4/mulMul#kernel/Regularizer_4/mul/x:output:0!kernel/Regularizer_4/Sum:output:0*
T0*
_output_shapes
: �
kernel/Regularizer_4/addAddV2#kernel/Regularizer_4/Const:output:0kernel/Regularizer_4/mul:z:0*
T0*
_output_shapes
: �
*kernel/Regularizer_4/Square/ReadVariableOpReadVariableOpconv2d_4_256377*&
_output_shapes
:@H*
dtype0�
kernel/Regularizer_4/SquareSquare2kernel/Regularizer_4/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@Hu
kernel/Regularizer_4/Const_2Const*
_output_shapes
:*
dtype0*%
valueB"             �
kernel/Regularizer_4/Sum_1Sumkernel/Regularizer_4/Square:y:0%kernel/Regularizer_4/Const_2:output:0*
T0*
_output_shapes
: a
kernel/Regularizer_4/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
kernel/Regularizer_4/mul_1Mul%kernel/Regularizer_4/mul_1/x:output:0#kernel/Regularizer_4/Sum_1:output:0*
T0*
_output_shapes
: �
kernel/Regularizer_4/add_1AddV2kernel/Regularizer_4/add:z:0kernel/Regularizer_4/mul_1:z:0*
T0*
_output_shapes
: x
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp,^batch_normalization/StatefulPartitionedCall^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall&^kernel/Regularizer/Abs/ReadVariableOp)^kernel/Regularizer/Square/ReadVariableOp(^kernel/Regularizer_1/Abs/ReadVariableOp+^kernel/Regularizer_1/Square/ReadVariableOp(^kernel/Regularizer_2/Abs/ReadVariableOp+^kernel/Regularizer_2/Square/ReadVariableOp(^kernel/Regularizer_3/Abs/ReadVariableOp+^kernel/Regularizer_3/Square/ReadVariableOp(^kernel/Regularizer_4/Abs/ReadVariableOp+^kernel/Regularizer_4/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������: : : : : : : : : : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2N
%kernel/Regularizer/Abs/ReadVariableOp%kernel/Regularizer/Abs/ReadVariableOp2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp2R
'kernel/Regularizer_1/Abs/ReadVariableOp'kernel/Regularizer_1/Abs/ReadVariableOp2X
*kernel/Regularizer_1/Square/ReadVariableOp*kernel/Regularizer_1/Square/ReadVariableOp2R
'kernel/Regularizer_2/Abs/ReadVariableOp'kernel/Regularizer_2/Abs/ReadVariableOp2X
*kernel/Regularizer_2/Square/ReadVariableOp*kernel/Regularizer_2/Square/ReadVariableOp2R
'kernel/Regularizer_3/Abs/ReadVariableOp'kernel/Regularizer_3/Abs/ReadVariableOp2X
*kernel/Regularizer_3/Square/ReadVariableOp*kernel/Regularizer_3/Square/ReadVariableOp2R
'kernel/Regularizer_4/Abs/ReadVariableOp'kernel/Regularizer_4/Abs/ReadVariableOp2X
*kernel/Regularizer_4/Square/ReadVariableOp*kernel/Regularizer_4/Square/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
&__inference_dense_layer_call_fn_258063

inputs
unknown:
�	�
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_256428p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������	: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������	
 
_user_specified_nameinputs
�
�
(__inference_dense_1_layer_call_fn_258083

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_256445p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
D__inference_conv2d_3_layer_call_and_return_conditional_losses_257869

inputs8
conv2d_readvariableop_resource:0@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�%kernel/Regularizer/Abs/ReadVariableOp�(kernel/Regularizer/Square/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:0@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������@]
kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
%kernel/Regularizer/Abs/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:0@*
dtype0}
kernel/Regularizer/AbsAbs-kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:0@s
kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer/SumSumkernel/Regularizer/Abs:y:0#kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
kernel/Regularizer/addAddV2!kernel/Regularizer/Const:output:0kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
(kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:0@*
dtype0�
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:0@s
kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*%
valueB"             �
kernel/Regularizer/Sum_1Sumkernel/Regularizer/Square:y:0#kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: _
kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
kernel/Regularizer/mul_1Mul#kernel/Regularizer/mul_1/x:output:0!kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: |
kernel/Regularizer/add_1AddV2kernel/Regularizer/add:z:0kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������@�
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp&^kernel/Regularizer/Abs/ReadVariableOp)^kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������0: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2N
%kernel/Regularizer/Abs/ReadVariableOp%kernel/Regularizer/Abs/ReadVariableOp2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:���������0
 
_user_specified_nameinputs
�
�
(__inference_encoder_layer_call_fn_257381

inputs!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: 0
	unknown_4:0#
	unknown_5:0@
	unknown_6:@#
	unknown_7:@H
	unknown_8:H
	unknown_9:H

unknown_10:H

unknown_11:H

unknown_12:H

unknown_13:
�	�

unknown_14:	�

unknown_15:
��

unknown_16:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_encoder_layer_call_and_return_conditional_losses_256853p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
__inference_loss_fn_0_258114H
.kernel_regularizer_abs_readvariableop_resource:
identity��%kernel/Regularizer/Abs/ReadVariableOp�(kernel/Regularizer/Square/ReadVariableOp]
kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
%kernel/Regularizer/Abs/ReadVariableOpReadVariableOp.kernel_regularizer_abs_readvariableop_resource*&
_output_shapes
:*
dtype0}
kernel/Regularizer/AbsAbs-kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:s
kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer/SumSumkernel/Regularizer/Abs:y:0#kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
kernel/Regularizer/addAddV2!kernel/Regularizer/Const:output:0kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
(kernel/Regularizer/Square/ReadVariableOpReadVariableOp.kernel_regularizer_abs_readvariableop_resource*&
_output_shapes
:*
dtype0�
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:s
kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*%
valueB"             �
kernel/Regularizer/Sum_1Sumkernel/Regularizer/Square:y:0#kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: _
kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
kernel/Regularizer/mul_1Mul#kernel/Regularizer/mul_1/x:output:0!kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: |
kernel/Regularizer/add_1AddV2kernel/Regularizer/add:z:0kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: Z
IdentityIdentitykernel/Regularizer/add_1:z:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp&^kernel/Regularizer/Abs/ReadVariableOp)^kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2N
%kernel/Regularizer/Abs/ReadVariableOp%kernel/Regularizer/Abs/ReadVariableOp2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp
�
�
B__inference_conv2d_layer_call_and_return_conditional_losses_256248

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�%kernel/Regularizer/Abs/ReadVariableOp�(kernel/Regularizer/Square/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������]
kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
%kernel/Regularizer/Abs/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0}
kernel/Regularizer/AbsAbs-kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:s
kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer/SumSumkernel/Regularizer/Abs:y:0#kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
kernel/Regularizer/addAddV2!kernel/Regularizer/Const:output:0kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
(kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:s
kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*%
valueB"             �
kernel/Regularizer/Sum_1Sumkernel/Regularizer/Square:y:0#kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: _
kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
kernel/Regularizer/mul_1Mul#kernel/Regularizer/mul_1/x:output:0!kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: |
kernel/Regularizer/add_1AddV2kernel/Regularizer/add:z:0kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:����������
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp&^kernel/Regularizer/Abs/ReadVariableOp)^kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2N
%kernel/Regularizer/Abs/ReadVariableOp%kernel/Regularizer/Abs/ReadVariableOp2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
__inference_loss_fn_4_258194H
.kernel_regularizer_abs_readvariableop_resource:@H
identity��%kernel/Regularizer/Abs/ReadVariableOp�(kernel/Regularizer/Square/ReadVariableOp]
kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
%kernel/Regularizer/Abs/ReadVariableOpReadVariableOp.kernel_regularizer_abs_readvariableop_resource*&
_output_shapes
:@H*
dtype0}
kernel/Regularizer/AbsAbs-kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:@Hs
kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer/SumSumkernel/Regularizer/Abs:y:0#kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
kernel/Regularizer/addAddV2!kernel/Regularizer/Const:output:0kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
(kernel/Regularizer/Square/ReadVariableOpReadVariableOp.kernel_regularizer_abs_readvariableop_resource*&
_output_shapes
:@H*
dtype0�
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@Hs
kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*%
valueB"             �
kernel/Regularizer/Sum_1Sumkernel/Regularizer/Square:y:0#kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: _
kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
kernel/Regularizer/mul_1Mul#kernel/Regularizer/mul_1/x:output:0!kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: |
kernel/Regularizer/add_1AddV2kernel/Regularizer/add:z:0kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: Z
IdentityIdentitykernel/Regularizer/add_1:z:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp&^kernel/Regularizer/Abs/ReadVariableOp)^kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2N
%kernel/Regularizer/Abs/ReadVariableOp%kernel/Regularizer/Abs/ReadVariableOp2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp
�-
�
__inference__traced_save_258271
file_prefix,
(savev2_conv2d_kernel_read_readvariableop*
&savev2_conv2d_bias_read_readvariableop.
*savev2_conv2d_1_kernel_read_readvariableop,
(savev2_conv2d_1_bias_read_readvariableop.
*savev2_conv2d_2_kernel_read_readvariableop,
(savev2_conv2d_2_bias_read_readvariableop.
*savev2_conv2d_3_kernel_read_readvariableop,
(savev2_conv2d_3_bias_read_readvariableop.
*savev2_conv2d_4_kernel_read_readvariableop,
(savev2_conv2d_4_bias_read_readvariableop8
4savev2_batch_normalization_gamma_read_readvariableop7
3savev2_batch_normalization_beta_read_readvariableop>
:savev2_batch_normalization_moving_mean_read_readvariableopB
>savev2_batch_normalization_moving_variance_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop
savev2_const

identity_1��MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*9
value0B.B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0(savev2_conv2d_kernel_read_readvariableop&savev2_conv2d_bias_read_readvariableop*savev2_conv2d_1_kernel_read_readvariableop(savev2_conv2d_1_bias_read_readvariableop*savev2_conv2d_2_kernel_read_readvariableop(savev2_conv2d_2_bias_read_readvariableop*savev2_conv2d_3_kernel_read_readvariableop(savev2_conv2d_3_bias_read_readvariableop*savev2_conv2d_4_kernel_read_readvariableop(savev2_conv2d_4_bias_read_readvariableop4savev2_batch_normalization_gamma_read_readvariableop3savev2_batch_normalization_beta_read_readvariableop:savev2_batch_normalization_moving_mean_read_readvariableop>savev2_batch_normalization_moving_variance_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *!
dtypes
2�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*�
_input_shapes�
�: ::: : : 0:0:0@:@:@H:H:H:H:H:H:
�	�:�:
��:�: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: 0: 

_output_shapes
:0:,(
&
_output_shapes
:0@: 

_output_shapes
:@:,	(
&
_output_shapes
:@H: 


_output_shapes
:H: 

_output_shapes
:H: 

_output_shapes
:H: 

_output_shapes
:H: 

_output_shapes
:H:&"
 
_output_shapes
:
�	�:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:

_output_shapes
: 
�
�
D__inference_conv2d_3_layer_call_and_return_conditional_losses_256344

inputs8
conv2d_readvariableop_resource:0@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�%kernel/Regularizer/Abs/ReadVariableOp�(kernel/Regularizer/Square/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:0@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������@]
kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
%kernel/Regularizer/Abs/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:0@*
dtype0}
kernel/Regularizer/AbsAbs-kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:0@s
kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer/SumSumkernel/Regularizer/Abs:y:0#kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
kernel/Regularizer/addAddV2!kernel/Regularizer/Const:output:0kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
(kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:0@*
dtype0�
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:0@s
kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*%
valueB"             �
kernel/Regularizer/Sum_1Sumkernel/Regularizer/Square:y:0#kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: _
kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
kernel/Regularizer/mul_1Mul#kernel/Regularizer/mul_1/x:output:0!kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: |
kernel/Regularizer/add_1AddV2kernel/Regularizer/add:z:0kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������@�
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp&^kernel/Regularizer/Abs/ReadVariableOp)^kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������0: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2N
%kernel/Regularizer/Abs/ReadVariableOp%kernel/Regularizer/Abs/ReadVariableOp2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:���������0
 
_user_specified_nameinputs
�
�
__inference_loss_fn_1_258134H
.kernel_regularizer_abs_readvariableop_resource: 
identity��%kernel/Regularizer/Abs/ReadVariableOp�(kernel/Regularizer/Square/ReadVariableOp]
kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
%kernel/Regularizer/Abs/ReadVariableOpReadVariableOp.kernel_regularizer_abs_readvariableop_resource*&
_output_shapes
: *
dtype0}
kernel/Regularizer/AbsAbs-kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
: s
kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer/SumSumkernel/Regularizer/Abs:y:0#kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
kernel/Regularizer/addAddV2!kernel/Regularizer/Const:output:0kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
(kernel/Regularizer/Square/ReadVariableOpReadVariableOp.kernel_regularizer_abs_readvariableop_resource*&
_output_shapes
: *
dtype0�
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: s
kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*%
valueB"             �
kernel/Regularizer/Sum_1Sumkernel/Regularizer/Square:y:0#kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: _
kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
kernel/Regularizer/mul_1Mul#kernel/Regularizer/mul_1/x:output:0!kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: |
kernel/Regularizer/add_1AddV2kernel/Regularizer/add:z:0kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: Z
IdentityIdentitykernel/Regularizer/add_1:z:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp&^kernel/Regularizer/Abs/ReadVariableOp)^kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2N
%kernel/Regularizer/Abs/ReadVariableOp%kernel/Regularizer/Abs/ReadVariableOp2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp
��
�
C__inference_encoder_layer_call_and_return_conditional_losses_257057
input_1'
conv2d_256936:
conv2d_256938:)
conv2d_1_256941: 
conv2d_1_256943: )
conv2d_2_256946: 0
conv2d_2_256948:0)
conv2d_3_256951:0@
conv2d_3_256953:@)
conv2d_4_256956:@H
conv2d_4_256958:H(
batch_normalization_256961:H(
batch_normalization_256963:H(
batch_normalization_256965:H(
batch_normalization_256967:H 
dense_256971:
�	�
dense_256973:	�"
dense_1_256976:
��
dense_1_256978:	�
identity��+batch_normalization/StatefulPartitionedCall�conv2d/StatefulPartitionedCall� conv2d_1/StatefulPartitionedCall� conv2d_2/StatefulPartitionedCall� conv2d_3/StatefulPartitionedCall� conv2d_4/StatefulPartitionedCall�dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�%kernel/Regularizer/Abs/ReadVariableOp�(kernel/Regularizer/Square/ReadVariableOp�'kernel/Regularizer_1/Abs/ReadVariableOp�*kernel/Regularizer_1/Square/ReadVariableOp�'kernel/Regularizer_2/Abs/ReadVariableOp�*kernel/Regularizer_2/Square/ReadVariableOp�'kernel/Regularizer_3/Abs/ReadVariableOp�*kernel/Regularizer_3/Square/ReadVariableOp�'kernel/Regularizer_4/Abs/ReadVariableOp�*kernel/Regularizer_4/Square/ReadVariableOp�
conv2d/StatefulPartitionedCallStatefulPartitionedCallinput_1conv2d_256936conv2d_256938*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv2d_layer_call_and_return_conditional_losses_256248�
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0conv2d_1_256941conv2d_1_256943*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_1_layer_call_and_return_conditional_losses_256280�
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0conv2d_2_256946conv2d_2_256948*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_2_layer_call_and_return_conditional_losses_256312�
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0conv2d_3_256951conv2d_3_256953*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_3_layer_call_and_return_conditional_losses_256344�
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0conv2d_4_256956conv2d_4_256958*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������H*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_4_layer_call_and_return_conditional_losses_256376�
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0batch_normalization_256961batch_normalization_256963batch_normalization_256965batch_normalization_256967*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������H*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *X
fSRQ
O__inference_batch_normalization_layer_call_and_return_conditional_losses_256399�
flatten/PartitionedCallPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������	* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_256415�
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_256971dense_256973*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_256428�
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_256976dense_1_256978*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_256445]
kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    {
%kernel/Regularizer/Abs/ReadVariableOpReadVariableOpconv2d_256936*&
_output_shapes
:*
dtype0}
kernel/Regularizer/AbsAbs-kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:s
kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer/SumSumkernel/Regularizer/Abs:y:0#kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
kernel/Regularizer/addAddV2!kernel/Regularizer/Const:output:0kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: ~
(kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_256936*&
_output_shapes
:*
dtype0�
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:s
kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*%
valueB"             �
kernel/Regularizer/Sum_1Sumkernel/Regularizer/Square:y:0#kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: _
kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
kernel/Regularizer/mul_1Mul#kernel/Regularizer/mul_1/x:output:0!kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: |
kernel/Regularizer/add_1AddV2kernel/Regularizer/add:z:0kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: _
kernel/Regularizer_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
'kernel/Regularizer_1/Abs/ReadVariableOpReadVariableOpconv2d_1_256941*&
_output_shapes
: *
dtype0�
kernel/Regularizer_1/AbsAbs/kernel/Regularizer_1/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
: u
kernel/Regularizer_1/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             �
kernel/Regularizer_1/SumSumkernel/Regularizer_1/Abs:y:0%kernel/Regularizer_1/Const_1:output:0*
T0*
_output_shapes
: _
kernel/Regularizer_1/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
kernel/Regularizer_1/mulMul#kernel/Regularizer_1/mul/x:output:0!kernel/Regularizer_1/Sum:output:0*
T0*
_output_shapes
: �
kernel/Regularizer_1/addAddV2#kernel/Regularizer_1/Const:output:0kernel/Regularizer_1/mul:z:0*
T0*
_output_shapes
: �
*kernel/Regularizer_1/Square/ReadVariableOpReadVariableOpconv2d_1_256941*&
_output_shapes
: *
dtype0�
kernel/Regularizer_1/SquareSquare2kernel/Regularizer_1/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: u
kernel/Regularizer_1/Const_2Const*
_output_shapes
:*
dtype0*%
valueB"             �
kernel/Regularizer_1/Sum_1Sumkernel/Regularizer_1/Square:y:0%kernel/Regularizer_1/Const_2:output:0*
T0*
_output_shapes
: a
kernel/Regularizer_1/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
kernel/Regularizer_1/mul_1Mul%kernel/Regularizer_1/mul_1/x:output:0#kernel/Regularizer_1/Sum_1:output:0*
T0*
_output_shapes
: �
kernel/Regularizer_1/add_1AddV2kernel/Regularizer_1/add:z:0kernel/Regularizer_1/mul_1:z:0*
T0*
_output_shapes
: _
kernel/Regularizer_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
'kernel/Regularizer_2/Abs/ReadVariableOpReadVariableOpconv2d_2_256946*&
_output_shapes
: 0*
dtype0�
kernel/Regularizer_2/AbsAbs/kernel/Regularizer_2/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
: 0u
kernel/Regularizer_2/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             �
kernel/Regularizer_2/SumSumkernel/Regularizer_2/Abs:y:0%kernel/Regularizer_2/Const_1:output:0*
T0*
_output_shapes
: _
kernel/Regularizer_2/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
kernel/Regularizer_2/mulMul#kernel/Regularizer_2/mul/x:output:0!kernel/Regularizer_2/Sum:output:0*
T0*
_output_shapes
: �
kernel/Regularizer_2/addAddV2#kernel/Regularizer_2/Const:output:0kernel/Regularizer_2/mul:z:0*
T0*
_output_shapes
: �
*kernel/Regularizer_2/Square/ReadVariableOpReadVariableOpconv2d_2_256946*&
_output_shapes
: 0*
dtype0�
kernel/Regularizer_2/SquareSquare2kernel/Regularizer_2/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: 0u
kernel/Regularizer_2/Const_2Const*
_output_shapes
:*
dtype0*%
valueB"             �
kernel/Regularizer_2/Sum_1Sumkernel/Regularizer_2/Square:y:0%kernel/Regularizer_2/Const_2:output:0*
T0*
_output_shapes
: a
kernel/Regularizer_2/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
kernel/Regularizer_2/mul_1Mul%kernel/Regularizer_2/mul_1/x:output:0#kernel/Regularizer_2/Sum_1:output:0*
T0*
_output_shapes
: �
kernel/Regularizer_2/add_1AddV2kernel/Regularizer_2/add:z:0kernel/Regularizer_2/mul_1:z:0*
T0*
_output_shapes
: _
kernel/Regularizer_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
'kernel/Regularizer_3/Abs/ReadVariableOpReadVariableOpconv2d_3_256951*&
_output_shapes
:0@*
dtype0�
kernel/Regularizer_3/AbsAbs/kernel/Regularizer_3/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:0@u
kernel/Regularizer_3/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             �
kernel/Regularizer_3/SumSumkernel/Regularizer_3/Abs:y:0%kernel/Regularizer_3/Const_1:output:0*
T0*
_output_shapes
: _
kernel/Regularizer_3/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
kernel/Regularizer_3/mulMul#kernel/Regularizer_3/mul/x:output:0!kernel/Regularizer_3/Sum:output:0*
T0*
_output_shapes
: �
kernel/Regularizer_3/addAddV2#kernel/Regularizer_3/Const:output:0kernel/Regularizer_3/mul:z:0*
T0*
_output_shapes
: �
*kernel/Regularizer_3/Square/ReadVariableOpReadVariableOpconv2d_3_256951*&
_output_shapes
:0@*
dtype0�
kernel/Regularizer_3/SquareSquare2kernel/Regularizer_3/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:0@u
kernel/Regularizer_3/Const_2Const*
_output_shapes
:*
dtype0*%
valueB"             �
kernel/Regularizer_3/Sum_1Sumkernel/Regularizer_3/Square:y:0%kernel/Regularizer_3/Const_2:output:0*
T0*
_output_shapes
: a
kernel/Regularizer_3/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
kernel/Regularizer_3/mul_1Mul%kernel/Regularizer_3/mul_1/x:output:0#kernel/Regularizer_3/Sum_1:output:0*
T0*
_output_shapes
: �
kernel/Regularizer_3/add_1AddV2kernel/Regularizer_3/add:z:0kernel/Regularizer_3/mul_1:z:0*
T0*
_output_shapes
: _
kernel/Regularizer_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
'kernel/Regularizer_4/Abs/ReadVariableOpReadVariableOpconv2d_4_256956*&
_output_shapes
:@H*
dtype0�
kernel/Regularizer_4/AbsAbs/kernel/Regularizer_4/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:@Hu
kernel/Regularizer_4/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             �
kernel/Regularizer_4/SumSumkernel/Regularizer_4/Abs:y:0%kernel/Regularizer_4/Const_1:output:0*
T0*
_output_shapes
: _
kernel/Regularizer_4/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
kernel/Regularizer_4/mulMul#kernel/Regularizer_4/mul/x:output:0!kernel/Regularizer_4/Sum:output:0*
T0*
_output_shapes
: �
kernel/Regularizer_4/addAddV2#kernel/Regularizer_4/Const:output:0kernel/Regularizer_4/mul:z:0*
T0*
_output_shapes
: �
*kernel/Regularizer_4/Square/ReadVariableOpReadVariableOpconv2d_4_256956*&
_output_shapes
:@H*
dtype0�
kernel/Regularizer_4/SquareSquare2kernel/Regularizer_4/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@Hu
kernel/Regularizer_4/Const_2Const*
_output_shapes
:*
dtype0*%
valueB"             �
kernel/Regularizer_4/Sum_1Sumkernel/Regularizer_4/Square:y:0%kernel/Regularizer_4/Const_2:output:0*
T0*
_output_shapes
: a
kernel/Regularizer_4/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
kernel/Regularizer_4/mul_1Mul%kernel/Regularizer_4/mul_1/x:output:0#kernel/Regularizer_4/Sum_1:output:0*
T0*
_output_shapes
: �
kernel/Regularizer_4/add_1AddV2kernel/Regularizer_4/add:z:0kernel/Regularizer_4/mul_1:z:0*
T0*
_output_shapes
: x
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp,^batch_normalization/StatefulPartitionedCall^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall&^kernel/Regularizer/Abs/ReadVariableOp)^kernel/Regularizer/Square/ReadVariableOp(^kernel/Regularizer_1/Abs/ReadVariableOp+^kernel/Regularizer_1/Square/ReadVariableOp(^kernel/Regularizer_2/Abs/ReadVariableOp+^kernel/Regularizer_2/Square/ReadVariableOp(^kernel/Regularizer_3/Abs/ReadVariableOp+^kernel/Regularizer_3/Square/ReadVariableOp(^kernel/Regularizer_4/Abs/ReadVariableOp+^kernel/Regularizer_4/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������: : : : : : : : : : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2N
%kernel/Regularizer/Abs/ReadVariableOp%kernel/Regularizer/Abs/ReadVariableOp2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp2R
'kernel/Regularizer_1/Abs/ReadVariableOp'kernel/Regularizer_1/Abs/ReadVariableOp2X
*kernel/Regularizer_1/Square/ReadVariableOp*kernel/Regularizer_1/Square/ReadVariableOp2R
'kernel/Regularizer_2/Abs/ReadVariableOp'kernel/Regularizer_2/Abs/ReadVariableOp2X
*kernel/Regularizer_2/Square/ReadVariableOp*kernel/Regularizer_2/Square/ReadVariableOp2R
'kernel/Regularizer_3/Abs/ReadVariableOp'kernel/Regularizer_3/Abs/ReadVariableOp2X
*kernel/Regularizer_3/Square/ReadVariableOp*kernel/Regularizer_3/Square/ReadVariableOp2R
'kernel/Regularizer_4/Abs/ReadVariableOp'kernel/Regularizer_4/Abs/ReadVariableOp2X
*kernel/Regularizer_4/Square/ReadVariableOp*kernel/Regularizer_4/Square/ReadVariableOp:X T
/
_output_shapes
:���������
!
_user_specified_name	input_1
�
�
'__inference_conv2d_layer_call_fn_257693

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv2d_layer_call_and_return_conditional_losses_256248w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
D__inference_conv2d_2_layer_call_and_return_conditional_losses_257819

inputs8
conv2d_readvariableop_resource: 0-
biasadd_readvariableop_resource:0
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�%kernel/Regularizer/Abs/ReadVariableOp�(kernel/Regularizer/Square/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: 0*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������0*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:0*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������0X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������0]
kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
%kernel/Regularizer/Abs/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: 0*
dtype0}
kernel/Regularizer/AbsAbs-kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
: 0s
kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer/SumSumkernel/Regularizer/Abs:y:0#kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
kernel/Regularizer/addAddV2!kernel/Regularizer/Const:output:0kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
(kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: 0*
dtype0�
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: 0s
kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*%
valueB"             �
kernel/Regularizer/Sum_1Sumkernel/Regularizer/Square:y:0#kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: _
kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
kernel/Regularizer/mul_1Mul#kernel/Regularizer/mul_1/x:output:0!kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: |
kernel/Regularizer/add_1AddV2kernel/Regularizer/add:z:0kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������0�
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp&^kernel/Regularizer/Abs/ReadVariableOp)^kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2N
%kernel/Regularizer/Abs/ReadVariableOp%kernel/Regularizer/Abs/ReadVariableOp2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
D__inference_conv2d_4_layer_call_and_return_conditional_losses_257919

inputs8
conv2d_readvariableop_resource:@H-
biasadd_readvariableop_resource:H
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�%kernel/Regularizer/Abs/ReadVariableOp�(kernel/Regularizer/Square/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@H*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������H*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:H*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������HX
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������H]
kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
%kernel/Regularizer/Abs/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@H*
dtype0}
kernel/Regularizer/AbsAbs-kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:@Hs
kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer/SumSumkernel/Regularizer/Abs:y:0#kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
kernel/Regularizer/addAddV2!kernel/Regularizer/Const:output:0kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
(kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@H*
dtype0�
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@Hs
kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*%
valueB"             �
kernel/Regularizer/Sum_1Sumkernel/Regularizer/Square:y:0#kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: _
kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
kernel/Regularizer/mul_1Mul#kernel/Regularizer/mul_1/x:output:0!kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: |
kernel/Regularizer/add_1AddV2kernel/Regularizer/add:z:0kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������H�
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp&^kernel/Regularizer/Abs/ReadVariableOp)^kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2N
%kernel/Regularizer/Abs/ReadVariableOp%kernel/Regularizer/Abs/ReadVariableOp2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
)__inference_conv2d_3_layer_call_fn_257843

inputs!
unknown:0@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_3_layer_call_and_return_conditional_losses_256344w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������0: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������0
 
_user_specified_nameinputs
�
�
)__inference_conv2d_4_layer_call_fn_257893

inputs!
unknown:@H
	unknown_0:H
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������H*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_4_layer_call_and_return_conditional_losses_256376w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������H`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
��
�
C__inference_encoder_layer_call_and_return_conditional_losses_257181
input_1'
conv2d_257060:
conv2d_257062:)
conv2d_1_257065: 
conv2d_1_257067: )
conv2d_2_257070: 0
conv2d_2_257072:0)
conv2d_3_257075:0@
conv2d_3_257077:@)
conv2d_4_257080:@H
conv2d_4_257082:H(
batch_normalization_257085:H(
batch_normalization_257087:H(
batch_normalization_257089:H(
batch_normalization_257091:H 
dense_257095:
�	�
dense_257097:	�"
dense_1_257100:
��
dense_1_257102:	�
identity��+batch_normalization/StatefulPartitionedCall�conv2d/StatefulPartitionedCall� conv2d_1/StatefulPartitionedCall� conv2d_2/StatefulPartitionedCall� conv2d_3/StatefulPartitionedCall� conv2d_4/StatefulPartitionedCall�dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�%kernel/Regularizer/Abs/ReadVariableOp�(kernel/Regularizer/Square/ReadVariableOp�'kernel/Regularizer_1/Abs/ReadVariableOp�*kernel/Regularizer_1/Square/ReadVariableOp�'kernel/Regularizer_2/Abs/ReadVariableOp�*kernel/Regularizer_2/Square/ReadVariableOp�'kernel/Regularizer_3/Abs/ReadVariableOp�*kernel/Regularizer_3/Square/ReadVariableOp�'kernel/Regularizer_4/Abs/ReadVariableOp�*kernel/Regularizer_4/Square/ReadVariableOp�
conv2d/StatefulPartitionedCallStatefulPartitionedCallinput_1conv2d_257060conv2d_257062*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv2d_layer_call_and_return_conditional_losses_256248�
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0conv2d_1_257065conv2d_1_257067*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_1_layer_call_and_return_conditional_losses_256280�
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0conv2d_2_257070conv2d_2_257072*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_2_layer_call_and_return_conditional_losses_256312�
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0conv2d_3_257075conv2d_3_257077*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_3_layer_call_and_return_conditional_losses_256344�
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0conv2d_4_257080conv2d_4_257082*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������H*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_4_layer_call_and_return_conditional_losses_256376�
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0batch_normalization_257085batch_normalization_257087batch_normalization_257089batch_normalization_257091*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������H*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *X
fSRQ
O__inference_batch_normalization_layer_call_and_return_conditional_losses_256625�
flatten/PartitionedCallPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������	* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_256415�
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_257095dense_257097*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_256428�
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_257100dense_1_257102*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_256445]
kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    {
%kernel/Regularizer/Abs/ReadVariableOpReadVariableOpconv2d_257060*&
_output_shapes
:*
dtype0}
kernel/Regularizer/AbsAbs-kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:s
kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             
kernel/Regularizer/SumSumkernel/Regularizer/Abs:y:0#kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
kernel/Regularizer/addAddV2!kernel/Regularizer/Const:output:0kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: ~
(kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_257060*&
_output_shapes
:*
dtype0�
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:s
kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*%
valueB"             �
kernel/Regularizer/Sum_1Sumkernel/Regularizer/Square:y:0#kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: _
kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
kernel/Regularizer/mul_1Mul#kernel/Regularizer/mul_1/x:output:0!kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: |
kernel/Regularizer/add_1AddV2kernel/Regularizer/add:z:0kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: _
kernel/Regularizer_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
'kernel/Regularizer_1/Abs/ReadVariableOpReadVariableOpconv2d_1_257065*&
_output_shapes
: *
dtype0�
kernel/Regularizer_1/AbsAbs/kernel/Regularizer_1/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
: u
kernel/Regularizer_1/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             �
kernel/Regularizer_1/SumSumkernel/Regularizer_1/Abs:y:0%kernel/Regularizer_1/Const_1:output:0*
T0*
_output_shapes
: _
kernel/Regularizer_1/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
kernel/Regularizer_1/mulMul#kernel/Regularizer_1/mul/x:output:0!kernel/Regularizer_1/Sum:output:0*
T0*
_output_shapes
: �
kernel/Regularizer_1/addAddV2#kernel/Regularizer_1/Const:output:0kernel/Regularizer_1/mul:z:0*
T0*
_output_shapes
: �
*kernel/Regularizer_1/Square/ReadVariableOpReadVariableOpconv2d_1_257065*&
_output_shapes
: *
dtype0�
kernel/Regularizer_1/SquareSquare2kernel/Regularizer_1/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: u
kernel/Regularizer_1/Const_2Const*
_output_shapes
:*
dtype0*%
valueB"             �
kernel/Regularizer_1/Sum_1Sumkernel/Regularizer_1/Square:y:0%kernel/Regularizer_1/Const_2:output:0*
T0*
_output_shapes
: a
kernel/Regularizer_1/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
kernel/Regularizer_1/mul_1Mul%kernel/Regularizer_1/mul_1/x:output:0#kernel/Regularizer_1/Sum_1:output:0*
T0*
_output_shapes
: �
kernel/Regularizer_1/add_1AddV2kernel/Regularizer_1/add:z:0kernel/Regularizer_1/mul_1:z:0*
T0*
_output_shapes
: _
kernel/Regularizer_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
'kernel/Regularizer_2/Abs/ReadVariableOpReadVariableOpconv2d_2_257070*&
_output_shapes
: 0*
dtype0�
kernel/Regularizer_2/AbsAbs/kernel/Regularizer_2/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
: 0u
kernel/Regularizer_2/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             �
kernel/Regularizer_2/SumSumkernel/Regularizer_2/Abs:y:0%kernel/Regularizer_2/Const_1:output:0*
T0*
_output_shapes
: _
kernel/Regularizer_2/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
kernel/Regularizer_2/mulMul#kernel/Regularizer_2/mul/x:output:0!kernel/Regularizer_2/Sum:output:0*
T0*
_output_shapes
: �
kernel/Regularizer_2/addAddV2#kernel/Regularizer_2/Const:output:0kernel/Regularizer_2/mul:z:0*
T0*
_output_shapes
: �
*kernel/Regularizer_2/Square/ReadVariableOpReadVariableOpconv2d_2_257070*&
_output_shapes
: 0*
dtype0�
kernel/Regularizer_2/SquareSquare2kernel/Regularizer_2/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: 0u
kernel/Regularizer_2/Const_2Const*
_output_shapes
:*
dtype0*%
valueB"             �
kernel/Regularizer_2/Sum_1Sumkernel/Regularizer_2/Square:y:0%kernel/Regularizer_2/Const_2:output:0*
T0*
_output_shapes
: a
kernel/Regularizer_2/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
kernel/Regularizer_2/mul_1Mul%kernel/Regularizer_2/mul_1/x:output:0#kernel/Regularizer_2/Sum_1:output:0*
T0*
_output_shapes
: �
kernel/Regularizer_2/add_1AddV2kernel/Regularizer_2/add:z:0kernel/Regularizer_2/mul_1:z:0*
T0*
_output_shapes
: _
kernel/Regularizer_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
'kernel/Regularizer_3/Abs/ReadVariableOpReadVariableOpconv2d_3_257075*&
_output_shapes
:0@*
dtype0�
kernel/Regularizer_3/AbsAbs/kernel/Regularizer_3/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:0@u
kernel/Regularizer_3/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             �
kernel/Regularizer_3/SumSumkernel/Regularizer_3/Abs:y:0%kernel/Regularizer_3/Const_1:output:0*
T0*
_output_shapes
: _
kernel/Regularizer_3/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
kernel/Regularizer_3/mulMul#kernel/Regularizer_3/mul/x:output:0!kernel/Regularizer_3/Sum:output:0*
T0*
_output_shapes
: �
kernel/Regularizer_3/addAddV2#kernel/Regularizer_3/Const:output:0kernel/Regularizer_3/mul:z:0*
T0*
_output_shapes
: �
*kernel/Regularizer_3/Square/ReadVariableOpReadVariableOpconv2d_3_257075*&
_output_shapes
:0@*
dtype0�
kernel/Regularizer_3/SquareSquare2kernel/Regularizer_3/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:0@u
kernel/Regularizer_3/Const_2Const*
_output_shapes
:*
dtype0*%
valueB"             �
kernel/Regularizer_3/Sum_1Sumkernel/Regularizer_3/Square:y:0%kernel/Regularizer_3/Const_2:output:0*
T0*
_output_shapes
: a
kernel/Regularizer_3/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
kernel/Regularizer_3/mul_1Mul%kernel/Regularizer_3/mul_1/x:output:0#kernel/Regularizer_3/Sum_1:output:0*
T0*
_output_shapes
: �
kernel/Regularizer_3/add_1AddV2kernel/Regularizer_3/add:z:0kernel/Regularizer_3/mul_1:z:0*
T0*
_output_shapes
: _
kernel/Regularizer_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
'kernel/Regularizer_4/Abs/ReadVariableOpReadVariableOpconv2d_4_257080*&
_output_shapes
:@H*
dtype0�
kernel/Regularizer_4/AbsAbs/kernel/Regularizer_4/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:@Hu
kernel/Regularizer_4/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             �
kernel/Regularizer_4/SumSumkernel/Regularizer_4/Abs:y:0%kernel/Regularizer_4/Const_1:output:0*
T0*
_output_shapes
: _
kernel/Regularizer_4/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
kernel/Regularizer_4/mulMul#kernel/Regularizer_4/mul/x:output:0!kernel/Regularizer_4/Sum:output:0*
T0*
_output_shapes
: �
kernel/Regularizer_4/addAddV2#kernel/Regularizer_4/Const:output:0kernel/Regularizer_4/mul:z:0*
T0*
_output_shapes
: �
*kernel/Regularizer_4/Square/ReadVariableOpReadVariableOpconv2d_4_257080*&
_output_shapes
:@H*
dtype0�
kernel/Regularizer_4/SquareSquare2kernel/Regularizer_4/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@Hu
kernel/Regularizer_4/Const_2Const*
_output_shapes
:*
dtype0*%
valueB"             �
kernel/Regularizer_4/Sum_1Sumkernel/Regularizer_4/Square:y:0%kernel/Regularizer_4/Const_2:output:0*
T0*
_output_shapes
: a
kernel/Regularizer_4/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
kernel/Regularizer_4/mul_1Mul%kernel/Regularizer_4/mul_1/x:output:0#kernel/Regularizer_4/Sum_1:output:0*
T0*
_output_shapes
: �
kernel/Regularizer_4/add_1AddV2kernel/Regularizer_4/add:z:0kernel/Regularizer_4/mul_1:z:0*
T0*
_output_shapes
: x
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp,^batch_normalization/StatefulPartitionedCall^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall&^kernel/Regularizer/Abs/ReadVariableOp)^kernel/Regularizer/Square/ReadVariableOp(^kernel/Regularizer_1/Abs/ReadVariableOp+^kernel/Regularizer_1/Square/ReadVariableOp(^kernel/Regularizer_2/Abs/ReadVariableOp+^kernel/Regularizer_2/Square/ReadVariableOp(^kernel/Regularizer_3/Abs/ReadVariableOp+^kernel/Regularizer_3/Square/ReadVariableOp(^kernel/Regularizer_4/Abs/ReadVariableOp+^kernel/Regularizer_4/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������: : : : : : : : : : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2N
%kernel/Regularizer/Abs/ReadVariableOp%kernel/Regularizer/Abs/ReadVariableOp2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp2R
'kernel/Regularizer_1/Abs/ReadVariableOp'kernel/Regularizer_1/Abs/ReadVariableOp2X
*kernel/Regularizer_1/Square/ReadVariableOp*kernel/Regularizer_1/Square/ReadVariableOp2R
'kernel/Regularizer_2/Abs/ReadVariableOp'kernel/Regularizer_2/Abs/ReadVariableOp2X
*kernel/Regularizer_2/Square/ReadVariableOp*kernel/Regularizer_2/Square/ReadVariableOp2R
'kernel/Regularizer_3/Abs/ReadVariableOp'kernel/Regularizer_3/Abs/ReadVariableOp2X
*kernel/Regularizer_3/Square/ReadVariableOp*kernel/Regularizer_3/Square/ReadVariableOp2R
'kernel/Regularizer_4/Abs/ReadVariableOp'kernel/Regularizer_4/Abs/ReadVariableOp2X
*kernel/Regularizer_4/Square/ReadVariableOp*kernel/Regularizer_4/Square/ReadVariableOp:X T
/
_output_shapes
:���������
!
_user_specified_name	input_1
�

�
C__inference_dense_1_layer_call_and_return_conditional_losses_258094

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�	
�
4__inference_batch_normalization_layer_call_fn_257932

inputs
unknown:H
	unknown_0:H
	unknown_1:H
	unknown_2:H
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������H*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *X
fSRQ
O__inference_batch_normalization_layer_call_and_return_conditional_losses_256173�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������H`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������H: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������H
 
_user_specified_nameinputs
�
�
O__inference_batch_normalization_layer_call_and_return_conditional_losses_257989

inputs%
readvariableop_resource:H'
readvariableop_1_resource:H6
(fusedbatchnormv3_readvariableop_resource:H8
*fusedbatchnormv3_readvariableop_1_resource:H
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:H*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:H*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:H*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:H*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������H:H:H:H:H:*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������H�
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������H: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������H
 
_user_specified_nameinputs"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
C
input_18
serving_default_input_1:0���������<
dense_11
StatefulPartitionedCall:0����������tensorflow/serving/predict:��
�
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
layer_with_weights-5
layer-6
layer-7
	layer_with_weights-6
	layer-8

layer_with_weights-7

layer-9

signatures
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_default_save_signature"
_tf_keras_network
D
#_self_saveable_object_factories"
_tf_keras_input_layer
�

kernel
bias
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

kernel
bias
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

 kernel
!bias
#"_self_saveable_object_factories
#	variables
$trainable_variables
%regularization_losses
&	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

'kernel
(bias
#)_self_saveable_object_factories
*	variables
+trainable_variables
,regularization_losses
-	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

.kernel
/bias
#0_self_saveable_object_factories
1	variables
2trainable_variables
3regularization_losses
4	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
5axis
	6gamma
7beta
8moving_mean
9moving_variance
#:_self_saveable_object_factories
;	variables
<trainable_variables
=regularization_losses
>	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
#?_self_saveable_object_factories
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

Dkernel
Ebias
#F_self_saveable_object_factories
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

Kkernel
Lbias
#M_self_saveable_object_factories
N	variables
Otrainable_variables
Pregularization_losses
Q	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
-
�serving_default"
signature_map
 "
trackable_dict_wrapper
�
0
1
2
3
 4
!5
'6
(7
.8
/9
610
711
812
913
D14
E15
K16
L17"
trackable_list_wrapper
�
0
1
2
3
 4
!5
'6
(7
.8
/9
610
711
D12
E13
K14
L15"
trackable_list_wrapper
H
�0
�1
�2
�3
�4"
trackable_list_wrapper
�
Rnon_trainable_variables

Slayers
Tmetrics
Ulayer_regularization_losses
Vlayer_metrics
	variables
trainable_variables
regularization_losses
�__call__
�_default_save_signature
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
':%2conv2d/kernel
:2conv2d/bias
 "
trackable_dict_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
�
Wnon_trainable_variables

Xlayers
Ymetrics
Zlayer_regularization_losses
[layer_metrics
	variables
trainable_variables
regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
):' 2conv2d_1/kernel
: 2conv2d_1/bias
 "
trackable_dict_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
�
\non_trainable_variables

]layers
^metrics
_layer_regularization_losses
`layer_metrics
	variables
trainable_variables
regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
):' 02conv2d_2/kernel
:02conv2d_2/bias
 "
trackable_dict_wrapper
.
 0
!1"
trackable_list_wrapper
.
 0
!1"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
�
anon_trainable_variables

blayers
cmetrics
dlayer_regularization_losses
elayer_metrics
#	variables
$trainable_variables
%regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
):'0@2conv2d_3/kernel
:@2conv2d_3/bias
 "
trackable_dict_wrapper
.
'0
(1"
trackable_list_wrapper
.
'0
(1"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
�
fnon_trainable_variables

glayers
hmetrics
ilayer_regularization_losses
jlayer_metrics
*	variables
+trainable_variables
,regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
):'@H2conv2d_4/kernel
:H2conv2d_4/bias
 "
trackable_dict_wrapper
.
.0
/1"
trackable_list_wrapper
.
.0
/1"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
�
knon_trainable_variables

llayers
mmetrics
nlayer_regularization_losses
olayer_metrics
1	variables
2trainable_variables
3regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
':%H2batch_normalization/gamma
&:$H2batch_normalization/beta
/:-H (2batch_normalization/moving_mean
3:1H (2#batch_normalization/moving_variance
 "
trackable_dict_wrapper
<
60
71
82
93"
trackable_list_wrapper
.
60
71"
trackable_list_wrapper
 "
trackable_list_wrapper
�
pnon_trainable_variables

qlayers
rmetrics
slayer_regularization_losses
tlayer_metrics
;	variables
<trainable_variables
=regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
unon_trainable_variables

vlayers
wmetrics
xlayer_regularization_losses
ylayer_metrics
@	variables
Atrainable_variables
Bregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 :
�	�2dense/kernel
:�2
dense/bias
 "
trackable_dict_wrapper
.
D0
E1"
trackable_list_wrapper
.
D0
E1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
znon_trainable_variables

{layers
|metrics
}layer_regularization_losses
~layer_metrics
G	variables
Htrainable_variables
Iregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
": 
��2dense_1/kernel
:�2dense_1/bias
 "
trackable_dict_wrapper
.
K0
L1"
trackable_list_wrapper
.
K0
L1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
N	variables
Otrainable_variables
Pregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
.
80
91"
trackable_list_wrapper
f
0
1
2
3
4
5
6
7
	8

9"
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
(
�0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
�0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
�0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
�0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
�0"
trackable_list_wrapper
 "
trackable_dict_wrapper
.
80
91"
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
�2�
(__inference_encoder_layer_call_fn_256566
(__inference_encoder_layer_call_fn_257340
(__inference_encoder_layer_call_fn_257381
(__inference_encoder_layer_call_fn_256933�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
C__inference_encoder_layer_call_and_return_conditional_losses_257525
C__inference_encoder_layer_call_and_return_conditional_losses_257669
C__inference_encoder_layer_call_and_return_conditional_losses_257057
C__inference_encoder_layer_call_and_return_conditional_losses_257181�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
!__inference__wrapped_model_256151input_1"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
'__inference_conv2d_layer_call_fn_257693�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
B__inference_conv2d_layer_call_and_return_conditional_losses_257719�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
)__inference_conv2d_1_layer_call_fn_257743�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
D__inference_conv2d_1_layer_call_and_return_conditional_losses_257769�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
)__inference_conv2d_2_layer_call_fn_257793�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
D__inference_conv2d_2_layer_call_and_return_conditional_losses_257819�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
)__inference_conv2d_3_layer_call_fn_257843�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
D__inference_conv2d_3_layer_call_and_return_conditional_losses_257869�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
)__inference_conv2d_4_layer_call_fn_257893�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
D__inference_conv2d_4_layer_call_and_return_conditional_losses_257919�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
4__inference_batch_normalization_layer_call_fn_257932
4__inference_batch_normalization_layer_call_fn_257945
4__inference_batch_normalization_layer_call_fn_257958
4__inference_batch_normalization_layer_call_fn_257971�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
O__inference_batch_normalization_layer_call_and_return_conditional_losses_257989
O__inference_batch_normalization_layer_call_and_return_conditional_losses_258007
O__inference_batch_normalization_layer_call_and_return_conditional_losses_258025
O__inference_batch_normalization_layer_call_and_return_conditional_losses_258043�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
(__inference_flatten_layer_call_fn_258048�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
C__inference_flatten_layer_call_and_return_conditional_losses_258054�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
&__inference_dense_layer_call_fn_258063�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
A__inference_dense_layer_call_and_return_conditional_losses_258074�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
(__inference_dense_1_layer_call_fn_258083�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
C__inference_dense_1_layer_call_and_return_conditional_losses_258094�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
$__inference_signature_wrapper_257299input_1"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
__inference_loss_fn_0_258114�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�2�
__inference_loss_fn_1_258134�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�2�
__inference_loss_fn_2_258154�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�2�
__inference_loss_fn_3_258174�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�2�
__inference_loss_fn_4_258194�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� �
!__inference__wrapped_model_256151� !'(./6789DEKL8�5
.�+
)�&
input_1���������
� "2�/
-
dense_1"�
dense_1�����������
O__inference_batch_normalization_layer_call_and_return_conditional_losses_257989�6789M�J
C�@
:�7
inputs+���������������������������H
p 
� "?�<
5�2
0+���������������������������H
� �
O__inference_batch_normalization_layer_call_and_return_conditional_losses_258007�6789M�J
C�@
:�7
inputs+���������������������������H
p
� "?�<
5�2
0+���������������������������H
� �
O__inference_batch_normalization_layer_call_and_return_conditional_losses_258025r6789;�8
1�.
(�%
inputs���������H
p 
� "-�*
#� 
0���������H
� �
O__inference_batch_normalization_layer_call_and_return_conditional_losses_258043r6789;�8
1�.
(�%
inputs���������H
p
� "-�*
#� 
0���������H
� �
4__inference_batch_normalization_layer_call_fn_257932�6789M�J
C�@
:�7
inputs+���������������������������H
p 
� "2�/+���������������������������H�
4__inference_batch_normalization_layer_call_fn_257945�6789M�J
C�@
:�7
inputs+���������������������������H
p
� "2�/+���������������������������H�
4__inference_batch_normalization_layer_call_fn_257958e6789;�8
1�.
(�%
inputs���������H
p 
� " ����������H�
4__inference_batch_normalization_layer_call_fn_257971e6789;�8
1�.
(�%
inputs���������H
p
� " ����������H�
D__inference_conv2d_1_layer_call_and_return_conditional_losses_257769l7�4
-�*
(�%
inputs���������
� "-�*
#� 
0��������� 
� �
)__inference_conv2d_1_layer_call_fn_257743_7�4
-�*
(�%
inputs���������
� " ���������� �
D__inference_conv2d_2_layer_call_and_return_conditional_losses_257819l !7�4
-�*
(�%
inputs��������� 
� "-�*
#� 
0���������0
� �
)__inference_conv2d_2_layer_call_fn_257793_ !7�4
-�*
(�%
inputs��������� 
� " ����������0�
D__inference_conv2d_3_layer_call_and_return_conditional_losses_257869l'(7�4
-�*
(�%
inputs���������0
� "-�*
#� 
0���������@
� �
)__inference_conv2d_3_layer_call_fn_257843_'(7�4
-�*
(�%
inputs���������0
� " ����������@�
D__inference_conv2d_4_layer_call_and_return_conditional_losses_257919l./7�4
-�*
(�%
inputs���������@
� "-�*
#� 
0���������H
� �
)__inference_conv2d_4_layer_call_fn_257893_./7�4
-�*
(�%
inputs���������@
� " ����������H�
B__inference_conv2d_layer_call_and_return_conditional_losses_257719l7�4
-�*
(�%
inputs���������
� "-�*
#� 
0���������
� �
'__inference_conv2d_layer_call_fn_257693_7�4
-�*
(�%
inputs���������
� " �����������
C__inference_dense_1_layer_call_and_return_conditional_losses_258094^KL0�-
&�#
!�
inputs����������
� "&�#
�
0����������
� }
(__inference_dense_1_layer_call_fn_258083QKL0�-
&�#
!�
inputs����������
� "������������
A__inference_dense_layer_call_and_return_conditional_losses_258074^DE0�-
&�#
!�
inputs����������	
� "&�#
�
0����������
� {
&__inference_dense_layer_call_fn_258063QDE0�-
&�#
!�
inputs����������	
� "������������
C__inference_encoder_layer_call_and_return_conditional_losses_257057~ !'(./6789DEKL@�=
6�3
)�&
input_1���������
p 

 
� "&�#
�
0����������
� �
C__inference_encoder_layer_call_and_return_conditional_losses_257181~ !'(./6789DEKL@�=
6�3
)�&
input_1���������
p

 
� "&�#
�
0����������
� �
C__inference_encoder_layer_call_and_return_conditional_losses_257525} !'(./6789DEKL?�<
5�2
(�%
inputs���������
p 

 
� "&�#
�
0����������
� �
C__inference_encoder_layer_call_and_return_conditional_losses_257669} !'(./6789DEKL?�<
5�2
(�%
inputs���������
p

 
� "&�#
�
0����������
� �
(__inference_encoder_layer_call_fn_256566q !'(./6789DEKL@�=
6�3
)�&
input_1���������
p 

 
� "������������
(__inference_encoder_layer_call_fn_256933q !'(./6789DEKL@�=
6�3
)�&
input_1���������
p

 
� "������������
(__inference_encoder_layer_call_fn_257340p !'(./6789DEKL?�<
5�2
(�%
inputs���������
p 

 
� "������������
(__inference_encoder_layer_call_fn_257381p !'(./6789DEKL?�<
5�2
(�%
inputs���������
p

 
� "������������
C__inference_flatten_layer_call_and_return_conditional_losses_258054a7�4
-�*
(�%
inputs���������H
� "&�#
�
0����������	
� �
(__inference_flatten_layer_call_fn_258048T7�4
-�*
(�%
inputs���������H
� "�����������	;
__inference_loss_fn_0_258114�

� 
� "� ;
__inference_loss_fn_1_258134�

� 
� "� ;
__inference_loss_fn_2_258154 �

� 
� "� ;
__inference_loss_fn_3_258174'�

� 
� "� ;
__inference_loss_fn_4_258194.�

� 
� "� �
$__inference_signature_wrapper_257299� !'(./6789DEKLC�@
� 
9�6
4
input_1)�&
input_1���������"2�/
-
dense_1"�
dense_1����������