È¬,
¼
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetype
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
:
Less
x"T
y"T
z
"
Ttype:
2	
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
delete_old_dirsbool(
?
Mul
x"T
y"T
z"T"
Ttype:
2	
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
dtypetype
¥
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
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
0
Sigmoid
x"T
y"T"
Ttype:

2
9
Softmax
logits"T
softmax"T"
Ttype:
2
¾
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
executor_typestring 
@
StaticRegexFullMatch	
input

output
"
patternstring
ö
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
«
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type*
output_handleéelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListReserve
element_shape"
shape_type
num_elements#
handleéelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsintÿÿÿÿÿÿÿÿÿ
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
P
Unpack

value"T
output"T*num"
numint("	
Ttype"
axisint 

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 

While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
"serve*2.6.02v2.6.0-rc2-32-g919f693420e8×+

embedding_1/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*'
shared_nameembedding_1/embeddings

*embedding_1/embeddings/Read/ReadVariableOpReadVariableOpembedding_1/embeddings*
_output_shapes

:2*
dtype0
u
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*
shared_namedense/kernel
n
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes
:	*
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:*
dtype0
`
beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namebeta_1
Y
beta_1/Read/ReadVariableOpReadVariableOpbeta_1*
_output_shapes
: *
dtype0
`
beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namebeta_2
Y
beta_2/Read/ReadVariableOpReadVariableOpbeta_2*
_output_shapes
: *
dtype0
^
decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedecay
W
decay/Read/ReadVariableOpReadVariableOpdecay*
_output_shapes
: *
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	

gru_1/gru_cell_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2Â*(
shared_namegru_1/gru_cell_1/kernel

+gru_1/gru_cell_1/kernel/Read/ReadVariableOpReadVariableOpgru_1/gru_cell_1/kernel*
_output_shapes
:	2Â*
dtype0
 
!gru_1/gru_cell_1/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Â*2
shared_name#!gru_1/gru_cell_1/recurrent_kernel

5gru_1/gru_cell_1/recurrent_kernel/Read/ReadVariableOpReadVariableOp!gru_1/gru_cell_1/recurrent_kernel* 
_output_shapes
:
Â*
dtype0

gru_1/gru_cell_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Â*&
shared_namegru_1/gru_cell_1/bias

)gru_1/gru_cell_1/bias/Read/ReadVariableOpReadVariableOpgru_1/gru_cell_1/bias*
_output_shapes
:	Â*
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0

Adam/embedding_1/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*.
shared_nameAdam/embedding_1/embeddings/m

1Adam/embedding_1/embeddings/m/Read/ReadVariableOpReadVariableOpAdam/embedding_1/embeddings/m*
_output_shapes

:2*
dtype0

Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*$
shared_nameAdam/dense/kernel/m
|
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m*
_output_shapes
:	*
dtype0
z
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/dense/bias/m
s
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes
:*
dtype0

Adam/gru_1/gru_cell_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2Â*/
shared_name Adam/gru_1/gru_cell_1/kernel/m

2Adam/gru_1/gru_cell_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/gru_1/gru_cell_1/kernel/m*
_output_shapes
:	2Â*
dtype0
®
(Adam/gru_1/gru_cell_1/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Â*9
shared_name*(Adam/gru_1/gru_cell_1/recurrent_kernel/m
§
<Adam/gru_1/gru_cell_1/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp(Adam/gru_1/gru_cell_1/recurrent_kernel/m* 
_output_shapes
:
Â*
dtype0

Adam/gru_1/gru_cell_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Â*-
shared_nameAdam/gru_1/gru_cell_1/bias/m

0Adam/gru_1/gru_cell_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/gru_1/gru_cell_1/bias/m*
_output_shapes
:	Â*
dtype0

Adam/embedding_1/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*.
shared_nameAdam/embedding_1/embeddings/v

1Adam/embedding_1/embeddings/v/Read/ReadVariableOpReadVariableOpAdam/embedding_1/embeddings/v*
_output_shapes

:2*
dtype0

Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*$
shared_nameAdam/dense/kernel/v
|
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v*
_output_shapes
:	*
dtype0
z
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/dense/bias/v
s
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes
:*
dtype0

Adam/gru_1/gru_cell_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2Â*/
shared_name Adam/gru_1/gru_cell_1/kernel/v

2Adam/gru_1/gru_cell_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/gru_1/gru_cell_1/kernel/v*
_output_shapes
:	2Â*
dtype0
®
(Adam/gru_1/gru_cell_1/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Â*9
shared_name*(Adam/gru_1/gru_cell_1/recurrent_kernel/v
§
<Adam/gru_1/gru_cell_1/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp(Adam/gru_1/gru_cell_1/recurrent_kernel/v* 
_output_shapes
:
Â*
dtype0

Adam/gru_1/gru_cell_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Â*-
shared_nameAdam/gru_1/gru_cell_1/bias/v

0Adam/gru_1/gru_cell_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/gru_1/gru_cell_1/bias/v*
_output_shapes
:	Â*
dtype0

NoOpNoOp
â(
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*(
value(B( B(
æ
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	optimizer
regularization_losses
trainable_variables
	variables
	keras_api
	
signatures
b


embeddings
regularization_losses
trainable_variables
	variables
	keras_api
l
cell

state_spec
regularization_losses
trainable_variables
	variables
	keras_api
h

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
¬

beta_1

beta_2
	decay
learning_rate
iter
mLmMmN mO!mP"mQ
vRvSvT vU!vV"vW
 
*

0
 1
!2
"3
4
5
*

0
 1
!2
"3
4
5
­

#layers
regularization_losses
trainable_variables
	variables
$layer_regularization_losses
%layer_metrics
&non_trainable_variables
'metrics
 
fd
VARIABLE_VALUEembedding_1/embeddings:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUE
 


0


0
­

(layers
regularization_losses
trainable_variables
	variables
)layer_regularization_losses
*layer_metrics
+non_trainable_variables
,metrics
~

 kernel
!recurrent_kernel
"bias
-regularization_losses
.trainable_variables
/	variables
0	keras_api
 
 

 0
!1
"2

 0
!1
"2
¹

1layers
regularization_losses
trainable_variables
	variables
2layer_regularization_losses
3layer_metrics

4states
5non_trainable_variables
6metrics
XV
VARIABLE_VALUEdense/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
dense/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
­

7layers
regularization_losses
trainable_variables
	variables
8layer_regularization_losses
9layer_metrics
:non_trainable_variables
;metrics
GE
VARIABLE_VALUEbeta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
GE
VARIABLE_VALUEbeta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
EC
VARIABLE_VALUEdecay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElearning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUEgru_1/gru_cell_1/kernel0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
ge
VARIABLE_VALUE!gru_1/gru_cell_1/recurrent_kernel0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEgru_1/gru_cell_1/bias0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUE

0
1
2
 
 
 

<0
=1
 
 
 
 
 
 

 0
!1
"2

 0
!1
"2
­

>layers
-regularization_losses
.trainable_variables
/	variables
?layer_regularization_losses
@layer_metrics
Anon_trainable_variables
Bmetrics

0
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
4
	Ctotal
	Dcount
E	variables
F	keras_api
D
	Gtotal
	Hcount
I
_fn_kwargs
J	variables
K	keras_api
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

C0
D1

E	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

G0
H1

J	variables

VARIABLE_VALUEAdam/embedding_1/embeddings/mVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dense/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/gru_1/gru_cell_1/kernel/mLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE(Adam/gru_1/gru_cell_1/recurrent_kernel/mLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/gru_1/gru_cell_1/bias/mLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEAdam/embedding_1/embeddings/vVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dense/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/gru_1/gru_cell_1/kernel/vLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE(Adam/gru_1/gru_cell_1/recurrent_kernel/vLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/gru_1/gru_cell_1/bias/vLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

!serving_default_embedding_1_inputPlaceholder*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ2
Ì
StatefulPartitionedCallStatefulPartitionedCall!serving_default_embedding_1_inputembedding_1/embeddingsgru_1/gru_cell_1/biasgru_1/gru_cell_1/kernel!gru_1/gru_cell_1/recurrent_kerneldense/kernel
dense/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *,
f'R%
#__inference_signature_wrapper_40482
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename*embedding_1/embeddings/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOpbeta_1/Read/ReadVariableOpbeta_2/Read/ReadVariableOpdecay/Read/ReadVariableOp!learning_rate/Read/ReadVariableOpAdam/iter/Read/ReadVariableOp+gru_1/gru_cell_1/kernel/Read/ReadVariableOp5gru_1/gru_cell_1/recurrent_kernel/Read/ReadVariableOp)gru_1/gru_cell_1/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp1Adam/embedding_1/embeddings/m/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp2Adam/gru_1/gru_cell_1/kernel/m/Read/ReadVariableOp<Adam/gru_1/gru_cell_1/recurrent_kernel/m/Read/ReadVariableOp0Adam/gru_1/gru_cell_1/bias/m/Read/ReadVariableOp1Adam/embedding_1/embeddings/v/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOp2Adam/gru_1/gru_cell_1/kernel/v/Read/ReadVariableOp<Adam/gru_1/gru_cell_1/recurrent_kernel/v/Read/ReadVariableOp0Adam/gru_1/gru_cell_1/bias/v/Read/ReadVariableOpConst*(
Tin!
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *'
f"R 
__inference__traced_save_42993
ä
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameembedding_1/embeddingsdense/kernel
dense/biasbeta_1beta_2decaylearning_rate	Adam/itergru_1/gru_cell_1/kernel!gru_1/gru_cell_1/recurrent_kernelgru_1/gru_cell_1/biastotalcounttotal_1count_1Adam/embedding_1/embeddings/mAdam/dense/kernel/mAdam/dense/bias/mAdam/gru_1/gru_cell_1/kernel/m(Adam/gru_1/gru_cell_1/recurrent_kernel/mAdam/gru_1/gru_cell_1/bias/mAdam/embedding_1/embeddings/vAdam/dense/kernel/vAdam/dense/bias/vAdam/gru_1/gru_cell_1/kernel/v(Adam/gru_1/gru_cell_1/recurrent_kernel/vAdam/gru_1/gru_cell_1/bias/v*'
Tin 
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__traced_restore_43084¤©*
¿
¹
%__inference_gru_1_layer_call_fn_41232
inputs_0
unknown:	Â
	unknown_0:	2Â
	unknown_1:
Â
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_gru_1_layer_call_and_return_conditional_losses_390442
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
"
_user_specified_name
inputs/0
Ç¯
ª
G__inference_sequential_2_layer_call_and_return_conditional_losses_41204

inputs4
"embedding_1_embedding_lookup_40816:2;
(gru_1_gru_cell_1_readvariableop_resource:	Â=
*gru_1_gru_cell_1_readvariableop_1_resource:	2Â>
*gru_1_gru_cell_1_readvariableop_4_resource:
Â7
$dense_matmul_readvariableop_resource:	3
%dense_biasadd_readvariableop_resource:
identity¢dense/BiasAdd/ReadVariableOp¢dense/MatMul/ReadVariableOp¢embedding_1/embedding_lookup¢gru_1/gru_cell_1/ReadVariableOp¢!gru_1/gru_cell_1/ReadVariableOp_1¢!gru_1/gru_cell_1/ReadVariableOp_2¢!gru_1/gru_cell_1/ReadVariableOp_3¢!gru_1/gru_cell_1/ReadVariableOp_4¢!gru_1/gru_cell_1/ReadVariableOp_5¢!gru_1/gru_cell_1/ReadVariableOp_6¢gru_1/whileu
embedding_1/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
embedding_1/Cast·
embedding_1/embedding_lookupResourceGather"embedding_1_embedding_lookup_40816embedding_1/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*5
_class+
)'loc:@embedding_1/embedding_lookup/40816*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*
dtype02
embedding_1/embedding_lookup
%embedding_1/embedding_lookup/IdentityIdentity%embedding_1/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*5
_class+
)'loc:@embedding_1/embedding_lookup/40816*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ222'
%embedding_1/embedding_lookup/IdentityÄ
'embedding_1/embedding_lookup/Identity_1Identity.embedding_1/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ222)
'embedding_1/embedding_lookup/Identity_1z
gru_1/ShapeShape0embedding_1/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:2
gru_1/Shape
gru_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_1/strided_slice/stack
gru_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru_1/strided_slice/stack_1
gru_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_1/strided_slice/stack_2
gru_1/strided_sliceStridedSlicegru_1/Shape:output:0"gru_1/strided_slice/stack:output:0$gru_1/strided_slice/stack_1:output:0$gru_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
gru_1/strided_slicei
gru_1/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
gru_1/zeros/mul/y
gru_1/zeros/mulMulgru_1/strided_slice:output:0gru_1/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
gru_1/zeros/mulk
gru_1/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
gru_1/zeros/Less/y
gru_1/zeros/LessLessgru_1/zeros/mul:z:0gru_1/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
gru_1/zeros/Lesso
gru_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :2
gru_1/zeros/packed/1
gru_1/zeros/packedPackgru_1/strided_slice:output:0gru_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
gru_1/zeros/packedk
gru_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
gru_1/zeros/Const
gru_1/zerosFillgru_1/zeros/packed:output:0gru_1/zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_1/zeros
gru_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gru_1/transpose/perm¶
gru_1/transpose	Transpose0embedding_1/embedding_lookup/Identity_1:output:0gru_1/transpose/perm:output:0*
T0*+
_output_shapes
:2ÿÿÿÿÿÿÿÿÿ22
gru_1/transposea
gru_1/Shape_1Shapegru_1/transpose:y:0*
T0*
_output_shapes
:2
gru_1/Shape_1
gru_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_1/strided_slice_1/stack
gru_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru_1/strided_slice_1/stack_1
gru_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_1/strided_slice_1/stack_2
gru_1/strided_slice_1StridedSlicegru_1/Shape_1:output:0$gru_1/strided_slice_1/stack:output:0&gru_1/strided_slice_1/stack_1:output:0&gru_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
gru_1/strided_slice_1
!gru_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2#
!gru_1/TensorArrayV2/element_shapeÊ
gru_1/TensorArrayV2TensorListReserve*gru_1/TensorArrayV2/element_shape:output:0gru_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
gru_1/TensorArrayV2Ë
;gru_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   2=
;gru_1/TensorArrayUnstack/TensorListFromTensor/element_shape
-gru_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorgru_1/transpose:y:0Dgru_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02/
-gru_1/TensorArrayUnstack/TensorListFromTensor
gru_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_1/strided_slice_2/stack
gru_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru_1/strided_slice_2/stack_1
gru_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_1/strided_slice_2/stack_2 
gru_1/strided_slice_2StridedSlicegru_1/transpose:y:0$gru_1/strided_slice_2/stack:output:0&gru_1/strided_slice_2/stack_1:output:0&gru_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask2
gru_1/strided_slice_2
 gru_1/gru_cell_1/ones_like/ShapeShapegru_1/strided_slice_2:output:0*
T0*
_output_shapes
:2"
 gru_1/gru_cell_1/ones_like/Shape
 gru_1/gru_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2"
 gru_1/gru_cell_1/ones_like/ConstÈ
gru_1/gru_cell_1/ones_likeFill)gru_1/gru_cell_1/ones_like/Shape:output:0)gru_1/gru_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
gru_1/gru_cell_1/ones_like
gru_1/gru_cell_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?2 
gru_1/gru_cell_1/dropout/ConstÃ
gru_1/gru_cell_1/dropout/MulMul#gru_1/gru_cell_1/ones_like:output:0'gru_1/gru_cell_1/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
gru_1/gru_cell_1/dropout/Mul
gru_1/gru_cell_1/dropout/ShapeShape#gru_1/gru_cell_1/ones_like:output:0*
T0*
_output_shapes
:2 
gru_1/gru_cell_1/dropout/Shape
5gru_1/gru_cell_1/dropout/random_uniform/RandomUniformRandomUniform'gru_1/gru_cell_1/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2ÈîØ27
5gru_1/gru_cell_1/dropout/random_uniform/RandomUniform
'gru_1/gru_cell_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2)
'gru_1/gru_cell_1/dropout/GreaterEqual/y
%gru_1/gru_cell_1/dropout/GreaterEqualGreaterEqual>gru_1/gru_cell_1/dropout/random_uniform/RandomUniform:output:00gru_1/gru_cell_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22'
%gru_1/gru_cell_1/dropout/GreaterEqual²
gru_1/gru_cell_1/dropout/CastCast)gru_1/gru_cell_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
gru_1/gru_cell_1/dropout/Cast¾
gru_1/gru_cell_1/dropout/Mul_1Mul gru_1/gru_cell_1/dropout/Mul:z:0!gru_1/gru_cell_1/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22 
gru_1/gru_cell_1/dropout/Mul_1
 gru_1/gru_cell_1/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?2"
 gru_1/gru_cell_1/dropout_1/ConstÉ
gru_1/gru_cell_1/dropout_1/MulMul#gru_1/gru_cell_1/ones_like:output:0)gru_1/gru_cell_1/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22 
gru_1/gru_cell_1/dropout_1/Mul
 gru_1/gru_cell_1/dropout_1/ShapeShape#gru_1/gru_cell_1/ones_like:output:0*
T0*
_output_shapes
:2"
 gru_1/gru_cell_1/dropout_1/Shape
7gru_1/gru_cell_1/dropout_1/random_uniform/RandomUniformRandomUniform)gru_1/gru_cell_1/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2ù¹29
7gru_1/gru_cell_1/dropout_1/random_uniform/RandomUniform
)gru_1/gru_cell_1/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2+
)gru_1/gru_cell_1/dropout_1/GreaterEqual/y
'gru_1/gru_cell_1/dropout_1/GreaterEqualGreaterEqual@gru_1/gru_cell_1/dropout_1/random_uniform/RandomUniform:output:02gru_1/gru_cell_1/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22)
'gru_1/gru_cell_1/dropout_1/GreaterEqual¸
gru_1/gru_cell_1/dropout_1/CastCast+gru_1/gru_cell_1/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22!
gru_1/gru_cell_1/dropout_1/CastÆ
 gru_1/gru_cell_1/dropout_1/Mul_1Mul"gru_1/gru_cell_1/dropout_1/Mul:z:0#gru_1/gru_cell_1/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22"
 gru_1/gru_cell_1/dropout_1/Mul_1
 gru_1/gru_cell_1/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?2"
 gru_1/gru_cell_1/dropout_2/ConstÉ
gru_1/gru_cell_1/dropout_2/MulMul#gru_1/gru_cell_1/ones_like:output:0)gru_1/gru_cell_1/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22 
gru_1/gru_cell_1/dropout_2/Mul
 gru_1/gru_cell_1/dropout_2/ShapeShape#gru_1/gru_cell_1/ones_like:output:0*
T0*
_output_shapes
:2"
 gru_1/gru_cell_1/dropout_2/Shape
7gru_1/gru_cell_1/dropout_2/random_uniform/RandomUniformRandomUniform)gru_1/gru_cell_1/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2äò 29
7gru_1/gru_cell_1/dropout_2/random_uniform/RandomUniform
)gru_1/gru_cell_1/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2+
)gru_1/gru_cell_1/dropout_2/GreaterEqual/y
'gru_1/gru_cell_1/dropout_2/GreaterEqualGreaterEqual@gru_1/gru_cell_1/dropout_2/random_uniform/RandomUniform:output:02gru_1/gru_cell_1/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22)
'gru_1/gru_cell_1/dropout_2/GreaterEqual¸
gru_1/gru_cell_1/dropout_2/CastCast+gru_1/gru_cell_1/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22!
gru_1/gru_cell_1/dropout_2/CastÆ
 gru_1/gru_cell_1/dropout_2/Mul_1Mul"gru_1/gru_cell_1/dropout_2/Mul:z:0#gru_1/gru_cell_1/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22"
 gru_1/gru_cell_1/dropout_2/Mul_1
"gru_1/gru_cell_1/ones_like_1/ShapeShapegru_1/zeros:output:0*
T0*
_output_shapes
:2$
"gru_1/gru_cell_1/ones_like_1/Shape
"gru_1/gru_cell_1/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2$
"gru_1/gru_cell_1/ones_like_1/ConstÑ
gru_1/gru_cell_1/ones_like_1Fill+gru_1/gru_cell_1/ones_like_1/Shape:output:0+gru_1/gru_cell_1/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_1/gru_cell_1/ones_like_1
 gru_1/gru_cell_1/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?2"
 gru_1/gru_cell_1/dropout_3/ConstÌ
gru_1/gru_cell_1/dropout_3/MulMul%gru_1/gru_cell_1/ones_like_1:output:0)gru_1/gru_cell_1/dropout_3/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
gru_1/gru_cell_1/dropout_3/Mul
 gru_1/gru_cell_1/dropout_3/ShapeShape%gru_1/gru_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:2"
 gru_1/gru_cell_1/dropout_3/Shape
7gru_1/gru_cell_1/dropout_3/random_uniform/RandomUniformRandomUniform)gru_1/gru_cell_1/dropout_3/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
seed±ÿå)*
seed2ÎË¤29
7gru_1/gru_cell_1/dropout_3/random_uniform/RandomUniform
)gru_1/gru_cell_1/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2+
)gru_1/gru_cell_1/dropout_3/GreaterEqual/y
'gru_1/gru_cell_1/dropout_3/GreaterEqualGreaterEqual@gru_1/gru_cell_1/dropout_3/random_uniform/RandomUniform:output:02gru_1/gru_cell_1/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'gru_1/gru_cell_1/dropout_3/GreaterEqual¹
gru_1/gru_cell_1/dropout_3/CastCast+gru_1/gru_cell_1/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
gru_1/gru_cell_1/dropout_3/CastÇ
 gru_1/gru_cell_1/dropout_3/Mul_1Mul"gru_1/gru_cell_1/dropout_3/Mul:z:0#gru_1/gru_cell_1/dropout_3/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 gru_1/gru_cell_1/dropout_3/Mul_1
 gru_1/gru_cell_1/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?2"
 gru_1/gru_cell_1/dropout_4/ConstÌ
gru_1/gru_cell_1/dropout_4/MulMul%gru_1/gru_cell_1/ones_like_1:output:0)gru_1/gru_cell_1/dropout_4/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
gru_1/gru_cell_1/dropout_4/Mul
 gru_1/gru_cell_1/dropout_4/ShapeShape%gru_1/gru_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:2"
 gru_1/gru_cell_1/dropout_4/Shape
7gru_1/gru_cell_1/dropout_4/random_uniform/RandomUniformRandomUniform)gru_1/gru_cell_1/dropout_4/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
seed±ÿå)*
seed2Àä×29
7gru_1/gru_cell_1/dropout_4/random_uniform/RandomUniform
)gru_1/gru_cell_1/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2+
)gru_1/gru_cell_1/dropout_4/GreaterEqual/y
'gru_1/gru_cell_1/dropout_4/GreaterEqualGreaterEqual@gru_1/gru_cell_1/dropout_4/random_uniform/RandomUniform:output:02gru_1/gru_cell_1/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'gru_1/gru_cell_1/dropout_4/GreaterEqual¹
gru_1/gru_cell_1/dropout_4/CastCast+gru_1/gru_cell_1/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
gru_1/gru_cell_1/dropout_4/CastÇ
 gru_1/gru_cell_1/dropout_4/Mul_1Mul"gru_1/gru_cell_1/dropout_4/Mul:z:0#gru_1/gru_cell_1/dropout_4/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 gru_1/gru_cell_1/dropout_4/Mul_1
 gru_1/gru_cell_1/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?2"
 gru_1/gru_cell_1/dropout_5/ConstÌ
gru_1/gru_cell_1/dropout_5/MulMul%gru_1/gru_cell_1/ones_like_1:output:0)gru_1/gru_cell_1/dropout_5/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
gru_1/gru_cell_1/dropout_5/Mul
 gru_1/gru_cell_1/dropout_5/ShapeShape%gru_1/gru_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:2"
 gru_1/gru_cell_1/dropout_5/Shape
7gru_1/gru_cell_1/dropout_5/random_uniform/RandomUniformRandomUniform)gru_1/gru_cell_1/dropout_5/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
seed±ÿå)*
seed2Ê29
7gru_1/gru_cell_1/dropout_5/random_uniform/RandomUniform
)gru_1/gru_cell_1/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2+
)gru_1/gru_cell_1/dropout_5/GreaterEqual/y
'gru_1/gru_cell_1/dropout_5/GreaterEqualGreaterEqual@gru_1/gru_cell_1/dropout_5/random_uniform/RandomUniform:output:02gru_1/gru_cell_1/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'gru_1/gru_cell_1/dropout_5/GreaterEqual¹
gru_1/gru_cell_1/dropout_5/CastCast+gru_1/gru_cell_1/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
gru_1/gru_cell_1/dropout_5/CastÇ
 gru_1/gru_cell_1/dropout_5/Mul_1Mul"gru_1/gru_cell_1/dropout_5/Mul:z:0#gru_1/gru_cell_1/dropout_5/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 gru_1/gru_cell_1/dropout_5/Mul_1¬
gru_1/gru_cell_1/ReadVariableOpReadVariableOp(gru_1_gru_cell_1_readvariableop_resource*
_output_shapes
:	Â*
dtype02!
gru_1/gru_cell_1/ReadVariableOp
gru_1/gru_cell_1/unstackUnpack'gru_1/gru_cell_1/ReadVariableOp:value:0*
T0*"
_output_shapes
:Â:Â*	
num2
gru_1/gru_cell_1/unstack©
gru_1/gru_cell_1/mulMulgru_1/strided_slice_2:output:0"gru_1/gru_cell_1/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
gru_1/gru_cell_1/mul¯
gru_1/gru_cell_1/mul_1Mulgru_1/strided_slice_2:output:0$gru_1/gru_cell_1/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
gru_1/gru_cell_1/mul_1¯
gru_1/gru_cell_1/mul_2Mulgru_1/strided_slice_2:output:0$gru_1/gru_cell_1/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
gru_1/gru_cell_1/mul_2²
!gru_1/gru_cell_1/ReadVariableOp_1ReadVariableOp*gru_1_gru_cell_1_readvariableop_1_resource*
_output_shapes
:	2Â*
dtype02#
!gru_1/gru_cell_1/ReadVariableOp_1
$gru_1/gru_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2&
$gru_1/gru_cell_1/strided_slice/stack¡
&gru_1/gru_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2(
&gru_1/gru_cell_1/strided_slice/stack_1¡
&gru_1/gru_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&gru_1/gru_cell_1/strided_slice/stack_2å
gru_1/gru_cell_1/strided_sliceStridedSlice)gru_1/gru_cell_1/ReadVariableOp_1:value:0-gru_1/gru_cell_1/strided_slice/stack:output:0/gru_1/gru_cell_1/strided_slice/stack_1:output:0/gru_1/gru_cell_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2*

begin_mask*
end_mask2 
gru_1/gru_cell_1/strided_slice²
gru_1/gru_cell_1/MatMulMatMulgru_1/gru_cell_1/mul:z:0'gru_1/gru_cell_1/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_1/gru_cell_1/MatMul²
!gru_1/gru_cell_1/ReadVariableOp_2ReadVariableOp*gru_1_gru_cell_1_readvariableop_1_resource*
_output_shapes
:	2Â*
dtype02#
!gru_1/gru_cell_1/ReadVariableOp_2¡
&gru_1/gru_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2(
&gru_1/gru_cell_1/strided_slice_1/stack¥
(gru_1/gru_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2*
(gru_1/gru_cell_1/strided_slice_1/stack_1¥
(gru_1/gru_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(gru_1/gru_cell_1/strided_slice_1/stack_2ï
 gru_1/gru_cell_1/strided_slice_1StridedSlice)gru_1/gru_cell_1/ReadVariableOp_2:value:0/gru_1/gru_cell_1/strided_slice_1/stack:output:01gru_1/gru_cell_1/strided_slice_1/stack_1:output:01gru_1/gru_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2*

begin_mask*
end_mask2"
 gru_1/gru_cell_1/strided_slice_1º
gru_1/gru_cell_1/MatMul_1MatMulgru_1/gru_cell_1/mul_1:z:0)gru_1/gru_cell_1/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_1/gru_cell_1/MatMul_1²
!gru_1/gru_cell_1/ReadVariableOp_3ReadVariableOp*gru_1_gru_cell_1_readvariableop_1_resource*
_output_shapes
:	2Â*
dtype02#
!gru_1/gru_cell_1/ReadVariableOp_3¡
&gru_1/gru_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2(
&gru_1/gru_cell_1/strided_slice_2/stack¥
(gru_1/gru_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(gru_1/gru_cell_1/strided_slice_2/stack_1¥
(gru_1/gru_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(gru_1/gru_cell_1/strided_slice_2/stack_2ï
 gru_1/gru_cell_1/strided_slice_2StridedSlice)gru_1/gru_cell_1/ReadVariableOp_3:value:0/gru_1/gru_cell_1/strided_slice_2/stack:output:01gru_1/gru_cell_1/strided_slice_2/stack_1:output:01gru_1/gru_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2*

begin_mask*
end_mask2"
 gru_1/gru_cell_1/strided_slice_2º
gru_1/gru_cell_1/MatMul_2MatMulgru_1/gru_cell_1/mul_2:z:0)gru_1/gru_cell_1/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_1/gru_cell_1/MatMul_2
&gru_1/gru_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&gru_1/gru_cell_1/strided_slice_3/stack
(gru_1/gru_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(gru_1/gru_cell_1/strided_slice_3/stack_1
(gru_1/gru_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(gru_1/gru_cell_1/strided_slice_3/stack_2Ó
 gru_1/gru_cell_1/strided_slice_3StridedSlice!gru_1/gru_cell_1/unstack:output:0/gru_1/gru_cell_1/strided_slice_3/stack:output:01gru_1/gru_cell_1/strided_slice_3/stack_1:output:01gru_1/gru_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes	
:*

begin_mask2"
 gru_1/gru_cell_1/strided_slice_3À
gru_1/gru_cell_1/BiasAddBiasAdd!gru_1/gru_cell_1/MatMul:product:0)gru_1/gru_cell_1/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_1/gru_cell_1/BiasAdd
&gru_1/gru_cell_1/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:2(
&gru_1/gru_cell_1/strided_slice_4/stack
(gru_1/gru_cell_1/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:¬2*
(gru_1/gru_cell_1/strided_slice_4/stack_1
(gru_1/gru_cell_1/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(gru_1/gru_cell_1/strided_slice_4/stack_2Á
 gru_1/gru_cell_1/strided_slice_4StridedSlice!gru_1/gru_cell_1/unstack:output:0/gru_1/gru_cell_1/strided_slice_4/stack:output:01gru_1/gru_cell_1/strided_slice_4/stack_1:output:01gru_1/gru_cell_1/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes	
:2"
 gru_1/gru_cell_1/strided_slice_4Æ
gru_1/gru_cell_1/BiasAdd_1BiasAdd#gru_1/gru_cell_1/MatMul_1:product:0)gru_1/gru_cell_1/strided_slice_4:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_1/gru_cell_1/BiasAdd_1
&gru_1/gru_cell_1/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:¬2(
&gru_1/gru_cell_1/strided_slice_5/stack
(gru_1/gru_cell_1/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2*
(gru_1/gru_cell_1/strided_slice_5/stack_1
(gru_1/gru_cell_1/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(gru_1/gru_cell_1/strided_slice_5/stack_2Ñ
 gru_1/gru_cell_1/strided_slice_5StridedSlice!gru_1/gru_cell_1/unstack:output:0/gru_1/gru_cell_1/strided_slice_5/stack:output:01gru_1/gru_cell_1/strided_slice_5/stack_1:output:01gru_1/gru_cell_1/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes	
:*
end_mask2"
 gru_1/gru_cell_1/strided_slice_5Æ
gru_1/gru_cell_1/BiasAdd_2BiasAdd#gru_1/gru_cell_1/MatMul_2:product:0)gru_1/gru_cell_1/strided_slice_5:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_1/gru_cell_1/BiasAdd_2¦
gru_1/gru_cell_1/mul_3Mulgru_1/zeros:output:0$gru_1/gru_cell_1/dropout_3/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_1/gru_cell_1/mul_3¦
gru_1/gru_cell_1/mul_4Mulgru_1/zeros:output:0$gru_1/gru_cell_1/dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_1/gru_cell_1/mul_4¦
gru_1/gru_cell_1/mul_5Mulgru_1/zeros:output:0$gru_1/gru_cell_1/dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_1/gru_cell_1/mul_5³
!gru_1/gru_cell_1/ReadVariableOp_4ReadVariableOp*gru_1_gru_cell_1_readvariableop_4_resource* 
_output_shapes
:
Â*
dtype02#
!gru_1/gru_cell_1/ReadVariableOp_4¡
&gru_1/gru_cell_1/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&gru_1/gru_cell_1/strided_slice_6/stack¥
(gru_1/gru_cell_1/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2*
(gru_1/gru_cell_1/strided_slice_6/stack_1¥
(gru_1/gru_cell_1/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(gru_1/gru_cell_1/strided_slice_6/stack_2ð
 gru_1/gru_cell_1/strided_slice_6StridedSlice)gru_1/gru_cell_1/ReadVariableOp_4:value:0/gru_1/gru_cell_1/strided_slice_6/stack:output:01gru_1/gru_cell_1/strided_slice_6/stack_1:output:01gru_1/gru_cell_1/strided_slice_6/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2"
 gru_1/gru_cell_1/strided_slice_6º
gru_1/gru_cell_1/MatMul_3MatMulgru_1/gru_cell_1/mul_3:z:0)gru_1/gru_cell_1/strided_slice_6:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_1/gru_cell_1/MatMul_3³
!gru_1/gru_cell_1/ReadVariableOp_5ReadVariableOp*gru_1_gru_cell_1_readvariableop_4_resource* 
_output_shapes
:
Â*
dtype02#
!gru_1/gru_cell_1/ReadVariableOp_5¡
&gru_1/gru_cell_1/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"       2(
&gru_1/gru_cell_1/strided_slice_7/stack¥
(gru_1/gru_cell_1/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2*
(gru_1/gru_cell_1/strided_slice_7/stack_1¥
(gru_1/gru_cell_1/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(gru_1/gru_cell_1/strided_slice_7/stack_2ð
 gru_1/gru_cell_1/strided_slice_7StridedSlice)gru_1/gru_cell_1/ReadVariableOp_5:value:0/gru_1/gru_cell_1/strided_slice_7/stack:output:01gru_1/gru_cell_1/strided_slice_7/stack_1:output:01gru_1/gru_cell_1/strided_slice_7/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2"
 gru_1/gru_cell_1/strided_slice_7º
gru_1/gru_cell_1/MatMul_4MatMulgru_1/gru_cell_1/mul_4:z:0)gru_1/gru_cell_1/strided_slice_7:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_1/gru_cell_1/MatMul_4
&gru_1/gru_cell_1/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&gru_1/gru_cell_1/strided_slice_8/stack
(gru_1/gru_cell_1/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(gru_1/gru_cell_1/strided_slice_8/stack_1
(gru_1/gru_cell_1/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(gru_1/gru_cell_1/strided_slice_8/stack_2Ó
 gru_1/gru_cell_1/strided_slice_8StridedSlice!gru_1/gru_cell_1/unstack:output:1/gru_1/gru_cell_1/strided_slice_8/stack:output:01gru_1/gru_cell_1/strided_slice_8/stack_1:output:01gru_1/gru_cell_1/strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes	
:*

begin_mask2"
 gru_1/gru_cell_1/strided_slice_8Æ
gru_1/gru_cell_1/BiasAdd_3BiasAdd#gru_1/gru_cell_1/MatMul_3:product:0)gru_1/gru_cell_1/strided_slice_8:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_1/gru_cell_1/BiasAdd_3
&gru_1/gru_cell_1/strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB:2(
&gru_1/gru_cell_1/strided_slice_9/stack
(gru_1/gru_cell_1/strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:¬2*
(gru_1/gru_cell_1/strided_slice_9/stack_1
(gru_1/gru_cell_1/strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(gru_1/gru_cell_1/strided_slice_9/stack_2Á
 gru_1/gru_cell_1/strided_slice_9StridedSlice!gru_1/gru_cell_1/unstack:output:1/gru_1/gru_cell_1/strided_slice_9/stack:output:01gru_1/gru_cell_1/strided_slice_9/stack_1:output:01gru_1/gru_cell_1/strided_slice_9/stack_2:output:0*
Index0*
T0*
_output_shapes	
:2"
 gru_1/gru_cell_1/strided_slice_9Æ
gru_1/gru_cell_1/BiasAdd_4BiasAdd#gru_1/gru_cell_1/MatMul_4:product:0)gru_1/gru_cell_1/strided_slice_9:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_1/gru_cell_1/BiasAdd_4°
gru_1/gru_cell_1/addAddV2!gru_1/gru_cell_1/BiasAdd:output:0#gru_1/gru_cell_1/BiasAdd_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_1/gru_cell_1/add
gru_1/gru_cell_1/SigmoidSigmoidgru_1/gru_cell_1/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_1/gru_cell_1/Sigmoid¶
gru_1/gru_cell_1/add_1AddV2#gru_1/gru_cell_1/BiasAdd_1:output:0#gru_1/gru_cell_1/BiasAdd_4:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_1/gru_cell_1/add_1
gru_1/gru_cell_1/Sigmoid_1Sigmoidgru_1/gru_cell_1/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_1/gru_cell_1/Sigmoid_1³
!gru_1/gru_cell_1/ReadVariableOp_6ReadVariableOp*gru_1_gru_cell_1_readvariableop_4_resource* 
_output_shapes
:
Â*
dtype02#
!gru_1/gru_cell_1/ReadVariableOp_6£
'gru_1/gru_cell_1/strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2)
'gru_1/gru_cell_1/strided_slice_10/stack§
)gru_1/gru_cell_1/strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)gru_1/gru_cell_1/strided_slice_10/stack_1§
)gru_1/gru_cell_1/strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)gru_1/gru_cell_1/strided_slice_10/stack_2õ
!gru_1/gru_cell_1/strided_slice_10StridedSlice)gru_1/gru_cell_1/ReadVariableOp_6:value:00gru_1/gru_cell_1/strided_slice_10/stack:output:02gru_1/gru_cell_1/strided_slice_10/stack_1:output:02gru_1/gru_cell_1/strided_slice_10/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2#
!gru_1/gru_cell_1/strided_slice_10»
gru_1/gru_cell_1/MatMul_5MatMulgru_1/gru_cell_1/mul_5:z:0*gru_1/gru_cell_1/strided_slice_10:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_1/gru_cell_1/MatMul_5
'gru_1/gru_cell_1/strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB:¬2)
'gru_1/gru_cell_1/strided_slice_11/stack 
)gru_1/gru_cell_1/strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2+
)gru_1/gru_cell_1/strided_slice_11/stack_1 
)gru_1/gru_cell_1/strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)gru_1/gru_cell_1/strided_slice_11/stack_2Ö
!gru_1/gru_cell_1/strided_slice_11StridedSlice!gru_1/gru_cell_1/unstack:output:10gru_1/gru_cell_1/strided_slice_11/stack:output:02gru_1/gru_cell_1/strided_slice_11/stack_1:output:02gru_1/gru_cell_1/strided_slice_11/stack_2:output:0*
Index0*
T0*
_output_shapes	
:*
end_mask2#
!gru_1/gru_cell_1/strided_slice_11Ç
gru_1/gru_cell_1/BiasAdd_5BiasAdd#gru_1/gru_cell_1/MatMul_5:product:0*gru_1/gru_cell_1/strided_slice_11:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_1/gru_cell_1/BiasAdd_5¯
gru_1/gru_cell_1/mul_6Mulgru_1/gru_cell_1/Sigmoid_1:y:0#gru_1/gru_cell_1/BiasAdd_5:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_1/gru_cell_1/mul_6­
gru_1/gru_cell_1/add_2AddV2#gru_1/gru_cell_1/BiasAdd_2:output:0gru_1/gru_cell_1/mul_6:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_1/gru_cell_1/add_2
gru_1/gru_cell_1/TanhTanhgru_1/gru_cell_1/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_1/gru_cell_1/Tanh
gru_1/gru_cell_1/mul_7Mulgru_1/gru_cell_1/Sigmoid:y:0gru_1/zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_1/gru_cell_1/mul_7u
gru_1/gru_cell_1/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_1/gru_cell_1/sub/x¥
gru_1/gru_cell_1/subSubgru_1/gru_cell_1/sub/x:output:0gru_1/gru_cell_1/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_1/gru_cell_1/sub
gru_1/gru_cell_1/mul_8Mulgru_1/gru_cell_1/sub:z:0gru_1/gru_cell_1/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_1/gru_cell_1/mul_8¤
gru_1/gru_cell_1/add_3AddV2gru_1/gru_cell_1/mul_7:z:0gru_1/gru_cell_1/mul_8:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_1/gru_cell_1/add_3
#gru_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2%
#gru_1/TensorArrayV2_1/element_shapeÐ
gru_1/TensorArrayV2_1TensorListReserve,gru_1/TensorArrayV2_1/element_shape:output:0gru_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
gru_1/TensorArrayV2_1Z

gru_1/timeConst*
_output_shapes
: *
dtype0*
value	B : 2

gru_1/time
gru_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2 
gru_1/while/maximum_iterationsv
gru_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
gru_1/while/loop_counter
gru_1/whileWhile!gru_1/while/loop_counter:output:0'gru_1/while/maximum_iterations:output:0gru_1/time:output:0gru_1/TensorArrayV2_1:handle:0gru_1/zeros:output:0gru_1/strided_slice_1:output:0=gru_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0(gru_1_gru_cell_1_readvariableop_resource*gru_1_gru_cell_1_readvariableop_1_resource*gru_1_gru_cell_1_readvariableop_4_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *"
bodyR
gru_1_while_body_40997*"
condR
gru_1_while_cond_40996*9
output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
gru_1/whileÁ
6gru_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   28
6gru_1/TensorArrayV2Stack/TensorListStack/element_shape
(gru_1/TensorArrayV2Stack/TensorListStackTensorListStackgru_1/while:output:3?gru_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:2ÿÿÿÿÿÿÿÿÿ*
element_dtype02*
(gru_1/TensorArrayV2Stack/TensorListStack
gru_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
gru_1/strided_slice_3/stack
gru_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
gru_1/strided_slice_3/stack_1
gru_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_1/strided_slice_3/stack_2¿
gru_1/strided_slice_3StridedSlice1gru_1/TensorArrayV2Stack/TensorListStack:tensor:0$gru_1/strided_slice_3/stack:output:0&gru_1/strided_slice_3/stack_1:output:0&gru_1/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
gru_1/strided_slice_3
gru_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gru_1/transpose_1/perm¾
gru_1/transpose_1	Transpose1gru_1/TensorArrayV2Stack/TensorListStack:tensor:0gru_1/transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
gru_1/transpose_1r
gru_1/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
gru_1/runtime 
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02
dense/MatMul/ReadVariableOp
dense/MatMulMatMulgru_1/strided_slice_3:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense/MatMul
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
dense/BiasAdd/ReadVariableOp
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense/BiasAdds
dense/SoftmaxSoftmaxdense/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense/Softmaxr
IdentityIdentitydense/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity²
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^embedding_1/embedding_lookup ^gru_1/gru_cell_1/ReadVariableOp"^gru_1/gru_cell_1/ReadVariableOp_1"^gru_1/gru_cell_1/ReadVariableOp_2"^gru_1/gru_cell_1/ReadVariableOp_3"^gru_1/gru_cell_1/ReadVariableOp_4"^gru_1/gru_cell_1/ReadVariableOp_5"^gru_1/gru_cell_1/ReadVariableOp_6^gru_1/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ2: : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2<
embedding_1/embedding_lookupembedding_1/embedding_lookup2B
gru_1/gru_cell_1/ReadVariableOpgru_1/gru_cell_1/ReadVariableOp2F
!gru_1/gru_cell_1/ReadVariableOp_1!gru_1/gru_cell_1/ReadVariableOp_12F
!gru_1/gru_cell_1/ReadVariableOp_2!gru_1/gru_cell_1/ReadVariableOp_22F
!gru_1/gru_cell_1/ReadVariableOp_3!gru_1/gru_cell_1/ReadVariableOp_32F
!gru_1/gru_cell_1/ReadVariableOp_4!gru_1/gru_cell_1/ReadVariableOp_42F
!gru_1/gru_cell_1/ReadVariableOp_5!gru_1/gru_cell_1/ReadVariableOp_52F
!gru_1/gru_cell_1/ReadVariableOp_6!gru_1/gru_cell_1/ReadVariableOp_62
gru_1/whilegru_1/while:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
¬
á
@__inference_gru_1_layer_call_and_return_conditional_losses_40332

inputs5
"gru_cell_1_readvariableop_resource:	Â7
$gru_cell_1_readvariableop_1_resource:	2Â8
$gru_cell_1_readvariableop_4_resource:
Â
identity¢gru_cell_1/ReadVariableOp¢gru_cell_1/ReadVariableOp_1¢gru_cell_1/ReadVariableOp_2¢gru_cell_1/ReadVariableOp_3¢gru_cell_1/ReadVariableOp_4¢gru_cell_1/ReadVariableOp_5¢gru_cell_1/ReadVariableOp_6¢whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:2ÿÿÿÿÿÿÿÿÿ22
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask2
strided_slice_2
gru_cell_1/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
gru_cell_1/ones_like/Shape}
gru_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_cell_1/ones_like/Const°
gru_cell_1/ones_likeFill#gru_cell_1/ones_like/Shape:output:0#gru_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
gru_cell_1/ones_likey
gru_cell_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?2
gru_cell_1/dropout/Const«
gru_cell_1/dropout/MulMulgru_cell_1/ones_like:output:0!gru_cell_1/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
gru_cell_1/dropout/Mul
gru_cell_1/dropout/ShapeShapegru_cell_1/ones_like:output:0*
T0*
_output_shapes
:2
gru_cell_1/dropout/Shapeô
/gru_cell_1/dropout/random_uniform/RandomUniformRandomUniform!gru_cell_1/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2Ò£21
/gru_cell_1/dropout/random_uniform/RandomUniform
!gru_cell_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2#
!gru_cell_1/dropout/GreaterEqual/yê
gru_cell_1/dropout/GreaterEqualGreaterEqual8gru_cell_1/dropout/random_uniform/RandomUniform:output:0*gru_cell_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22!
gru_cell_1/dropout/GreaterEqual 
gru_cell_1/dropout/CastCast#gru_cell_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
gru_cell_1/dropout/Cast¦
gru_cell_1/dropout/Mul_1Mulgru_cell_1/dropout/Mul:z:0gru_cell_1/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
gru_cell_1/dropout/Mul_1}
gru_cell_1/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?2
gru_cell_1/dropout_1/Const±
gru_cell_1/dropout_1/MulMulgru_cell_1/ones_like:output:0#gru_cell_1/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
gru_cell_1/dropout_1/Mul
gru_cell_1/dropout_1/ShapeShapegru_cell_1/ones_like:output:0*
T0*
_output_shapes
:2
gru_cell_1/dropout_1/Shapeú
1gru_cell_1/dropout_1/random_uniform/RandomUniformRandomUniform#gru_cell_1/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2Æ¹Ö23
1gru_cell_1/dropout_1/random_uniform/RandomUniform
#gru_cell_1/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2%
#gru_cell_1/dropout_1/GreaterEqual/yò
!gru_cell_1/dropout_1/GreaterEqualGreaterEqual:gru_cell_1/dropout_1/random_uniform/RandomUniform:output:0,gru_cell_1/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22#
!gru_cell_1/dropout_1/GreaterEqual¦
gru_cell_1/dropout_1/CastCast%gru_cell_1/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
gru_cell_1/dropout_1/Cast®
gru_cell_1/dropout_1/Mul_1Mulgru_cell_1/dropout_1/Mul:z:0gru_cell_1/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
gru_cell_1/dropout_1/Mul_1}
gru_cell_1/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?2
gru_cell_1/dropout_2/Const±
gru_cell_1/dropout_2/MulMulgru_cell_1/ones_like:output:0#gru_cell_1/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
gru_cell_1/dropout_2/Mul
gru_cell_1/dropout_2/ShapeShapegru_cell_1/ones_like:output:0*
T0*
_output_shapes
:2
gru_cell_1/dropout_2/Shapeú
1gru_cell_1/dropout_2/random_uniform/RandomUniformRandomUniform#gru_cell_1/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2÷ç¤23
1gru_cell_1/dropout_2/random_uniform/RandomUniform
#gru_cell_1/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2%
#gru_cell_1/dropout_2/GreaterEqual/yò
!gru_cell_1/dropout_2/GreaterEqualGreaterEqual:gru_cell_1/dropout_2/random_uniform/RandomUniform:output:0,gru_cell_1/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22#
!gru_cell_1/dropout_2/GreaterEqual¦
gru_cell_1/dropout_2/CastCast%gru_cell_1/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
gru_cell_1/dropout_2/Cast®
gru_cell_1/dropout_2/Mul_1Mulgru_cell_1/dropout_2/Mul:z:0gru_cell_1/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
gru_cell_1/dropout_2/Mul_1z
gru_cell_1/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
gru_cell_1/ones_like_1/Shape
gru_cell_1/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_cell_1/ones_like_1/Const¹
gru_cell_1/ones_like_1Fill%gru_cell_1/ones_like_1/Shape:output:0%gru_cell_1/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/ones_like_1}
gru_cell_1/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?2
gru_cell_1/dropout_3/Const´
gru_cell_1/dropout_3/MulMulgru_cell_1/ones_like_1:output:0#gru_cell_1/dropout_3/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/dropout_3/Mul
gru_cell_1/dropout_3/ShapeShapegru_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:2
gru_cell_1/dropout_3/Shapeú
1gru_cell_1/dropout_3/random_uniform/RandomUniformRandomUniform#gru_cell_1/dropout_3/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
seed±ÿå)*
seed2¯Îx23
1gru_cell_1/dropout_3/random_uniform/RandomUniform
#gru_cell_1/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2%
#gru_cell_1/dropout_3/GreaterEqual/yó
!gru_cell_1/dropout_3/GreaterEqualGreaterEqual:gru_cell_1/dropout_3/random_uniform/RandomUniform:output:0,gru_cell_1/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!gru_cell_1/dropout_3/GreaterEqual§
gru_cell_1/dropout_3/CastCast%gru_cell_1/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/dropout_3/Cast¯
gru_cell_1/dropout_3/Mul_1Mulgru_cell_1/dropout_3/Mul:z:0gru_cell_1/dropout_3/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/dropout_3/Mul_1}
gru_cell_1/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?2
gru_cell_1/dropout_4/Const´
gru_cell_1/dropout_4/MulMulgru_cell_1/ones_like_1:output:0#gru_cell_1/dropout_4/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/dropout_4/Mul
gru_cell_1/dropout_4/ShapeShapegru_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:2
gru_cell_1/dropout_4/Shapeû
1gru_cell_1/dropout_4/random_uniform/RandomUniformRandomUniform#gru_cell_1/dropout_4/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
seed±ÿå)*
seed2£É²23
1gru_cell_1/dropout_4/random_uniform/RandomUniform
#gru_cell_1/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2%
#gru_cell_1/dropout_4/GreaterEqual/yó
!gru_cell_1/dropout_4/GreaterEqualGreaterEqual:gru_cell_1/dropout_4/random_uniform/RandomUniform:output:0,gru_cell_1/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!gru_cell_1/dropout_4/GreaterEqual§
gru_cell_1/dropout_4/CastCast%gru_cell_1/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/dropout_4/Cast¯
gru_cell_1/dropout_4/Mul_1Mulgru_cell_1/dropout_4/Mul:z:0gru_cell_1/dropout_4/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/dropout_4/Mul_1}
gru_cell_1/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?2
gru_cell_1/dropout_5/Const´
gru_cell_1/dropout_5/MulMulgru_cell_1/ones_like_1:output:0#gru_cell_1/dropout_5/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/dropout_5/Mul
gru_cell_1/dropout_5/ShapeShapegru_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:2
gru_cell_1/dropout_5/Shapeû
1gru_cell_1/dropout_5/random_uniform/RandomUniformRandomUniform#gru_cell_1/dropout_5/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
seed±ÿå)*
seed2ê¿ê23
1gru_cell_1/dropout_5/random_uniform/RandomUniform
#gru_cell_1/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2%
#gru_cell_1/dropout_5/GreaterEqual/yó
!gru_cell_1/dropout_5/GreaterEqualGreaterEqual:gru_cell_1/dropout_5/random_uniform/RandomUniform:output:0,gru_cell_1/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!gru_cell_1/dropout_5/GreaterEqual§
gru_cell_1/dropout_5/CastCast%gru_cell_1/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/dropout_5/Cast¯
gru_cell_1/dropout_5/Mul_1Mulgru_cell_1/dropout_5/Mul:z:0gru_cell_1/dropout_5/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/dropout_5/Mul_1
gru_cell_1/ReadVariableOpReadVariableOp"gru_cell_1_readvariableop_resource*
_output_shapes
:	Â*
dtype02
gru_cell_1/ReadVariableOp
gru_cell_1/unstackUnpack!gru_cell_1/ReadVariableOp:value:0*
T0*"
_output_shapes
:Â:Â*	
num2
gru_cell_1/unstack
gru_cell_1/mulMulstrided_slice_2:output:0gru_cell_1/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
gru_cell_1/mul
gru_cell_1/mul_1Mulstrided_slice_2:output:0gru_cell_1/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
gru_cell_1/mul_1
gru_cell_1/mul_2Mulstrided_slice_2:output:0gru_cell_1/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
gru_cell_1/mul_2 
gru_cell_1/ReadVariableOp_1ReadVariableOp$gru_cell_1_readvariableop_1_resource*
_output_shapes
:	2Â*
dtype02
gru_cell_1/ReadVariableOp_1
gru_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2 
gru_cell_1/strided_slice/stack
 gru_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2"
 gru_cell_1/strided_slice/stack_1
 gru_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_cell_1/strided_slice/stack_2Á
gru_cell_1/strided_sliceStridedSlice#gru_cell_1/ReadVariableOp_1:value:0'gru_cell_1/strided_slice/stack:output:0)gru_cell_1/strided_slice/stack_1:output:0)gru_cell_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2*

begin_mask*
end_mask2
gru_cell_1/strided_slice
gru_cell_1/MatMulMatMulgru_cell_1/mul:z:0!gru_cell_1/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/MatMul 
gru_cell_1/ReadVariableOp_2ReadVariableOp$gru_cell_1_readvariableop_1_resource*
_output_shapes
:	2Â*
dtype02
gru_cell_1/ReadVariableOp_2
 gru_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2"
 gru_cell_1/strided_slice_1/stack
"gru_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2$
"gru_cell_1/strided_slice_1/stack_1
"gru_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"gru_cell_1/strided_slice_1/stack_2Ë
gru_cell_1/strided_slice_1StridedSlice#gru_cell_1/ReadVariableOp_2:value:0)gru_cell_1/strided_slice_1/stack:output:0+gru_cell_1/strided_slice_1/stack_1:output:0+gru_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2*

begin_mask*
end_mask2
gru_cell_1/strided_slice_1¢
gru_cell_1/MatMul_1MatMulgru_cell_1/mul_1:z:0#gru_cell_1/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/MatMul_1 
gru_cell_1/ReadVariableOp_3ReadVariableOp$gru_cell_1_readvariableop_1_resource*
_output_shapes
:	2Â*
dtype02
gru_cell_1/ReadVariableOp_3
 gru_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2"
 gru_cell_1/strided_slice_2/stack
"gru_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"gru_cell_1/strided_slice_2/stack_1
"gru_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"gru_cell_1/strided_slice_2/stack_2Ë
gru_cell_1/strided_slice_2StridedSlice#gru_cell_1/ReadVariableOp_3:value:0)gru_cell_1/strided_slice_2/stack:output:0+gru_cell_1/strided_slice_2/stack_1:output:0+gru_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2*

begin_mask*
end_mask2
gru_cell_1/strided_slice_2¢
gru_cell_1/MatMul_2MatMulgru_cell_1/mul_2:z:0#gru_cell_1/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/MatMul_2
 gru_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 gru_cell_1/strided_slice_3/stack
"gru_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"gru_cell_1/strided_slice_3/stack_1
"gru_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"gru_cell_1/strided_slice_3/stack_2¯
gru_cell_1/strided_slice_3StridedSlicegru_cell_1/unstack:output:0)gru_cell_1/strided_slice_3/stack:output:0+gru_cell_1/strided_slice_3/stack_1:output:0+gru_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes	
:*

begin_mask2
gru_cell_1/strided_slice_3¨
gru_cell_1/BiasAddBiasAddgru_cell_1/MatMul:product:0#gru_cell_1/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/BiasAdd
 gru_cell_1/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:2"
 gru_cell_1/strided_slice_4/stack
"gru_cell_1/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:¬2$
"gru_cell_1/strided_slice_4/stack_1
"gru_cell_1/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"gru_cell_1/strided_slice_4/stack_2
gru_cell_1/strided_slice_4StridedSlicegru_cell_1/unstack:output:0)gru_cell_1/strided_slice_4/stack:output:0+gru_cell_1/strided_slice_4/stack_1:output:0+gru_cell_1/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes	
:2
gru_cell_1/strided_slice_4®
gru_cell_1/BiasAdd_1BiasAddgru_cell_1/MatMul_1:product:0#gru_cell_1/strided_slice_4:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/BiasAdd_1
 gru_cell_1/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:¬2"
 gru_cell_1/strided_slice_5/stack
"gru_cell_1/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2$
"gru_cell_1/strided_slice_5/stack_1
"gru_cell_1/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"gru_cell_1/strided_slice_5/stack_2­
gru_cell_1/strided_slice_5StridedSlicegru_cell_1/unstack:output:0)gru_cell_1/strided_slice_5/stack:output:0+gru_cell_1/strided_slice_5/stack_1:output:0+gru_cell_1/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes	
:*
end_mask2
gru_cell_1/strided_slice_5®
gru_cell_1/BiasAdd_2BiasAddgru_cell_1/MatMul_2:product:0#gru_cell_1/strided_slice_5:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/BiasAdd_2
gru_cell_1/mul_3Mulzeros:output:0gru_cell_1/dropout_3/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/mul_3
gru_cell_1/mul_4Mulzeros:output:0gru_cell_1/dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/mul_4
gru_cell_1/mul_5Mulzeros:output:0gru_cell_1/dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/mul_5¡
gru_cell_1/ReadVariableOp_4ReadVariableOp$gru_cell_1_readvariableop_4_resource* 
_output_shapes
:
Â*
dtype02
gru_cell_1/ReadVariableOp_4
 gru_cell_1/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 gru_cell_1/strided_slice_6/stack
"gru_cell_1/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2$
"gru_cell_1/strided_slice_6/stack_1
"gru_cell_1/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"gru_cell_1/strided_slice_6/stack_2Ì
gru_cell_1/strided_slice_6StridedSlice#gru_cell_1/ReadVariableOp_4:value:0)gru_cell_1/strided_slice_6/stack:output:0+gru_cell_1/strided_slice_6/stack_1:output:0+gru_cell_1/strided_slice_6/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2
gru_cell_1/strided_slice_6¢
gru_cell_1/MatMul_3MatMulgru_cell_1/mul_3:z:0#gru_cell_1/strided_slice_6:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/MatMul_3¡
gru_cell_1/ReadVariableOp_5ReadVariableOp$gru_cell_1_readvariableop_4_resource* 
_output_shapes
:
Â*
dtype02
gru_cell_1/ReadVariableOp_5
 gru_cell_1/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"       2"
 gru_cell_1/strided_slice_7/stack
"gru_cell_1/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2$
"gru_cell_1/strided_slice_7/stack_1
"gru_cell_1/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"gru_cell_1/strided_slice_7/stack_2Ì
gru_cell_1/strided_slice_7StridedSlice#gru_cell_1/ReadVariableOp_5:value:0)gru_cell_1/strided_slice_7/stack:output:0+gru_cell_1/strided_slice_7/stack_1:output:0+gru_cell_1/strided_slice_7/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2
gru_cell_1/strided_slice_7¢
gru_cell_1/MatMul_4MatMulgru_cell_1/mul_4:z:0#gru_cell_1/strided_slice_7:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/MatMul_4
 gru_cell_1/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 gru_cell_1/strided_slice_8/stack
"gru_cell_1/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"gru_cell_1/strided_slice_8/stack_1
"gru_cell_1/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"gru_cell_1/strided_slice_8/stack_2¯
gru_cell_1/strided_slice_8StridedSlicegru_cell_1/unstack:output:1)gru_cell_1/strided_slice_8/stack:output:0+gru_cell_1/strided_slice_8/stack_1:output:0+gru_cell_1/strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes	
:*

begin_mask2
gru_cell_1/strided_slice_8®
gru_cell_1/BiasAdd_3BiasAddgru_cell_1/MatMul_3:product:0#gru_cell_1/strided_slice_8:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/BiasAdd_3
 gru_cell_1/strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB:2"
 gru_cell_1/strided_slice_9/stack
"gru_cell_1/strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:¬2$
"gru_cell_1/strided_slice_9/stack_1
"gru_cell_1/strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"gru_cell_1/strided_slice_9/stack_2
gru_cell_1/strided_slice_9StridedSlicegru_cell_1/unstack:output:1)gru_cell_1/strided_slice_9/stack:output:0+gru_cell_1/strided_slice_9/stack_1:output:0+gru_cell_1/strided_slice_9/stack_2:output:0*
Index0*
T0*
_output_shapes	
:2
gru_cell_1/strided_slice_9®
gru_cell_1/BiasAdd_4BiasAddgru_cell_1/MatMul_4:product:0#gru_cell_1/strided_slice_9:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/BiasAdd_4
gru_cell_1/addAddV2gru_cell_1/BiasAdd:output:0gru_cell_1/BiasAdd_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/addz
gru_cell_1/SigmoidSigmoidgru_cell_1/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/Sigmoid
gru_cell_1/add_1AddV2gru_cell_1/BiasAdd_1:output:0gru_cell_1/BiasAdd_4:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/add_1
gru_cell_1/Sigmoid_1Sigmoidgru_cell_1/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/Sigmoid_1¡
gru_cell_1/ReadVariableOp_6ReadVariableOp$gru_cell_1_readvariableop_4_resource* 
_output_shapes
:
Â*
dtype02
gru_cell_1/ReadVariableOp_6
!gru_cell_1/strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2#
!gru_cell_1/strided_slice_10/stack
#gru_cell_1/strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#gru_cell_1/strided_slice_10/stack_1
#gru_cell_1/strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#gru_cell_1/strided_slice_10/stack_2Ñ
gru_cell_1/strided_slice_10StridedSlice#gru_cell_1/ReadVariableOp_6:value:0*gru_cell_1/strided_slice_10/stack:output:0,gru_cell_1/strided_slice_10/stack_1:output:0,gru_cell_1/strided_slice_10/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2
gru_cell_1/strided_slice_10£
gru_cell_1/MatMul_5MatMulgru_cell_1/mul_5:z:0$gru_cell_1/strided_slice_10:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/MatMul_5
!gru_cell_1/strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB:¬2#
!gru_cell_1/strided_slice_11/stack
#gru_cell_1/strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2%
#gru_cell_1/strided_slice_11/stack_1
#gru_cell_1/strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#gru_cell_1/strided_slice_11/stack_2²
gru_cell_1/strided_slice_11StridedSlicegru_cell_1/unstack:output:1*gru_cell_1/strided_slice_11/stack:output:0,gru_cell_1/strided_slice_11/stack_1:output:0,gru_cell_1/strided_slice_11/stack_2:output:0*
Index0*
T0*
_output_shapes	
:*
end_mask2
gru_cell_1/strided_slice_11¯
gru_cell_1/BiasAdd_5BiasAddgru_cell_1/MatMul_5:product:0$gru_cell_1/strided_slice_11:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/BiasAdd_5
gru_cell_1/mul_6Mulgru_cell_1/Sigmoid_1:y:0gru_cell_1/BiasAdd_5:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/mul_6
gru_cell_1/add_2AddV2gru_cell_1/BiasAdd_2:output:0gru_cell_1/mul_6:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/add_2s
gru_cell_1/TanhTanhgru_cell_1/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/Tanh
gru_cell_1/mul_7Mulgru_cell_1/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/mul_7i
gru_cell_1/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_cell_1/sub/x
gru_cell_1/subSubgru_cell_1/sub/x:output:0gru_cell_1/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/sub
gru_cell_1/mul_8Mulgru_cell_1/sub:z:0gru_cell_1/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/mul_8
gru_cell_1/add_3AddV2gru_cell_1/mul_7:z:0gru_cell_1/mul_8:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/add_3
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter¸
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0"gru_cell_1_readvariableop_resource$gru_cell_1_readvariableop_1_resource$gru_cell_1_readvariableop_4_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_40132*
condR
while_cond_40131*9
output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeé
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:2ÿÿÿÿÿÿÿÿÿ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¦
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimet
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity¦
NoOpNoOp^gru_cell_1/ReadVariableOp^gru_cell_1/ReadVariableOp_1^gru_cell_1/ReadVariableOp_2^gru_cell_1/ReadVariableOp_3^gru_cell_1/ReadVariableOp_4^gru_cell_1/ReadVariableOp_5^gru_cell_1/ReadVariableOp_6^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ22: : : 26
gru_cell_1/ReadVariableOpgru_cell_1/ReadVariableOp2:
gru_cell_1/ReadVariableOp_1gru_cell_1/ReadVariableOp_12:
gru_cell_1/ReadVariableOp_2gru_cell_1/ReadVariableOp_22:
gru_cell_1/ReadVariableOp_3gru_cell_1/ReadVariableOp_32:
gru_cell_1/ReadVariableOp_4gru_cell_1/ReadVariableOp_42:
gru_cell_1/ReadVariableOp_5gru_cell_1/ReadVariableOp_52:
gru_cell_1/ReadVariableOp_6gru_cell_1/ReadVariableOp_62
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
 
_user_specified_nameinputs
Æ
¸

gru_1_while_body_40653(
$gru_1_while_gru_1_while_loop_counter.
*gru_1_while_gru_1_while_maximum_iterations
gru_1_while_placeholder
gru_1_while_placeholder_1
gru_1_while_placeholder_2'
#gru_1_while_gru_1_strided_slice_1_0c
_gru_1_while_tensorarrayv2read_tensorlistgetitem_gru_1_tensorarrayunstack_tensorlistfromtensor_0C
0gru_1_while_gru_cell_1_readvariableop_resource_0:	ÂE
2gru_1_while_gru_cell_1_readvariableop_1_resource_0:	2ÂF
2gru_1_while_gru_cell_1_readvariableop_4_resource_0:
Â
gru_1_while_identity
gru_1_while_identity_1
gru_1_while_identity_2
gru_1_while_identity_3
gru_1_while_identity_4%
!gru_1_while_gru_1_strided_slice_1a
]gru_1_while_tensorarrayv2read_tensorlistgetitem_gru_1_tensorarrayunstack_tensorlistfromtensorA
.gru_1_while_gru_cell_1_readvariableop_resource:	ÂC
0gru_1_while_gru_cell_1_readvariableop_1_resource:	2ÂD
0gru_1_while_gru_cell_1_readvariableop_4_resource:
Â¢%gru_1/while/gru_cell_1/ReadVariableOp¢'gru_1/while/gru_cell_1/ReadVariableOp_1¢'gru_1/while/gru_cell_1/ReadVariableOp_2¢'gru_1/while/gru_cell_1/ReadVariableOp_3¢'gru_1/while/gru_cell_1/ReadVariableOp_4¢'gru_1/while/gru_cell_1/ReadVariableOp_5¢'gru_1/while/gru_cell_1/ReadVariableOp_6Ï
=gru_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   2?
=gru_1/while/TensorArrayV2Read/TensorListGetItem/element_shape÷
/gru_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem_gru_1_while_tensorarrayv2read_tensorlistgetitem_gru_1_tensorarrayunstack_tensorlistfromtensor_0gru_1_while_placeholderFgru_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype021
/gru_1/while/TensorArrayV2Read/TensorListGetItem¶
&gru_1/while/gru_cell_1/ones_like/ShapeShape6gru_1/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2(
&gru_1/while/gru_cell_1/ones_like/Shape
&gru_1/while/gru_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2(
&gru_1/while/gru_cell_1/ones_like/Constà
 gru_1/while/gru_cell_1/ones_likeFill/gru_1/while/gru_cell_1/ones_like/Shape:output:0/gru_1/while/gru_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22"
 gru_1/while/gru_cell_1/ones_like
(gru_1/while/gru_cell_1/ones_like_1/ShapeShapegru_1_while_placeholder_2*
T0*
_output_shapes
:2*
(gru_1/while/gru_cell_1/ones_like_1/Shape
(gru_1/while/gru_cell_1/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2*
(gru_1/while/gru_cell_1/ones_like_1/Consté
"gru_1/while/gru_cell_1/ones_like_1Fill1gru_1/while/gru_cell_1/ones_like_1/Shape:output:01gru_1/while/gru_cell_1/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2$
"gru_1/while/gru_cell_1/ones_like_1À
%gru_1/while/gru_cell_1/ReadVariableOpReadVariableOp0gru_1_while_gru_cell_1_readvariableop_resource_0*
_output_shapes
:	Â*
dtype02'
%gru_1/while/gru_cell_1/ReadVariableOp±
gru_1/while/gru_cell_1/unstackUnpack-gru_1/while/gru_cell_1/ReadVariableOp:value:0*
T0*"
_output_shapes
:Â:Â*	
num2 
gru_1/while/gru_cell_1/unstackÔ
gru_1/while/gru_cell_1/mulMul6gru_1/while/TensorArrayV2Read/TensorListGetItem:item:0)gru_1/while/gru_cell_1/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
gru_1/while/gru_cell_1/mulØ
gru_1/while/gru_cell_1/mul_1Mul6gru_1/while/TensorArrayV2Read/TensorListGetItem:item:0)gru_1/while/gru_cell_1/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
gru_1/while/gru_cell_1/mul_1Ø
gru_1/while/gru_cell_1/mul_2Mul6gru_1/while/TensorArrayV2Read/TensorListGetItem:item:0)gru_1/while/gru_cell_1/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
gru_1/while/gru_cell_1/mul_2Æ
'gru_1/while/gru_cell_1/ReadVariableOp_1ReadVariableOp2gru_1_while_gru_cell_1_readvariableop_1_resource_0*
_output_shapes
:	2Â*
dtype02)
'gru_1/while/gru_cell_1/ReadVariableOp_1©
*gru_1/while/gru_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2,
*gru_1/while/gru_cell_1/strided_slice/stack­
,gru_1/while/gru_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2.
,gru_1/while/gru_cell_1/strided_slice/stack_1­
,gru_1/while/gru_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,gru_1/while/gru_cell_1/strided_slice/stack_2
$gru_1/while/gru_cell_1/strided_sliceStridedSlice/gru_1/while/gru_cell_1/ReadVariableOp_1:value:03gru_1/while/gru_cell_1/strided_slice/stack:output:05gru_1/while/gru_cell_1/strided_slice/stack_1:output:05gru_1/while/gru_cell_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2*

begin_mask*
end_mask2&
$gru_1/while/gru_cell_1/strided_sliceÊ
gru_1/while/gru_cell_1/MatMulMatMulgru_1/while/gru_cell_1/mul:z:0-gru_1/while/gru_cell_1/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_1/while/gru_cell_1/MatMulÆ
'gru_1/while/gru_cell_1/ReadVariableOp_2ReadVariableOp2gru_1_while_gru_cell_1_readvariableop_1_resource_0*
_output_shapes
:	2Â*
dtype02)
'gru_1/while/gru_cell_1/ReadVariableOp_2­
,gru_1/while/gru_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2.
,gru_1/while/gru_cell_1/strided_slice_1/stack±
.gru_1/while/gru_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  20
.gru_1/while/gru_cell_1/strided_slice_1/stack_1±
.gru_1/while/gru_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      20
.gru_1/while/gru_cell_1/strided_slice_1/stack_2
&gru_1/while/gru_cell_1/strided_slice_1StridedSlice/gru_1/while/gru_cell_1/ReadVariableOp_2:value:05gru_1/while/gru_cell_1/strided_slice_1/stack:output:07gru_1/while/gru_cell_1/strided_slice_1/stack_1:output:07gru_1/while/gru_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2*

begin_mask*
end_mask2(
&gru_1/while/gru_cell_1/strided_slice_1Ò
gru_1/while/gru_cell_1/MatMul_1MatMul gru_1/while/gru_cell_1/mul_1:z:0/gru_1/while/gru_cell_1/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
gru_1/while/gru_cell_1/MatMul_1Æ
'gru_1/while/gru_cell_1/ReadVariableOp_3ReadVariableOp2gru_1_while_gru_cell_1_readvariableop_1_resource_0*
_output_shapes
:	2Â*
dtype02)
'gru_1/while/gru_cell_1/ReadVariableOp_3­
,gru_1/while/gru_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2.
,gru_1/while/gru_cell_1/strided_slice_2/stack±
.gru_1/while/gru_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        20
.gru_1/while/gru_cell_1/strided_slice_2/stack_1±
.gru_1/while/gru_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      20
.gru_1/while/gru_cell_1/strided_slice_2/stack_2
&gru_1/while/gru_cell_1/strided_slice_2StridedSlice/gru_1/while/gru_cell_1/ReadVariableOp_3:value:05gru_1/while/gru_cell_1/strided_slice_2/stack:output:07gru_1/while/gru_cell_1/strided_slice_2/stack_1:output:07gru_1/while/gru_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2*

begin_mask*
end_mask2(
&gru_1/while/gru_cell_1/strided_slice_2Ò
gru_1/while/gru_cell_1/MatMul_2MatMul gru_1/while/gru_cell_1/mul_2:z:0/gru_1/while/gru_cell_1/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
gru_1/while/gru_cell_1/MatMul_2¦
,gru_1/while/gru_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2.
,gru_1/while/gru_cell_1/strided_slice_3/stack«
.gru_1/while/gru_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.gru_1/while/gru_cell_1/strided_slice_3/stack_1ª
.gru_1/while/gru_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.gru_1/while/gru_cell_1/strided_slice_3/stack_2÷
&gru_1/while/gru_cell_1/strided_slice_3StridedSlice'gru_1/while/gru_cell_1/unstack:output:05gru_1/while/gru_cell_1/strided_slice_3/stack:output:07gru_1/while/gru_cell_1/strided_slice_3/stack_1:output:07gru_1/while/gru_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes	
:*

begin_mask2(
&gru_1/while/gru_cell_1/strided_slice_3Ø
gru_1/while/gru_cell_1/BiasAddBiasAdd'gru_1/while/gru_cell_1/MatMul:product:0/gru_1/while/gru_cell_1/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
gru_1/while/gru_cell_1/BiasAdd§
,gru_1/while/gru_cell_1/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:2.
,gru_1/while/gru_cell_1/strided_slice_4/stack«
.gru_1/while/gru_cell_1/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:¬20
.gru_1/while/gru_cell_1/strided_slice_4/stack_1ª
.gru_1/while/gru_cell_1/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.gru_1/while/gru_cell_1/strided_slice_4/stack_2å
&gru_1/while/gru_cell_1/strided_slice_4StridedSlice'gru_1/while/gru_cell_1/unstack:output:05gru_1/while/gru_cell_1/strided_slice_4/stack:output:07gru_1/while/gru_cell_1/strided_slice_4/stack_1:output:07gru_1/while/gru_cell_1/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes	
:2(
&gru_1/while/gru_cell_1/strided_slice_4Þ
 gru_1/while/gru_cell_1/BiasAdd_1BiasAdd)gru_1/while/gru_cell_1/MatMul_1:product:0/gru_1/while/gru_cell_1/strided_slice_4:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 gru_1/while/gru_cell_1/BiasAdd_1§
,gru_1/while/gru_cell_1/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:¬2.
,gru_1/while/gru_cell_1/strided_slice_5/stackª
.gru_1/while/gru_cell_1/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 20
.gru_1/while/gru_cell_1/strided_slice_5/stack_1ª
.gru_1/while/gru_cell_1/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.gru_1/while/gru_cell_1/strided_slice_5/stack_2õ
&gru_1/while/gru_cell_1/strided_slice_5StridedSlice'gru_1/while/gru_cell_1/unstack:output:05gru_1/while/gru_cell_1/strided_slice_5/stack:output:07gru_1/while/gru_cell_1/strided_slice_5/stack_1:output:07gru_1/while/gru_cell_1/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes	
:*
end_mask2(
&gru_1/while/gru_cell_1/strided_slice_5Þ
 gru_1/while/gru_cell_1/BiasAdd_2BiasAdd)gru_1/while/gru_cell_1/MatMul_2:product:0/gru_1/while/gru_cell_1/strided_slice_5:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 gru_1/while/gru_cell_1/BiasAdd_2¾
gru_1/while/gru_cell_1/mul_3Mulgru_1_while_placeholder_2+gru_1/while/gru_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_1/while/gru_cell_1/mul_3¾
gru_1/while/gru_cell_1/mul_4Mulgru_1_while_placeholder_2+gru_1/while/gru_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_1/while/gru_cell_1/mul_4¾
gru_1/while/gru_cell_1/mul_5Mulgru_1_while_placeholder_2+gru_1/while/gru_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_1/while/gru_cell_1/mul_5Ç
'gru_1/while/gru_cell_1/ReadVariableOp_4ReadVariableOp2gru_1_while_gru_cell_1_readvariableop_4_resource_0* 
_output_shapes
:
Â*
dtype02)
'gru_1/while/gru_cell_1/ReadVariableOp_4­
,gru_1/while/gru_cell_1/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2.
,gru_1/while/gru_cell_1/strided_slice_6/stack±
.gru_1/while/gru_cell_1/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       20
.gru_1/while/gru_cell_1/strided_slice_6/stack_1±
.gru_1/while/gru_cell_1/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      20
.gru_1/while/gru_cell_1/strided_slice_6/stack_2
&gru_1/while/gru_cell_1/strided_slice_6StridedSlice/gru_1/while/gru_cell_1/ReadVariableOp_4:value:05gru_1/while/gru_cell_1/strided_slice_6/stack:output:07gru_1/while/gru_cell_1/strided_slice_6/stack_1:output:07gru_1/while/gru_cell_1/strided_slice_6/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2(
&gru_1/while/gru_cell_1/strided_slice_6Ò
gru_1/while/gru_cell_1/MatMul_3MatMul gru_1/while/gru_cell_1/mul_3:z:0/gru_1/while/gru_cell_1/strided_slice_6:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
gru_1/while/gru_cell_1/MatMul_3Ç
'gru_1/while/gru_cell_1/ReadVariableOp_5ReadVariableOp2gru_1_while_gru_cell_1_readvariableop_4_resource_0* 
_output_shapes
:
Â*
dtype02)
'gru_1/while/gru_cell_1/ReadVariableOp_5­
,gru_1/while/gru_cell_1/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"       2.
,gru_1/while/gru_cell_1/strided_slice_7/stack±
.gru_1/while/gru_cell_1/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  20
.gru_1/while/gru_cell_1/strided_slice_7/stack_1±
.gru_1/while/gru_cell_1/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      20
.gru_1/while/gru_cell_1/strided_slice_7/stack_2
&gru_1/while/gru_cell_1/strided_slice_7StridedSlice/gru_1/while/gru_cell_1/ReadVariableOp_5:value:05gru_1/while/gru_cell_1/strided_slice_7/stack:output:07gru_1/while/gru_cell_1/strided_slice_7/stack_1:output:07gru_1/while/gru_cell_1/strided_slice_7/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2(
&gru_1/while/gru_cell_1/strided_slice_7Ò
gru_1/while/gru_cell_1/MatMul_4MatMul gru_1/while/gru_cell_1/mul_4:z:0/gru_1/while/gru_cell_1/strided_slice_7:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
gru_1/while/gru_cell_1/MatMul_4¦
,gru_1/while/gru_cell_1/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: 2.
,gru_1/while/gru_cell_1/strided_slice_8/stack«
.gru_1/while/gru_cell_1/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.gru_1/while/gru_cell_1/strided_slice_8/stack_1ª
.gru_1/while/gru_cell_1/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.gru_1/while/gru_cell_1/strided_slice_8/stack_2÷
&gru_1/while/gru_cell_1/strided_slice_8StridedSlice'gru_1/while/gru_cell_1/unstack:output:15gru_1/while/gru_cell_1/strided_slice_8/stack:output:07gru_1/while/gru_cell_1/strided_slice_8/stack_1:output:07gru_1/while/gru_cell_1/strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes	
:*

begin_mask2(
&gru_1/while/gru_cell_1/strided_slice_8Þ
 gru_1/while/gru_cell_1/BiasAdd_3BiasAdd)gru_1/while/gru_cell_1/MatMul_3:product:0/gru_1/while/gru_cell_1/strided_slice_8:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 gru_1/while/gru_cell_1/BiasAdd_3§
,gru_1/while/gru_cell_1/strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB:2.
,gru_1/while/gru_cell_1/strided_slice_9/stack«
.gru_1/while/gru_cell_1/strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:¬20
.gru_1/while/gru_cell_1/strided_slice_9/stack_1ª
.gru_1/while/gru_cell_1/strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.gru_1/while/gru_cell_1/strided_slice_9/stack_2å
&gru_1/while/gru_cell_1/strided_slice_9StridedSlice'gru_1/while/gru_cell_1/unstack:output:15gru_1/while/gru_cell_1/strided_slice_9/stack:output:07gru_1/while/gru_cell_1/strided_slice_9/stack_1:output:07gru_1/while/gru_cell_1/strided_slice_9/stack_2:output:0*
Index0*
T0*
_output_shapes	
:2(
&gru_1/while/gru_cell_1/strided_slice_9Þ
 gru_1/while/gru_cell_1/BiasAdd_4BiasAdd)gru_1/while/gru_cell_1/MatMul_4:product:0/gru_1/while/gru_cell_1/strided_slice_9:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 gru_1/while/gru_cell_1/BiasAdd_4È
gru_1/while/gru_cell_1/addAddV2'gru_1/while/gru_cell_1/BiasAdd:output:0)gru_1/while/gru_cell_1/BiasAdd_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_1/while/gru_cell_1/add
gru_1/while/gru_cell_1/SigmoidSigmoidgru_1/while/gru_cell_1/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
gru_1/while/gru_cell_1/SigmoidÎ
gru_1/while/gru_cell_1/add_1AddV2)gru_1/while/gru_cell_1/BiasAdd_1:output:0)gru_1/while/gru_cell_1/BiasAdd_4:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_1/while/gru_cell_1/add_1¤
 gru_1/while/gru_cell_1/Sigmoid_1Sigmoid gru_1/while/gru_cell_1/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 gru_1/while/gru_cell_1/Sigmoid_1Ç
'gru_1/while/gru_cell_1/ReadVariableOp_6ReadVariableOp2gru_1_while_gru_cell_1_readvariableop_4_resource_0* 
_output_shapes
:
Â*
dtype02)
'gru_1/while/gru_cell_1/ReadVariableOp_6¯
-gru_1/while/gru_cell_1/strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2/
-gru_1/while/gru_cell_1/strided_slice_10/stack³
/gru_1/while/gru_cell_1/strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        21
/gru_1/while/gru_cell_1/strided_slice_10/stack_1³
/gru_1/while/gru_cell_1/strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      21
/gru_1/while/gru_cell_1/strided_slice_10/stack_2
'gru_1/while/gru_cell_1/strided_slice_10StridedSlice/gru_1/while/gru_cell_1/ReadVariableOp_6:value:06gru_1/while/gru_cell_1/strided_slice_10/stack:output:08gru_1/while/gru_cell_1/strided_slice_10/stack_1:output:08gru_1/while/gru_cell_1/strided_slice_10/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2)
'gru_1/while/gru_cell_1/strided_slice_10Ó
gru_1/while/gru_cell_1/MatMul_5MatMul gru_1/while/gru_cell_1/mul_5:z:00gru_1/while/gru_cell_1/strided_slice_10:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
gru_1/while/gru_cell_1/MatMul_5©
-gru_1/while/gru_cell_1/strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB:¬2/
-gru_1/while/gru_cell_1/strided_slice_11/stack¬
/gru_1/while/gru_cell_1/strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 21
/gru_1/while/gru_cell_1/strided_slice_11/stack_1¬
/gru_1/while/gru_cell_1/strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/gru_1/while/gru_cell_1/strided_slice_11/stack_2ú
'gru_1/while/gru_cell_1/strided_slice_11StridedSlice'gru_1/while/gru_cell_1/unstack:output:16gru_1/while/gru_cell_1/strided_slice_11/stack:output:08gru_1/while/gru_cell_1/strided_slice_11/stack_1:output:08gru_1/while/gru_cell_1/strided_slice_11/stack_2:output:0*
Index0*
T0*
_output_shapes	
:*
end_mask2)
'gru_1/while/gru_cell_1/strided_slice_11ß
 gru_1/while/gru_cell_1/BiasAdd_5BiasAdd)gru_1/while/gru_cell_1/MatMul_5:product:00gru_1/while/gru_cell_1/strided_slice_11:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 gru_1/while/gru_cell_1/BiasAdd_5Ç
gru_1/while/gru_cell_1/mul_6Mul$gru_1/while/gru_cell_1/Sigmoid_1:y:0)gru_1/while/gru_cell_1/BiasAdd_5:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_1/while/gru_cell_1/mul_6Å
gru_1/while/gru_cell_1/add_2AddV2)gru_1/while/gru_cell_1/BiasAdd_2:output:0 gru_1/while/gru_cell_1/mul_6:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_1/while/gru_cell_1/add_2
gru_1/while/gru_cell_1/TanhTanh gru_1/while/gru_cell_1/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_1/while/gru_cell_1/Tanhµ
gru_1/while/gru_cell_1/mul_7Mul"gru_1/while/gru_cell_1/Sigmoid:y:0gru_1_while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_1/while/gru_cell_1/mul_7
gru_1/while/gru_cell_1/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_1/while/gru_cell_1/sub/x½
gru_1/while/gru_cell_1/subSub%gru_1/while/gru_cell_1/sub/x:output:0"gru_1/while/gru_cell_1/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_1/while/gru_cell_1/sub·
gru_1/while/gru_cell_1/mul_8Mulgru_1/while/gru_cell_1/sub:z:0gru_1/while/gru_cell_1/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_1/while/gru_cell_1/mul_8¼
gru_1/while/gru_cell_1/add_3AddV2 gru_1/while/gru_cell_1/mul_7:z:0 gru_1/while/gru_cell_1/mul_8:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_1/while/gru_cell_1/add_3ü
0gru_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemgru_1_while_placeholder_1gru_1_while_placeholder gru_1/while/gru_cell_1/add_3:z:0*
_output_shapes
: *
element_dtype022
0gru_1/while/TensorArrayV2Write/TensorListSetItemh
gru_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
gru_1/while/add/y
gru_1/while/addAddV2gru_1_while_placeholdergru_1/while/add/y:output:0*
T0*
_output_shapes
: 2
gru_1/while/addl
gru_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
gru_1/while/add_1/y
gru_1/while/add_1AddV2$gru_1_while_gru_1_while_loop_countergru_1/while/add_1/y:output:0*
T0*
_output_shapes
: 2
gru_1/while/add_1
gru_1/while/IdentityIdentitygru_1/while/add_1:z:0^gru_1/while/NoOp*
T0*
_output_shapes
: 2
gru_1/while/Identity
gru_1/while/Identity_1Identity*gru_1_while_gru_1_while_maximum_iterations^gru_1/while/NoOp*
T0*
_output_shapes
: 2
gru_1/while/Identity_1
gru_1/while/Identity_2Identitygru_1/while/add:z:0^gru_1/while/NoOp*
T0*
_output_shapes
: 2
gru_1/while/Identity_2²
gru_1/while/Identity_3Identity@gru_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^gru_1/while/NoOp*
T0*
_output_shapes
: 2
gru_1/while/Identity_3¤
gru_1/while/Identity_4Identity gru_1/while/gru_cell_1/add_3:z:0^gru_1/while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_1/while/Identity_4
gru_1/while/NoOpNoOp&^gru_1/while/gru_cell_1/ReadVariableOp(^gru_1/while/gru_cell_1/ReadVariableOp_1(^gru_1/while/gru_cell_1/ReadVariableOp_2(^gru_1/while/gru_cell_1/ReadVariableOp_3(^gru_1/while/gru_cell_1/ReadVariableOp_4(^gru_1/while/gru_cell_1/ReadVariableOp_5(^gru_1/while/gru_cell_1/ReadVariableOp_6*"
_acd_function_control_output(*
_output_shapes
 2
gru_1/while/NoOp"H
!gru_1_while_gru_1_strided_slice_1#gru_1_while_gru_1_strided_slice_1_0"f
0gru_1_while_gru_cell_1_readvariableop_1_resource2gru_1_while_gru_cell_1_readvariableop_1_resource_0"f
0gru_1_while_gru_cell_1_readvariableop_4_resource2gru_1_while_gru_cell_1_readvariableop_4_resource_0"b
.gru_1_while_gru_cell_1_readvariableop_resource0gru_1_while_gru_cell_1_readvariableop_resource_0"5
gru_1_while_identitygru_1/while/Identity:output:0"9
gru_1_while_identity_1gru_1/while/Identity_1:output:0"9
gru_1_while_identity_2gru_1/while/Identity_2:output:0"9
gru_1_while_identity_3gru_1/while/Identity_3:output:0"9
gru_1_while_identity_4gru_1/while/Identity_4:output:0"À
]gru_1_while_tensorarrayv2read_tensorlistgetitem_gru_1_tensorarrayunstack_tensorlistfromtensor_gru_1_while_tensorarrayv2read_tensorlistgetitem_gru_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2N
%gru_1/while/gru_cell_1/ReadVariableOp%gru_1/while/gru_cell_1/ReadVariableOp2R
'gru_1/while/gru_cell_1/ReadVariableOp_1'gru_1/while/gru_cell_1/ReadVariableOp_12R
'gru_1/while/gru_cell_1/ReadVariableOp_2'gru_1/while/gru_cell_1/ReadVariableOp_22R
'gru_1/while/gru_cell_1/ReadVariableOp_3'gru_1/while/gru_cell_1/ReadVariableOp_32R
'gru_1/while/gru_cell_1/ReadVariableOp_4'gru_1/while/gru_cell_1/ReadVariableOp_42R
'gru_1/while/gru_cell_1/ReadVariableOp_5'gru_1/while/gru_cell_1/ReadVariableOp_52R
'gru_1/while/gru_cell_1/ReadVariableOp_6'gru_1/while/gru_cell_1/ReadVariableOp_6: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
¦	

gru_1_while_cond_40996(
$gru_1_while_gru_1_while_loop_counter.
*gru_1_while_gru_1_while_maximum_iterations
gru_1_while_placeholder
gru_1_while_placeholder_1
gru_1_while_placeholder_2*
&gru_1_while_less_gru_1_strided_slice_1?
;gru_1_while_gru_1_while_cond_40996___redundant_placeholder0?
;gru_1_while_gru_1_while_cond_40996___redundant_placeholder1?
;gru_1_while_gru_1_while_cond_40996___redundant_placeholder2?
;gru_1_while_gru_1_while_cond_40996___redundant_placeholder3
gru_1_while_identity

gru_1/while/LessLessgru_1_while_placeholder&gru_1_while_less_gru_1_strided_slice_1*
T0*
_output_shapes
: 2
gru_1/while/Lesso
gru_1/while/IdentityIdentitygru_1/while/Less:z:0*
T0
*
_output_shapes
: 2
gru_1/while/Identity"5
gru_1_while_identitygru_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
÷
¥
while_cond_41726
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_41726___redundant_placeholder03
/while_while_cond_41726___redundant_placeholder13
/while_while_cond_41726___redundant_placeholder23
/while_while_cond_41726___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
÷
¥
while_cond_38979
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_38979___redundant_placeholder03
/while_while_cond_38979___redundant_placeholder13
/while_while_cond_38979___redundant_placeholder23
/while_while_cond_38979___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
øû
ì
while_body_40132
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0=
*while_gru_cell_1_readvariableop_resource_0:	Â?
,while_gru_cell_1_readvariableop_1_resource_0:	2Â@
,while_gru_cell_1_readvariableop_4_resource_0:
Â
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor;
(while_gru_cell_1_readvariableop_resource:	Â=
*while_gru_cell_1_readvariableop_1_resource:	2Â>
*while_gru_cell_1_readvariableop_4_resource:
Â¢while/gru_cell_1/ReadVariableOp¢!while/gru_cell_1/ReadVariableOp_1¢!while/gru_cell_1/ReadVariableOp_2¢!while/gru_cell_1/ReadVariableOp_3¢!while/gru_cell_1/ReadVariableOp_4¢!while/gru_cell_1/ReadVariableOp_5¢!while/gru_cell_1/ReadVariableOp_6Ã
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem¤
 while/gru_cell_1/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2"
 while/gru_cell_1/ones_like/Shape
 while/gru_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2"
 while/gru_cell_1/ones_like/ConstÈ
while/gru_cell_1/ones_likeFill)while/gru_cell_1/ones_like/Shape:output:0)while/gru_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/gru_cell_1/ones_like
while/gru_cell_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?2 
while/gru_cell_1/dropout/ConstÃ
while/gru_cell_1/dropout/MulMul#while/gru_cell_1/ones_like:output:0'while/gru_cell_1/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/gru_cell_1/dropout/Mul
while/gru_cell_1/dropout/ShapeShape#while/gru_cell_1/ones_like:output:0*
T0*
_output_shapes
:2 
while/gru_cell_1/dropout/Shape
5while/gru_cell_1/dropout/random_uniform/RandomUniformRandomUniform'while/gru_cell_1/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed227
5while/gru_cell_1/dropout/random_uniform/RandomUniform
'while/gru_cell_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2)
'while/gru_cell_1/dropout/GreaterEqual/y
%while/gru_cell_1/dropout/GreaterEqualGreaterEqual>while/gru_cell_1/dropout/random_uniform/RandomUniform:output:00while/gru_cell_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22'
%while/gru_cell_1/dropout/GreaterEqual²
while/gru_cell_1/dropout/CastCast)while/gru_cell_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/gru_cell_1/dropout/Cast¾
while/gru_cell_1/dropout/Mul_1Mul while/gru_cell_1/dropout/Mul:z:0!while/gru_cell_1/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22 
while/gru_cell_1/dropout/Mul_1
 while/gru_cell_1/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?2"
 while/gru_cell_1/dropout_1/ConstÉ
while/gru_cell_1/dropout_1/MulMul#while/gru_cell_1/ones_like:output:0)while/gru_cell_1/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22 
while/gru_cell_1/dropout_1/Mul
 while/gru_cell_1/dropout_1/ShapeShape#while/gru_cell_1/ones_like:output:0*
T0*
_output_shapes
:2"
 while/gru_cell_1/dropout_1/Shape
7while/gru_cell_1/dropout_1/random_uniform/RandomUniformRandomUniform)while/gru_cell_1/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2ÇÃí29
7while/gru_cell_1/dropout_1/random_uniform/RandomUniform
)while/gru_cell_1/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2+
)while/gru_cell_1/dropout_1/GreaterEqual/y
'while/gru_cell_1/dropout_1/GreaterEqualGreaterEqual@while/gru_cell_1/dropout_1/random_uniform/RandomUniform:output:02while/gru_cell_1/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22)
'while/gru_cell_1/dropout_1/GreaterEqual¸
while/gru_cell_1/dropout_1/CastCast+while/gru_cell_1/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22!
while/gru_cell_1/dropout_1/CastÆ
 while/gru_cell_1/dropout_1/Mul_1Mul"while/gru_cell_1/dropout_1/Mul:z:0#while/gru_cell_1/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22"
 while/gru_cell_1/dropout_1/Mul_1
 while/gru_cell_1/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?2"
 while/gru_cell_1/dropout_2/ConstÉ
while/gru_cell_1/dropout_2/MulMul#while/gru_cell_1/ones_like:output:0)while/gru_cell_1/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22 
while/gru_cell_1/dropout_2/Mul
 while/gru_cell_1/dropout_2/ShapeShape#while/gru_cell_1/ones_like:output:0*
T0*
_output_shapes
:2"
 while/gru_cell_1/dropout_2/Shape
7while/gru_cell_1/dropout_2/random_uniform/RandomUniformRandomUniform)while/gru_cell_1/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2ËñÀ29
7while/gru_cell_1/dropout_2/random_uniform/RandomUniform
)while/gru_cell_1/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2+
)while/gru_cell_1/dropout_2/GreaterEqual/y
'while/gru_cell_1/dropout_2/GreaterEqualGreaterEqual@while/gru_cell_1/dropout_2/random_uniform/RandomUniform:output:02while/gru_cell_1/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22)
'while/gru_cell_1/dropout_2/GreaterEqual¸
while/gru_cell_1/dropout_2/CastCast+while/gru_cell_1/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22!
while/gru_cell_1/dropout_2/CastÆ
 while/gru_cell_1/dropout_2/Mul_1Mul"while/gru_cell_1/dropout_2/Mul:z:0#while/gru_cell_1/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22"
 while/gru_cell_1/dropout_2/Mul_1
"while/gru_cell_1/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2$
"while/gru_cell_1/ones_like_1/Shape
"while/gru_cell_1/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2$
"while/gru_cell_1/ones_like_1/ConstÑ
while/gru_cell_1/ones_like_1Fill+while/gru_cell_1/ones_like_1/Shape:output:0+while/gru_cell_1/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/ones_like_1
 while/gru_cell_1/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?2"
 while/gru_cell_1/dropout_3/ConstÌ
while/gru_cell_1/dropout_3/MulMul%while/gru_cell_1/ones_like_1:output:0)while/gru_cell_1/dropout_3/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
while/gru_cell_1/dropout_3/Mul
 while/gru_cell_1/dropout_3/ShapeShape%while/gru_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:2"
 while/gru_cell_1/dropout_3/Shape
7while/gru_cell_1/dropout_3/random_uniform/RandomUniformRandomUniform)while/gru_cell_1/dropout_3/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
seed±ÿå)*
seed2µ29
7while/gru_cell_1/dropout_3/random_uniform/RandomUniform
)while/gru_cell_1/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2+
)while/gru_cell_1/dropout_3/GreaterEqual/y
'while/gru_cell_1/dropout_3/GreaterEqualGreaterEqual@while/gru_cell_1/dropout_3/random_uniform/RandomUniform:output:02while/gru_cell_1/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'while/gru_cell_1/dropout_3/GreaterEqual¹
while/gru_cell_1/dropout_3/CastCast+while/gru_cell_1/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
while/gru_cell_1/dropout_3/CastÇ
 while/gru_cell_1/dropout_3/Mul_1Mul"while/gru_cell_1/dropout_3/Mul:z:0#while/gru_cell_1/dropout_3/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 while/gru_cell_1/dropout_3/Mul_1
 while/gru_cell_1/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?2"
 while/gru_cell_1/dropout_4/ConstÌ
while/gru_cell_1/dropout_4/MulMul%while/gru_cell_1/ones_like_1:output:0)while/gru_cell_1/dropout_4/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
while/gru_cell_1/dropout_4/Mul
 while/gru_cell_1/dropout_4/ShapeShape%while/gru_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:2"
 while/gru_cell_1/dropout_4/Shape
7while/gru_cell_1/dropout_4/random_uniform/RandomUniformRandomUniform)while/gru_cell_1/dropout_4/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
seed±ÿå)*
seed2¾ê29
7while/gru_cell_1/dropout_4/random_uniform/RandomUniform
)while/gru_cell_1/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2+
)while/gru_cell_1/dropout_4/GreaterEqual/y
'while/gru_cell_1/dropout_4/GreaterEqualGreaterEqual@while/gru_cell_1/dropout_4/random_uniform/RandomUniform:output:02while/gru_cell_1/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'while/gru_cell_1/dropout_4/GreaterEqual¹
while/gru_cell_1/dropout_4/CastCast+while/gru_cell_1/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
while/gru_cell_1/dropout_4/CastÇ
 while/gru_cell_1/dropout_4/Mul_1Mul"while/gru_cell_1/dropout_4/Mul:z:0#while/gru_cell_1/dropout_4/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 while/gru_cell_1/dropout_4/Mul_1
 while/gru_cell_1/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?2"
 while/gru_cell_1/dropout_5/ConstÌ
while/gru_cell_1/dropout_5/MulMul%while/gru_cell_1/ones_like_1:output:0)while/gru_cell_1/dropout_5/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
while/gru_cell_1/dropout_5/Mul
 while/gru_cell_1/dropout_5/ShapeShape%while/gru_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:2"
 while/gru_cell_1/dropout_5/Shape
7while/gru_cell_1/dropout_5/random_uniform/RandomUniformRandomUniform)while/gru_cell_1/dropout_5/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
seed±ÿå)*
seed2Ýe29
7while/gru_cell_1/dropout_5/random_uniform/RandomUniform
)while/gru_cell_1/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2+
)while/gru_cell_1/dropout_5/GreaterEqual/y
'while/gru_cell_1/dropout_5/GreaterEqualGreaterEqual@while/gru_cell_1/dropout_5/random_uniform/RandomUniform:output:02while/gru_cell_1/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'while/gru_cell_1/dropout_5/GreaterEqual¹
while/gru_cell_1/dropout_5/CastCast+while/gru_cell_1/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
while/gru_cell_1/dropout_5/CastÇ
 while/gru_cell_1/dropout_5/Mul_1Mul"while/gru_cell_1/dropout_5/Mul:z:0#while/gru_cell_1/dropout_5/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 while/gru_cell_1/dropout_5/Mul_1®
while/gru_cell_1/ReadVariableOpReadVariableOp*while_gru_cell_1_readvariableop_resource_0*
_output_shapes
:	Â*
dtype02!
while/gru_cell_1/ReadVariableOp
while/gru_cell_1/unstackUnpack'while/gru_cell_1/ReadVariableOp:value:0*
T0*"
_output_shapes
:Â:Â*	
num2
while/gru_cell_1/unstack»
while/gru_cell_1/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/gru_cell_1/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/gru_cell_1/mulÁ
while/gru_cell_1/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/gru_cell_1/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/gru_cell_1/mul_1Á
while/gru_cell_1/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/gru_cell_1/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/gru_cell_1/mul_2´
!while/gru_cell_1/ReadVariableOp_1ReadVariableOp,while_gru_cell_1_readvariableop_1_resource_0*
_output_shapes
:	2Â*
dtype02#
!while/gru_cell_1/ReadVariableOp_1
$while/gru_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2&
$while/gru_cell_1/strided_slice/stack¡
&while/gru_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2(
&while/gru_cell_1/strided_slice/stack_1¡
&while/gru_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&while/gru_cell_1/strided_slice/stack_2å
while/gru_cell_1/strided_sliceStridedSlice)while/gru_cell_1/ReadVariableOp_1:value:0-while/gru_cell_1/strided_slice/stack:output:0/while/gru_cell_1/strided_slice/stack_1:output:0/while/gru_cell_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2*

begin_mask*
end_mask2 
while/gru_cell_1/strided_slice²
while/gru_cell_1/MatMulMatMulwhile/gru_cell_1/mul:z:0'while/gru_cell_1/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/MatMul´
!while/gru_cell_1/ReadVariableOp_2ReadVariableOp,while_gru_cell_1_readvariableop_1_resource_0*
_output_shapes
:	2Â*
dtype02#
!while/gru_cell_1/ReadVariableOp_2¡
&while/gru_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2(
&while/gru_cell_1/strided_slice_1/stack¥
(while/gru_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2*
(while/gru_cell_1/strided_slice_1/stack_1¥
(while/gru_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/gru_cell_1/strided_slice_1/stack_2ï
 while/gru_cell_1/strided_slice_1StridedSlice)while/gru_cell_1/ReadVariableOp_2:value:0/while/gru_cell_1/strided_slice_1/stack:output:01while/gru_cell_1/strided_slice_1/stack_1:output:01while/gru_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2*

begin_mask*
end_mask2"
 while/gru_cell_1/strided_slice_1º
while/gru_cell_1/MatMul_1MatMulwhile/gru_cell_1/mul_1:z:0)while/gru_cell_1/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/MatMul_1´
!while/gru_cell_1/ReadVariableOp_3ReadVariableOp,while_gru_cell_1_readvariableop_1_resource_0*
_output_shapes
:	2Â*
dtype02#
!while/gru_cell_1/ReadVariableOp_3¡
&while/gru_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2(
&while/gru_cell_1/strided_slice_2/stack¥
(while/gru_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/gru_cell_1/strided_slice_2/stack_1¥
(while/gru_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/gru_cell_1/strided_slice_2/stack_2ï
 while/gru_cell_1/strided_slice_2StridedSlice)while/gru_cell_1/ReadVariableOp_3:value:0/while/gru_cell_1/strided_slice_2/stack:output:01while/gru_cell_1/strided_slice_2/stack_1:output:01while/gru_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2*

begin_mask*
end_mask2"
 while/gru_cell_1/strided_slice_2º
while/gru_cell_1/MatMul_2MatMulwhile/gru_cell_1/mul_2:z:0)while/gru_cell_1/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/MatMul_2
&while/gru_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&while/gru_cell_1/strided_slice_3/stack
(while/gru_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(while/gru_cell_1/strided_slice_3/stack_1
(while/gru_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(while/gru_cell_1/strided_slice_3/stack_2Ó
 while/gru_cell_1/strided_slice_3StridedSlice!while/gru_cell_1/unstack:output:0/while/gru_cell_1/strided_slice_3/stack:output:01while/gru_cell_1/strided_slice_3/stack_1:output:01while/gru_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes	
:*

begin_mask2"
 while/gru_cell_1/strided_slice_3À
while/gru_cell_1/BiasAddBiasAdd!while/gru_cell_1/MatMul:product:0)while/gru_cell_1/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/BiasAdd
&while/gru_cell_1/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:2(
&while/gru_cell_1/strided_slice_4/stack
(while/gru_cell_1/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:¬2*
(while/gru_cell_1/strided_slice_4/stack_1
(while/gru_cell_1/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(while/gru_cell_1/strided_slice_4/stack_2Á
 while/gru_cell_1/strided_slice_4StridedSlice!while/gru_cell_1/unstack:output:0/while/gru_cell_1/strided_slice_4/stack:output:01while/gru_cell_1/strided_slice_4/stack_1:output:01while/gru_cell_1/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes	
:2"
 while/gru_cell_1/strided_slice_4Æ
while/gru_cell_1/BiasAdd_1BiasAdd#while/gru_cell_1/MatMul_1:product:0)while/gru_cell_1/strided_slice_4:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/BiasAdd_1
&while/gru_cell_1/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:¬2(
&while/gru_cell_1/strided_slice_5/stack
(while/gru_cell_1/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2*
(while/gru_cell_1/strided_slice_5/stack_1
(while/gru_cell_1/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(while/gru_cell_1/strided_slice_5/stack_2Ñ
 while/gru_cell_1/strided_slice_5StridedSlice!while/gru_cell_1/unstack:output:0/while/gru_cell_1/strided_slice_5/stack:output:01while/gru_cell_1/strided_slice_5/stack_1:output:01while/gru_cell_1/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes	
:*
end_mask2"
 while/gru_cell_1/strided_slice_5Æ
while/gru_cell_1/BiasAdd_2BiasAdd#while/gru_cell_1/MatMul_2:product:0)while/gru_cell_1/strided_slice_5:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/BiasAdd_2¥
while/gru_cell_1/mul_3Mulwhile_placeholder_2$while/gru_cell_1/dropout_3/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/mul_3¥
while/gru_cell_1/mul_4Mulwhile_placeholder_2$while/gru_cell_1/dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/mul_4¥
while/gru_cell_1/mul_5Mulwhile_placeholder_2$while/gru_cell_1/dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/mul_5µ
!while/gru_cell_1/ReadVariableOp_4ReadVariableOp,while_gru_cell_1_readvariableop_4_resource_0* 
_output_shapes
:
Â*
dtype02#
!while/gru_cell_1/ReadVariableOp_4¡
&while/gru_cell_1/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/gru_cell_1/strided_slice_6/stack¥
(while/gru_cell_1/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2*
(while/gru_cell_1/strided_slice_6/stack_1¥
(while/gru_cell_1/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/gru_cell_1/strided_slice_6/stack_2ð
 while/gru_cell_1/strided_slice_6StridedSlice)while/gru_cell_1/ReadVariableOp_4:value:0/while/gru_cell_1/strided_slice_6/stack:output:01while/gru_cell_1/strided_slice_6/stack_1:output:01while/gru_cell_1/strided_slice_6/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2"
 while/gru_cell_1/strided_slice_6º
while/gru_cell_1/MatMul_3MatMulwhile/gru_cell_1/mul_3:z:0)while/gru_cell_1/strided_slice_6:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/MatMul_3µ
!while/gru_cell_1/ReadVariableOp_5ReadVariableOp,while_gru_cell_1_readvariableop_4_resource_0* 
_output_shapes
:
Â*
dtype02#
!while/gru_cell_1/ReadVariableOp_5¡
&while/gru_cell_1/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"       2(
&while/gru_cell_1/strided_slice_7/stack¥
(while/gru_cell_1/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2*
(while/gru_cell_1/strided_slice_7/stack_1¥
(while/gru_cell_1/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/gru_cell_1/strided_slice_7/stack_2ð
 while/gru_cell_1/strided_slice_7StridedSlice)while/gru_cell_1/ReadVariableOp_5:value:0/while/gru_cell_1/strided_slice_7/stack:output:01while/gru_cell_1/strided_slice_7/stack_1:output:01while/gru_cell_1/strided_slice_7/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2"
 while/gru_cell_1/strided_slice_7º
while/gru_cell_1/MatMul_4MatMulwhile/gru_cell_1/mul_4:z:0)while/gru_cell_1/strided_slice_7:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/MatMul_4
&while/gru_cell_1/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&while/gru_cell_1/strided_slice_8/stack
(while/gru_cell_1/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(while/gru_cell_1/strided_slice_8/stack_1
(while/gru_cell_1/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(while/gru_cell_1/strided_slice_8/stack_2Ó
 while/gru_cell_1/strided_slice_8StridedSlice!while/gru_cell_1/unstack:output:1/while/gru_cell_1/strided_slice_8/stack:output:01while/gru_cell_1/strided_slice_8/stack_1:output:01while/gru_cell_1/strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes	
:*

begin_mask2"
 while/gru_cell_1/strided_slice_8Æ
while/gru_cell_1/BiasAdd_3BiasAdd#while/gru_cell_1/MatMul_3:product:0)while/gru_cell_1/strided_slice_8:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/BiasAdd_3
&while/gru_cell_1/strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB:2(
&while/gru_cell_1/strided_slice_9/stack
(while/gru_cell_1/strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:¬2*
(while/gru_cell_1/strided_slice_9/stack_1
(while/gru_cell_1/strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(while/gru_cell_1/strided_slice_9/stack_2Á
 while/gru_cell_1/strided_slice_9StridedSlice!while/gru_cell_1/unstack:output:1/while/gru_cell_1/strided_slice_9/stack:output:01while/gru_cell_1/strided_slice_9/stack_1:output:01while/gru_cell_1/strided_slice_9/stack_2:output:0*
Index0*
T0*
_output_shapes	
:2"
 while/gru_cell_1/strided_slice_9Æ
while/gru_cell_1/BiasAdd_4BiasAdd#while/gru_cell_1/MatMul_4:product:0)while/gru_cell_1/strided_slice_9:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/BiasAdd_4°
while/gru_cell_1/addAddV2!while/gru_cell_1/BiasAdd:output:0#while/gru_cell_1/BiasAdd_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/add
while/gru_cell_1/SigmoidSigmoidwhile/gru_cell_1/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/Sigmoid¶
while/gru_cell_1/add_1AddV2#while/gru_cell_1/BiasAdd_1:output:0#while/gru_cell_1/BiasAdd_4:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/add_1
while/gru_cell_1/Sigmoid_1Sigmoidwhile/gru_cell_1/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/Sigmoid_1µ
!while/gru_cell_1/ReadVariableOp_6ReadVariableOp,while_gru_cell_1_readvariableop_4_resource_0* 
_output_shapes
:
Â*
dtype02#
!while/gru_cell_1/ReadVariableOp_6£
'while/gru_cell_1/strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2)
'while/gru_cell_1/strided_slice_10/stack§
)while/gru_cell_1/strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/gru_cell_1/strided_slice_10/stack_1§
)while/gru_cell_1/strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/gru_cell_1/strided_slice_10/stack_2õ
!while/gru_cell_1/strided_slice_10StridedSlice)while/gru_cell_1/ReadVariableOp_6:value:00while/gru_cell_1/strided_slice_10/stack:output:02while/gru_cell_1/strided_slice_10/stack_1:output:02while/gru_cell_1/strided_slice_10/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2#
!while/gru_cell_1/strided_slice_10»
while/gru_cell_1/MatMul_5MatMulwhile/gru_cell_1/mul_5:z:0*while/gru_cell_1/strided_slice_10:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/MatMul_5
'while/gru_cell_1/strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB:¬2)
'while/gru_cell_1/strided_slice_11/stack 
)while/gru_cell_1/strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2+
)while/gru_cell_1/strided_slice_11/stack_1 
)while/gru_cell_1/strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)while/gru_cell_1/strided_slice_11/stack_2Ö
!while/gru_cell_1/strided_slice_11StridedSlice!while/gru_cell_1/unstack:output:10while/gru_cell_1/strided_slice_11/stack:output:02while/gru_cell_1/strided_slice_11/stack_1:output:02while/gru_cell_1/strided_slice_11/stack_2:output:0*
Index0*
T0*
_output_shapes	
:*
end_mask2#
!while/gru_cell_1/strided_slice_11Ç
while/gru_cell_1/BiasAdd_5BiasAdd#while/gru_cell_1/MatMul_5:product:0*while/gru_cell_1/strided_slice_11:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/BiasAdd_5¯
while/gru_cell_1/mul_6Mulwhile/gru_cell_1/Sigmoid_1:y:0#while/gru_cell_1/BiasAdd_5:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/mul_6­
while/gru_cell_1/add_2AddV2#while/gru_cell_1/BiasAdd_2:output:0while/gru_cell_1/mul_6:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/add_2
while/gru_cell_1/TanhTanhwhile/gru_cell_1/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/Tanh
while/gru_cell_1/mul_7Mulwhile/gru_cell_1/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/mul_7u
while/gru_cell_1/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
while/gru_cell_1/sub/x¥
while/gru_cell_1/subSubwhile/gru_cell_1/sub/x:output:0while/gru_cell_1/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/sub
while/gru_cell_1/mul_8Mulwhile/gru_cell_1/sub:z:0while/gru_cell_1/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/mul_8¤
while/gru_cell_1/add_3AddV2while/gru_cell_1/mul_7:z:0while/gru_cell_1/mul_8:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/add_3Þ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_1/add_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/gru_cell_1/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4Ô

while/NoOpNoOp ^while/gru_cell_1/ReadVariableOp"^while/gru_cell_1/ReadVariableOp_1"^while/gru_cell_1/ReadVariableOp_2"^while/gru_cell_1/ReadVariableOp_3"^while/gru_cell_1/ReadVariableOp_4"^while/gru_cell_1/ReadVariableOp_5"^while/gru_cell_1/ReadVariableOp_6*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp"Z
*while_gru_cell_1_readvariableop_1_resource,while_gru_cell_1_readvariableop_1_resource_0"Z
*while_gru_cell_1_readvariableop_4_resource,while_gru_cell_1_readvariableop_4_resource_0"V
(while_gru_cell_1_readvariableop_resource*while_gru_cell_1_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2B
while/gru_cell_1/ReadVariableOpwhile/gru_cell_1/ReadVariableOp2F
!while/gru_cell_1/ReadVariableOp_1!while/gru_cell_1/ReadVariableOp_12F
!while/gru_cell_1/ReadVariableOp_2!while/gru_cell_1/ReadVariableOp_22F
!while/gru_cell_1/ReadVariableOp_3!while/gru_cell_1/ReadVariableOp_32F
!while/gru_cell_1/ReadVariableOp_4!while/gru_cell_1/ReadVariableOp_42F
!while/gru_cell_1/ReadVariableOp_5!while/gru_cell_1/ReadVariableOp_52F
!while/gru_cell_1/ReadVariableOp_6!while/gru_cell_1/ReadVariableOp_6: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
ôm

E__inference_gru_cell_1_layer_call_and_return_conditional_losses_42739

inputs
states_0*
readvariableop_resource:	Â,
readvariableop_1_resource:	2Â-
readvariableop_4_resource:
Â
identity

identity_1¢ReadVariableOp¢ReadVariableOp_1¢ReadVariableOp_2¢ReadVariableOp_3¢ReadVariableOp_4¢ReadVariableOp_5¢ReadVariableOp_6X
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
ones_like/Const
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
	ones_like^
ones_like_1/ShapeShapestates_0*
T0*
_output_shapes
:2
ones_like_1/Shapek
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
ones_like_1/Const
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
ones_like_1y
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	Â*
dtype02
ReadVariableOpl
unstackUnpackReadVariableOp:value:0*
T0*"
_output_shapes
:Â:Â*	
num2	
unstack_
mulMulinputsones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
mulc
mul_1Mulinputsones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
mul_1c
mul_2Mulinputsones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
mul_2
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:	2Â*
dtype02
ReadVariableOp_1{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2ÿ
strided_sliceStridedSliceReadVariableOp_1:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2*

begin_mask*
end_mask2
strided_slicen
MatMulMatMulmul:z:0strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
ReadVariableOp_2ReadVariableOpreadvariableop_1_resource*
_output_shapes
:	2Â*
dtype02
ReadVariableOp_2
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_1/stack
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2
strided_slice_1/stack_1
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2
strided_slice_1StridedSliceReadVariableOp_2:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2*

begin_mask*
end_mask2
strided_slice_1v
MatMul_1MatMul	mul_1:z:0strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

MatMul_1
ReadVariableOp_3ReadVariableOpreadvariableop_1_resource*
_output_shapes
:	2Â*
dtype02
ReadVariableOp_3
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2
strided_slice_2/stack
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_2/stack_1
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2
strided_slice_2StridedSliceReadVariableOp_3:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2*

begin_mask*
end_mask2
strided_slice_2v
MatMul_2MatMul	mul_2:z:0strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

MatMul_2x
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack}
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2í
strided_slice_3StridedSliceunstack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes	
:*

begin_mask2
strided_slice_3|
BiasAddBiasAddMatMul:product:0strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddy
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_4/stack}
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:¬2
strided_slice_4/stack_1|
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_4/stack_2Û
strided_slice_4StridedSliceunstack:output:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes	
:2
strided_slice_4
	BiasAdd_1BiasAddMatMul_1:product:0strided_slice_4:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	BiasAdd_1y
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:¬2
strided_slice_5/stack|
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_5/stack_1|
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_5/stack_2ë
strided_slice_5StridedSliceunstack:output:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes	
:*
end_mask2
strided_slice_5
	BiasAdd_2BiasAddMatMul_2:product:0strided_slice_5:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	BiasAdd_2h
mul_3Mulstates_0ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_3h
mul_4Mulstates_0ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_4h
mul_5Mulstates_0ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_5
ReadVariableOp_4ReadVariableOpreadvariableop_4_resource* 
_output_shapes
:
Â*
dtype02
ReadVariableOp_4
strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_6/stack
strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_6/stack_1
strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_6/stack_2
strided_slice_6StridedSliceReadVariableOp_4:value:0strided_slice_6/stack:output:0 strided_slice_6/stack_1:output:0 strided_slice_6/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2
strided_slice_6v
MatMul_3MatMul	mul_3:z:0strided_slice_6:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

MatMul_3
ReadVariableOp_5ReadVariableOpreadvariableop_4_resource* 
_output_shapes
:
Â*
dtype02
ReadVariableOp_5
strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_7/stack
strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2
strided_slice_7/stack_1
strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_7/stack_2
strided_slice_7StridedSliceReadVariableOp_5:value:0strided_slice_7/stack:output:0 strided_slice_7/stack_1:output:0 strided_slice_7/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2
strided_slice_7v
MatMul_4MatMul	mul_4:z:0strided_slice_7:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

MatMul_4x
strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_8/stack}
strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_8/stack_1|
strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_8/stack_2í
strided_slice_8StridedSliceunstack:output:1strided_slice_8/stack:output:0 strided_slice_8/stack_1:output:0 strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes	
:*

begin_mask2
strided_slice_8
	BiasAdd_3BiasAddMatMul_3:product:0strided_slice_8:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	BiasAdd_3y
strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_9/stack}
strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:¬2
strided_slice_9/stack_1|
strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_9/stack_2Û
strided_slice_9StridedSliceunstack:output:1strided_slice_9/stack:output:0 strided_slice_9/stack_1:output:0 strided_slice_9/stack_2:output:0*
Index0*
T0*
_output_shapes	
:2
strided_slice_9
	BiasAdd_4BiasAddMatMul_4:product:0strided_slice_9:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	BiasAdd_4l
addAddV2BiasAdd:output:0BiasAdd_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
addY
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Sigmoidr
add_1AddV2BiasAdd_1:output:0BiasAdd_4:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add_1_
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_1
ReadVariableOp_6ReadVariableOpreadvariableop_4_resource* 
_output_shapes
:
Â*
dtype02
ReadVariableOp_6
strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2
strided_slice_10/stack
strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_10/stack_1
strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_10/stack_2
strided_slice_10StridedSliceReadVariableOp_6:value:0strided_slice_10/stack:output:0!strided_slice_10/stack_1:output:0!strided_slice_10/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2
strided_slice_10w
MatMul_5MatMul	mul_5:z:0strided_slice_10:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

MatMul_5{
strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB:¬2
strided_slice_11/stack~
strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_11/stack_1~
strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_11/stack_2ð
strided_slice_11StridedSliceunstack:output:1strided_slice_11/stack:output:0!strided_slice_11/stack_1:output:0!strided_slice_11/stack_2:output:0*
Index0*
T0*
_output_shapes	
:*
end_mask2
strided_slice_11
	BiasAdd_5BiasAddMatMul_5:product:0strided_slice_11:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	BiasAdd_5k
mul_6MulSigmoid_1:y:0BiasAdd_5:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_6i
add_2AddV2BiasAdd_2:output:0	mul_6:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add_2R
TanhTanh	add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Tanh_
mul_7MulSigmoid:y:0states_0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_7S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
sub/xa
subSubsub/x:output:0Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sub[
mul_8Mulsub:z:0Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_8`
add_3AddV2	mul_7:z:0	mul_8:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add_3e
IdentityIdentity	add_3:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityi

Identity_1Identity	add_3:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1Ñ
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^ReadVariableOp_4^ReadVariableOp_5^ReadVariableOp_6*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ: : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32$
ReadVariableOp_4ReadVariableOp_42$
ReadVariableOp_5ReadVariableOp_52$
ReadVariableOp_6ReadVariableOp_6:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0

¸

gru_1_while_body_40997(
$gru_1_while_gru_1_while_loop_counter.
*gru_1_while_gru_1_while_maximum_iterations
gru_1_while_placeholder
gru_1_while_placeholder_1
gru_1_while_placeholder_2'
#gru_1_while_gru_1_strided_slice_1_0c
_gru_1_while_tensorarrayv2read_tensorlistgetitem_gru_1_tensorarrayunstack_tensorlistfromtensor_0C
0gru_1_while_gru_cell_1_readvariableop_resource_0:	ÂE
2gru_1_while_gru_cell_1_readvariableop_1_resource_0:	2ÂF
2gru_1_while_gru_cell_1_readvariableop_4_resource_0:
Â
gru_1_while_identity
gru_1_while_identity_1
gru_1_while_identity_2
gru_1_while_identity_3
gru_1_while_identity_4%
!gru_1_while_gru_1_strided_slice_1a
]gru_1_while_tensorarrayv2read_tensorlistgetitem_gru_1_tensorarrayunstack_tensorlistfromtensorA
.gru_1_while_gru_cell_1_readvariableop_resource:	ÂC
0gru_1_while_gru_cell_1_readvariableop_1_resource:	2ÂD
0gru_1_while_gru_cell_1_readvariableop_4_resource:
Â¢%gru_1/while/gru_cell_1/ReadVariableOp¢'gru_1/while/gru_cell_1/ReadVariableOp_1¢'gru_1/while/gru_cell_1/ReadVariableOp_2¢'gru_1/while/gru_cell_1/ReadVariableOp_3¢'gru_1/while/gru_cell_1/ReadVariableOp_4¢'gru_1/while/gru_cell_1/ReadVariableOp_5¢'gru_1/while/gru_cell_1/ReadVariableOp_6Ï
=gru_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   2?
=gru_1/while/TensorArrayV2Read/TensorListGetItem/element_shape÷
/gru_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem_gru_1_while_tensorarrayv2read_tensorlistgetitem_gru_1_tensorarrayunstack_tensorlistfromtensor_0gru_1_while_placeholderFgru_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype021
/gru_1/while/TensorArrayV2Read/TensorListGetItem¶
&gru_1/while/gru_cell_1/ones_like/ShapeShape6gru_1/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2(
&gru_1/while/gru_cell_1/ones_like/Shape
&gru_1/while/gru_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2(
&gru_1/while/gru_cell_1/ones_like/Constà
 gru_1/while/gru_cell_1/ones_likeFill/gru_1/while/gru_cell_1/ones_like/Shape:output:0/gru_1/while/gru_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22"
 gru_1/while/gru_cell_1/ones_like
$gru_1/while/gru_cell_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?2&
$gru_1/while/gru_cell_1/dropout/ConstÛ
"gru_1/while/gru_cell_1/dropout/MulMul)gru_1/while/gru_cell_1/ones_like:output:0-gru_1/while/gru_cell_1/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22$
"gru_1/while/gru_cell_1/dropout/Mul¥
$gru_1/while/gru_cell_1/dropout/ShapeShape)gru_1/while/gru_cell_1/ones_like:output:0*
T0*
_output_shapes
:2&
$gru_1/while/gru_cell_1/dropout/Shape
;gru_1/while/gru_cell_1/dropout/random_uniform/RandomUniformRandomUniform-gru_1/while/gru_cell_1/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2©2=
;gru_1/while/gru_cell_1/dropout/random_uniform/RandomUniform£
-gru_1/while/gru_cell_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2/
-gru_1/while/gru_cell_1/dropout/GreaterEqual/y
+gru_1/while/gru_cell_1/dropout/GreaterEqualGreaterEqualDgru_1/while/gru_cell_1/dropout/random_uniform/RandomUniform:output:06gru_1/while/gru_cell_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22-
+gru_1/while/gru_cell_1/dropout/GreaterEqualÄ
#gru_1/while/gru_cell_1/dropout/CastCast/gru_1/while/gru_cell_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22%
#gru_1/while/gru_cell_1/dropout/CastÖ
$gru_1/while/gru_cell_1/dropout/Mul_1Mul&gru_1/while/gru_cell_1/dropout/Mul:z:0'gru_1/while/gru_cell_1/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22&
$gru_1/while/gru_cell_1/dropout/Mul_1
&gru_1/while/gru_cell_1/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?2(
&gru_1/while/gru_cell_1/dropout_1/Constá
$gru_1/while/gru_cell_1/dropout_1/MulMul)gru_1/while/gru_cell_1/ones_like:output:0/gru_1/while/gru_cell_1/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22&
$gru_1/while/gru_cell_1/dropout_1/Mul©
&gru_1/while/gru_cell_1/dropout_1/ShapeShape)gru_1/while/gru_cell_1/ones_like:output:0*
T0*
_output_shapes
:2(
&gru_1/while/gru_cell_1/dropout_1/Shape
=gru_1/while/gru_cell_1/dropout_1/random_uniform/RandomUniformRandomUniform/gru_1/while/gru_cell_1/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2ïÉ2?
=gru_1/while/gru_cell_1/dropout_1/random_uniform/RandomUniform§
/gru_1/while/gru_cell_1/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=21
/gru_1/while/gru_cell_1/dropout_1/GreaterEqual/y¢
-gru_1/while/gru_cell_1/dropout_1/GreaterEqualGreaterEqualFgru_1/while/gru_cell_1/dropout_1/random_uniform/RandomUniform:output:08gru_1/while/gru_cell_1/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22/
-gru_1/while/gru_cell_1/dropout_1/GreaterEqualÊ
%gru_1/while/gru_cell_1/dropout_1/CastCast1gru_1/while/gru_cell_1/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22'
%gru_1/while/gru_cell_1/dropout_1/CastÞ
&gru_1/while/gru_cell_1/dropout_1/Mul_1Mul(gru_1/while/gru_cell_1/dropout_1/Mul:z:0)gru_1/while/gru_cell_1/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22(
&gru_1/while/gru_cell_1/dropout_1/Mul_1
&gru_1/while/gru_cell_1/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?2(
&gru_1/while/gru_cell_1/dropout_2/Constá
$gru_1/while/gru_cell_1/dropout_2/MulMul)gru_1/while/gru_cell_1/ones_like:output:0/gru_1/while/gru_cell_1/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22&
$gru_1/while/gru_cell_1/dropout_2/Mul©
&gru_1/while/gru_cell_1/dropout_2/ShapeShape)gru_1/while/gru_cell_1/ones_like:output:0*
T0*
_output_shapes
:2(
&gru_1/while/gru_cell_1/dropout_2/Shape
=gru_1/while/gru_cell_1/dropout_2/random_uniform/RandomUniformRandomUniform/gru_1/while/gru_cell_1/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2Âï2?
=gru_1/while/gru_cell_1/dropout_2/random_uniform/RandomUniform§
/gru_1/while/gru_cell_1/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=21
/gru_1/while/gru_cell_1/dropout_2/GreaterEqual/y¢
-gru_1/while/gru_cell_1/dropout_2/GreaterEqualGreaterEqualFgru_1/while/gru_cell_1/dropout_2/random_uniform/RandomUniform:output:08gru_1/while/gru_cell_1/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22/
-gru_1/while/gru_cell_1/dropout_2/GreaterEqualÊ
%gru_1/while/gru_cell_1/dropout_2/CastCast1gru_1/while/gru_cell_1/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22'
%gru_1/while/gru_cell_1/dropout_2/CastÞ
&gru_1/while/gru_cell_1/dropout_2/Mul_1Mul(gru_1/while/gru_cell_1/dropout_2/Mul:z:0)gru_1/while/gru_cell_1/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22(
&gru_1/while/gru_cell_1/dropout_2/Mul_1
(gru_1/while/gru_cell_1/ones_like_1/ShapeShapegru_1_while_placeholder_2*
T0*
_output_shapes
:2*
(gru_1/while/gru_cell_1/ones_like_1/Shape
(gru_1/while/gru_cell_1/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2*
(gru_1/while/gru_cell_1/ones_like_1/Consté
"gru_1/while/gru_cell_1/ones_like_1Fill1gru_1/while/gru_cell_1/ones_like_1/Shape:output:01gru_1/while/gru_cell_1/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2$
"gru_1/while/gru_cell_1/ones_like_1
&gru_1/while/gru_cell_1/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?2(
&gru_1/while/gru_cell_1/dropout_3/Constä
$gru_1/while/gru_cell_1/dropout_3/MulMul+gru_1/while/gru_cell_1/ones_like_1:output:0/gru_1/while/gru_cell_1/dropout_3/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2&
$gru_1/while/gru_cell_1/dropout_3/Mul«
&gru_1/while/gru_cell_1/dropout_3/ShapeShape+gru_1/while/gru_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:2(
&gru_1/while/gru_cell_1/dropout_3/Shape
=gru_1/while/gru_cell_1/dropout_3/random_uniform/RandomUniformRandomUniform/gru_1/while/gru_cell_1/dropout_3/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
seed±ÿå)*
seed2Ë2?
=gru_1/while/gru_cell_1/dropout_3/random_uniform/RandomUniform§
/gru_1/while/gru_cell_1/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=21
/gru_1/while/gru_cell_1/dropout_3/GreaterEqual/y£
-gru_1/while/gru_cell_1/dropout_3/GreaterEqualGreaterEqualFgru_1/while/gru_cell_1/dropout_3/random_uniform/RandomUniform:output:08gru_1/while/gru_cell_1/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2/
-gru_1/while/gru_cell_1/dropout_3/GreaterEqualË
%gru_1/while/gru_cell_1/dropout_3/CastCast1gru_1/while/gru_cell_1/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2'
%gru_1/while/gru_cell_1/dropout_3/Castß
&gru_1/while/gru_cell_1/dropout_3/Mul_1Mul(gru_1/while/gru_cell_1/dropout_3/Mul:z:0)gru_1/while/gru_cell_1/dropout_3/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&gru_1/while/gru_cell_1/dropout_3/Mul_1
&gru_1/while/gru_cell_1/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?2(
&gru_1/while/gru_cell_1/dropout_4/Constä
$gru_1/while/gru_cell_1/dropout_4/MulMul+gru_1/while/gru_cell_1/ones_like_1:output:0/gru_1/while/gru_cell_1/dropout_4/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2&
$gru_1/while/gru_cell_1/dropout_4/Mul«
&gru_1/while/gru_cell_1/dropout_4/ShapeShape+gru_1/while/gru_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:2(
&gru_1/while/gru_cell_1/dropout_4/Shape
=gru_1/while/gru_cell_1/dropout_4/random_uniform/RandomUniformRandomUniform/gru_1/while/gru_cell_1/dropout_4/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
seed±ÿå)*
seed2ÖÍÿ2?
=gru_1/while/gru_cell_1/dropout_4/random_uniform/RandomUniform§
/gru_1/while/gru_cell_1/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=21
/gru_1/while/gru_cell_1/dropout_4/GreaterEqual/y£
-gru_1/while/gru_cell_1/dropout_4/GreaterEqualGreaterEqualFgru_1/while/gru_cell_1/dropout_4/random_uniform/RandomUniform:output:08gru_1/while/gru_cell_1/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2/
-gru_1/while/gru_cell_1/dropout_4/GreaterEqualË
%gru_1/while/gru_cell_1/dropout_4/CastCast1gru_1/while/gru_cell_1/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2'
%gru_1/while/gru_cell_1/dropout_4/Castß
&gru_1/while/gru_cell_1/dropout_4/Mul_1Mul(gru_1/while/gru_cell_1/dropout_4/Mul:z:0)gru_1/while/gru_cell_1/dropout_4/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&gru_1/while/gru_cell_1/dropout_4/Mul_1
&gru_1/while/gru_cell_1/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?2(
&gru_1/while/gru_cell_1/dropout_5/Constä
$gru_1/while/gru_cell_1/dropout_5/MulMul+gru_1/while/gru_cell_1/ones_like_1:output:0/gru_1/while/gru_cell_1/dropout_5/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2&
$gru_1/while/gru_cell_1/dropout_5/Mul«
&gru_1/while/gru_cell_1/dropout_5/ShapeShape+gru_1/while/gru_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:2(
&gru_1/while/gru_cell_1/dropout_5/Shape
=gru_1/while/gru_cell_1/dropout_5/random_uniform/RandomUniformRandomUniform/gru_1/while/gru_cell_1/dropout_5/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
seed±ÿå)*
seed2¬Õ2?
=gru_1/while/gru_cell_1/dropout_5/random_uniform/RandomUniform§
/gru_1/while/gru_cell_1/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=21
/gru_1/while/gru_cell_1/dropout_5/GreaterEqual/y£
-gru_1/while/gru_cell_1/dropout_5/GreaterEqualGreaterEqualFgru_1/while/gru_cell_1/dropout_5/random_uniform/RandomUniform:output:08gru_1/while/gru_cell_1/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2/
-gru_1/while/gru_cell_1/dropout_5/GreaterEqualË
%gru_1/while/gru_cell_1/dropout_5/CastCast1gru_1/while/gru_cell_1/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2'
%gru_1/while/gru_cell_1/dropout_5/Castß
&gru_1/while/gru_cell_1/dropout_5/Mul_1Mul(gru_1/while/gru_cell_1/dropout_5/Mul:z:0)gru_1/while/gru_cell_1/dropout_5/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&gru_1/while/gru_cell_1/dropout_5/Mul_1À
%gru_1/while/gru_cell_1/ReadVariableOpReadVariableOp0gru_1_while_gru_cell_1_readvariableop_resource_0*
_output_shapes
:	Â*
dtype02'
%gru_1/while/gru_cell_1/ReadVariableOp±
gru_1/while/gru_cell_1/unstackUnpack-gru_1/while/gru_cell_1/ReadVariableOp:value:0*
T0*"
_output_shapes
:Â:Â*	
num2 
gru_1/while/gru_cell_1/unstackÓ
gru_1/while/gru_cell_1/mulMul6gru_1/while/TensorArrayV2Read/TensorListGetItem:item:0(gru_1/while/gru_cell_1/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
gru_1/while/gru_cell_1/mulÙ
gru_1/while/gru_cell_1/mul_1Mul6gru_1/while/TensorArrayV2Read/TensorListGetItem:item:0*gru_1/while/gru_cell_1/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
gru_1/while/gru_cell_1/mul_1Ù
gru_1/while/gru_cell_1/mul_2Mul6gru_1/while/TensorArrayV2Read/TensorListGetItem:item:0*gru_1/while/gru_cell_1/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
gru_1/while/gru_cell_1/mul_2Æ
'gru_1/while/gru_cell_1/ReadVariableOp_1ReadVariableOp2gru_1_while_gru_cell_1_readvariableop_1_resource_0*
_output_shapes
:	2Â*
dtype02)
'gru_1/while/gru_cell_1/ReadVariableOp_1©
*gru_1/while/gru_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2,
*gru_1/while/gru_cell_1/strided_slice/stack­
,gru_1/while/gru_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2.
,gru_1/while/gru_cell_1/strided_slice/stack_1­
,gru_1/while/gru_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,gru_1/while/gru_cell_1/strided_slice/stack_2
$gru_1/while/gru_cell_1/strided_sliceStridedSlice/gru_1/while/gru_cell_1/ReadVariableOp_1:value:03gru_1/while/gru_cell_1/strided_slice/stack:output:05gru_1/while/gru_cell_1/strided_slice/stack_1:output:05gru_1/while/gru_cell_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2*

begin_mask*
end_mask2&
$gru_1/while/gru_cell_1/strided_sliceÊ
gru_1/while/gru_cell_1/MatMulMatMulgru_1/while/gru_cell_1/mul:z:0-gru_1/while/gru_cell_1/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_1/while/gru_cell_1/MatMulÆ
'gru_1/while/gru_cell_1/ReadVariableOp_2ReadVariableOp2gru_1_while_gru_cell_1_readvariableop_1_resource_0*
_output_shapes
:	2Â*
dtype02)
'gru_1/while/gru_cell_1/ReadVariableOp_2­
,gru_1/while/gru_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2.
,gru_1/while/gru_cell_1/strided_slice_1/stack±
.gru_1/while/gru_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  20
.gru_1/while/gru_cell_1/strided_slice_1/stack_1±
.gru_1/while/gru_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      20
.gru_1/while/gru_cell_1/strided_slice_1/stack_2
&gru_1/while/gru_cell_1/strided_slice_1StridedSlice/gru_1/while/gru_cell_1/ReadVariableOp_2:value:05gru_1/while/gru_cell_1/strided_slice_1/stack:output:07gru_1/while/gru_cell_1/strided_slice_1/stack_1:output:07gru_1/while/gru_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2*

begin_mask*
end_mask2(
&gru_1/while/gru_cell_1/strided_slice_1Ò
gru_1/while/gru_cell_1/MatMul_1MatMul gru_1/while/gru_cell_1/mul_1:z:0/gru_1/while/gru_cell_1/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
gru_1/while/gru_cell_1/MatMul_1Æ
'gru_1/while/gru_cell_1/ReadVariableOp_3ReadVariableOp2gru_1_while_gru_cell_1_readvariableop_1_resource_0*
_output_shapes
:	2Â*
dtype02)
'gru_1/while/gru_cell_1/ReadVariableOp_3­
,gru_1/while/gru_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2.
,gru_1/while/gru_cell_1/strided_slice_2/stack±
.gru_1/while/gru_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        20
.gru_1/while/gru_cell_1/strided_slice_2/stack_1±
.gru_1/while/gru_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      20
.gru_1/while/gru_cell_1/strided_slice_2/stack_2
&gru_1/while/gru_cell_1/strided_slice_2StridedSlice/gru_1/while/gru_cell_1/ReadVariableOp_3:value:05gru_1/while/gru_cell_1/strided_slice_2/stack:output:07gru_1/while/gru_cell_1/strided_slice_2/stack_1:output:07gru_1/while/gru_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2*

begin_mask*
end_mask2(
&gru_1/while/gru_cell_1/strided_slice_2Ò
gru_1/while/gru_cell_1/MatMul_2MatMul gru_1/while/gru_cell_1/mul_2:z:0/gru_1/while/gru_cell_1/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
gru_1/while/gru_cell_1/MatMul_2¦
,gru_1/while/gru_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2.
,gru_1/while/gru_cell_1/strided_slice_3/stack«
.gru_1/while/gru_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.gru_1/while/gru_cell_1/strided_slice_3/stack_1ª
.gru_1/while/gru_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.gru_1/while/gru_cell_1/strided_slice_3/stack_2÷
&gru_1/while/gru_cell_1/strided_slice_3StridedSlice'gru_1/while/gru_cell_1/unstack:output:05gru_1/while/gru_cell_1/strided_slice_3/stack:output:07gru_1/while/gru_cell_1/strided_slice_3/stack_1:output:07gru_1/while/gru_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes	
:*

begin_mask2(
&gru_1/while/gru_cell_1/strided_slice_3Ø
gru_1/while/gru_cell_1/BiasAddBiasAdd'gru_1/while/gru_cell_1/MatMul:product:0/gru_1/while/gru_cell_1/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
gru_1/while/gru_cell_1/BiasAdd§
,gru_1/while/gru_cell_1/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:2.
,gru_1/while/gru_cell_1/strided_slice_4/stack«
.gru_1/while/gru_cell_1/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:¬20
.gru_1/while/gru_cell_1/strided_slice_4/stack_1ª
.gru_1/while/gru_cell_1/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.gru_1/while/gru_cell_1/strided_slice_4/stack_2å
&gru_1/while/gru_cell_1/strided_slice_4StridedSlice'gru_1/while/gru_cell_1/unstack:output:05gru_1/while/gru_cell_1/strided_slice_4/stack:output:07gru_1/while/gru_cell_1/strided_slice_4/stack_1:output:07gru_1/while/gru_cell_1/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes	
:2(
&gru_1/while/gru_cell_1/strided_slice_4Þ
 gru_1/while/gru_cell_1/BiasAdd_1BiasAdd)gru_1/while/gru_cell_1/MatMul_1:product:0/gru_1/while/gru_cell_1/strided_slice_4:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 gru_1/while/gru_cell_1/BiasAdd_1§
,gru_1/while/gru_cell_1/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:¬2.
,gru_1/while/gru_cell_1/strided_slice_5/stackª
.gru_1/while/gru_cell_1/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 20
.gru_1/while/gru_cell_1/strided_slice_5/stack_1ª
.gru_1/while/gru_cell_1/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.gru_1/while/gru_cell_1/strided_slice_5/stack_2õ
&gru_1/while/gru_cell_1/strided_slice_5StridedSlice'gru_1/while/gru_cell_1/unstack:output:05gru_1/while/gru_cell_1/strided_slice_5/stack:output:07gru_1/while/gru_cell_1/strided_slice_5/stack_1:output:07gru_1/while/gru_cell_1/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes	
:*
end_mask2(
&gru_1/while/gru_cell_1/strided_slice_5Þ
 gru_1/while/gru_cell_1/BiasAdd_2BiasAdd)gru_1/while/gru_cell_1/MatMul_2:product:0/gru_1/while/gru_cell_1/strided_slice_5:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 gru_1/while/gru_cell_1/BiasAdd_2½
gru_1/while/gru_cell_1/mul_3Mulgru_1_while_placeholder_2*gru_1/while/gru_cell_1/dropout_3/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_1/while/gru_cell_1/mul_3½
gru_1/while/gru_cell_1/mul_4Mulgru_1_while_placeholder_2*gru_1/while/gru_cell_1/dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_1/while/gru_cell_1/mul_4½
gru_1/while/gru_cell_1/mul_5Mulgru_1_while_placeholder_2*gru_1/while/gru_cell_1/dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_1/while/gru_cell_1/mul_5Ç
'gru_1/while/gru_cell_1/ReadVariableOp_4ReadVariableOp2gru_1_while_gru_cell_1_readvariableop_4_resource_0* 
_output_shapes
:
Â*
dtype02)
'gru_1/while/gru_cell_1/ReadVariableOp_4­
,gru_1/while/gru_cell_1/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2.
,gru_1/while/gru_cell_1/strided_slice_6/stack±
.gru_1/while/gru_cell_1/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       20
.gru_1/while/gru_cell_1/strided_slice_6/stack_1±
.gru_1/while/gru_cell_1/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      20
.gru_1/while/gru_cell_1/strided_slice_6/stack_2
&gru_1/while/gru_cell_1/strided_slice_6StridedSlice/gru_1/while/gru_cell_1/ReadVariableOp_4:value:05gru_1/while/gru_cell_1/strided_slice_6/stack:output:07gru_1/while/gru_cell_1/strided_slice_6/stack_1:output:07gru_1/while/gru_cell_1/strided_slice_6/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2(
&gru_1/while/gru_cell_1/strided_slice_6Ò
gru_1/while/gru_cell_1/MatMul_3MatMul gru_1/while/gru_cell_1/mul_3:z:0/gru_1/while/gru_cell_1/strided_slice_6:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
gru_1/while/gru_cell_1/MatMul_3Ç
'gru_1/while/gru_cell_1/ReadVariableOp_5ReadVariableOp2gru_1_while_gru_cell_1_readvariableop_4_resource_0* 
_output_shapes
:
Â*
dtype02)
'gru_1/while/gru_cell_1/ReadVariableOp_5­
,gru_1/while/gru_cell_1/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"       2.
,gru_1/while/gru_cell_1/strided_slice_7/stack±
.gru_1/while/gru_cell_1/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  20
.gru_1/while/gru_cell_1/strided_slice_7/stack_1±
.gru_1/while/gru_cell_1/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      20
.gru_1/while/gru_cell_1/strided_slice_7/stack_2
&gru_1/while/gru_cell_1/strided_slice_7StridedSlice/gru_1/while/gru_cell_1/ReadVariableOp_5:value:05gru_1/while/gru_cell_1/strided_slice_7/stack:output:07gru_1/while/gru_cell_1/strided_slice_7/stack_1:output:07gru_1/while/gru_cell_1/strided_slice_7/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2(
&gru_1/while/gru_cell_1/strided_slice_7Ò
gru_1/while/gru_cell_1/MatMul_4MatMul gru_1/while/gru_cell_1/mul_4:z:0/gru_1/while/gru_cell_1/strided_slice_7:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
gru_1/while/gru_cell_1/MatMul_4¦
,gru_1/while/gru_cell_1/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: 2.
,gru_1/while/gru_cell_1/strided_slice_8/stack«
.gru_1/while/gru_cell_1/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.gru_1/while/gru_cell_1/strided_slice_8/stack_1ª
.gru_1/while/gru_cell_1/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.gru_1/while/gru_cell_1/strided_slice_8/stack_2÷
&gru_1/while/gru_cell_1/strided_slice_8StridedSlice'gru_1/while/gru_cell_1/unstack:output:15gru_1/while/gru_cell_1/strided_slice_8/stack:output:07gru_1/while/gru_cell_1/strided_slice_8/stack_1:output:07gru_1/while/gru_cell_1/strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes	
:*

begin_mask2(
&gru_1/while/gru_cell_1/strided_slice_8Þ
 gru_1/while/gru_cell_1/BiasAdd_3BiasAdd)gru_1/while/gru_cell_1/MatMul_3:product:0/gru_1/while/gru_cell_1/strided_slice_8:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 gru_1/while/gru_cell_1/BiasAdd_3§
,gru_1/while/gru_cell_1/strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB:2.
,gru_1/while/gru_cell_1/strided_slice_9/stack«
.gru_1/while/gru_cell_1/strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:¬20
.gru_1/while/gru_cell_1/strided_slice_9/stack_1ª
.gru_1/while/gru_cell_1/strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.gru_1/while/gru_cell_1/strided_slice_9/stack_2å
&gru_1/while/gru_cell_1/strided_slice_9StridedSlice'gru_1/while/gru_cell_1/unstack:output:15gru_1/while/gru_cell_1/strided_slice_9/stack:output:07gru_1/while/gru_cell_1/strided_slice_9/stack_1:output:07gru_1/while/gru_cell_1/strided_slice_9/stack_2:output:0*
Index0*
T0*
_output_shapes	
:2(
&gru_1/while/gru_cell_1/strided_slice_9Þ
 gru_1/while/gru_cell_1/BiasAdd_4BiasAdd)gru_1/while/gru_cell_1/MatMul_4:product:0/gru_1/while/gru_cell_1/strided_slice_9:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 gru_1/while/gru_cell_1/BiasAdd_4È
gru_1/while/gru_cell_1/addAddV2'gru_1/while/gru_cell_1/BiasAdd:output:0)gru_1/while/gru_cell_1/BiasAdd_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_1/while/gru_cell_1/add
gru_1/while/gru_cell_1/SigmoidSigmoidgru_1/while/gru_cell_1/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
gru_1/while/gru_cell_1/SigmoidÎ
gru_1/while/gru_cell_1/add_1AddV2)gru_1/while/gru_cell_1/BiasAdd_1:output:0)gru_1/while/gru_cell_1/BiasAdd_4:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_1/while/gru_cell_1/add_1¤
 gru_1/while/gru_cell_1/Sigmoid_1Sigmoid gru_1/while/gru_cell_1/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 gru_1/while/gru_cell_1/Sigmoid_1Ç
'gru_1/while/gru_cell_1/ReadVariableOp_6ReadVariableOp2gru_1_while_gru_cell_1_readvariableop_4_resource_0* 
_output_shapes
:
Â*
dtype02)
'gru_1/while/gru_cell_1/ReadVariableOp_6¯
-gru_1/while/gru_cell_1/strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2/
-gru_1/while/gru_cell_1/strided_slice_10/stack³
/gru_1/while/gru_cell_1/strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        21
/gru_1/while/gru_cell_1/strided_slice_10/stack_1³
/gru_1/while/gru_cell_1/strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      21
/gru_1/while/gru_cell_1/strided_slice_10/stack_2
'gru_1/while/gru_cell_1/strided_slice_10StridedSlice/gru_1/while/gru_cell_1/ReadVariableOp_6:value:06gru_1/while/gru_cell_1/strided_slice_10/stack:output:08gru_1/while/gru_cell_1/strided_slice_10/stack_1:output:08gru_1/while/gru_cell_1/strided_slice_10/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2)
'gru_1/while/gru_cell_1/strided_slice_10Ó
gru_1/while/gru_cell_1/MatMul_5MatMul gru_1/while/gru_cell_1/mul_5:z:00gru_1/while/gru_cell_1/strided_slice_10:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
gru_1/while/gru_cell_1/MatMul_5©
-gru_1/while/gru_cell_1/strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB:¬2/
-gru_1/while/gru_cell_1/strided_slice_11/stack¬
/gru_1/while/gru_cell_1/strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 21
/gru_1/while/gru_cell_1/strided_slice_11/stack_1¬
/gru_1/while/gru_cell_1/strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/gru_1/while/gru_cell_1/strided_slice_11/stack_2ú
'gru_1/while/gru_cell_1/strided_slice_11StridedSlice'gru_1/while/gru_cell_1/unstack:output:16gru_1/while/gru_cell_1/strided_slice_11/stack:output:08gru_1/while/gru_cell_1/strided_slice_11/stack_1:output:08gru_1/while/gru_cell_1/strided_slice_11/stack_2:output:0*
Index0*
T0*
_output_shapes	
:*
end_mask2)
'gru_1/while/gru_cell_1/strided_slice_11ß
 gru_1/while/gru_cell_1/BiasAdd_5BiasAdd)gru_1/while/gru_cell_1/MatMul_5:product:00gru_1/while/gru_cell_1/strided_slice_11:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 gru_1/while/gru_cell_1/BiasAdd_5Ç
gru_1/while/gru_cell_1/mul_6Mul$gru_1/while/gru_cell_1/Sigmoid_1:y:0)gru_1/while/gru_cell_1/BiasAdd_5:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_1/while/gru_cell_1/mul_6Å
gru_1/while/gru_cell_1/add_2AddV2)gru_1/while/gru_cell_1/BiasAdd_2:output:0 gru_1/while/gru_cell_1/mul_6:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_1/while/gru_cell_1/add_2
gru_1/while/gru_cell_1/TanhTanh gru_1/while/gru_cell_1/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_1/while/gru_cell_1/Tanhµ
gru_1/while/gru_cell_1/mul_7Mul"gru_1/while/gru_cell_1/Sigmoid:y:0gru_1_while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_1/while/gru_cell_1/mul_7
gru_1/while/gru_cell_1/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_1/while/gru_cell_1/sub/x½
gru_1/while/gru_cell_1/subSub%gru_1/while/gru_cell_1/sub/x:output:0"gru_1/while/gru_cell_1/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_1/while/gru_cell_1/sub·
gru_1/while/gru_cell_1/mul_8Mulgru_1/while/gru_cell_1/sub:z:0gru_1/while/gru_cell_1/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_1/while/gru_cell_1/mul_8¼
gru_1/while/gru_cell_1/add_3AddV2 gru_1/while/gru_cell_1/mul_7:z:0 gru_1/while/gru_cell_1/mul_8:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_1/while/gru_cell_1/add_3ü
0gru_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemgru_1_while_placeholder_1gru_1_while_placeholder gru_1/while/gru_cell_1/add_3:z:0*
_output_shapes
: *
element_dtype022
0gru_1/while/TensorArrayV2Write/TensorListSetItemh
gru_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
gru_1/while/add/y
gru_1/while/addAddV2gru_1_while_placeholdergru_1/while/add/y:output:0*
T0*
_output_shapes
: 2
gru_1/while/addl
gru_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
gru_1/while/add_1/y
gru_1/while/add_1AddV2$gru_1_while_gru_1_while_loop_countergru_1/while/add_1/y:output:0*
T0*
_output_shapes
: 2
gru_1/while/add_1
gru_1/while/IdentityIdentitygru_1/while/add_1:z:0^gru_1/while/NoOp*
T0*
_output_shapes
: 2
gru_1/while/Identity
gru_1/while/Identity_1Identity*gru_1_while_gru_1_while_maximum_iterations^gru_1/while/NoOp*
T0*
_output_shapes
: 2
gru_1/while/Identity_1
gru_1/while/Identity_2Identitygru_1/while/add:z:0^gru_1/while/NoOp*
T0*
_output_shapes
: 2
gru_1/while/Identity_2²
gru_1/while/Identity_3Identity@gru_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^gru_1/while/NoOp*
T0*
_output_shapes
: 2
gru_1/while/Identity_3¤
gru_1/while/Identity_4Identity gru_1/while/gru_cell_1/add_3:z:0^gru_1/while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_1/while/Identity_4
gru_1/while/NoOpNoOp&^gru_1/while/gru_cell_1/ReadVariableOp(^gru_1/while/gru_cell_1/ReadVariableOp_1(^gru_1/while/gru_cell_1/ReadVariableOp_2(^gru_1/while/gru_cell_1/ReadVariableOp_3(^gru_1/while/gru_cell_1/ReadVariableOp_4(^gru_1/while/gru_cell_1/ReadVariableOp_5(^gru_1/while/gru_cell_1/ReadVariableOp_6*"
_acd_function_control_output(*
_output_shapes
 2
gru_1/while/NoOp"H
!gru_1_while_gru_1_strided_slice_1#gru_1_while_gru_1_strided_slice_1_0"f
0gru_1_while_gru_cell_1_readvariableop_1_resource2gru_1_while_gru_cell_1_readvariableop_1_resource_0"f
0gru_1_while_gru_cell_1_readvariableop_4_resource2gru_1_while_gru_cell_1_readvariableop_4_resource_0"b
.gru_1_while_gru_cell_1_readvariableop_resource0gru_1_while_gru_cell_1_readvariableop_resource_0"5
gru_1_while_identitygru_1/while/Identity:output:0"9
gru_1_while_identity_1gru_1/while/Identity_1:output:0"9
gru_1_while_identity_2gru_1/while/Identity_2:output:0"9
gru_1_while_identity_3gru_1/while/Identity_3:output:0"9
gru_1_while_identity_4gru_1/while/Identity_4:output:0"À
]gru_1_while_tensorarrayv2read_tensorlistgetitem_gru_1_tensorarrayunstack_tensorlistfromtensor_gru_1_while_tensorarrayv2read_tensorlistgetitem_gru_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2N
%gru_1/while/gru_cell_1/ReadVariableOp%gru_1/while/gru_cell_1/ReadVariableOp2R
'gru_1/while/gru_cell_1/ReadVariableOp_1'gru_1/while/gru_cell_1/ReadVariableOp_12R
'gru_1/while/gru_cell_1/ReadVariableOp_2'gru_1/while/gru_cell_1/ReadVariableOp_22R
'gru_1/while/gru_cell_1/ReadVariableOp_3'gru_1/while/gru_cell_1/ReadVariableOp_32R
'gru_1/while/gru_cell_1/ReadVariableOp_4'gru_1/while/gru_cell_1/ReadVariableOp_42R
'gru_1/while/gru_cell_1/ReadVariableOp_5'gru_1/while/gru_cell_1/ReadVariableOp_52R
'gru_1/while/gru_cell_1/ReadVariableOp_6'gru_1/while/gru_cell_1/ReadVariableOp_6: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
Ô

+__inference_embedding_1_layer_call_fn_41211

inputs
unknown:2
identity¢StatefulPartitionedCallí
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_embedding_1_layer_call_and_return_conditional_losses_396032
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ222

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
§
·
%__inference_gru_1_layer_call_fn_41254

inputs
unknown:	Â
	unknown_0:	2Â
	unknown_1:
Â
identity¢StatefulPartitionedCallþ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_gru_1_layer_call_and_return_conditional_losses_398892
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ22: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
 
_user_specified_nameinputs
×

G__inference_sequential_2_layer_call_and_return_conditional_losses_39915

inputs#
embedding_1_39604:2
gru_1_39890:	Â
gru_1_39892:	2Â
gru_1_39894:
Â
dense_39909:	
dense_39911:
identity¢dense/StatefulPartitionedCall¢#embedding_1/StatefulPartitionedCall¢gru_1/StatefulPartitionedCall
#embedding_1/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_1_39604*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_embedding_1_layer_call_and_return_conditional_losses_396032%
#embedding_1/StatefulPartitionedCall¸
gru_1/StatefulPartitionedCallStatefulPartitionedCall,embedding_1/StatefulPartitionedCall:output:0gru_1_39890gru_1_39892gru_1_39894*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_gru_1_layer_call_and_return_conditional_losses_398892
gru_1/StatefulPartitionedCall¢
dense/StatefulPartitionedCallStatefulPartitionedCall&gru_1/StatefulPartitionedCall:output:0dense_39909dense_39911*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_399082
dense/StatefulPartitionedCall
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity´
NoOpNoOp^dense/StatefulPartitionedCall$^embedding_1/StatefulPartitionedCall^gru_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ2: : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2J
#embedding_1/StatefulPartitionedCall#embedding_1/StatefulPartitionedCall2>
gru_1/StatefulPartitionedCallgru_1/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
ø

G__inference_sequential_2_layer_call_and_return_conditional_losses_40457
embedding_1_input#
embedding_1_40441:2
gru_1_40444:	Â
gru_1_40446:	2Â
gru_1_40448:
Â
dense_40451:	
dense_40453:
identity¢dense/StatefulPartitionedCall¢#embedding_1/StatefulPartitionedCall¢gru_1/StatefulPartitionedCall
#embedding_1/StatefulPartitionedCallStatefulPartitionedCallembedding_1_inputembedding_1_40441*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_embedding_1_layer_call_and_return_conditional_losses_396032%
#embedding_1/StatefulPartitionedCall¸
gru_1/StatefulPartitionedCallStatefulPartitionedCall,embedding_1/StatefulPartitionedCall:output:0gru_1_40444gru_1_40446gru_1_40448*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_gru_1_layer_call_and_return_conditional_losses_403322
gru_1/StatefulPartitionedCall¢
dense/StatefulPartitionedCallStatefulPartitionedCall&gru_1/StatefulPartitionedCall:output:0dense_40451dense_40453*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_399082
dense/StatefulPartitionedCall
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity´
NoOpNoOp^dense/StatefulPartitionedCall$^embedding_1/StatefulPartitionedCall^gru_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ2: : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2J
#embedding_1/StatefulPartitionedCall#embedding_1/StatefulPartitionedCall2>
gru_1/StatefulPartitionedCallgru_1/StatefulPartitionedCall:Z V
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
+
_user_specified_nameembedding_1_input
ã
ã
@__inference_gru_1_layer_call_and_return_conditional_losses_41927
inputs_05
"gru_cell_1_readvariableop_resource:	Â7
$gru_cell_1_readvariableop_1_resource:	2Â8
$gru_cell_1_readvariableop_4_resource:
Â
identity¢gru_cell_1/ReadVariableOp¢gru_cell_1/ReadVariableOp_1¢gru_cell_1/ReadVariableOp_2¢gru_cell_1/ReadVariableOp_3¢gru_cell_1/ReadVariableOp_4¢gru_cell_1/ReadVariableOp_5¢gru_cell_1/ReadVariableOp_6¢whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
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
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ22
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask2
strided_slice_2
gru_cell_1/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
gru_cell_1/ones_like/Shape}
gru_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_cell_1/ones_like/Const°
gru_cell_1/ones_likeFill#gru_cell_1/ones_like/Shape:output:0#gru_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
gru_cell_1/ones_likey
gru_cell_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?2
gru_cell_1/dropout/Const«
gru_cell_1/dropout/MulMulgru_cell_1/ones_like:output:0!gru_cell_1/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
gru_cell_1/dropout/Mul
gru_cell_1/dropout/ShapeShapegru_cell_1/ones_like:output:0*
T0*
_output_shapes
:2
gru_cell_1/dropout/Shapeô
/gru_cell_1/dropout/random_uniform/RandomUniformRandomUniform!gru_cell_1/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2éÖâ21
/gru_cell_1/dropout/random_uniform/RandomUniform
!gru_cell_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2#
!gru_cell_1/dropout/GreaterEqual/yê
gru_cell_1/dropout/GreaterEqualGreaterEqual8gru_cell_1/dropout/random_uniform/RandomUniform:output:0*gru_cell_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22!
gru_cell_1/dropout/GreaterEqual 
gru_cell_1/dropout/CastCast#gru_cell_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
gru_cell_1/dropout/Cast¦
gru_cell_1/dropout/Mul_1Mulgru_cell_1/dropout/Mul:z:0gru_cell_1/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
gru_cell_1/dropout/Mul_1}
gru_cell_1/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?2
gru_cell_1/dropout_1/Const±
gru_cell_1/dropout_1/MulMulgru_cell_1/ones_like:output:0#gru_cell_1/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
gru_cell_1/dropout_1/Mul
gru_cell_1/dropout_1/ShapeShapegru_cell_1/ones_like:output:0*
T0*
_output_shapes
:2
gru_cell_1/dropout_1/Shapeú
1gru_cell_1/dropout_1/random_uniform/RandomUniformRandomUniform#gru_cell_1/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2êâ23
1gru_cell_1/dropout_1/random_uniform/RandomUniform
#gru_cell_1/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2%
#gru_cell_1/dropout_1/GreaterEqual/yò
!gru_cell_1/dropout_1/GreaterEqualGreaterEqual:gru_cell_1/dropout_1/random_uniform/RandomUniform:output:0,gru_cell_1/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22#
!gru_cell_1/dropout_1/GreaterEqual¦
gru_cell_1/dropout_1/CastCast%gru_cell_1/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
gru_cell_1/dropout_1/Cast®
gru_cell_1/dropout_1/Mul_1Mulgru_cell_1/dropout_1/Mul:z:0gru_cell_1/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
gru_cell_1/dropout_1/Mul_1}
gru_cell_1/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?2
gru_cell_1/dropout_2/Const±
gru_cell_1/dropout_2/MulMulgru_cell_1/ones_like:output:0#gru_cell_1/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
gru_cell_1/dropout_2/Mul
gru_cell_1/dropout_2/ShapeShapegru_cell_1/ones_like:output:0*
T0*
_output_shapes
:2
gru_cell_1/dropout_2/Shapeú
1gru_cell_1/dropout_2/random_uniform/RandomUniformRandomUniform#gru_cell_1/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2×ò23
1gru_cell_1/dropout_2/random_uniform/RandomUniform
#gru_cell_1/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2%
#gru_cell_1/dropout_2/GreaterEqual/yò
!gru_cell_1/dropout_2/GreaterEqualGreaterEqual:gru_cell_1/dropout_2/random_uniform/RandomUniform:output:0,gru_cell_1/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22#
!gru_cell_1/dropout_2/GreaterEqual¦
gru_cell_1/dropout_2/CastCast%gru_cell_1/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
gru_cell_1/dropout_2/Cast®
gru_cell_1/dropout_2/Mul_1Mulgru_cell_1/dropout_2/Mul:z:0gru_cell_1/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
gru_cell_1/dropout_2/Mul_1z
gru_cell_1/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
gru_cell_1/ones_like_1/Shape
gru_cell_1/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_cell_1/ones_like_1/Const¹
gru_cell_1/ones_like_1Fill%gru_cell_1/ones_like_1/Shape:output:0%gru_cell_1/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/ones_like_1}
gru_cell_1/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?2
gru_cell_1/dropout_3/Const´
gru_cell_1/dropout_3/MulMulgru_cell_1/ones_like_1:output:0#gru_cell_1/dropout_3/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/dropout_3/Mul
gru_cell_1/dropout_3/ShapeShapegru_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:2
gru_cell_1/dropout_3/Shapeû
1gru_cell_1/dropout_3/random_uniform/RandomUniformRandomUniform#gru_cell_1/dropout_3/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
seed±ÿå)*
seed2°ö23
1gru_cell_1/dropout_3/random_uniform/RandomUniform
#gru_cell_1/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2%
#gru_cell_1/dropout_3/GreaterEqual/yó
!gru_cell_1/dropout_3/GreaterEqualGreaterEqual:gru_cell_1/dropout_3/random_uniform/RandomUniform:output:0,gru_cell_1/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!gru_cell_1/dropout_3/GreaterEqual§
gru_cell_1/dropout_3/CastCast%gru_cell_1/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/dropout_3/Cast¯
gru_cell_1/dropout_3/Mul_1Mulgru_cell_1/dropout_3/Mul:z:0gru_cell_1/dropout_3/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/dropout_3/Mul_1}
gru_cell_1/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?2
gru_cell_1/dropout_4/Const´
gru_cell_1/dropout_4/MulMulgru_cell_1/ones_like_1:output:0#gru_cell_1/dropout_4/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/dropout_4/Mul
gru_cell_1/dropout_4/ShapeShapegru_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:2
gru_cell_1/dropout_4/Shapeû
1gru_cell_1/dropout_4/random_uniform/RandomUniformRandomUniform#gru_cell_1/dropout_4/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
seed±ÿå)*
seed2ûå§23
1gru_cell_1/dropout_4/random_uniform/RandomUniform
#gru_cell_1/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2%
#gru_cell_1/dropout_4/GreaterEqual/yó
!gru_cell_1/dropout_4/GreaterEqualGreaterEqual:gru_cell_1/dropout_4/random_uniform/RandomUniform:output:0,gru_cell_1/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!gru_cell_1/dropout_4/GreaterEqual§
gru_cell_1/dropout_4/CastCast%gru_cell_1/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/dropout_4/Cast¯
gru_cell_1/dropout_4/Mul_1Mulgru_cell_1/dropout_4/Mul:z:0gru_cell_1/dropout_4/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/dropout_4/Mul_1}
gru_cell_1/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?2
gru_cell_1/dropout_5/Const´
gru_cell_1/dropout_5/MulMulgru_cell_1/ones_like_1:output:0#gru_cell_1/dropout_5/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/dropout_5/Mul
gru_cell_1/dropout_5/ShapeShapegru_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:2
gru_cell_1/dropout_5/Shapeû
1gru_cell_1/dropout_5/random_uniform/RandomUniformRandomUniform#gru_cell_1/dropout_5/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
seed±ÿå)*
seed223
1gru_cell_1/dropout_5/random_uniform/RandomUniform
#gru_cell_1/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2%
#gru_cell_1/dropout_5/GreaterEqual/yó
!gru_cell_1/dropout_5/GreaterEqualGreaterEqual:gru_cell_1/dropout_5/random_uniform/RandomUniform:output:0,gru_cell_1/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!gru_cell_1/dropout_5/GreaterEqual§
gru_cell_1/dropout_5/CastCast%gru_cell_1/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/dropout_5/Cast¯
gru_cell_1/dropout_5/Mul_1Mulgru_cell_1/dropout_5/Mul:z:0gru_cell_1/dropout_5/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/dropout_5/Mul_1
gru_cell_1/ReadVariableOpReadVariableOp"gru_cell_1_readvariableop_resource*
_output_shapes
:	Â*
dtype02
gru_cell_1/ReadVariableOp
gru_cell_1/unstackUnpack!gru_cell_1/ReadVariableOp:value:0*
T0*"
_output_shapes
:Â:Â*	
num2
gru_cell_1/unstack
gru_cell_1/mulMulstrided_slice_2:output:0gru_cell_1/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
gru_cell_1/mul
gru_cell_1/mul_1Mulstrided_slice_2:output:0gru_cell_1/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
gru_cell_1/mul_1
gru_cell_1/mul_2Mulstrided_slice_2:output:0gru_cell_1/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
gru_cell_1/mul_2 
gru_cell_1/ReadVariableOp_1ReadVariableOp$gru_cell_1_readvariableop_1_resource*
_output_shapes
:	2Â*
dtype02
gru_cell_1/ReadVariableOp_1
gru_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2 
gru_cell_1/strided_slice/stack
 gru_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2"
 gru_cell_1/strided_slice/stack_1
 gru_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_cell_1/strided_slice/stack_2Á
gru_cell_1/strided_sliceStridedSlice#gru_cell_1/ReadVariableOp_1:value:0'gru_cell_1/strided_slice/stack:output:0)gru_cell_1/strided_slice/stack_1:output:0)gru_cell_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2*

begin_mask*
end_mask2
gru_cell_1/strided_slice
gru_cell_1/MatMulMatMulgru_cell_1/mul:z:0!gru_cell_1/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/MatMul 
gru_cell_1/ReadVariableOp_2ReadVariableOp$gru_cell_1_readvariableop_1_resource*
_output_shapes
:	2Â*
dtype02
gru_cell_1/ReadVariableOp_2
 gru_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2"
 gru_cell_1/strided_slice_1/stack
"gru_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2$
"gru_cell_1/strided_slice_1/stack_1
"gru_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"gru_cell_1/strided_slice_1/stack_2Ë
gru_cell_1/strided_slice_1StridedSlice#gru_cell_1/ReadVariableOp_2:value:0)gru_cell_1/strided_slice_1/stack:output:0+gru_cell_1/strided_slice_1/stack_1:output:0+gru_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2*

begin_mask*
end_mask2
gru_cell_1/strided_slice_1¢
gru_cell_1/MatMul_1MatMulgru_cell_1/mul_1:z:0#gru_cell_1/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/MatMul_1 
gru_cell_1/ReadVariableOp_3ReadVariableOp$gru_cell_1_readvariableop_1_resource*
_output_shapes
:	2Â*
dtype02
gru_cell_1/ReadVariableOp_3
 gru_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2"
 gru_cell_1/strided_slice_2/stack
"gru_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"gru_cell_1/strided_slice_2/stack_1
"gru_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"gru_cell_1/strided_slice_2/stack_2Ë
gru_cell_1/strided_slice_2StridedSlice#gru_cell_1/ReadVariableOp_3:value:0)gru_cell_1/strided_slice_2/stack:output:0+gru_cell_1/strided_slice_2/stack_1:output:0+gru_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2*

begin_mask*
end_mask2
gru_cell_1/strided_slice_2¢
gru_cell_1/MatMul_2MatMulgru_cell_1/mul_2:z:0#gru_cell_1/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/MatMul_2
 gru_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 gru_cell_1/strided_slice_3/stack
"gru_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"gru_cell_1/strided_slice_3/stack_1
"gru_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"gru_cell_1/strided_slice_3/stack_2¯
gru_cell_1/strided_slice_3StridedSlicegru_cell_1/unstack:output:0)gru_cell_1/strided_slice_3/stack:output:0+gru_cell_1/strided_slice_3/stack_1:output:0+gru_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes	
:*

begin_mask2
gru_cell_1/strided_slice_3¨
gru_cell_1/BiasAddBiasAddgru_cell_1/MatMul:product:0#gru_cell_1/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/BiasAdd
 gru_cell_1/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:2"
 gru_cell_1/strided_slice_4/stack
"gru_cell_1/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:¬2$
"gru_cell_1/strided_slice_4/stack_1
"gru_cell_1/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"gru_cell_1/strided_slice_4/stack_2
gru_cell_1/strided_slice_4StridedSlicegru_cell_1/unstack:output:0)gru_cell_1/strided_slice_4/stack:output:0+gru_cell_1/strided_slice_4/stack_1:output:0+gru_cell_1/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes	
:2
gru_cell_1/strided_slice_4®
gru_cell_1/BiasAdd_1BiasAddgru_cell_1/MatMul_1:product:0#gru_cell_1/strided_slice_4:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/BiasAdd_1
 gru_cell_1/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:¬2"
 gru_cell_1/strided_slice_5/stack
"gru_cell_1/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2$
"gru_cell_1/strided_slice_5/stack_1
"gru_cell_1/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"gru_cell_1/strided_slice_5/stack_2­
gru_cell_1/strided_slice_5StridedSlicegru_cell_1/unstack:output:0)gru_cell_1/strided_slice_5/stack:output:0+gru_cell_1/strided_slice_5/stack_1:output:0+gru_cell_1/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes	
:*
end_mask2
gru_cell_1/strided_slice_5®
gru_cell_1/BiasAdd_2BiasAddgru_cell_1/MatMul_2:product:0#gru_cell_1/strided_slice_5:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/BiasAdd_2
gru_cell_1/mul_3Mulzeros:output:0gru_cell_1/dropout_3/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/mul_3
gru_cell_1/mul_4Mulzeros:output:0gru_cell_1/dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/mul_4
gru_cell_1/mul_5Mulzeros:output:0gru_cell_1/dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/mul_5¡
gru_cell_1/ReadVariableOp_4ReadVariableOp$gru_cell_1_readvariableop_4_resource* 
_output_shapes
:
Â*
dtype02
gru_cell_1/ReadVariableOp_4
 gru_cell_1/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 gru_cell_1/strided_slice_6/stack
"gru_cell_1/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2$
"gru_cell_1/strided_slice_6/stack_1
"gru_cell_1/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"gru_cell_1/strided_slice_6/stack_2Ì
gru_cell_1/strided_slice_6StridedSlice#gru_cell_1/ReadVariableOp_4:value:0)gru_cell_1/strided_slice_6/stack:output:0+gru_cell_1/strided_slice_6/stack_1:output:0+gru_cell_1/strided_slice_6/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2
gru_cell_1/strided_slice_6¢
gru_cell_1/MatMul_3MatMulgru_cell_1/mul_3:z:0#gru_cell_1/strided_slice_6:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/MatMul_3¡
gru_cell_1/ReadVariableOp_5ReadVariableOp$gru_cell_1_readvariableop_4_resource* 
_output_shapes
:
Â*
dtype02
gru_cell_1/ReadVariableOp_5
 gru_cell_1/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"       2"
 gru_cell_1/strided_slice_7/stack
"gru_cell_1/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2$
"gru_cell_1/strided_slice_7/stack_1
"gru_cell_1/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"gru_cell_1/strided_slice_7/stack_2Ì
gru_cell_1/strided_slice_7StridedSlice#gru_cell_1/ReadVariableOp_5:value:0)gru_cell_1/strided_slice_7/stack:output:0+gru_cell_1/strided_slice_7/stack_1:output:0+gru_cell_1/strided_slice_7/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2
gru_cell_1/strided_slice_7¢
gru_cell_1/MatMul_4MatMulgru_cell_1/mul_4:z:0#gru_cell_1/strided_slice_7:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/MatMul_4
 gru_cell_1/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 gru_cell_1/strided_slice_8/stack
"gru_cell_1/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"gru_cell_1/strided_slice_8/stack_1
"gru_cell_1/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"gru_cell_1/strided_slice_8/stack_2¯
gru_cell_1/strided_slice_8StridedSlicegru_cell_1/unstack:output:1)gru_cell_1/strided_slice_8/stack:output:0+gru_cell_1/strided_slice_8/stack_1:output:0+gru_cell_1/strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes	
:*

begin_mask2
gru_cell_1/strided_slice_8®
gru_cell_1/BiasAdd_3BiasAddgru_cell_1/MatMul_3:product:0#gru_cell_1/strided_slice_8:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/BiasAdd_3
 gru_cell_1/strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB:2"
 gru_cell_1/strided_slice_9/stack
"gru_cell_1/strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:¬2$
"gru_cell_1/strided_slice_9/stack_1
"gru_cell_1/strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"gru_cell_1/strided_slice_9/stack_2
gru_cell_1/strided_slice_9StridedSlicegru_cell_1/unstack:output:1)gru_cell_1/strided_slice_9/stack:output:0+gru_cell_1/strided_slice_9/stack_1:output:0+gru_cell_1/strided_slice_9/stack_2:output:0*
Index0*
T0*
_output_shapes	
:2
gru_cell_1/strided_slice_9®
gru_cell_1/BiasAdd_4BiasAddgru_cell_1/MatMul_4:product:0#gru_cell_1/strided_slice_9:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/BiasAdd_4
gru_cell_1/addAddV2gru_cell_1/BiasAdd:output:0gru_cell_1/BiasAdd_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/addz
gru_cell_1/SigmoidSigmoidgru_cell_1/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/Sigmoid
gru_cell_1/add_1AddV2gru_cell_1/BiasAdd_1:output:0gru_cell_1/BiasAdd_4:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/add_1
gru_cell_1/Sigmoid_1Sigmoidgru_cell_1/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/Sigmoid_1¡
gru_cell_1/ReadVariableOp_6ReadVariableOp$gru_cell_1_readvariableop_4_resource* 
_output_shapes
:
Â*
dtype02
gru_cell_1/ReadVariableOp_6
!gru_cell_1/strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2#
!gru_cell_1/strided_slice_10/stack
#gru_cell_1/strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#gru_cell_1/strided_slice_10/stack_1
#gru_cell_1/strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#gru_cell_1/strided_slice_10/stack_2Ñ
gru_cell_1/strided_slice_10StridedSlice#gru_cell_1/ReadVariableOp_6:value:0*gru_cell_1/strided_slice_10/stack:output:0,gru_cell_1/strided_slice_10/stack_1:output:0,gru_cell_1/strided_slice_10/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2
gru_cell_1/strided_slice_10£
gru_cell_1/MatMul_5MatMulgru_cell_1/mul_5:z:0$gru_cell_1/strided_slice_10:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/MatMul_5
!gru_cell_1/strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB:¬2#
!gru_cell_1/strided_slice_11/stack
#gru_cell_1/strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2%
#gru_cell_1/strided_slice_11/stack_1
#gru_cell_1/strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#gru_cell_1/strided_slice_11/stack_2²
gru_cell_1/strided_slice_11StridedSlicegru_cell_1/unstack:output:1*gru_cell_1/strided_slice_11/stack:output:0,gru_cell_1/strided_slice_11/stack_1:output:0,gru_cell_1/strided_slice_11/stack_2:output:0*
Index0*
T0*
_output_shapes	
:*
end_mask2
gru_cell_1/strided_slice_11¯
gru_cell_1/BiasAdd_5BiasAddgru_cell_1/MatMul_5:product:0$gru_cell_1/strided_slice_11:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/BiasAdd_5
gru_cell_1/mul_6Mulgru_cell_1/Sigmoid_1:y:0gru_cell_1/BiasAdd_5:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/mul_6
gru_cell_1/add_2AddV2gru_cell_1/BiasAdd_2:output:0gru_cell_1/mul_6:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/add_2s
gru_cell_1/TanhTanhgru_cell_1/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/Tanh
gru_cell_1/mul_7Mulgru_cell_1/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/mul_7i
gru_cell_1/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_cell_1/sub/x
gru_cell_1/subSubgru_cell_1/sub/x:output:0gru_cell_1/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/sub
gru_cell_1/mul_8Mulgru_cell_1/sub:z:0gru_cell_1/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/mul_8
gru_cell_1/add_3AddV2gru_cell_1/mul_7:z:0gru_cell_1/mul_8:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/add_3
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter¸
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0"gru_cell_1_readvariableop_resource$gru_cell_1_readvariableop_1_resource$gru_cell_1_readvariableop_4_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_41727*
condR
while_cond_41726*9
output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeò
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¯
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimet
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity¦
NoOpNoOp^gru_cell_1/ReadVariableOp^gru_cell_1/ReadVariableOp_1^gru_cell_1/ReadVariableOp_2^gru_cell_1/ReadVariableOp_3^gru_cell_1/ReadVariableOp_4^gru_cell_1/ReadVariableOp_5^gru_cell_1/ReadVariableOp_6^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2: : : 26
gru_cell_1/ReadVariableOpgru_cell_1/ReadVariableOp2:
gru_cell_1/ReadVariableOp_1gru_cell_1/ReadVariableOp_12:
gru_cell_1/ReadVariableOp_2gru_cell_1/ReadVariableOp_22:
gru_cell_1/ReadVariableOp_3gru_cell_1/ReadVariableOp_32:
gru_cell_1/ReadVariableOp_4gru_cell_1/ReadVariableOp_42:
gru_cell_1/ReadVariableOp_5gru_cell_1/ReadVariableOp_52:
gru_cell_1/ReadVariableOp_6gru_cell_1/ReadVariableOp_62
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
"
_user_specified_name
inputs/0
	

#__inference_signature_wrapper_40482
embedding_1_input
unknown:2
	unknown_0:	Â
	unknown_1:	2Â
	unknown_2:
Â
	unknown_3:	
	unknown_4:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallembedding_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference__wrapped_model_388302
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ2: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
+
_user_specified_nameembedding_1_input
õ

Ú
*__inference_gru_cell_1_layer_call_fn_42637

inputs
states_0
unknown:	Â
	unknown_0:	2Â
	unknown_1:
Â
identity

identity_1¢StatefulPartitionedCall£
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_gru_cell_1_layer_call_and_return_conditional_losses_392212
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0
×

G__inference_sequential_2_layer_call_and_return_conditional_losses_40387

inputs#
embedding_1_40371:2
gru_1_40374:	Â
gru_1_40376:	2Â
gru_1_40378:
Â
dense_40381:	
dense_40383:
identity¢dense/StatefulPartitionedCall¢#embedding_1/StatefulPartitionedCall¢gru_1/StatefulPartitionedCall
#embedding_1/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_1_40371*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_embedding_1_layer_call_and_return_conditional_losses_396032%
#embedding_1/StatefulPartitionedCall¸
gru_1/StatefulPartitionedCallStatefulPartitionedCall,embedding_1/StatefulPartitionedCall:output:0gru_1_40374gru_1_40376gru_1_40378*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_gru_1_layer_call_and_return_conditional_losses_403322
gru_1/StatefulPartitionedCall¢
dense/StatefulPartitionedCallStatefulPartitionedCall&gru_1/StatefulPartitionedCall:output:0dense_40381dense_40383*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_399082
dense/StatefulPartitionedCall
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity´
NoOpNoOp^dense/StatefulPartitionedCall$^embedding_1/StatefulPartitionedCall^gru_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ2: : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2J
#embedding_1/StatefulPartitionedCall#embedding_1/StatefulPartitionedCall2>
gru_1/StatefulPartitionedCallgru_1/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
¦	

gru_1_while_cond_40652(
$gru_1_while_gru_1_while_loop_counter.
*gru_1_while_gru_1_while_maximum_iterations
gru_1_while_placeholder
gru_1_while_placeholder_1
gru_1_while_placeholder_2*
&gru_1_while_less_gru_1_strided_slice_1?
;gru_1_while_gru_1_while_cond_40652___redundant_placeholder0?
;gru_1_while_gru_1_while_cond_40652___redundant_placeholder1?
;gru_1_while_gru_1_while_cond_40652___redundant_placeholder2?
;gru_1_while_gru_1_while_cond_40652___redundant_placeholder3
gru_1_while_identity

gru_1/while/LessLessgru_1_while_placeholder&gru_1_while_less_gru_1_strided_slice_1*
T0*
_output_shapes
: 2
gru_1/while/Lesso
gru_1/while/IdentityIdentitygru_1/while/Less:z:0*
T0
*
_output_shapes
: 2
gru_1/while/Identity"5
gru_1_while_identitygru_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
Ïñ
ò
#sequential_2_gru_1_while_body_38671B
>sequential_2_gru_1_while_sequential_2_gru_1_while_loop_counterH
Dsequential_2_gru_1_while_sequential_2_gru_1_while_maximum_iterations(
$sequential_2_gru_1_while_placeholder*
&sequential_2_gru_1_while_placeholder_1*
&sequential_2_gru_1_while_placeholder_2A
=sequential_2_gru_1_while_sequential_2_gru_1_strided_slice_1_0}
ysequential_2_gru_1_while_tensorarrayv2read_tensorlistgetitem_sequential_2_gru_1_tensorarrayunstack_tensorlistfromtensor_0P
=sequential_2_gru_1_while_gru_cell_1_readvariableop_resource_0:	ÂR
?sequential_2_gru_1_while_gru_cell_1_readvariableop_1_resource_0:	2ÂS
?sequential_2_gru_1_while_gru_cell_1_readvariableop_4_resource_0:
Â%
!sequential_2_gru_1_while_identity'
#sequential_2_gru_1_while_identity_1'
#sequential_2_gru_1_while_identity_2'
#sequential_2_gru_1_while_identity_3'
#sequential_2_gru_1_while_identity_4?
;sequential_2_gru_1_while_sequential_2_gru_1_strided_slice_1{
wsequential_2_gru_1_while_tensorarrayv2read_tensorlistgetitem_sequential_2_gru_1_tensorarrayunstack_tensorlistfromtensorN
;sequential_2_gru_1_while_gru_cell_1_readvariableop_resource:	ÂP
=sequential_2_gru_1_while_gru_cell_1_readvariableop_1_resource:	2ÂQ
=sequential_2_gru_1_while_gru_cell_1_readvariableop_4_resource:
Â¢2sequential_2/gru_1/while/gru_cell_1/ReadVariableOp¢4sequential_2/gru_1/while/gru_cell_1/ReadVariableOp_1¢4sequential_2/gru_1/while/gru_cell_1/ReadVariableOp_2¢4sequential_2/gru_1/while/gru_cell_1/ReadVariableOp_3¢4sequential_2/gru_1/while/gru_cell_1/ReadVariableOp_4¢4sequential_2/gru_1/while/gru_cell_1/ReadVariableOp_5¢4sequential_2/gru_1/while/gru_cell_1/ReadVariableOp_6é
Jsequential_2/gru_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   2L
Jsequential_2/gru_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeÅ
<sequential_2/gru_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemysequential_2_gru_1_while_tensorarrayv2read_tensorlistgetitem_sequential_2_gru_1_tensorarrayunstack_tensorlistfromtensor_0$sequential_2_gru_1_while_placeholderSsequential_2/gru_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype02>
<sequential_2/gru_1/while/TensorArrayV2Read/TensorListGetItemÝ
3sequential_2/gru_1/while/gru_cell_1/ones_like/ShapeShapeCsequential_2/gru_1/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:25
3sequential_2/gru_1/while/gru_cell_1/ones_like/Shape¯
3sequential_2/gru_1/while/gru_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?25
3sequential_2/gru_1/while/gru_cell_1/ones_like/Const
-sequential_2/gru_1/while/gru_cell_1/ones_likeFill<sequential_2/gru_1/while/gru_cell_1/ones_like/Shape:output:0<sequential_2/gru_1/while/gru_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22/
-sequential_2/gru_1/while/gru_cell_1/ones_likeÄ
5sequential_2/gru_1/while/gru_cell_1/ones_like_1/ShapeShape&sequential_2_gru_1_while_placeholder_2*
T0*
_output_shapes
:27
5sequential_2/gru_1/while/gru_cell_1/ones_like_1/Shape³
5sequential_2/gru_1/while/gru_cell_1/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?27
5sequential_2/gru_1/while/gru_cell_1/ones_like_1/Const
/sequential_2/gru_1/while/gru_cell_1/ones_like_1Fill>sequential_2/gru_1/while/gru_cell_1/ones_like_1/Shape:output:0>sequential_2/gru_1/while/gru_cell_1/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ21
/sequential_2/gru_1/while/gru_cell_1/ones_like_1ç
2sequential_2/gru_1/while/gru_cell_1/ReadVariableOpReadVariableOp=sequential_2_gru_1_while_gru_cell_1_readvariableop_resource_0*
_output_shapes
:	Â*
dtype024
2sequential_2/gru_1/while/gru_cell_1/ReadVariableOpØ
+sequential_2/gru_1/while/gru_cell_1/unstackUnpack:sequential_2/gru_1/while/gru_cell_1/ReadVariableOp:value:0*
T0*"
_output_shapes
:Â:Â*	
num2-
+sequential_2/gru_1/while/gru_cell_1/unstack
'sequential_2/gru_1/while/gru_cell_1/mulMulCsequential_2/gru_1/while/TensorArrayV2Read/TensorListGetItem:item:06sequential_2/gru_1/while/gru_cell_1/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22)
'sequential_2/gru_1/while/gru_cell_1/mul
)sequential_2/gru_1/while/gru_cell_1/mul_1MulCsequential_2/gru_1/while/TensorArrayV2Read/TensorListGetItem:item:06sequential_2/gru_1/while/gru_cell_1/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22+
)sequential_2/gru_1/while/gru_cell_1/mul_1
)sequential_2/gru_1/while/gru_cell_1/mul_2MulCsequential_2/gru_1/while/TensorArrayV2Read/TensorListGetItem:item:06sequential_2/gru_1/while/gru_cell_1/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22+
)sequential_2/gru_1/while/gru_cell_1/mul_2í
4sequential_2/gru_1/while/gru_cell_1/ReadVariableOp_1ReadVariableOp?sequential_2_gru_1_while_gru_cell_1_readvariableop_1_resource_0*
_output_shapes
:	2Â*
dtype026
4sequential_2/gru_1/while/gru_cell_1/ReadVariableOp_1Ã
7sequential_2/gru_1/while/gru_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7sequential_2/gru_1/while/gru_cell_1/strided_slice/stackÇ
9sequential_2/gru_1/while/gru_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2;
9sequential_2/gru_1/while/gru_cell_1/strided_slice/stack_1Ç
9sequential_2/gru_1/while/gru_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9sequential_2/gru_1/while/gru_cell_1/strided_slice/stack_2×
1sequential_2/gru_1/while/gru_cell_1/strided_sliceStridedSlice<sequential_2/gru_1/while/gru_cell_1/ReadVariableOp_1:value:0@sequential_2/gru_1/while/gru_cell_1/strided_slice/stack:output:0Bsequential_2/gru_1/while/gru_cell_1/strided_slice/stack_1:output:0Bsequential_2/gru_1/while/gru_cell_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2*

begin_mask*
end_mask23
1sequential_2/gru_1/while/gru_cell_1/strided_sliceþ
*sequential_2/gru_1/while/gru_cell_1/MatMulMatMul+sequential_2/gru_1/while/gru_cell_1/mul:z:0:sequential_2/gru_1/while/gru_cell_1/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2,
*sequential_2/gru_1/while/gru_cell_1/MatMulí
4sequential_2/gru_1/while/gru_cell_1/ReadVariableOp_2ReadVariableOp?sequential_2_gru_1_while_gru_cell_1_readvariableop_1_resource_0*
_output_shapes
:	2Â*
dtype026
4sequential_2/gru_1/while/gru_cell_1/ReadVariableOp_2Ç
9sequential_2/gru_1/while/gru_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2;
9sequential_2/gru_1/while/gru_cell_1/strided_slice_1/stackË
;sequential_2/gru_1/while/gru_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2=
;sequential_2/gru_1/while/gru_cell_1/strided_slice_1/stack_1Ë
;sequential_2/gru_1/while/gru_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2=
;sequential_2/gru_1/while/gru_cell_1/strided_slice_1/stack_2á
3sequential_2/gru_1/while/gru_cell_1/strided_slice_1StridedSlice<sequential_2/gru_1/while/gru_cell_1/ReadVariableOp_2:value:0Bsequential_2/gru_1/while/gru_cell_1/strided_slice_1/stack:output:0Dsequential_2/gru_1/while/gru_cell_1/strided_slice_1/stack_1:output:0Dsequential_2/gru_1/while/gru_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2*

begin_mask*
end_mask25
3sequential_2/gru_1/while/gru_cell_1/strided_slice_1
,sequential_2/gru_1/while/gru_cell_1/MatMul_1MatMul-sequential_2/gru_1/while/gru_cell_1/mul_1:z:0<sequential_2/gru_1/while/gru_cell_1/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2.
,sequential_2/gru_1/while/gru_cell_1/MatMul_1í
4sequential_2/gru_1/while/gru_cell_1/ReadVariableOp_3ReadVariableOp?sequential_2_gru_1_while_gru_cell_1_readvariableop_1_resource_0*
_output_shapes
:	2Â*
dtype026
4sequential_2/gru_1/while/gru_cell_1/ReadVariableOp_3Ç
9sequential_2/gru_1/while/gru_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2;
9sequential_2/gru_1/while/gru_cell_1/strided_slice_2/stackË
;sequential_2/gru_1/while/gru_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2=
;sequential_2/gru_1/while/gru_cell_1/strided_slice_2/stack_1Ë
;sequential_2/gru_1/while/gru_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2=
;sequential_2/gru_1/while/gru_cell_1/strided_slice_2/stack_2á
3sequential_2/gru_1/while/gru_cell_1/strided_slice_2StridedSlice<sequential_2/gru_1/while/gru_cell_1/ReadVariableOp_3:value:0Bsequential_2/gru_1/while/gru_cell_1/strided_slice_2/stack:output:0Dsequential_2/gru_1/while/gru_cell_1/strided_slice_2/stack_1:output:0Dsequential_2/gru_1/while/gru_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2*

begin_mask*
end_mask25
3sequential_2/gru_1/while/gru_cell_1/strided_slice_2
,sequential_2/gru_1/while/gru_cell_1/MatMul_2MatMul-sequential_2/gru_1/while/gru_cell_1/mul_2:z:0<sequential_2/gru_1/while/gru_cell_1/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2.
,sequential_2/gru_1/while/gru_cell_1/MatMul_2À
9sequential_2/gru_1/while/gru_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2;
9sequential_2/gru_1/while/gru_cell_1/strided_slice_3/stackÅ
;sequential_2/gru_1/while/gru_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2=
;sequential_2/gru_1/while/gru_cell_1/strided_slice_3/stack_1Ä
;sequential_2/gru_1/while/gru_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2=
;sequential_2/gru_1/while/gru_cell_1/strided_slice_3/stack_2Å
3sequential_2/gru_1/while/gru_cell_1/strided_slice_3StridedSlice4sequential_2/gru_1/while/gru_cell_1/unstack:output:0Bsequential_2/gru_1/while/gru_cell_1/strided_slice_3/stack:output:0Dsequential_2/gru_1/while/gru_cell_1/strided_slice_3/stack_1:output:0Dsequential_2/gru_1/while/gru_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes	
:*

begin_mask25
3sequential_2/gru_1/while/gru_cell_1/strided_slice_3
+sequential_2/gru_1/while/gru_cell_1/BiasAddBiasAdd4sequential_2/gru_1/while/gru_cell_1/MatMul:product:0<sequential_2/gru_1/while/gru_cell_1/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2-
+sequential_2/gru_1/while/gru_cell_1/BiasAddÁ
9sequential_2/gru_1/while/gru_cell_1/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_2/gru_1/while/gru_cell_1/strided_slice_4/stackÅ
;sequential_2/gru_1/while/gru_cell_1/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:¬2=
;sequential_2/gru_1/while/gru_cell_1/strided_slice_4/stack_1Ä
;sequential_2/gru_1/while/gru_cell_1/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2=
;sequential_2/gru_1/while/gru_cell_1/strided_slice_4/stack_2³
3sequential_2/gru_1/while/gru_cell_1/strided_slice_4StridedSlice4sequential_2/gru_1/while/gru_cell_1/unstack:output:0Bsequential_2/gru_1/while/gru_cell_1/strided_slice_4/stack:output:0Dsequential_2/gru_1/while/gru_cell_1/strided_slice_4/stack_1:output:0Dsequential_2/gru_1/while/gru_cell_1/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes	
:25
3sequential_2/gru_1/while/gru_cell_1/strided_slice_4
-sequential_2/gru_1/while/gru_cell_1/BiasAdd_1BiasAdd6sequential_2/gru_1/while/gru_cell_1/MatMul_1:product:0<sequential_2/gru_1/while/gru_cell_1/strided_slice_4:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2/
-sequential_2/gru_1/while/gru_cell_1/BiasAdd_1Á
9sequential_2/gru_1/while/gru_cell_1/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:¬2;
9sequential_2/gru_1/while/gru_cell_1/strided_slice_5/stackÄ
;sequential_2/gru_1/while/gru_cell_1/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2=
;sequential_2/gru_1/while/gru_cell_1/strided_slice_5/stack_1Ä
;sequential_2/gru_1/while/gru_cell_1/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2=
;sequential_2/gru_1/while/gru_cell_1/strided_slice_5/stack_2Ã
3sequential_2/gru_1/while/gru_cell_1/strided_slice_5StridedSlice4sequential_2/gru_1/while/gru_cell_1/unstack:output:0Bsequential_2/gru_1/while/gru_cell_1/strided_slice_5/stack:output:0Dsequential_2/gru_1/while/gru_cell_1/strided_slice_5/stack_1:output:0Dsequential_2/gru_1/while/gru_cell_1/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes	
:*
end_mask25
3sequential_2/gru_1/while/gru_cell_1/strided_slice_5
-sequential_2/gru_1/while/gru_cell_1/BiasAdd_2BiasAdd6sequential_2/gru_1/while/gru_cell_1/MatMul_2:product:0<sequential_2/gru_1/while/gru_cell_1/strided_slice_5:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2/
-sequential_2/gru_1/while/gru_cell_1/BiasAdd_2ò
)sequential_2/gru_1/while/gru_cell_1/mul_3Mul&sequential_2_gru_1_while_placeholder_28sequential_2/gru_1/while/gru_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2+
)sequential_2/gru_1/while/gru_cell_1/mul_3ò
)sequential_2/gru_1/while/gru_cell_1/mul_4Mul&sequential_2_gru_1_while_placeholder_28sequential_2/gru_1/while/gru_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2+
)sequential_2/gru_1/while/gru_cell_1/mul_4ò
)sequential_2/gru_1/while/gru_cell_1/mul_5Mul&sequential_2_gru_1_while_placeholder_28sequential_2/gru_1/while/gru_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2+
)sequential_2/gru_1/while/gru_cell_1/mul_5î
4sequential_2/gru_1/while/gru_cell_1/ReadVariableOp_4ReadVariableOp?sequential_2_gru_1_while_gru_cell_1_readvariableop_4_resource_0* 
_output_shapes
:
Â*
dtype026
4sequential_2/gru_1/while/gru_cell_1/ReadVariableOp_4Ç
9sequential_2/gru_1/while/gru_cell_1/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2;
9sequential_2/gru_1/while/gru_cell_1/strided_slice_6/stackË
;sequential_2/gru_1/while/gru_cell_1/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2=
;sequential_2/gru_1/while/gru_cell_1/strided_slice_6/stack_1Ë
;sequential_2/gru_1/while/gru_cell_1/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2=
;sequential_2/gru_1/while/gru_cell_1/strided_slice_6/stack_2â
3sequential_2/gru_1/while/gru_cell_1/strided_slice_6StridedSlice<sequential_2/gru_1/while/gru_cell_1/ReadVariableOp_4:value:0Bsequential_2/gru_1/while/gru_cell_1/strided_slice_6/stack:output:0Dsequential_2/gru_1/while/gru_cell_1/strided_slice_6/stack_1:output:0Dsequential_2/gru_1/while/gru_cell_1/strided_slice_6/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask25
3sequential_2/gru_1/while/gru_cell_1/strided_slice_6
,sequential_2/gru_1/while/gru_cell_1/MatMul_3MatMul-sequential_2/gru_1/while/gru_cell_1/mul_3:z:0<sequential_2/gru_1/while/gru_cell_1/strided_slice_6:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2.
,sequential_2/gru_1/while/gru_cell_1/MatMul_3î
4sequential_2/gru_1/while/gru_cell_1/ReadVariableOp_5ReadVariableOp?sequential_2_gru_1_while_gru_cell_1_readvariableop_4_resource_0* 
_output_shapes
:
Â*
dtype026
4sequential_2/gru_1/while/gru_cell_1/ReadVariableOp_5Ç
9sequential_2/gru_1/while/gru_cell_1/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"       2;
9sequential_2/gru_1/while/gru_cell_1/strided_slice_7/stackË
;sequential_2/gru_1/while/gru_cell_1/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2=
;sequential_2/gru_1/while/gru_cell_1/strided_slice_7/stack_1Ë
;sequential_2/gru_1/while/gru_cell_1/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2=
;sequential_2/gru_1/while/gru_cell_1/strided_slice_7/stack_2â
3sequential_2/gru_1/while/gru_cell_1/strided_slice_7StridedSlice<sequential_2/gru_1/while/gru_cell_1/ReadVariableOp_5:value:0Bsequential_2/gru_1/while/gru_cell_1/strided_slice_7/stack:output:0Dsequential_2/gru_1/while/gru_cell_1/strided_slice_7/stack_1:output:0Dsequential_2/gru_1/while/gru_cell_1/strided_slice_7/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask25
3sequential_2/gru_1/while/gru_cell_1/strided_slice_7
,sequential_2/gru_1/while/gru_cell_1/MatMul_4MatMul-sequential_2/gru_1/while/gru_cell_1/mul_4:z:0<sequential_2/gru_1/while/gru_cell_1/strided_slice_7:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2.
,sequential_2/gru_1/while/gru_cell_1/MatMul_4À
9sequential_2/gru_1/while/gru_cell_1/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: 2;
9sequential_2/gru_1/while/gru_cell_1/strided_slice_8/stackÅ
;sequential_2/gru_1/while/gru_cell_1/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2=
;sequential_2/gru_1/while/gru_cell_1/strided_slice_8/stack_1Ä
;sequential_2/gru_1/while/gru_cell_1/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2=
;sequential_2/gru_1/while/gru_cell_1/strided_slice_8/stack_2Å
3sequential_2/gru_1/while/gru_cell_1/strided_slice_8StridedSlice4sequential_2/gru_1/while/gru_cell_1/unstack:output:1Bsequential_2/gru_1/while/gru_cell_1/strided_slice_8/stack:output:0Dsequential_2/gru_1/while/gru_cell_1/strided_slice_8/stack_1:output:0Dsequential_2/gru_1/while/gru_cell_1/strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes	
:*

begin_mask25
3sequential_2/gru_1/while/gru_cell_1/strided_slice_8
-sequential_2/gru_1/while/gru_cell_1/BiasAdd_3BiasAdd6sequential_2/gru_1/while/gru_cell_1/MatMul_3:product:0<sequential_2/gru_1/while/gru_cell_1/strided_slice_8:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2/
-sequential_2/gru_1/while/gru_cell_1/BiasAdd_3Á
9sequential_2/gru_1/while/gru_cell_1/strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_2/gru_1/while/gru_cell_1/strided_slice_9/stackÅ
;sequential_2/gru_1/while/gru_cell_1/strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:¬2=
;sequential_2/gru_1/while/gru_cell_1/strided_slice_9/stack_1Ä
;sequential_2/gru_1/while/gru_cell_1/strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2=
;sequential_2/gru_1/while/gru_cell_1/strided_slice_9/stack_2³
3sequential_2/gru_1/while/gru_cell_1/strided_slice_9StridedSlice4sequential_2/gru_1/while/gru_cell_1/unstack:output:1Bsequential_2/gru_1/while/gru_cell_1/strided_slice_9/stack:output:0Dsequential_2/gru_1/while/gru_cell_1/strided_slice_9/stack_1:output:0Dsequential_2/gru_1/while/gru_cell_1/strided_slice_9/stack_2:output:0*
Index0*
T0*
_output_shapes	
:25
3sequential_2/gru_1/while/gru_cell_1/strided_slice_9
-sequential_2/gru_1/while/gru_cell_1/BiasAdd_4BiasAdd6sequential_2/gru_1/while/gru_cell_1/MatMul_4:product:0<sequential_2/gru_1/while/gru_cell_1/strided_slice_9:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2/
-sequential_2/gru_1/while/gru_cell_1/BiasAdd_4ü
'sequential_2/gru_1/while/gru_cell_1/addAddV24sequential_2/gru_1/while/gru_cell_1/BiasAdd:output:06sequential_2/gru_1/while/gru_cell_1/BiasAdd_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'sequential_2/gru_1/while/gru_cell_1/addÅ
+sequential_2/gru_1/while/gru_cell_1/SigmoidSigmoid+sequential_2/gru_1/while/gru_cell_1/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2-
+sequential_2/gru_1/while/gru_cell_1/Sigmoid
)sequential_2/gru_1/while/gru_cell_1/add_1AddV26sequential_2/gru_1/while/gru_cell_1/BiasAdd_1:output:06sequential_2/gru_1/while/gru_cell_1/BiasAdd_4:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2+
)sequential_2/gru_1/while/gru_cell_1/add_1Ë
-sequential_2/gru_1/while/gru_cell_1/Sigmoid_1Sigmoid-sequential_2/gru_1/while/gru_cell_1/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2/
-sequential_2/gru_1/while/gru_cell_1/Sigmoid_1î
4sequential_2/gru_1/while/gru_cell_1/ReadVariableOp_6ReadVariableOp?sequential_2_gru_1_while_gru_cell_1_readvariableop_4_resource_0* 
_output_shapes
:
Â*
dtype026
4sequential_2/gru_1/while/gru_cell_1/ReadVariableOp_6É
:sequential_2/gru_1/while/gru_cell_1/strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2<
:sequential_2/gru_1/while/gru_cell_1/strided_slice_10/stackÍ
<sequential_2/gru_1/while/gru_cell_1/strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2>
<sequential_2/gru_1/while/gru_cell_1/strided_slice_10/stack_1Í
<sequential_2/gru_1/while/gru_cell_1/strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2>
<sequential_2/gru_1/while/gru_cell_1/strided_slice_10/stack_2ç
4sequential_2/gru_1/while/gru_cell_1/strided_slice_10StridedSlice<sequential_2/gru_1/while/gru_cell_1/ReadVariableOp_6:value:0Csequential_2/gru_1/while/gru_cell_1/strided_slice_10/stack:output:0Esequential_2/gru_1/while/gru_cell_1/strided_slice_10/stack_1:output:0Esequential_2/gru_1/while/gru_cell_1/strided_slice_10/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask26
4sequential_2/gru_1/while/gru_cell_1/strided_slice_10
,sequential_2/gru_1/while/gru_cell_1/MatMul_5MatMul-sequential_2/gru_1/while/gru_cell_1/mul_5:z:0=sequential_2/gru_1/while/gru_cell_1/strided_slice_10:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2.
,sequential_2/gru_1/while/gru_cell_1/MatMul_5Ã
:sequential_2/gru_1/while/gru_cell_1/strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB:¬2<
:sequential_2/gru_1/while/gru_cell_1/strided_slice_11/stackÆ
<sequential_2/gru_1/while/gru_cell_1/strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2>
<sequential_2/gru_1/while/gru_cell_1/strided_slice_11/stack_1Æ
<sequential_2/gru_1/while/gru_cell_1/strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<sequential_2/gru_1/while/gru_cell_1/strided_slice_11/stack_2È
4sequential_2/gru_1/while/gru_cell_1/strided_slice_11StridedSlice4sequential_2/gru_1/while/gru_cell_1/unstack:output:1Csequential_2/gru_1/while/gru_cell_1/strided_slice_11/stack:output:0Esequential_2/gru_1/while/gru_cell_1/strided_slice_11/stack_1:output:0Esequential_2/gru_1/while/gru_cell_1/strided_slice_11/stack_2:output:0*
Index0*
T0*
_output_shapes	
:*
end_mask26
4sequential_2/gru_1/while/gru_cell_1/strided_slice_11
-sequential_2/gru_1/while/gru_cell_1/BiasAdd_5BiasAdd6sequential_2/gru_1/while/gru_cell_1/MatMul_5:product:0=sequential_2/gru_1/while/gru_cell_1/strided_slice_11:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2/
-sequential_2/gru_1/while/gru_cell_1/BiasAdd_5û
)sequential_2/gru_1/while/gru_cell_1/mul_6Mul1sequential_2/gru_1/while/gru_cell_1/Sigmoid_1:y:06sequential_2/gru_1/while/gru_cell_1/BiasAdd_5:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2+
)sequential_2/gru_1/while/gru_cell_1/mul_6ù
)sequential_2/gru_1/while/gru_cell_1/add_2AddV26sequential_2/gru_1/while/gru_cell_1/BiasAdd_2:output:0-sequential_2/gru_1/while/gru_cell_1/mul_6:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2+
)sequential_2/gru_1/while/gru_cell_1/add_2¾
(sequential_2/gru_1/while/gru_cell_1/TanhTanh-sequential_2/gru_1/while/gru_cell_1/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(sequential_2/gru_1/while/gru_cell_1/Tanhé
)sequential_2/gru_1/while/gru_cell_1/mul_7Mul/sequential_2/gru_1/while/gru_cell_1/Sigmoid:y:0&sequential_2_gru_1_while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2+
)sequential_2/gru_1/while/gru_cell_1/mul_7
)sequential_2/gru_1/while/gru_cell_1/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2+
)sequential_2/gru_1/while/gru_cell_1/sub/xñ
'sequential_2/gru_1/while/gru_cell_1/subSub2sequential_2/gru_1/while/gru_cell_1/sub/x:output:0/sequential_2/gru_1/while/gru_cell_1/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'sequential_2/gru_1/while/gru_cell_1/subë
)sequential_2/gru_1/while/gru_cell_1/mul_8Mul+sequential_2/gru_1/while/gru_cell_1/sub:z:0,sequential_2/gru_1/while/gru_cell_1/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2+
)sequential_2/gru_1/while/gru_cell_1/mul_8ð
)sequential_2/gru_1/while/gru_cell_1/add_3AddV2-sequential_2/gru_1/while/gru_cell_1/mul_7:z:0-sequential_2/gru_1/while/gru_cell_1/mul_8:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2+
)sequential_2/gru_1/while/gru_cell_1/add_3½
=sequential_2/gru_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem&sequential_2_gru_1_while_placeholder_1$sequential_2_gru_1_while_placeholder-sequential_2/gru_1/while/gru_cell_1/add_3:z:0*
_output_shapes
: *
element_dtype02?
=sequential_2/gru_1/while/TensorArrayV2Write/TensorListSetItem
sequential_2/gru_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2 
sequential_2/gru_1/while/add/yµ
sequential_2/gru_1/while/addAddV2$sequential_2_gru_1_while_placeholder'sequential_2/gru_1/while/add/y:output:0*
T0*
_output_shapes
: 2
sequential_2/gru_1/while/add
 sequential_2/gru_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2"
 sequential_2/gru_1/while/add_1/yÕ
sequential_2/gru_1/while/add_1AddV2>sequential_2_gru_1_while_sequential_2_gru_1_while_loop_counter)sequential_2/gru_1/while/add_1/y:output:0*
T0*
_output_shapes
: 2 
sequential_2/gru_1/while/add_1·
!sequential_2/gru_1/while/IdentityIdentity"sequential_2/gru_1/while/add_1:z:0^sequential_2/gru_1/while/NoOp*
T0*
_output_shapes
: 2#
!sequential_2/gru_1/while/IdentityÝ
#sequential_2/gru_1/while/Identity_1IdentityDsequential_2_gru_1_while_sequential_2_gru_1_while_maximum_iterations^sequential_2/gru_1/while/NoOp*
T0*
_output_shapes
: 2%
#sequential_2/gru_1/while/Identity_1¹
#sequential_2/gru_1/while/Identity_2Identity sequential_2/gru_1/while/add:z:0^sequential_2/gru_1/while/NoOp*
T0*
_output_shapes
: 2%
#sequential_2/gru_1/while/Identity_2æ
#sequential_2/gru_1/while/Identity_3IdentityMsequential_2/gru_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^sequential_2/gru_1/while/NoOp*
T0*
_output_shapes
: 2%
#sequential_2/gru_1/while/Identity_3Ø
#sequential_2/gru_1/while/Identity_4Identity-sequential_2/gru_1/while/gru_cell_1/add_3:z:0^sequential_2/gru_1/while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2%
#sequential_2/gru_1/while/Identity_4ÿ
sequential_2/gru_1/while/NoOpNoOp3^sequential_2/gru_1/while/gru_cell_1/ReadVariableOp5^sequential_2/gru_1/while/gru_cell_1/ReadVariableOp_15^sequential_2/gru_1/while/gru_cell_1/ReadVariableOp_25^sequential_2/gru_1/while/gru_cell_1/ReadVariableOp_35^sequential_2/gru_1/while/gru_cell_1/ReadVariableOp_45^sequential_2/gru_1/while/gru_cell_1/ReadVariableOp_55^sequential_2/gru_1/while/gru_cell_1/ReadVariableOp_6*"
_acd_function_control_output(*
_output_shapes
 2
sequential_2/gru_1/while/NoOp"
=sequential_2_gru_1_while_gru_cell_1_readvariableop_1_resource?sequential_2_gru_1_while_gru_cell_1_readvariableop_1_resource_0"
=sequential_2_gru_1_while_gru_cell_1_readvariableop_4_resource?sequential_2_gru_1_while_gru_cell_1_readvariableop_4_resource_0"|
;sequential_2_gru_1_while_gru_cell_1_readvariableop_resource=sequential_2_gru_1_while_gru_cell_1_readvariableop_resource_0"O
!sequential_2_gru_1_while_identity*sequential_2/gru_1/while/Identity:output:0"S
#sequential_2_gru_1_while_identity_1,sequential_2/gru_1/while/Identity_1:output:0"S
#sequential_2_gru_1_while_identity_2,sequential_2/gru_1/while/Identity_2:output:0"S
#sequential_2_gru_1_while_identity_3,sequential_2/gru_1/while/Identity_3:output:0"S
#sequential_2_gru_1_while_identity_4,sequential_2/gru_1/while/Identity_4:output:0"|
;sequential_2_gru_1_while_sequential_2_gru_1_strided_slice_1=sequential_2_gru_1_while_sequential_2_gru_1_strided_slice_1_0"ô
wsequential_2_gru_1_while_tensorarrayv2read_tensorlistgetitem_sequential_2_gru_1_tensorarrayunstack_tensorlistfromtensorysequential_2_gru_1_while_tensorarrayv2read_tensorlistgetitem_sequential_2_gru_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2h
2sequential_2/gru_1/while/gru_cell_1/ReadVariableOp2sequential_2/gru_1/while/gru_cell_1/ReadVariableOp2l
4sequential_2/gru_1/while/gru_cell_1/ReadVariableOp_14sequential_2/gru_1/while/gru_cell_1/ReadVariableOp_12l
4sequential_2/gru_1/while/gru_cell_1/ReadVariableOp_24sequential_2/gru_1/while/gru_cell_1/ReadVariableOp_22l
4sequential_2/gru_1/while/gru_cell_1/ReadVariableOp_34sequential_2/gru_1/while/gru_cell_1/ReadVariableOp_32l
4sequential_2/gru_1/while/gru_cell_1/ReadVariableOp_44sequential_2/gru_1/while/gru_cell_1/ReadVariableOp_42l
4sequential_2/gru_1/while/gru_cell_1/ReadVariableOp_54sequential_2/gru_1/while/gru_cell_1/ReadVariableOp_52l
4sequential_2/gru_1/while/gru_cell_1/ReadVariableOp_64sequential_2/gru_1/while/gru_cell_1/ReadVariableOp_6: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
¬	

,__inference_sequential_2_layer_call_fn_40516

inputs
unknown:2
	unknown_0:	Â
	unknown_1:	2Â
	unknown_2:
Â
	unknown_3:	
	unknown_4:
identity¢StatefulPartitionedCall«
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_2_layer_call_and_return_conditional_losses_403872
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ2: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
÷
¥
while_cond_39736
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_39736___redundant_placeholder03
/while_while_cond_39736___redundant_placeholder13
/while_while_cond_39736___redundant_placeholder23
/while_while_cond_39736___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
Í	

,__inference_sequential_2_layer_call_fn_39930
embedding_1_input
unknown:2
	unknown_0:	Â
	unknown_1:	2Â
	unknown_2:
Â
	unknown_3:	
	unknown_4:
identity¢StatefulPartitionedCall¶
StatefulPartitionedCallStatefulPartitionedCallembedding_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_2_layer_call_and_return_conditional_losses_399152
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ2: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
+
_user_specified_nameembedding_1_input
î±
ì
while_body_42058
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0=
*while_gru_cell_1_readvariableop_resource_0:	Â?
,while_gru_cell_1_readvariableop_1_resource_0:	2Â@
,while_gru_cell_1_readvariableop_4_resource_0:
Â
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor;
(while_gru_cell_1_readvariableop_resource:	Â=
*while_gru_cell_1_readvariableop_1_resource:	2Â>
*while_gru_cell_1_readvariableop_4_resource:
Â¢while/gru_cell_1/ReadVariableOp¢!while/gru_cell_1/ReadVariableOp_1¢!while/gru_cell_1/ReadVariableOp_2¢!while/gru_cell_1/ReadVariableOp_3¢!while/gru_cell_1/ReadVariableOp_4¢!while/gru_cell_1/ReadVariableOp_5¢!while/gru_cell_1/ReadVariableOp_6Ã
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem¤
 while/gru_cell_1/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2"
 while/gru_cell_1/ones_like/Shape
 while/gru_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2"
 while/gru_cell_1/ones_like/ConstÈ
while/gru_cell_1/ones_likeFill)while/gru_cell_1/ones_like/Shape:output:0)while/gru_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/gru_cell_1/ones_like
"while/gru_cell_1/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2$
"while/gru_cell_1/ones_like_1/Shape
"while/gru_cell_1/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2$
"while/gru_cell_1/ones_like_1/ConstÑ
while/gru_cell_1/ones_like_1Fill+while/gru_cell_1/ones_like_1/Shape:output:0+while/gru_cell_1/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/ones_like_1®
while/gru_cell_1/ReadVariableOpReadVariableOp*while_gru_cell_1_readvariableop_resource_0*
_output_shapes
:	Â*
dtype02!
while/gru_cell_1/ReadVariableOp
while/gru_cell_1/unstackUnpack'while/gru_cell_1/ReadVariableOp:value:0*
T0*"
_output_shapes
:Â:Â*	
num2
while/gru_cell_1/unstack¼
while/gru_cell_1/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0#while/gru_cell_1/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/gru_cell_1/mulÀ
while/gru_cell_1/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0#while/gru_cell_1/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/gru_cell_1/mul_1À
while/gru_cell_1/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0#while/gru_cell_1/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/gru_cell_1/mul_2´
!while/gru_cell_1/ReadVariableOp_1ReadVariableOp,while_gru_cell_1_readvariableop_1_resource_0*
_output_shapes
:	2Â*
dtype02#
!while/gru_cell_1/ReadVariableOp_1
$while/gru_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2&
$while/gru_cell_1/strided_slice/stack¡
&while/gru_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2(
&while/gru_cell_1/strided_slice/stack_1¡
&while/gru_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&while/gru_cell_1/strided_slice/stack_2å
while/gru_cell_1/strided_sliceStridedSlice)while/gru_cell_1/ReadVariableOp_1:value:0-while/gru_cell_1/strided_slice/stack:output:0/while/gru_cell_1/strided_slice/stack_1:output:0/while/gru_cell_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2*

begin_mask*
end_mask2 
while/gru_cell_1/strided_slice²
while/gru_cell_1/MatMulMatMulwhile/gru_cell_1/mul:z:0'while/gru_cell_1/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/MatMul´
!while/gru_cell_1/ReadVariableOp_2ReadVariableOp,while_gru_cell_1_readvariableop_1_resource_0*
_output_shapes
:	2Â*
dtype02#
!while/gru_cell_1/ReadVariableOp_2¡
&while/gru_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2(
&while/gru_cell_1/strided_slice_1/stack¥
(while/gru_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2*
(while/gru_cell_1/strided_slice_1/stack_1¥
(while/gru_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/gru_cell_1/strided_slice_1/stack_2ï
 while/gru_cell_1/strided_slice_1StridedSlice)while/gru_cell_1/ReadVariableOp_2:value:0/while/gru_cell_1/strided_slice_1/stack:output:01while/gru_cell_1/strided_slice_1/stack_1:output:01while/gru_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2*

begin_mask*
end_mask2"
 while/gru_cell_1/strided_slice_1º
while/gru_cell_1/MatMul_1MatMulwhile/gru_cell_1/mul_1:z:0)while/gru_cell_1/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/MatMul_1´
!while/gru_cell_1/ReadVariableOp_3ReadVariableOp,while_gru_cell_1_readvariableop_1_resource_0*
_output_shapes
:	2Â*
dtype02#
!while/gru_cell_1/ReadVariableOp_3¡
&while/gru_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2(
&while/gru_cell_1/strided_slice_2/stack¥
(while/gru_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/gru_cell_1/strided_slice_2/stack_1¥
(while/gru_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/gru_cell_1/strided_slice_2/stack_2ï
 while/gru_cell_1/strided_slice_2StridedSlice)while/gru_cell_1/ReadVariableOp_3:value:0/while/gru_cell_1/strided_slice_2/stack:output:01while/gru_cell_1/strided_slice_2/stack_1:output:01while/gru_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2*

begin_mask*
end_mask2"
 while/gru_cell_1/strided_slice_2º
while/gru_cell_1/MatMul_2MatMulwhile/gru_cell_1/mul_2:z:0)while/gru_cell_1/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/MatMul_2
&while/gru_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&while/gru_cell_1/strided_slice_3/stack
(while/gru_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(while/gru_cell_1/strided_slice_3/stack_1
(while/gru_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(while/gru_cell_1/strided_slice_3/stack_2Ó
 while/gru_cell_1/strided_slice_3StridedSlice!while/gru_cell_1/unstack:output:0/while/gru_cell_1/strided_slice_3/stack:output:01while/gru_cell_1/strided_slice_3/stack_1:output:01while/gru_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes	
:*

begin_mask2"
 while/gru_cell_1/strided_slice_3À
while/gru_cell_1/BiasAddBiasAdd!while/gru_cell_1/MatMul:product:0)while/gru_cell_1/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/BiasAdd
&while/gru_cell_1/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:2(
&while/gru_cell_1/strided_slice_4/stack
(while/gru_cell_1/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:¬2*
(while/gru_cell_1/strided_slice_4/stack_1
(while/gru_cell_1/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(while/gru_cell_1/strided_slice_4/stack_2Á
 while/gru_cell_1/strided_slice_4StridedSlice!while/gru_cell_1/unstack:output:0/while/gru_cell_1/strided_slice_4/stack:output:01while/gru_cell_1/strided_slice_4/stack_1:output:01while/gru_cell_1/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes	
:2"
 while/gru_cell_1/strided_slice_4Æ
while/gru_cell_1/BiasAdd_1BiasAdd#while/gru_cell_1/MatMul_1:product:0)while/gru_cell_1/strided_slice_4:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/BiasAdd_1
&while/gru_cell_1/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:¬2(
&while/gru_cell_1/strided_slice_5/stack
(while/gru_cell_1/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2*
(while/gru_cell_1/strided_slice_5/stack_1
(while/gru_cell_1/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(while/gru_cell_1/strided_slice_5/stack_2Ñ
 while/gru_cell_1/strided_slice_5StridedSlice!while/gru_cell_1/unstack:output:0/while/gru_cell_1/strided_slice_5/stack:output:01while/gru_cell_1/strided_slice_5/stack_1:output:01while/gru_cell_1/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes	
:*
end_mask2"
 while/gru_cell_1/strided_slice_5Æ
while/gru_cell_1/BiasAdd_2BiasAdd#while/gru_cell_1/MatMul_2:product:0)while/gru_cell_1/strided_slice_5:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/BiasAdd_2¦
while/gru_cell_1/mul_3Mulwhile_placeholder_2%while/gru_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/mul_3¦
while/gru_cell_1/mul_4Mulwhile_placeholder_2%while/gru_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/mul_4¦
while/gru_cell_1/mul_5Mulwhile_placeholder_2%while/gru_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/mul_5µ
!while/gru_cell_1/ReadVariableOp_4ReadVariableOp,while_gru_cell_1_readvariableop_4_resource_0* 
_output_shapes
:
Â*
dtype02#
!while/gru_cell_1/ReadVariableOp_4¡
&while/gru_cell_1/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/gru_cell_1/strided_slice_6/stack¥
(while/gru_cell_1/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2*
(while/gru_cell_1/strided_slice_6/stack_1¥
(while/gru_cell_1/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/gru_cell_1/strided_slice_6/stack_2ð
 while/gru_cell_1/strided_slice_6StridedSlice)while/gru_cell_1/ReadVariableOp_4:value:0/while/gru_cell_1/strided_slice_6/stack:output:01while/gru_cell_1/strided_slice_6/stack_1:output:01while/gru_cell_1/strided_slice_6/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2"
 while/gru_cell_1/strided_slice_6º
while/gru_cell_1/MatMul_3MatMulwhile/gru_cell_1/mul_3:z:0)while/gru_cell_1/strided_slice_6:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/MatMul_3µ
!while/gru_cell_1/ReadVariableOp_5ReadVariableOp,while_gru_cell_1_readvariableop_4_resource_0* 
_output_shapes
:
Â*
dtype02#
!while/gru_cell_1/ReadVariableOp_5¡
&while/gru_cell_1/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"       2(
&while/gru_cell_1/strided_slice_7/stack¥
(while/gru_cell_1/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2*
(while/gru_cell_1/strided_slice_7/stack_1¥
(while/gru_cell_1/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/gru_cell_1/strided_slice_7/stack_2ð
 while/gru_cell_1/strided_slice_7StridedSlice)while/gru_cell_1/ReadVariableOp_5:value:0/while/gru_cell_1/strided_slice_7/stack:output:01while/gru_cell_1/strided_slice_7/stack_1:output:01while/gru_cell_1/strided_slice_7/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2"
 while/gru_cell_1/strided_slice_7º
while/gru_cell_1/MatMul_4MatMulwhile/gru_cell_1/mul_4:z:0)while/gru_cell_1/strided_slice_7:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/MatMul_4
&while/gru_cell_1/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&while/gru_cell_1/strided_slice_8/stack
(while/gru_cell_1/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(while/gru_cell_1/strided_slice_8/stack_1
(while/gru_cell_1/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(while/gru_cell_1/strided_slice_8/stack_2Ó
 while/gru_cell_1/strided_slice_8StridedSlice!while/gru_cell_1/unstack:output:1/while/gru_cell_1/strided_slice_8/stack:output:01while/gru_cell_1/strided_slice_8/stack_1:output:01while/gru_cell_1/strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes	
:*

begin_mask2"
 while/gru_cell_1/strided_slice_8Æ
while/gru_cell_1/BiasAdd_3BiasAdd#while/gru_cell_1/MatMul_3:product:0)while/gru_cell_1/strided_slice_8:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/BiasAdd_3
&while/gru_cell_1/strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB:2(
&while/gru_cell_1/strided_slice_9/stack
(while/gru_cell_1/strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:¬2*
(while/gru_cell_1/strided_slice_9/stack_1
(while/gru_cell_1/strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(while/gru_cell_1/strided_slice_9/stack_2Á
 while/gru_cell_1/strided_slice_9StridedSlice!while/gru_cell_1/unstack:output:1/while/gru_cell_1/strided_slice_9/stack:output:01while/gru_cell_1/strided_slice_9/stack_1:output:01while/gru_cell_1/strided_slice_9/stack_2:output:0*
Index0*
T0*
_output_shapes	
:2"
 while/gru_cell_1/strided_slice_9Æ
while/gru_cell_1/BiasAdd_4BiasAdd#while/gru_cell_1/MatMul_4:product:0)while/gru_cell_1/strided_slice_9:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/BiasAdd_4°
while/gru_cell_1/addAddV2!while/gru_cell_1/BiasAdd:output:0#while/gru_cell_1/BiasAdd_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/add
while/gru_cell_1/SigmoidSigmoidwhile/gru_cell_1/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/Sigmoid¶
while/gru_cell_1/add_1AddV2#while/gru_cell_1/BiasAdd_1:output:0#while/gru_cell_1/BiasAdd_4:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/add_1
while/gru_cell_1/Sigmoid_1Sigmoidwhile/gru_cell_1/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/Sigmoid_1µ
!while/gru_cell_1/ReadVariableOp_6ReadVariableOp,while_gru_cell_1_readvariableop_4_resource_0* 
_output_shapes
:
Â*
dtype02#
!while/gru_cell_1/ReadVariableOp_6£
'while/gru_cell_1/strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2)
'while/gru_cell_1/strided_slice_10/stack§
)while/gru_cell_1/strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/gru_cell_1/strided_slice_10/stack_1§
)while/gru_cell_1/strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/gru_cell_1/strided_slice_10/stack_2õ
!while/gru_cell_1/strided_slice_10StridedSlice)while/gru_cell_1/ReadVariableOp_6:value:00while/gru_cell_1/strided_slice_10/stack:output:02while/gru_cell_1/strided_slice_10/stack_1:output:02while/gru_cell_1/strided_slice_10/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2#
!while/gru_cell_1/strided_slice_10»
while/gru_cell_1/MatMul_5MatMulwhile/gru_cell_1/mul_5:z:0*while/gru_cell_1/strided_slice_10:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/MatMul_5
'while/gru_cell_1/strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB:¬2)
'while/gru_cell_1/strided_slice_11/stack 
)while/gru_cell_1/strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2+
)while/gru_cell_1/strided_slice_11/stack_1 
)while/gru_cell_1/strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)while/gru_cell_1/strided_slice_11/stack_2Ö
!while/gru_cell_1/strided_slice_11StridedSlice!while/gru_cell_1/unstack:output:10while/gru_cell_1/strided_slice_11/stack:output:02while/gru_cell_1/strided_slice_11/stack_1:output:02while/gru_cell_1/strided_slice_11/stack_2:output:0*
Index0*
T0*
_output_shapes	
:*
end_mask2#
!while/gru_cell_1/strided_slice_11Ç
while/gru_cell_1/BiasAdd_5BiasAdd#while/gru_cell_1/MatMul_5:product:0*while/gru_cell_1/strided_slice_11:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/BiasAdd_5¯
while/gru_cell_1/mul_6Mulwhile/gru_cell_1/Sigmoid_1:y:0#while/gru_cell_1/BiasAdd_5:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/mul_6­
while/gru_cell_1/add_2AddV2#while/gru_cell_1/BiasAdd_2:output:0while/gru_cell_1/mul_6:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/add_2
while/gru_cell_1/TanhTanhwhile/gru_cell_1/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/Tanh
while/gru_cell_1/mul_7Mulwhile/gru_cell_1/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/mul_7u
while/gru_cell_1/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
while/gru_cell_1/sub/x¥
while/gru_cell_1/subSubwhile/gru_cell_1/sub/x:output:0while/gru_cell_1/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/sub
while/gru_cell_1/mul_8Mulwhile/gru_cell_1/sub:z:0while/gru_cell_1/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/mul_8¤
while/gru_cell_1/add_3AddV2while/gru_cell_1/mul_7:z:0while/gru_cell_1/mul_8:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/add_3Þ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_1/add_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/gru_cell_1/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4Ô

while/NoOpNoOp ^while/gru_cell_1/ReadVariableOp"^while/gru_cell_1/ReadVariableOp_1"^while/gru_cell_1/ReadVariableOp_2"^while/gru_cell_1/ReadVariableOp_3"^while/gru_cell_1/ReadVariableOp_4"^while/gru_cell_1/ReadVariableOp_5"^while/gru_cell_1/ReadVariableOp_6*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp"Z
*while_gru_cell_1_readvariableop_1_resource,while_gru_cell_1_readvariableop_1_resource_0"Z
*while_gru_cell_1_readvariableop_4_resource,while_gru_cell_1_readvariableop_4_resource_0"V
(while_gru_cell_1_readvariableop_resource*while_gru_cell_1_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2B
while/gru_cell_1/ReadVariableOpwhile/gru_cell_1/ReadVariableOp2F
!while/gru_cell_1/ReadVariableOp_1!while/gru_cell_1/ReadVariableOp_12F
!while/gru_cell_1/ReadVariableOp_2!while/gru_cell_1/ReadVariableOp_22F
!while/gru_cell_1/ReadVariableOp_3!while/gru_cell_1/ReadVariableOp_32F
!while/gru_cell_1/ReadVariableOp_4!while/gru_cell_1/ReadVariableOp_42F
!while/gru_cell_1/ReadVariableOp_5!while/gru_cell_1/ReadVariableOp_52F
!while/gru_cell_1/ReadVariableOp_6!while/gru_cell_1/ReadVariableOp_6: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
÷
¥
while_cond_39287
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_39287___redundant_placeholder03
/while_while_cond_39287___redundant_placeholder13
/while_while_cond_39287___redundant_placeholder23
/while_while_cond_39287___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
§
·
%__inference_gru_1_layer_call_fn_41265

inputs
unknown:	Â
	unknown_0:	2Â
	unknown_1:
Â
identity¢StatefulPartitionedCallþ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_gru_1_layer_call_and_return_conditional_losses_403322
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ22: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
 
_user_specified_nameinputs
÷
¥
while_cond_42388
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_42388___redundant_placeholder03
/while_while_cond_42388___redundant_placeholder13
/while_while_cond_42388___redundant_placeholder23
/while_while_cond_42388___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
¬	

,__inference_sequential_2_layer_call_fn_40499

inputs
unknown:2
	unknown_0:	Â
	unknown_1:	2Â
	unknown_2:
Â
	unknown_3:	
	unknown_4:
identity¢StatefulPartitionedCall«
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_2_layer_call_and_return_conditional_losses_399152
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ2: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
µ"
©
while_body_38980
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0+
while_gru_cell_1_39002_0:	Â+
while_gru_cell_1_39004_0:	2Â,
while_gru_cell_1_39006_0:
Â
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor)
while_gru_cell_1_39002:	Â)
while_gru_cell_1_39004:	2Â*
while_gru_cell_1_39006:
Â¢(while/gru_cell_1/StatefulPartitionedCallÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem©
(while/gru_cell_1/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_gru_cell_1_39002_0while_gru_cell_1_39004_0while_gru_cell_1_39006_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_gru_cell_1_layer_call_and_return_conditional_losses_389672*
(while/gru_cell_1/StatefulPartitionedCallõ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder1while/gru_cell_1/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3£
while/Identity_4Identity1while/gru_cell_1/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4

while/NoOpNoOp)^while/gru_cell_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp"2
while_gru_cell_1_39002while_gru_cell_1_39002_0"2
while_gru_cell_1_39004while_gru_cell_1_39004_0"2
while_gru_cell_1_39006while_gru_cell_1_39006_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2T
(while/gru_cell_1/StatefulPartitionedCall(while/gru_cell_1/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
ì

%__inference_dense_layer_call_fn_42598

inputs
unknown:	
	unknown_0:
identity¢StatefulPartitionedCallð
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_399082
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
õ

Ú
*__inference_gru_cell_1_layer_call_fn_42623

inputs
states_0
unknown:	Â
	unknown_0:	2Â
	unknown_1:
Â
identity

identity_1¢StatefulPartitionedCall£
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_gru_cell_1_layer_call_and_return_conditional_losses_389672
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0
>
ü
@__inference_gru_1_layer_call_and_return_conditional_losses_39352

inputs#
gru_cell_1_39276:	Â#
gru_cell_1_39278:	2Â$
gru_cell_1_39280:
Â
identity¢"gru_cell_1/StatefulPartitionedCall¢whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ22
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask2
strided_slice_2è
"gru_cell_1/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0gru_cell_1_39276gru_cell_1_39278gru_cell_1_39280*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_gru_cell_1_layer_call_and_return_conditional_losses_392212$
"gru_cell_1/StatefulPartitionedCall
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterþ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0gru_cell_1_39276gru_cell_1_39278gru_cell_1_39280*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_39288*
condR
while_cond_39287*9
output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeò
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¯
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimet
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity{
NoOpNoOp#^gru_cell_1/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2: : : 2H
"gru_cell_1/StatefulPartitionedCall"gru_cell_1/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
ø

G__inference_sequential_2_layer_call_and_return_conditional_losses_40438
embedding_1_input#
embedding_1_40422:2
gru_1_40425:	Â
gru_1_40427:	2Â
gru_1_40429:
Â
dense_40432:	
dense_40434:
identity¢dense/StatefulPartitionedCall¢#embedding_1/StatefulPartitionedCall¢gru_1/StatefulPartitionedCall
#embedding_1/StatefulPartitionedCallStatefulPartitionedCallembedding_1_inputembedding_1_40422*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_embedding_1_layer_call_and_return_conditional_losses_396032%
#embedding_1/StatefulPartitionedCall¸
gru_1/StatefulPartitionedCallStatefulPartitionedCall,embedding_1/StatefulPartitionedCall:output:0gru_1_40425gru_1_40427gru_1_40429*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_gru_1_layer_call_and_return_conditional_losses_398892
gru_1/StatefulPartitionedCall¢
dense/StatefulPartitionedCallStatefulPartitionedCall&gru_1/StatefulPartitionedCall:output:0dense_40432dense_40434*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_399082
dense/StatefulPartitionedCall
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity´
NoOpNoOp^dense/StatefulPartitionedCall$^embedding_1/StatefulPartitionedCall^gru_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ2: : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2J
#embedding_1/StatefulPartitionedCall#embedding_1/StatefulPartitionedCall2>
gru_1/StatefulPartitionedCallgru_1/StatefulPartitionedCall:Z V
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
+
_user_specified_nameembedding_1_input
ç

¢
F__inference_embedding_1_layer_call_and_return_conditional_losses_41221

inputs(
embedding_lookup_41215:2
identity¢embedding_lookup]
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
Castû
embedding_lookupResourceGatherembedding_lookup_41215Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*)
_class
loc:@embedding_lookup/41215*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*
dtype02
embedding_lookupì
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@embedding_lookup/41215*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ222
embedding_lookup/Identity 
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ222
embedding_lookup/Identity_1
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ222

Identitya
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
÷
¥
while_cond_40131
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_40131___redundant_placeholder03
/while_while_cond_40131___redundant_placeholder13
/while_while_cond_40131___redundant_placeholder23
/while_while_cond_40131___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
Ü?
ä
__inference__traced_save_42993
file_prefix5
1savev2_embedding_1_embeddings_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop%
!savev2_beta_1_read_readvariableop%
!savev2_beta_2_read_readvariableop$
 savev2_decay_read_readvariableop,
(savev2_learning_rate_read_readvariableop(
$savev2_adam_iter_read_readvariableop	6
2savev2_gru_1_gru_cell_1_kernel_read_readvariableop@
<savev2_gru_1_gru_cell_1_recurrent_kernel_read_readvariableop4
0savev2_gru_1_gru_cell_1_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop<
8savev2_adam_embedding_1_embeddings_m_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableop=
9savev2_adam_gru_1_gru_cell_1_kernel_m_read_readvariableopG
Csavev2_adam_gru_1_gru_cell_1_recurrent_kernel_m_read_readvariableop;
7savev2_adam_gru_1_gru_cell_1_bias_m_read_readvariableop<
8savev2_adam_embedding_1_embeddings_v_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableop=
9savev2_adam_gru_1_gru_cell_1_kernel_v_read_readvariableopG
Csavev2_adam_gru_1_gru_cell_1_recurrent_kernel_v_read_readvariableop;
7savev2_adam_gru_1_gru_cell_1_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpoints
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
Const_1
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
ShardedFilename/shard¦
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameî
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueöBóB:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesÀ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesâ
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:01savev2_embedding_1_embeddings_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop!savev2_beta_1_read_readvariableop!savev2_beta_2_read_readvariableop savev2_decay_read_readvariableop(savev2_learning_rate_read_readvariableop$savev2_adam_iter_read_readvariableop2savev2_gru_1_gru_cell_1_kernel_read_readvariableop<savev2_gru_1_gru_cell_1_recurrent_kernel_read_readvariableop0savev2_gru_1_gru_cell_1_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop8savev2_adam_embedding_1_embeddings_m_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop9savev2_adam_gru_1_gru_cell_1_kernel_m_read_readvariableopCsavev2_adam_gru_1_gru_cell_1_recurrent_kernel_m_read_readvariableop7savev2_adam_gru_1_gru_cell_1_bias_m_read_readvariableop8savev2_adam_embedding_1_embeddings_v_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableop9savev2_adam_gru_1_gru_cell_1_kernel_v_read_readvariableopCsavev2_adam_gru_1_gru_cell_1_recurrent_kernel_v_read_readvariableop7savev2_adam_gru_1_gru_cell_1_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 **
dtypes 
2	2
SaveV2º
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes¡
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

identity_1Identity_1:output:0*â
_input_shapesÐ
Í: :2:	:: : : : : :	2Â:
Â:	Â: : : : :2:	::	2Â:
Â:	Â:2:	::	2Â:
Â:	Â: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:2:%!

_output_shapes
:	: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%	!

_output_shapes
:	2Â:&
"
 
_output_shapes
:
Â:%!

_output_shapes
:	Â:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:2:%!

_output_shapes
:	: 

_output_shapes
::%!

_output_shapes
:	2Â:&"
 
_output_shapes
:
Â:%!

_output_shapes
:	Â:$ 

_output_shapes

:2:%!

_output_shapes
:	: 

_output_shapes
::%!

_output_shapes
:	2Â:&"
 
_output_shapes
:
Â:%!

_output_shapes
:	Â:

_output_shapes
: 
¬½
á
@__inference_gru_1_layer_call_and_return_conditional_losses_42210

inputs5
"gru_cell_1_readvariableop_resource:	Â7
$gru_cell_1_readvariableop_1_resource:	2Â8
$gru_cell_1_readvariableop_4_resource:
Â
identity¢gru_cell_1/ReadVariableOp¢gru_cell_1/ReadVariableOp_1¢gru_cell_1/ReadVariableOp_2¢gru_cell_1/ReadVariableOp_3¢gru_cell_1/ReadVariableOp_4¢gru_cell_1/ReadVariableOp_5¢gru_cell_1/ReadVariableOp_6¢whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:2ÿÿÿÿÿÿÿÿÿ22
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask2
strided_slice_2
gru_cell_1/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
gru_cell_1/ones_like/Shape}
gru_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_cell_1/ones_like/Const°
gru_cell_1/ones_likeFill#gru_cell_1/ones_like/Shape:output:0#gru_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
gru_cell_1/ones_likez
gru_cell_1/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
gru_cell_1/ones_like_1/Shape
gru_cell_1/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_cell_1/ones_like_1/Const¹
gru_cell_1/ones_like_1Fill%gru_cell_1/ones_like_1/Shape:output:0%gru_cell_1/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/ones_like_1
gru_cell_1/ReadVariableOpReadVariableOp"gru_cell_1_readvariableop_resource*
_output_shapes
:	Â*
dtype02
gru_cell_1/ReadVariableOp
gru_cell_1/unstackUnpack!gru_cell_1/ReadVariableOp:value:0*
T0*"
_output_shapes
:Â:Â*	
num2
gru_cell_1/unstack
gru_cell_1/mulMulstrided_slice_2:output:0gru_cell_1/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
gru_cell_1/mul
gru_cell_1/mul_1Mulstrided_slice_2:output:0gru_cell_1/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
gru_cell_1/mul_1
gru_cell_1/mul_2Mulstrided_slice_2:output:0gru_cell_1/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
gru_cell_1/mul_2 
gru_cell_1/ReadVariableOp_1ReadVariableOp$gru_cell_1_readvariableop_1_resource*
_output_shapes
:	2Â*
dtype02
gru_cell_1/ReadVariableOp_1
gru_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2 
gru_cell_1/strided_slice/stack
 gru_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2"
 gru_cell_1/strided_slice/stack_1
 gru_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_cell_1/strided_slice/stack_2Á
gru_cell_1/strided_sliceStridedSlice#gru_cell_1/ReadVariableOp_1:value:0'gru_cell_1/strided_slice/stack:output:0)gru_cell_1/strided_slice/stack_1:output:0)gru_cell_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2*

begin_mask*
end_mask2
gru_cell_1/strided_slice
gru_cell_1/MatMulMatMulgru_cell_1/mul:z:0!gru_cell_1/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/MatMul 
gru_cell_1/ReadVariableOp_2ReadVariableOp$gru_cell_1_readvariableop_1_resource*
_output_shapes
:	2Â*
dtype02
gru_cell_1/ReadVariableOp_2
 gru_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2"
 gru_cell_1/strided_slice_1/stack
"gru_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2$
"gru_cell_1/strided_slice_1/stack_1
"gru_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"gru_cell_1/strided_slice_1/stack_2Ë
gru_cell_1/strided_slice_1StridedSlice#gru_cell_1/ReadVariableOp_2:value:0)gru_cell_1/strided_slice_1/stack:output:0+gru_cell_1/strided_slice_1/stack_1:output:0+gru_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2*

begin_mask*
end_mask2
gru_cell_1/strided_slice_1¢
gru_cell_1/MatMul_1MatMulgru_cell_1/mul_1:z:0#gru_cell_1/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/MatMul_1 
gru_cell_1/ReadVariableOp_3ReadVariableOp$gru_cell_1_readvariableop_1_resource*
_output_shapes
:	2Â*
dtype02
gru_cell_1/ReadVariableOp_3
 gru_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2"
 gru_cell_1/strided_slice_2/stack
"gru_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"gru_cell_1/strided_slice_2/stack_1
"gru_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"gru_cell_1/strided_slice_2/stack_2Ë
gru_cell_1/strided_slice_2StridedSlice#gru_cell_1/ReadVariableOp_3:value:0)gru_cell_1/strided_slice_2/stack:output:0+gru_cell_1/strided_slice_2/stack_1:output:0+gru_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2*

begin_mask*
end_mask2
gru_cell_1/strided_slice_2¢
gru_cell_1/MatMul_2MatMulgru_cell_1/mul_2:z:0#gru_cell_1/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/MatMul_2
 gru_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 gru_cell_1/strided_slice_3/stack
"gru_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"gru_cell_1/strided_slice_3/stack_1
"gru_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"gru_cell_1/strided_slice_3/stack_2¯
gru_cell_1/strided_slice_3StridedSlicegru_cell_1/unstack:output:0)gru_cell_1/strided_slice_3/stack:output:0+gru_cell_1/strided_slice_3/stack_1:output:0+gru_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes	
:*

begin_mask2
gru_cell_1/strided_slice_3¨
gru_cell_1/BiasAddBiasAddgru_cell_1/MatMul:product:0#gru_cell_1/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/BiasAdd
 gru_cell_1/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:2"
 gru_cell_1/strided_slice_4/stack
"gru_cell_1/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:¬2$
"gru_cell_1/strided_slice_4/stack_1
"gru_cell_1/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"gru_cell_1/strided_slice_4/stack_2
gru_cell_1/strided_slice_4StridedSlicegru_cell_1/unstack:output:0)gru_cell_1/strided_slice_4/stack:output:0+gru_cell_1/strided_slice_4/stack_1:output:0+gru_cell_1/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes	
:2
gru_cell_1/strided_slice_4®
gru_cell_1/BiasAdd_1BiasAddgru_cell_1/MatMul_1:product:0#gru_cell_1/strided_slice_4:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/BiasAdd_1
 gru_cell_1/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:¬2"
 gru_cell_1/strided_slice_5/stack
"gru_cell_1/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2$
"gru_cell_1/strided_slice_5/stack_1
"gru_cell_1/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"gru_cell_1/strided_slice_5/stack_2­
gru_cell_1/strided_slice_5StridedSlicegru_cell_1/unstack:output:0)gru_cell_1/strided_slice_5/stack:output:0+gru_cell_1/strided_slice_5/stack_1:output:0+gru_cell_1/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes	
:*
end_mask2
gru_cell_1/strided_slice_5®
gru_cell_1/BiasAdd_2BiasAddgru_cell_1/MatMul_2:product:0#gru_cell_1/strided_slice_5:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/BiasAdd_2
gru_cell_1/mul_3Mulzeros:output:0gru_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/mul_3
gru_cell_1/mul_4Mulzeros:output:0gru_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/mul_4
gru_cell_1/mul_5Mulzeros:output:0gru_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/mul_5¡
gru_cell_1/ReadVariableOp_4ReadVariableOp$gru_cell_1_readvariableop_4_resource* 
_output_shapes
:
Â*
dtype02
gru_cell_1/ReadVariableOp_4
 gru_cell_1/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 gru_cell_1/strided_slice_6/stack
"gru_cell_1/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2$
"gru_cell_1/strided_slice_6/stack_1
"gru_cell_1/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"gru_cell_1/strided_slice_6/stack_2Ì
gru_cell_1/strided_slice_6StridedSlice#gru_cell_1/ReadVariableOp_4:value:0)gru_cell_1/strided_slice_6/stack:output:0+gru_cell_1/strided_slice_6/stack_1:output:0+gru_cell_1/strided_slice_6/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2
gru_cell_1/strided_slice_6¢
gru_cell_1/MatMul_3MatMulgru_cell_1/mul_3:z:0#gru_cell_1/strided_slice_6:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/MatMul_3¡
gru_cell_1/ReadVariableOp_5ReadVariableOp$gru_cell_1_readvariableop_4_resource* 
_output_shapes
:
Â*
dtype02
gru_cell_1/ReadVariableOp_5
 gru_cell_1/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"       2"
 gru_cell_1/strided_slice_7/stack
"gru_cell_1/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2$
"gru_cell_1/strided_slice_7/stack_1
"gru_cell_1/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"gru_cell_1/strided_slice_7/stack_2Ì
gru_cell_1/strided_slice_7StridedSlice#gru_cell_1/ReadVariableOp_5:value:0)gru_cell_1/strided_slice_7/stack:output:0+gru_cell_1/strided_slice_7/stack_1:output:0+gru_cell_1/strided_slice_7/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2
gru_cell_1/strided_slice_7¢
gru_cell_1/MatMul_4MatMulgru_cell_1/mul_4:z:0#gru_cell_1/strided_slice_7:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/MatMul_4
 gru_cell_1/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 gru_cell_1/strided_slice_8/stack
"gru_cell_1/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"gru_cell_1/strided_slice_8/stack_1
"gru_cell_1/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"gru_cell_1/strided_slice_8/stack_2¯
gru_cell_1/strided_slice_8StridedSlicegru_cell_1/unstack:output:1)gru_cell_1/strided_slice_8/stack:output:0+gru_cell_1/strided_slice_8/stack_1:output:0+gru_cell_1/strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes	
:*

begin_mask2
gru_cell_1/strided_slice_8®
gru_cell_1/BiasAdd_3BiasAddgru_cell_1/MatMul_3:product:0#gru_cell_1/strided_slice_8:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/BiasAdd_3
 gru_cell_1/strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB:2"
 gru_cell_1/strided_slice_9/stack
"gru_cell_1/strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:¬2$
"gru_cell_1/strided_slice_9/stack_1
"gru_cell_1/strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"gru_cell_1/strided_slice_9/stack_2
gru_cell_1/strided_slice_9StridedSlicegru_cell_1/unstack:output:1)gru_cell_1/strided_slice_9/stack:output:0+gru_cell_1/strided_slice_9/stack_1:output:0+gru_cell_1/strided_slice_9/stack_2:output:0*
Index0*
T0*
_output_shapes	
:2
gru_cell_1/strided_slice_9®
gru_cell_1/BiasAdd_4BiasAddgru_cell_1/MatMul_4:product:0#gru_cell_1/strided_slice_9:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/BiasAdd_4
gru_cell_1/addAddV2gru_cell_1/BiasAdd:output:0gru_cell_1/BiasAdd_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/addz
gru_cell_1/SigmoidSigmoidgru_cell_1/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/Sigmoid
gru_cell_1/add_1AddV2gru_cell_1/BiasAdd_1:output:0gru_cell_1/BiasAdd_4:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/add_1
gru_cell_1/Sigmoid_1Sigmoidgru_cell_1/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/Sigmoid_1¡
gru_cell_1/ReadVariableOp_6ReadVariableOp$gru_cell_1_readvariableop_4_resource* 
_output_shapes
:
Â*
dtype02
gru_cell_1/ReadVariableOp_6
!gru_cell_1/strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2#
!gru_cell_1/strided_slice_10/stack
#gru_cell_1/strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#gru_cell_1/strided_slice_10/stack_1
#gru_cell_1/strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#gru_cell_1/strided_slice_10/stack_2Ñ
gru_cell_1/strided_slice_10StridedSlice#gru_cell_1/ReadVariableOp_6:value:0*gru_cell_1/strided_slice_10/stack:output:0,gru_cell_1/strided_slice_10/stack_1:output:0,gru_cell_1/strided_slice_10/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2
gru_cell_1/strided_slice_10£
gru_cell_1/MatMul_5MatMulgru_cell_1/mul_5:z:0$gru_cell_1/strided_slice_10:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/MatMul_5
!gru_cell_1/strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB:¬2#
!gru_cell_1/strided_slice_11/stack
#gru_cell_1/strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2%
#gru_cell_1/strided_slice_11/stack_1
#gru_cell_1/strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#gru_cell_1/strided_slice_11/stack_2²
gru_cell_1/strided_slice_11StridedSlicegru_cell_1/unstack:output:1*gru_cell_1/strided_slice_11/stack:output:0,gru_cell_1/strided_slice_11/stack_1:output:0,gru_cell_1/strided_slice_11/stack_2:output:0*
Index0*
T0*
_output_shapes	
:*
end_mask2
gru_cell_1/strided_slice_11¯
gru_cell_1/BiasAdd_5BiasAddgru_cell_1/MatMul_5:product:0$gru_cell_1/strided_slice_11:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/BiasAdd_5
gru_cell_1/mul_6Mulgru_cell_1/Sigmoid_1:y:0gru_cell_1/BiasAdd_5:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/mul_6
gru_cell_1/add_2AddV2gru_cell_1/BiasAdd_2:output:0gru_cell_1/mul_6:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/add_2s
gru_cell_1/TanhTanhgru_cell_1/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/Tanh
gru_cell_1/mul_7Mulgru_cell_1/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/mul_7i
gru_cell_1/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_cell_1/sub/x
gru_cell_1/subSubgru_cell_1/sub/x:output:0gru_cell_1/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/sub
gru_cell_1/mul_8Mulgru_cell_1/sub:z:0gru_cell_1/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/mul_8
gru_cell_1/add_3AddV2gru_cell_1/mul_7:z:0gru_cell_1/mul_8:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/add_3
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter¸
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0"gru_cell_1_readvariableop_resource$gru_cell_1_readvariableop_1_resource$gru_cell_1_readvariableop_4_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_42058*
condR
while_cond_42057*9
output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeé
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:2ÿÿÿÿÿÿÿÿÿ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¦
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimet
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity¦
NoOpNoOp^gru_cell_1/ReadVariableOp^gru_cell_1/ReadVariableOp_1^gru_cell_1/ReadVariableOp_2^gru_cell_1/ReadVariableOp_3^gru_cell_1/ReadVariableOp_4^gru_cell_1/ReadVariableOp_5^gru_cell_1/ReadVariableOp_6^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ22: : : 26
gru_cell_1/ReadVariableOpgru_cell_1/ReadVariableOp2:
gru_cell_1/ReadVariableOp_1gru_cell_1/ReadVariableOp_12:
gru_cell_1/ReadVariableOp_2gru_cell_1/ReadVariableOp_22:
gru_cell_1/ReadVariableOp_3gru_cell_1/ReadVariableOp_32:
gru_cell_1/ReadVariableOp_4gru_cell_1/ReadVariableOp_42:
gru_cell_1/ReadVariableOp_5gru_cell_1/ReadVariableOp_52:
gru_cell_1/ReadVariableOp_6gru_cell_1/ReadVariableOp_62
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
 
_user_specified_nameinputs
÷û
ì
while_body_41727
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0=
*while_gru_cell_1_readvariableop_resource_0:	Â?
,while_gru_cell_1_readvariableop_1_resource_0:	2Â@
,while_gru_cell_1_readvariableop_4_resource_0:
Â
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor;
(while_gru_cell_1_readvariableop_resource:	Â=
*while_gru_cell_1_readvariableop_1_resource:	2Â>
*while_gru_cell_1_readvariableop_4_resource:
Â¢while/gru_cell_1/ReadVariableOp¢!while/gru_cell_1/ReadVariableOp_1¢!while/gru_cell_1/ReadVariableOp_2¢!while/gru_cell_1/ReadVariableOp_3¢!while/gru_cell_1/ReadVariableOp_4¢!while/gru_cell_1/ReadVariableOp_5¢!while/gru_cell_1/ReadVariableOp_6Ã
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem¤
 while/gru_cell_1/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2"
 while/gru_cell_1/ones_like/Shape
 while/gru_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2"
 while/gru_cell_1/ones_like/ConstÈ
while/gru_cell_1/ones_likeFill)while/gru_cell_1/ones_like/Shape:output:0)while/gru_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/gru_cell_1/ones_like
while/gru_cell_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?2 
while/gru_cell_1/dropout/ConstÃ
while/gru_cell_1/dropout/MulMul#while/gru_cell_1/ones_like:output:0'while/gru_cell_1/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/gru_cell_1/dropout/Mul
while/gru_cell_1/dropout/ShapeShape#while/gru_cell_1/ones_like:output:0*
T0*
_output_shapes
:2 
while/gru_cell_1/dropout/Shape
5while/gru_cell_1/dropout/random_uniform/RandomUniformRandomUniform'while/gru_cell_1/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2¬"27
5while/gru_cell_1/dropout/random_uniform/RandomUniform
'while/gru_cell_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2)
'while/gru_cell_1/dropout/GreaterEqual/y
%while/gru_cell_1/dropout/GreaterEqualGreaterEqual>while/gru_cell_1/dropout/random_uniform/RandomUniform:output:00while/gru_cell_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22'
%while/gru_cell_1/dropout/GreaterEqual²
while/gru_cell_1/dropout/CastCast)while/gru_cell_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/gru_cell_1/dropout/Cast¾
while/gru_cell_1/dropout/Mul_1Mul while/gru_cell_1/dropout/Mul:z:0!while/gru_cell_1/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22 
while/gru_cell_1/dropout/Mul_1
 while/gru_cell_1/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?2"
 while/gru_cell_1/dropout_1/ConstÉ
while/gru_cell_1/dropout_1/MulMul#while/gru_cell_1/ones_like:output:0)while/gru_cell_1/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22 
while/gru_cell_1/dropout_1/Mul
 while/gru_cell_1/dropout_1/ShapeShape#while/gru_cell_1/ones_like:output:0*
T0*
_output_shapes
:2"
 while/gru_cell_1/dropout_1/Shape
7while/gru_cell_1/dropout_1/random_uniform/RandomUniformRandomUniform)while/gru_cell_1/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2þÿ®29
7while/gru_cell_1/dropout_1/random_uniform/RandomUniform
)while/gru_cell_1/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2+
)while/gru_cell_1/dropout_1/GreaterEqual/y
'while/gru_cell_1/dropout_1/GreaterEqualGreaterEqual@while/gru_cell_1/dropout_1/random_uniform/RandomUniform:output:02while/gru_cell_1/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22)
'while/gru_cell_1/dropout_1/GreaterEqual¸
while/gru_cell_1/dropout_1/CastCast+while/gru_cell_1/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22!
while/gru_cell_1/dropout_1/CastÆ
 while/gru_cell_1/dropout_1/Mul_1Mul"while/gru_cell_1/dropout_1/Mul:z:0#while/gru_cell_1/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22"
 while/gru_cell_1/dropout_1/Mul_1
 while/gru_cell_1/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?2"
 while/gru_cell_1/dropout_2/ConstÉ
while/gru_cell_1/dropout_2/MulMul#while/gru_cell_1/ones_like:output:0)while/gru_cell_1/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22 
while/gru_cell_1/dropout_2/Mul
 while/gru_cell_1/dropout_2/ShapeShape#while/gru_cell_1/ones_like:output:0*
T0*
_output_shapes
:2"
 while/gru_cell_1/dropout_2/Shape
7while/gru_cell_1/dropout_2/random_uniform/RandomUniformRandomUniform)while/gru_cell_1/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2î29
7while/gru_cell_1/dropout_2/random_uniform/RandomUniform
)while/gru_cell_1/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2+
)while/gru_cell_1/dropout_2/GreaterEqual/y
'while/gru_cell_1/dropout_2/GreaterEqualGreaterEqual@while/gru_cell_1/dropout_2/random_uniform/RandomUniform:output:02while/gru_cell_1/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22)
'while/gru_cell_1/dropout_2/GreaterEqual¸
while/gru_cell_1/dropout_2/CastCast+while/gru_cell_1/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22!
while/gru_cell_1/dropout_2/CastÆ
 while/gru_cell_1/dropout_2/Mul_1Mul"while/gru_cell_1/dropout_2/Mul:z:0#while/gru_cell_1/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22"
 while/gru_cell_1/dropout_2/Mul_1
"while/gru_cell_1/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2$
"while/gru_cell_1/ones_like_1/Shape
"while/gru_cell_1/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2$
"while/gru_cell_1/ones_like_1/ConstÑ
while/gru_cell_1/ones_like_1Fill+while/gru_cell_1/ones_like_1/Shape:output:0+while/gru_cell_1/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/ones_like_1
 while/gru_cell_1/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?2"
 while/gru_cell_1/dropout_3/ConstÌ
while/gru_cell_1/dropout_3/MulMul%while/gru_cell_1/ones_like_1:output:0)while/gru_cell_1/dropout_3/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
while/gru_cell_1/dropout_3/Mul
 while/gru_cell_1/dropout_3/ShapeShape%while/gru_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:2"
 while/gru_cell_1/dropout_3/Shape
7while/gru_cell_1/dropout_3/random_uniform/RandomUniformRandomUniform)while/gru_cell_1/dropout_3/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
seed±ÿå)*
seed2ïér29
7while/gru_cell_1/dropout_3/random_uniform/RandomUniform
)while/gru_cell_1/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2+
)while/gru_cell_1/dropout_3/GreaterEqual/y
'while/gru_cell_1/dropout_3/GreaterEqualGreaterEqual@while/gru_cell_1/dropout_3/random_uniform/RandomUniform:output:02while/gru_cell_1/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'while/gru_cell_1/dropout_3/GreaterEqual¹
while/gru_cell_1/dropout_3/CastCast+while/gru_cell_1/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
while/gru_cell_1/dropout_3/CastÇ
 while/gru_cell_1/dropout_3/Mul_1Mul"while/gru_cell_1/dropout_3/Mul:z:0#while/gru_cell_1/dropout_3/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 while/gru_cell_1/dropout_3/Mul_1
 while/gru_cell_1/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?2"
 while/gru_cell_1/dropout_4/ConstÌ
while/gru_cell_1/dropout_4/MulMul%while/gru_cell_1/ones_like_1:output:0)while/gru_cell_1/dropout_4/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
while/gru_cell_1/dropout_4/Mul
 while/gru_cell_1/dropout_4/ShapeShape%while/gru_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:2"
 while/gru_cell_1/dropout_4/Shape
7while/gru_cell_1/dropout_4/random_uniform/RandomUniformRandomUniform)while/gru_cell_1/dropout_4/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
seed±ÿå)*
seed2Þ¡à29
7while/gru_cell_1/dropout_4/random_uniform/RandomUniform
)while/gru_cell_1/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2+
)while/gru_cell_1/dropout_4/GreaterEqual/y
'while/gru_cell_1/dropout_4/GreaterEqualGreaterEqual@while/gru_cell_1/dropout_4/random_uniform/RandomUniform:output:02while/gru_cell_1/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'while/gru_cell_1/dropout_4/GreaterEqual¹
while/gru_cell_1/dropout_4/CastCast+while/gru_cell_1/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
while/gru_cell_1/dropout_4/CastÇ
 while/gru_cell_1/dropout_4/Mul_1Mul"while/gru_cell_1/dropout_4/Mul:z:0#while/gru_cell_1/dropout_4/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 while/gru_cell_1/dropout_4/Mul_1
 while/gru_cell_1/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?2"
 while/gru_cell_1/dropout_5/ConstÌ
while/gru_cell_1/dropout_5/MulMul%while/gru_cell_1/ones_like_1:output:0)while/gru_cell_1/dropout_5/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
while/gru_cell_1/dropout_5/Mul
 while/gru_cell_1/dropout_5/ShapeShape%while/gru_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:2"
 while/gru_cell_1/dropout_5/Shape
7while/gru_cell_1/dropout_5/random_uniform/RandomUniformRandomUniform)while/gru_cell_1/dropout_5/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
seed±ÿå)*
seed2éæ©29
7while/gru_cell_1/dropout_5/random_uniform/RandomUniform
)while/gru_cell_1/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2+
)while/gru_cell_1/dropout_5/GreaterEqual/y
'while/gru_cell_1/dropout_5/GreaterEqualGreaterEqual@while/gru_cell_1/dropout_5/random_uniform/RandomUniform:output:02while/gru_cell_1/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'while/gru_cell_1/dropout_5/GreaterEqual¹
while/gru_cell_1/dropout_5/CastCast+while/gru_cell_1/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
while/gru_cell_1/dropout_5/CastÇ
 while/gru_cell_1/dropout_5/Mul_1Mul"while/gru_cell_1/dropout_5/Mul:z:0#while/gru_cell_1/dropout_5/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 while/gru_cell_1/dropout_5/Mul_1®
while/gru_cell_1/ReadVariableOpReadVariableOp*while_gru_cell_1_readvariableop_resource_0*
_output_shapes
:	Â*
dtype02!
while/gru_cell_1/ReadVariableOp
while/gru_cell_1/unstackUnpack'while/gru_cell_1/ReadVariableOp:value:0*
T0*"
_output_shapes
:Â:Â*	
num2
while/gru_cell_1/unstack»
while/gru_cell_1/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/gru_cell_1/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/gru_cell_1/mulÁ
while/gru_cell_1/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/gru_cell_1/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/gru_cell_1/mul_1Á
while/gru_cell_1/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/gru_cell_1/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/gru_cell_1/mul_2´
!while/gru_cell_1/ReadVariableOp_1ReadVariableOp,while_gru_cell_1_readvariableop_1_resource_0*
_output_shapes
:	2Â*
dtype02#
!while/gru_cell_1/ReadVariableOp_1
$while/gru_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2&
$while/gru_cell_1/strided_slice/stack¡
&while/gru_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2(
&while/gru_cell_1/strided_slice/stack_1¡
&while/gru_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&while/gru_cell_1/strided_slice/stack_2å
while/gru_cell_1/strided_sliceStridedSlice)while/gru_cell_1/ReadVariableOp_1:value:0-while/gru_cell_1/strided_slice/stack:output:0/while/gru_cell_1/strided_slice/stack_1:output:0/while/gru_cell_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2*

begin_mask*
end_mask2 
while/gru_cell_1/strided_slice²
while/gru_cell_1/MatMulMatMulwhile/gru_cell_1/mul:z:0'while/gru_cell_1/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/MatMul´
!while/gru_cell_1/ReadVariableOp_2ReadVariableOp,while_gru_cell_1_readvariableop_1_resource_0*
_output_shapes
:	2Â*
dtype02#
!while/gru_cell_1/ReadVariableOp_2¡
&while/gru_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2(
&while/gru_cell_1/strided_slice_1/stack¥
(while/gru_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2*
(while/gru_cell_1/strided_slice_1/stack_1¥
(while/gru_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/gru_cell_1/strided_slice_1/stack_2ï
 while/gru_cell_1/strided_slice_1StridedSlice)while/gru_cell_1/ReadVariableOp_2:value:0/while/gru_cell_1/strided_slice_1/stack:output:01while/gru_cell_1/strided_slice_1/stack_1:output:01while/gru_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2*

begin_mask*
end_mask2"
 while/gru_cell_1/strided_slice_1º
while/gru_cell_1/MatMul_1MatMulwhile/gru_cell_1/mul_1:z:0)while/gru_cell_1/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/MatMul_1´
!while/gru_cell_1/ReadVariableOp_3ReadVariableOp,while_gru_cell_1_readvariableop_1_resource_0*
_output_shapes
:	2Â*
dtype02#
!while/gru_cell_1/ReadVariableOp_3¡
&while/gru_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2(
&while/gru_cell_1/strided_slice_2/stack¥
(while/gru_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/gru_cell_1/strided_slice_2/stack_1¥
(while/gru_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/gru_cell_1/strided_slice_2/stack_2ï
 while/gru_cell_1/strided_slice_2StridedSlice)while/gru_cell_1/ReadVariableOp_3:value:0/while/gru_cell_1/strided_slice_2/stack:output:01while/gru_cell_1/strided_slice_2/stack_1:output:01while/gru_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2*

begin_mask*
end_mask2"
 while/gru_cell_1/strided_slice_2º
while/gru_cell_1/MatMul_2MatMulwhile/gru_cell_1/mul_2:z:0)while/gru_cell_1/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/MatMul_2
&while/gru_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&while/gru_cell_1/strided_slice_3/stack
(while/gru_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(while/gru_cell_1/strided_slice_3/stack_1
(while/gru_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(while/gru_cell_1/strided_slice_3/stack_2Ó
 while/gru_cell_1/strided_slice_3StridedSlice!while/gru_cell_1/unstack:output:0/while/gru_cell_1/strided_slice_3/stack:output:01while/gru_cell_1/strided_slice_3/stack_1:output:01while/gru_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes	
:*

begin_mask2"
 while/gru_cell_1/strided_slice_3À
while/gru_cell_1/BiasAddBiasAdd!while/gru_cell_1/MatMul:product:0)while/gru_cell_1/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/BiasAdd
&while/gru_cell_1/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:2(
&while/gru_cell_1/strided_slice_4/stack
(while/gru_cell_1/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:¬2*
(while/gru_cell_1/strided_slice_4/stack_1
(while/gru_cell_1/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(while/gru_cell_1/strided_slice_4/stack_2Á
 while/gru_cell_1/strided_slice_4StridedSlice!while/gru_cell_1/unstack:output:0/while/gru_cell_1/strided_slice_4/stack:output:01while/gru_cell_1/strided_slice_4/stack_1:output:01while/gru_cell_1/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes	
:2"
 while/gru_cell_1/strided_slice_4Æ
while/gru_cell_1/BiasAdd_1BiasAdd#while/gru_cell_1/MatMul_1:product:0)while/gru_cell_1/strided_slice_4:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/BiasAdd_1
&while/gru_cell_1/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:¬2(
&while/gru_cell_1/strided_slice_5/stack
(while/gru_cell_1/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2*
(while/gru_cell_1/strided_slice_5/stack_1
(while/gru_cell_1/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(while/gru_cell_1/strided_slice_5/stack_2Ñ
 while/gru_cell_1/strided_slice_5StridedSlice!while/gru_cell_1/unstack:output:0/while/gru_cell_1/strided_slice_5/stack:output:01while/gru_cell_1/strided_slice_5/stack_1:output:01while/gru_cell_1/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes	
:*
end_mask2"
 while/gru_cell_1/strided_slice_5Æ
while/gru_cell_1/BiasAdd_2BiasAdd#while/gru_cell_1/MatMul_2:product:0)while/gru_cell_1/strided_slice_5:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/BiasAdd_2¥
while/gru_cell_1/mul_3Mulwhile_placeholder_2$while/gru_cell_1/dropout_3/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/mul_3¥
while/gru_cell_1/mul_4Mulwhile_placeholder_2$while/gru_cell_1/dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/mul_4¥
while/gru_cell_1/mul_5Mulwhile_placeholder_2$while/gru_cell_1/dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/mul_5µ
!while/gru_cell_1/ReadVariableOp_4ReadVariableOp,while_gru_cell_1_readvariableop_4_resource_0* 
_output_shapes
:
Â*
dtype02#
!while/gru_cell_1/ReadVariableOp_4¡
&while/gru_cell_1/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/gru_cell_1/strided_slice_6/stack¥
(while/gru_cell_1/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2*
(while/gru_cell_1/strided_slice_6/stack_1¥
(while/gru_cell_1/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/gru_cell_1/strided_slice_6/stack_2ð
 while/gru_cell_1/strided_slice_6StridedSlice)while/gru_cell_1/ReadVariableOp_4:value:0/while/gru_cell_1/strided_slice_6/stack:output:01while/gru_cell_1/strided_slice_6/stack_1:output:01while/gru_cell_1/strided_slice_6/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2"
 while/gru_cell_1/strided_slice_6º
while/gru_cell_1/MatMul_3MatMulwhile/gru_cell_1/mul_3:z:0)while/gru_cell_1/strided_slice_6:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/MatMul_3µ
!while/gru_cell_1/ReadVariableOp_5ReadVariableOp,while_gru_cell_1_readvariableop_4_resource_0* 
_output_shapes
:
Â*
dtype02#
!while/gru_cell_1/ReadVariableOp_5¡
&while/gru_cell_1/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"       2(
&while/gru_cell_1/strided_slice_7/stack¥
(while/gru_cell_1/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2*
(while/gru_cell_1/strided_slice_7/stack_1¥
(while/gru_cell_1/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/gru_cell_1/strided_slice_7/stack_2ð
 while/gru_cell_1/strided_slice_7StridedSlice)while/gru_cell_1/ReadVariableOp_5:value:0/while/gru_cell_1/strided_slice_7/stack:output:01while/gru_cell_1/strided_slice_7/stack_1:output:01while/gru_cell_1/strided_slice_7/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2"
 while/gru_cell_1/strided_slice_7º
while/gru_cell_1/MatMul_4MatMulwhile/gru_cell_1/mul_4:z:0)while/gru_cell_1/strided_slice_7:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/MatMul_4
&while/gru_cell_1/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&while/gru_cell_1/strided_slice_8/stack
(while/gru_cell_1/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(while/gru_cell_1/strided_slice_8/stack_1
(while/gru_cell_1/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(while/gru_cell_1/strided_slice_8/stack_2Ó
 while/gru_cell_1/strided_slice_8StridedSlice!while/gru_cell_1/unstack:output:1/while/gru_cell_1/strided_slice_8/stack:output:01while/gru_cell_1/strided_slice_8/stack_1:output:01while/gru_cell_1/strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes	
:*

begin_mask2"
 while/gru_cell_1/strided_slice_8Æ
while/gru_cell_1/BiasAdd_3BiasAdd#while/gru_cell_1/MatMul_3:product:0)while/gru_cell_1/strided_slice_8:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/BiasAdd_3
&while/gru_cell_1/strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB:2(
&while/gru_cell_1/strided_slice_9/stack
(while/gru_cell_1/strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:¬2*
(while/gru_cell_1/strided_slice_9/stack_1
(while/gru_cell_1/strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(while/gru_cell_1/strided_slice_9/stack_2Á
 while/gru_cell_1/strided_slice_9StridedSlice!while/gru_cell_1/unstack:output:1/while/gru_cell_1/strided_slice_9/stack:output:01while/gru_cell_1/strided_slice_9/stack_1:output:01while/gru_cell_1/strided_slice_9/stack_2:output:0*
Index0*
T0*
_output_shapes	
:2"
 while/gru_cell_1/strided_slice_9Æ
while/gru_cell_1/BiasAdd_4BiasAdd#while/gru_cell_1/MatMul_4:product:0)while/gru_cell_1/strided_slice_9:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/BiasAdd_4°
while/gru_cell_1/addAddV2!while/gru_cell_1/BiasAdd:output:0#while/gru_cell_1/BiasAdd_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/add
while/gru_cell_1/SigmoidSigmoidwhile/gru_cell_1/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/Sigmoid¶
while/gru_cell_1/add_1AddV2#while/gru_cell_1/BiasAdd_1:output:0#while/gru_cell_1/BiasAdd_4:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/add_1
while/gru_cell_1/Sigmoid_1Sigmoidwhile/gru_cell_1/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/Sigmoid_1µ
!while/gru_cell_1/ReadVariableOp_6ReadVariableOp,while_gru_cell_1_readvariableop_4_resource_0* 
_output_shapes
:
Â*
dtype02#
!while/gru_cell_1/ReadVariableOp_6£
'while/gru_cell_1/strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2)
'while/gru_cell_1/strided_slice_10/stack§
)while/gru_cell_1/strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/gru_cell_1/strided_slice_10/stack_1§
)while/gru_cell_1/strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/gru_cell_1/strided_slice_10/stack_2õ
!while/gru_cell_1/strided_slice_10StridedSlice)while/gru_cell_1/ReadVariableOp_6:value:00while/gru_cell_1/strided_slice_10/stack:output:02while/gru_cell_1/strided_slice_10/stack_1:output:02while/gru_cell_1/strided_slice_10/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2#
!while/gru_cell_1/strided_slice_10»
while/gru_cell_1/MatMul_5MatMulwhile/gru_cell_1/mul_5:z:0*while/gru_cell_1/strided_slice_10:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/MatMul_5
'while/gru_cell_1/strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB:¬2)
'while/gru_cell_1/strided_slice_11/stack 
)while/gru_cell_1/strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2+
)while/gru_cell_1/strided_slice_11/stack_1 
)while/gru_cell_1/strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)while/gru_cell_1/strided_slice_11/stack_2Ö
!while/gru_cell_1/strided_slice_11StridedSlice!while/gru_cell_1/unstack:output:10while/gru_cell_1/strided_slice_11/stack:output:02while/gru_cell_1/strided_slice_11/stack_1:output:02while/gru_cell_1/strided_slice_11/stack_2:output:0*
Index0*
T0*
_output_shapes	
:*
end_mask2#
!while/gru_cell_1/strided_slice_11Ç
while/gru_cell_1/BiasAdd_5BiasAdd#while/gru_cell_1/MatMul_5:product:0*while/gru_cell_1/strided_slice_11:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/BiasAdd_5¯
while/gru_cell_1/mul_6Mulwhile/gru_cell_1/Sigmoid_1:y:0#while/gru_cell_1/BiasAdd_5:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/mul_6­
while/gru_cell_1/add_2AddV2#while/gru_cell_1/BiasAdd_2:output:0while/gru_cell_1/mul_6:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/add_2
while/gru_cell_1/TanhTanhwhile/gru_cell_1/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/Tanh
while/gru_cell_1/mul_7Mulwhile/gru_cell_1/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/mul_7u
while/gru_cell_1/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
while/gru_cell_1/sub/x¥
while/gru_cell_1/subSubwhile/gru_cell_1/sub/x:output:0while/gru_cell_1/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/sub
while/gru_cell_1/mul_8Mulwhile/gru_cell_1/sub:z:0while/gru_cell_1/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/mul_8¤
while/gru_cell_1/add_3AddV2while/gru_cell_1/mul_7:z:0while/gru_cell_1/mul_8:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/add_3Þ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_1/add_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/gru_cell_1/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4Ô

while/NoOpNoOp ^while/gru_cell_1/ReadVariableOp"^while/gru_cell_1/ReadVariableOp_1"^while/gru_cell_1/ReadVariableOp_2"^while/gru_cell_1/ReadVariableOp_3"^while/gru_cell_1/ReadVariableOp_4"^while/gru_cell_1/ReadVariableOp_5"^while/gru_cell_1/ReadVariableOp_6*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp"Z
*while_gru_cell_1_readvariableop_1_resource,while_gru_cell_1_readvariableop_1_resource_0"Z
*while_gru_cell_1_readvariableop_4_resource,while_gru_cell_1_readvariableop_4_resource_0"V
(while_gru_cell_1_readvariableop_resource*while_gru_cell_1_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2B
while/gru_cell_1/ReadVariableOpwhile/gru_cell_1/ReadVariableOp2F
!while/gru_cell_1/ReadVariableOp_1!while/gru_cell_1/ReadVariableOp_12F
!while/gru_cell_1/ReadVariableOp_2!while/gru_cell_1/ReadVariableOp_22F
!while/gru_cell_1/ReadVariableOp_3!while/gru_cell_1/ReadVariableOp_32F
!while/gru_cell_1/ReadVariableOp_4!while/gru_cell_1/ReadVariableOp_42F
!while/gru_cell_1/ReadVariableOp_5!while/gru_cell_1/ReadVariableOp_52F
!while/gru_cell_1/ReadVariableOp_6!while/gru_cell_1/ReadVariableOp_6: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 

ò
@__inference_dense_layer_call_and_return_conditional_losses_42609

inputs1
matmul_readvariableop_resource:	-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Softmaxl
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ä£

E__inference_gru_cell_1_layer_call_and_return_conditional_losses_39221

inputs

states*
readvariableop_resource:	Â,
readvariableop_1_resource:	2Â-
readvariableop_4_resource:
Â
identity

identity_1¢ReadVariableOp¢ReadVariableOp_1¢ReadVariableOp_2¢ReadVariableOp_3¢ReadVariableOp_4¢ReadVariableOp_5¢ReadVariableOp_6X
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
ones_like/Const
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
	ones_likec
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?2
dropout/Const
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dropout/Mul`
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout/ShapeÓ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2¹2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2
dropout/GreaterEqual/y¾
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dropout/Mul_1g
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?2
dropout_1/Const
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dropout_1/Muld
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_1/ShapeØ
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2µ­f2(
&dropout_1/random_uniform/RandomUniformy
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2
dropout_1/GreaterEqual/yÆ
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dropout_1/GreaterEqual
dropout_1/CastCastdropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dropout_1/Cast
dropout_1/Mul_1Muldropout_1/Mul:z:0dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dropout_1/Mul_1g
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?2
dropout_2/Const
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dropout_2/Muld
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_2/ShapeÙ
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2ç¿ý2(
&dropout_2/random_uniform/RandomUniformy
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2
dropout_2/GreaterEqual/yÆ
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dropout_2/GreaterEqual
dropout_2/CastCastdropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dropout_2/Cast
dropout_2/Mul_1Muldropout_2/Mul:z:0dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dropout_2/Mul_1\
ones_like_1/ShapeShapestates*
T0*
_output_shapes
:2
ones_like_1/Shapek
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
ones_like_1/Const
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
ones_like_1g
dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?2
dropout_3/Const
dropout_3/MulMulones_like_1:output:0dropout_3/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_3/Mulf
dropout_3/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_3/ShapeÚ
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
seed±ÿå)*
seed2Ï2(
&dropout_3/random_uniform/RandomUniformy
dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2
dropout_3/GreaterEqual/yÇ
dropout_3/GreaterEqualGreaterEqual/dropout_3/random_uniform/RandomUniform:output:0!dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_3/GreaterEqual
dropout_3/CastCastdropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_3/Cast
dropout_3/Mul_1Muldropout_3/Mul:z:0dropout_3/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_3/Mul_1g
dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?2
dropout_4/Const
dropout_4/MulMulones_like_1:output:0dropout_4/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_4/Mulf
dropout_4/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_4/ShapeÙ
&dropout_4/random_uniform/RandomUniformRandomUniformdropout_4/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
seed±ÿå)*
seed2Ç2(
&dropout_4/random_uniform/RandomUniformy
dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2
dropout_4/GreaterEqual/yÇ
dropout_4/GreaterEqualGreaterEqual/dropout_4/random_uniform/RandomUniform:output:0!dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_4/GreaterEqual
dropout_4/CastCastdropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_4/Cast
dropout_4/Mul_1Muldropout_4/Mul:z:0dropout_4/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_4/Mul_1g
dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?2
dropout_5/Const
dropout_5/MulMulones_like_1:output:0dropout_5/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_5/Mulf
dropout_5/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_5/ShapeÚ
&dropout_5/random_uniform/RandomUniformRandomUniformdropout_5/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
seed±ÿå)*
seed2¿ç2(
&dropout_5/random_uniform/RandomUniformy
dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2
dropout_5/GreaterEqual/yÇ
dropout_5/GreaterEqualGreaterEqual/dropout_5/random_uniform/RandomUniform:output:0!dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_5/GreaterEqual
dropout_5/CastCastdropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_5/Cast
dropout_5/Mul_1Muldropout_5/Mul:z:0dropout_5/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_5/Mul_1y
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	Â*
dtype02
ReadVariableOpl
unstackUnpackReadVariableOp:value:0*
T0*"
_output_shapes
:Â:Â*	
num2	
unstack^
mulMulinputsdropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
muld
mul_1Mulinputsdropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
mul_1d
mul_2Mulinputsdropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
mul_2
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:	2Â*
dtype02
ReadVariableOp_1{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2ÿ
strided_sliceStridedSliceReadVariableOp_1:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2*

begin_mask*
end_mask2
strided_slicen
MatMulMatMulmul:z:0strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
ReadVariableOp_2ReadVariableOpreadvariableop_1_resource*
_output_shapes
:	2Â*
dtype02
ReadVariableOp_2
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_1/stack
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2
strided_slice_1/stack_1
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2
strided_slice_1StridedSliceReadVariableOp_2:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2*

begin_mask*
end_mask2
strided_slice_1v
MatMul_1MatMul	mul_1:z:0strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

MatMul_1
ReadVariableOp_3ReadVariableOpreadvariableop_1_resource*
_output_shapes
:	2Â*
dtype02
ReadVariableOp_3
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2
strided_slice_2/stack
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_2/stack_1
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2
strided_slice_2StridedSliceReadVariableOp_3:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2*

begin_mask*
end_mask2
strided_slice_2v
MatMul_2MatMul	mul_2:z:0strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

MatMul_2x
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack}
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2í
strided_slice_3StridedSliceunstack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes	
:*

begin_mask2
strided_slice_3|
BiasAddBiasAddMatMul:product:0strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddy
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_4/stack}
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:¬2
strided_slice_4/stack_1|
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_4/stack_2Û
strided_slice_4StridedSliceunstack:output:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes	
:2
strided_slice_4
	BiasAdd_1BiasAddMatMul_1:product:0strided_slice_4:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	BiasAdd_1y
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:¬2
strided_slice_5/stack|
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_5/stack_1|
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_5/stack_2ë
strided_slice_5StridedSliceunstack:output:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes	
:*
end_mask2
strided_slice_5
	BiasAdd_2BiasAddMatMul_2:product:0strided_slice_5:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	BiasAdd_2e
mul_3Mulstatesdropout_3/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_3e
mul_4Mulstatesdropout_4/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_4e
mul_5Mulstatesdropout_5/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_5
ReadVariableOp_4ReadVariableOpreadvariableop_4_resource* 
_output_shapes
:
Â*
dtype02
ReadVariableOp_4
strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_6/stack
strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_6/stack_1
strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_6/stack_2
strided_slice_6StridedSliceReadVariableOp_4:value:0strided_slice_6/stack:output:0 strided_slice_6/stack_1:output:0 strided_slice_6/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2
strided_slice_6v
MatMul_3MatMul	mul_3:z:0strided_slice_6:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

MatMul_3
ReadVariableOp_5ReadVariableOpreadvariableop_4_resource* 
_output_shapes
:
Â*
dtype02
ReadVariableOp_5
strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_7/stack
strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2
strided_slice_7/stack_1
strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_7/stack_2
strided_slice_7StridedSliceReadVariableOp_5:value:0strided_slice_7/stack:output:0 strided_slice_7/stack_1:output:0 strided_slice_7/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2
strided_slice_7v
MatMul_4MatMul	mul_4:z:0strided_slice_7:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

MatMul_4x
strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_8/stack}
strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_8/stack_1|
strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_8/stack_2í
strided_slice_8StridedSliceunstack:output:1strided_slice_8/stack:output:0 strided_slice_8/stack_1:output:0 strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes	
:*

begin_mask2
strided_slice_8
	BiasAdd_3BiasAddMatMul_3:product:0strided_slice_8:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	BiasAdd_3y
strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_9/stack}
strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:¬2
strided_slice_9/stack_1|
strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_9/stack_2Û
strided_slice_9StridedSliceunstack:output:1strided_slice_9/stack:output:0 strided_slice_9/stack_1:output:0 strided_slice_9/stack_2:output:0*
Index0*
T0*
_output_shapes	
:2
strided_slice_9
	BiasAdd_4BiasAddMatMul_4:product:0strided_slice_9:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	BiasAdd_4l
addAddV2BiasAdd:output:0BiasAdd_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
addY
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Sigmoidr
add_1AddV2BiasAdd_1:output:0BiasAdd_4:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add_1_
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_1
ReadVariableOp_6ReadVariableOpreadvariableop_4_resource* 
_output_shapes
:
Â*
dtype02
ReadVariableOp_6
strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2
strided_slice_10/stack
strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_10/stack_1
strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_10/stack_2
strided_slice_10StridedSliceReadVariableOp_6:value:0strided_slice_10/stack:output:0!strided_slice_10/stack_1:output:0!strided_slice_10/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2
strided_slice_10w
MatMul_5MatMul	mul_5:z:0strided_slice_10:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

MatMul_5{
strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB:¬2
strided_slice_11/stack~
strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_11/stack_1~
strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_11/stack_2ð
strided_slice_11StridedSliceunstack:output:1strided_slice_11/stack:output:0!strided_slice_11/stack_1:output:0!strided_slice_11/stack_2:output:0*
Index0*
T0*
_output_shapes	
:*
end_mask2
strided_slice_11
	BiasAdd_5BiasAddMatMul_5:product:0strided_slice_11:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	BiasAdd_5k
mul_6MulSigmoid_1:y:0BiasAdd_5:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_6i
add_2AddV2BiasAdd_2:output:0	mul_6:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add_2R
TanhTanh	add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Tanh]
mul_7MulSigmoid:y:0states*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_7S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
sub/xa
subSubsub/x:output:0Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sub[
mul_8Mulsub:z:0Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_8`
add_3AddV2	mul_7:z:0	mul_8:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add_3e
IdentityIdentity	add_3:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityi

Identity_1Identity	add_3:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1Ñ
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^ReadVariableOp_4^ReadVariableOp_5^ReadVariableOp_6*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ: : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32$
ReadVariableOp_4ReadVariableOp_42$
ReadVariableOp_5ReadVariableOp_52$
ReadVariableOp_6ReadVariableOp_6:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates
øû
ì
while_body_42389
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0=
*while_gru_cell_1_readvariableop_resource_0:	Â?
,while_gru_cell_1_readvariableop_1_resource_0:	2Â@
,while_gru_cell_1_readvariableop_4_resource_0:
Â
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor;
(while_gru_cell_1_readvariableop_resource:	Â=
*while_gru_cell_1_readvariableop_1_resource:	2Â>
*while_gru_cell_1_readvariableop_4_resource:
Â¢while/gru_cell_1/ReadVariableOp¢!while/gru_cell_1/ReadVariableOp_1¢!while/gru_cell_1/ReadVariableOp_2¢!while/gru_cell_1/ReadVariableOp_3¢!while/gru_cell_1/ReadVariableOp_4¢!while/gru_cell_1/ReadVariableOp_5¢!while/gru_cell_1/ReadVariableOp_6Ã
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem¤
 while/gru_cell_1/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2"
 while/gru_cell_1/ones_like/Shape
 while/gru_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2"
 while/gru_cell_1/ones_like/ConstÈ
while/gru_cell_1/ones_likeFill)while/gru_cell_1/ones_like/Shape:output:0)while/gru_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/gru_cell_1/ones_like
while/gru_cell_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?2 
while/gru_cell_1/dropout/ConstÃ
while/gru_cell_1/dropout/MulMul#while/gru_cell_1/ones_like:output:0'while/gru_cell_1/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/gru_cell_1/dropout/Mul
while/gru_cell_1/dropout/ShapeShape#while/gru_cell_1/ones_like:output:0*
T0*
_output_shapes
:2 
while/gru_cell_1/dropout/Shape
5while/gru_cell_1/dropout/random_uniform/RandomUniformRandomUniform'while/gru_cell_1/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2ÈÑ\27
5while/gru_cell_1/dropout/random_uniform/RandomUniform
'while/gru_cell_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2)
'while/gru_cell_1/dropout/GreaterEqual/y
%while/gru_cell_1/dropout/GreaterEqualGreaterEqual>while/gru_cell_1/dropout/random_uniform/RandomUniform:output:00while/gru_cell_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22'
%while/gru_cell_1/dropout/GreaterEqual²
while/gru_cell_1/dropout/CastCast)while/gru_cell_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/gru_cell_1/dropout/Cast¾
while/gru_cell_1/dropout/Mul_1Mul while/gru_cell_1/dropout/Mul:z:0!while/gru_cell_1/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22 
while/gru_cell_1/dropout/Mul_1
 while/gru_cell_1/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?2"
 while/gru_cell_1/dropout_1/ConstÉ
while/gru_cell_1/dropout_1/MulMul#while/gru_cell_1/ones_like:output:0)while/gru_cell_1/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22 
while/gru_cell_1/dropout_1/Mul
 while/gru_cell_1/dropout_1/ShapeShape#while/gru_cell_1/ones_like:output:0*
T0*
_output_shapes
:2"
 while/gru_cell_1/dropout_1/Shape
7while/gru_cell_1/dropout_1/random_uniform/RandomUniformRandomUniform)while/gru_cell_1/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2¯¸29
7while/gru_cell_1/dropout_1/random_uniform/RandomUniform
)while/gru_cell_1/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2+
)while/gru_cell_1/dropout_1/GreaterEqual/y
'while/gru_cell_1/dropout_1/GreaterEqualGreaterEqual@while/gru_cell_1/dropout_1/random_uniform/RandomUniform:output:02while/gru_cell_1/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22)
'while/gru_cell_1/dropout_1/GreaterEqual¸
while/gru_cell_1/dropout_1/CastCast+while/gru_cell_1/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22!
while/gru_cell_1/dropout_1/CastÆ
 while/gru_cell_1/dropout_1/Mul_1Mul"while/gru_cell_1/dropout_1/Mul:z:0#while/gru_cell_1/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22"
 while/gru_cell_1/dropout_1/Mul_1
 while/gru_cell_1/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?2"
 while/gru_cell_1/dropout_2/ConstÉ
while/gru_cell_1/dropout_2/MulMul#while/gru_cell_1/ones_like:output:0)while/gru_cell_1/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22 
while/gru_cell_1/dropout_2/Mul
 while/gru_cell_1/dropout_2/ShapeShape#while/gru_cell_1/ones_like:output:0*
T0*
_output_shapes
:2"
 while/gru_cell_1/dropout_2/Shape
7while/gru_cell_1/dropout_2/random_uniform/RandomUniformRandomUniform)while/gru_cell_1/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2Ó29
7while/gru_cell_1/dropout_2/random_uniform/RandomUniform
)while/gru_cell_1/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2+
)while/gru_cell_1/dropout_2/GreaterEqual/y
'while/gru_cell_1/dropout_2/GreaterEqualGreaterEqual@while/gru_cell_1/dropout_2/random_uniform/RandomUniform:output:02while/gru_cell_1/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22)
'while/gru_cell_1/dropout_2/GreaterEqual¸
while/gru_cell_1/dropout_2/CastCast+while/gru_cell_1/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22!
while/gru_cell_1/dropout_2/CastÆ
 while/gru_cell_1/dropout_2/Mul_1Mul"while/gru_cell_1/dropout_2/Mul:z:0#while/gru_cell_1/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22"
 while/gru_cell_1/dropout_2/Mul_1
"while/gru_cell_1/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2$
"while/gru_cell_1/ones_like_1/Shape
"while/gru_cell_1/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2$
"while/gru_cell_1/ones_like_1/ConstÑ
while/gru_cell_1/ones_like_1Fill+while/gru_cell_1/ones_like_1/Shape:output:0+while/gru_cell_1/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/ones_like_1
 while/gru_cell_1/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?2"
 while/gru_cell_1/dropout_3/ConstÌ
while/gru_cell_1/dropout_3/MulMul%while/gru_cell_1/ones_like_1:output:0)while/gru_cell_1/dropout_3/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
while/gru_cell_1/dropout_3/Mul
 while/gru_cell_1/dropout_3/ShapeShape%while/gru_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:2"
 while/gru_cell_1/dropout_3/Shape
7while/gru_cell_1/dropout_3/random_uniform/RandomUniformRandomUniform)while/gru_cell_1/dropout_3/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
seed±ÿå)*
seed2ðÛ¹29
7while/gru_cell_1/dropout_3/random_uniform/RandomUniform
)while/gru_cell_1/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2+
)while/gru_cell_1/dropout_3/GreaterEqual/y
'while/gru_cell_1/dropout_3/GreaterEqualGreaterEqual@while/gru_cell_1/dropout_3/random_uniform/RandomUniform:output:02while/gru_cell_1/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'while/gru_cell_1/dropout_3/GreaterEqual¹
while/gru_cell_1/dropout_3/CastCast+while/gru_cell_1/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
while/gru_cell_1/dropout_3/CastÇ
 while/gru_cell_1/dropout_3/Mul_1Mul"while/gru_cell_1/dropout_3/Mul:z:0#while/gru_cell_1/dropout_3/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 while/gru_cell_1/dropout_3/Mul_1
 while/gru_cell_1/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?2"
 while/gru_cell_1/dropout_4/ConstÌ
while/gru_cell_1/dropout_4/MulMul%while/gru_cell_1/ones_like_1:output:0)while/gru_cell_1/dropout_4/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
while/gru_cell_1/dropout_4/Mul
 while/gru_cell_1/dropout_4/ShapeShape%while/gru_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:2"
 while/gru_cell_1/dropout_4/Shape
7while/gru_cell_1/dropout_4/random_uniform/RandomUniformRandomUniform)while/gru_cell_1/dropout_4/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
seed±ÿå)*
seed2ü«29
7while/gru_cell_1/dropout_4/random_uniform/RandomUniform
)while/gru_cell_1/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2+
)while/gru_cell_1/dropout_4/GreaterEqual/y
'while/gru_cell_1/dropout_4/GreaterEqualGreaterEqual@while/gru_cell_1/dropout_4/random_uniform/RandomUniform:output:02while/gru_cell_1/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'while/gru_cell_1/dropout_4/GreaterEqual¹
while/gru_cell_1/dropout_4/CastCast+while/gru_cell_1/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
while/gru_cell_1/dropout_4/CastÇ
 while/gru_cell_1/dropout_4/Mul_1Mul"while/gru_cell_1/dropout_4/Mul:z:0#while/gru_cell_1/dropout_4/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 while/gru_cell_1/dropout_4/Mul_1
 while/gru_cell_1/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?2"
 while/gru_cell_1/dropout_5/ConstÌ
while/gru_cell_1/dropout_5/MulMul%while/gru_cell_1/ones_like_1:output:0)while/gru_cell_1/dropout_5/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
while/gru_cell_1/dropout_5/Mul
 while/gru_cell_1/dropout_5/ShapeShape%while/gru_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:2"
 while/gru_cell_1/dropout_5/Shape
7while/gru_cell_1/dropout_5/random_uniform/RandomUniformRandomUniform)while/gru_cell_1/dropout_5/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
seed±ÿå)*
seed2ºô¬29
7while/gru_cell_1/dropout_5/random_uniform/RandomUniform
)while/gru_cell_1/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2+
)while/gru_cell_1/dropout_5/GreaterEqual/y
'while/gru_cell_1/dropout_5/GreaterEqualGreaterEqual@while/gru_cell_1/dropout_5/random_uniform/RandomUniform:output:02while/gru_cell_1/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'while/gru_cell_1/dropout_5/GreaterEqual¹
while/gru_cell_1/dropout_5/CastCast+while/gru_cell_1/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
while/gru_cell_1/dropout_5/CastÇ
 while/gru_cell_1/dropout_5/Mul_1Mul"while/gru_cell_1/dropout_5/Mul:z:0#while/gru_cell_1/dropout_5/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 while/gru_cell_1/dropout_5/Mul_1®
while/gru_cell_1/ReadVariableOpReadVariableOp*while_gru_cell_1_readvariableop_resource_0*
_output_shapes
:	Â*
dtype02!
while/gru_cell_1/ReadVariableOp
while/gru_cell_1/unstackUnpack'while/gru_cell_1/ReadVariableOp:value:0*
T0*"
_output_shapes
:Â:Â*	
num2
while/gru_cell_1/unstack»
while/gru_cell_1/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/gru_cell_1/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/gru_cell_1/mulÁ
while/gru_cell_1/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/gru_cell_1/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/gru_cell_1/mul_1Á
while/gru_cell_1/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/gru_cell_1/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/gru_cell_1/mul_2´
!while/gru_cell_1/ReadVariableOp_1ReadVariableOp,while_gru_cell_1_readvariableop_1_resource_0*
_output_shapes
:	2Â*
dtype02#
!while/gru_cell_1/ReadVariableOp_1
$while/gru_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2&
$while/gru_cell_1/strided_slice/stack¡
&while/gru_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2(
&while/gru_cell_1/strided_slice/stack_1¡
&while/gru_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&while/gru_cell_1/strided_slice/stack_2å
while/gru_cell_1/strided_sliceStridedSlice)while/gru_cell_1/ReadVariableOp_1:value:0-while/gru_cell_1/strided_slice/stack:output:0/while/gru_cell_1/strided_slice/stack_1:output:0/while/gru_cell_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2*

begin_mask*
end_mask2 
while/gru_cell_1/strided_slice²
while/gru_cell_1/MatMulMatMulwhile/gru_cell_1/mul:z:0'while/gru_cell_1/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/MatMul´
!while/gru_cell_1/ReadVariableOp_2ReadVariableOp,while_gru_cell_1_readvariableop_1_resource_0*
_output_shapes
:	2Â*
dtype02#
!while/gru_cell_1/ReadVariableOp_2¡
&while/gru_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2(
&while/gru_cell_1/strided_slice_1/stack¥
(while/gru_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2*
(while/gru_cell_1/strided_slice_1/stack_1¥
(while/gru_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/gru_cell_1/strided_slice_1/stack_2ï
 while/gru_cell_1/strided_slice_1StridedSlice)while/gru_cell_1/ReadVariableOp_2:value:0/while/gru_cell_1/strided_slice_1/stack:output:01while/gru_cell_1/strided_slice_1/stack_1:output:01while/gru_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2*

begin_mask*
end_mask2"
 while/gru_cell_1/strided_slice_1º
while/gru_cell_1/MatMul_1MatMulwhile/gru_cell_1/mul_1:z:0)while/gru_cell_1/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/MatMul_1´
!while/gru_cell_1/ReadVariableOp_3ReadVariableOp,while_gru_cell_1_readvariableop_1_resource_0*
_output_shapes
:	2Â*
dtype02#
!while/gru_cell_1/ReadVariableOp_3¡
&while/gru_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2(
&while/gru_cell_1/strided_slice_2/stack¥
(while/gru_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/gru_cell_1/strided_slice_2/stack_1¥
(while/gru_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/gru_cell_1/strided_slice_2/stack_2ï
 while/gru_cell_1/strided_slice_2StridedSlice)while/gru_cell_1/ReadVariableOp_3:value:0/while/gru_cell_1/strided_slice_2/stack:output:01while/gru_cell_1/strided_slice_2/stack_1:output:01while/gru_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2*

begin_mask*
end_mask2"
 while/gru_cell_1/strided_slice_2º
while/gru_cell_1/MatMul_2MatMulwhile/gru_cell_1/mul_2:z:0)while/gru_cell_1/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/MatMul_2
&while/gru_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&while/gru_cell_1/strided_slice_3/stack
(while/gru_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(while/gru_cell_1/strided_slice_3/stack_1
(while/gru_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(while/gru_cell_1/strided_slice_3/stack_2Ó
 while/gru_cell_1/strided_slice_3StridedSlice!while/gru_cell_1/unstack:output:0/while/gru_cell_1/strided_slice_3/stack:output:01while/gru_cell_1/strided_slice_3/stack_1:output:01while/gru_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes	
:*

begin_mask2"
 while/gru_cell_1/strided_slice_3À
while/gru_cell_1/BiasAddBiasAdd!while/gru_cell_1/MatMul:product:0)while/gru_cell_1/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/BiasAdd
&while/gru_cell_1/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:2(
&while/gru_cell_1/strided_slice_4/stack
(while/gru_cell_1/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:¬2*
(while/gru_cell_1/strided_slice_4/stack_1
(while/gru_cell_1/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(while/gru_cell_1/strided_slice_4/stack_2Á
 while/gru_cell_1/strided_slice_4StridedSlice!while/gru_cell_1/unstack:output:0/while/gru_cell_1/strided_slice_4/stack:output:01while/gru_cell_1/strided_slice_4/stack_1:output:01while/gru_cell_1/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes	
:2"
 while/gru_cell_1/strided_slice_4Æ
while/gru_cell_1/BiasAdd_1BiasAdd#while/gru_cell_1/MatMul_1:product:0)while/gru_cell_1/strided_slice_4:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/BiasAdd_1
&while/gru_cell_1/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:¬2(
&while/gru_cell_1/strided_slice_5/stack
(while/gru_cell_1/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2*
(while/gru_cell_1/strided_slice_5/stack_1
(while/gru_cell_1/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(while/gru_cell_1/strided_slice_5/stack_2Ñ
 while/gru_cell_1/strided_slice_5StridedSlice!while/gru_cell_1/unstack:output:0/while/gru_cell_1/strided_slice_5/stack:output:01while/gru_cell_1/strided_slice_5/stack_1:output:01while/gru_cell_1/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes	
:*
end_mask2"
 while/gru_cell_1/strided_slice_5Æ
while/gru_cell_1/BiasAdd_2BiasAdd#while/gru_cell_1/MatMul_2:product:0)while/gru_cell_1/strided_slice_5:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/BiasAdd_2¥
while/gru_cell_1/mul_3Mulwhile_placeholder_2$while/gru_cell_1/dropout_3/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/mul_3¥
while/gru_cell_1/mul_4Mulwhile_placeholder_2$while/gru_cell_1/dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/mul_4¥
while/gru_cell_1/mul_5Mulwhile_placeholder_2$while/gru_cell_1/dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/mul_5µ
!while/gru_cell_1/ReadVariableOp_4ReadVariableOp,while_gru_cell_1_readvariableop_4_resource_0* 
_output_shapes
:
Â*
dtype02#
!while/gru_cell_1/ReadVariableOp_4¡
&while/gru_cell_1/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/gru_cell_1/strided_slice_6/stack¥
(while/gru_cell_1/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2*
(while/gru_cell_1/strided_slice_6/stack_1¥
(while/gru_cell_1/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/gru_cell_1/strided_slice_6/stack_2ð
 while/gru_cell_1/strided_slice_6StridedSlice)while/gru_cell_1/ReadVariableOp_4:value:0/while/gru_cell_1/strided_slice_6/stack:output:01while/gru_cell_1/strided_slice_6/stack_1:output:01while/gru_cell_1/strided_slice_6/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2"
 while/gru_cell_1/strided_slice_6º
while/gru_cell_1/MatMul_3MatMulwhile/gru_cell_1/mul_3:z:0)while/gru_cell_1/strided_slice_6:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/MatMul_3µ
!while/gru_cell_1/ReadVariableOp_5ReadVariableOp,while_gru_cell_1_readvariableop_4_resource_0* 
_output_shapes
:
Â*
dtype02#
!while/gru_cell_1/ReadVariableOp_5¡
&while/gru_cell_1/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"       2(
&while/gru_cell_1/strided_slice_7/stack¥
(while/gru_cell_1/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2*
(while/gru_cell_1/strided_slice_7/stack_1¥
(while/gru_cell_1/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/gru_cell_1/strided_slice_7/stack_2ð
 while/gru_cell_1/strided_slice_7StridedSlice)while/gru_cell_1/ReadVariableOp_5:value:0/while/gru_cell_1/strided_slice_7/stack:output:01while/gru_cell_1/strided_slice_7/stack_1:output:01while/gru_cell_1/strided_slice_7/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2"
 while/gru_cell_1/strided_slice_7º
while/gru_cell_1/MatMul_4MatMulwhile/gru_cell_1/mul_4:z:0)while/gru_cell_1/strided_slice_7:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/MatMul_4
&while/gru_cell_1/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&while/gru_cell_1/strided_slice_8/stack
(while/gru_cell_1/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(while/gru_cell_1/strided_slice_8/stack_1
(while/gru_cell_1/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(while/gru_cell_1/strided_slice_8/stack_2Ó
 while/gru_cell_1/strided_slice_8StridedSlice!while/gru_cell_1/unstack:output:1/while/gru_cell_1/strided_slice_8/stack:output:01while/gru_cell_1/strided_slice_8/stack_1:output:01while/gru_cell_1/strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes	
:*

begin_mask2"
 while/gru_cell_1/strided_slice_8Æ
while/gru_cell_1/BiasAdd_3BiasAdd#while/gru_cell_1/MatMul_3:product:0)while/gru_cell_1/strided_slice_8:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/BiasAdd_3
&while/gru_cell_1/strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB:2(
&while/gru_cell_1/strided_slice_9/stack
(while/gru_cell_1/strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:¬2*
(while/gru_cell_1/strided_slice_9/stack_1
(while/gru_cell_1/strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(while/gru_cell_1/strided_slice_9/stack_2Á
 while/gru_cell_1/strided_slice_9StridedSlice!while/gru_cell_1/unstack:output:1/while/gru_cell_1/strided_slice_9/stack:output:01while/gru_cell_1/strided_slice_9/stack_1:output:01while/gru_cell_1/strided_slice_9/stack_2:output:0*
Index0*
T0*
_output_shapes	
:2"
 while/gru_cell_1/strided_slice_9Æ
while/gru_cell_1/BiasAdd_4BiasAdd#while/gru_cell_1/MatMul_4:product:0)while/gru_cell_1/strided_slice_9:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/BiasAdd_4°
while/gru_cell_1/addAddV2!while/gru_cell_1/BiasAdd:output:0#while/gru_cell_1/BiasAdd_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/add
while/gru_cell_1/SigmoidSigmoidwhile/gru_cell_1/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/Sigmoid¶
while/gru_cell_1/add_1AddV2#while/gru_cell_1/BiasAdd_1:output:0#while/gru_cell_1/BiasAdd_4:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/add_1
while/gru_cell_1/Sigmoid_1Sigmoidwhile/gru_cell_1/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/Sigmoid_1µ
!while/gru_cell_1/ReadVariableOp_6ReadVariableOp,while_gru_cell_1_readvariableop_4_resource_0* 
_output_shapes
:
Â*
dtype02#
!while/gru_cell_1/ReadVariableOp_6£
'while/gru_cell_1/strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2)
'while/gru_cell_1/strided_slice_10/stack§
)while/gru_cell_1/strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/gru_cell_1/strided_slice_10/stack_1§
)while/gru_cell_1/strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/gru_cell_1/strided_slice_10/stack_2õ
!while/gru_cell_1/strided_slice_10StridedSlice)while/gru_cell_1/ReadVariableOp_6:value:00while/gru_cell_1/strided_slice_10/stack:output:02while/gru_cell_1/strided_slice_10/stack_1:output:02while/gru_cell_1/strided_slice_10/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2#
!while/gru_cell_1/strided_slice_10»
while/gru_cell_1/MatMul_5MatMulwhile/gru_cell_1/mul_5:z:0*while/gru_cell_1/strided_slice_10:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/MatMul_5
'while/gru_cell_1/strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB:¬2)
'while/gru_cell_1/strided_slice_11/stack 
)while/gru_cell_1/strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2+
)while/gru_cell_1/strided_slice_11/stack_1 
)while/gru_cell_1/strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)while/gru_cell_1/strided_slice_11/stack_2Ö
!while/gru_cell_1/strided_slice_11StridedSlice!while/gru_cell_1/unstack:output:10while/gru_cell_1/strided_slice_11/stack:output:02while/gru_cell_1/strided_slice_11/stack_1:output:02while/gru_cell_1/strided_slice_11/stack_2:output:0*
Index0*
T0*
_output_shapes	
:*
end_mask2#
!while/gru_cell_1/strided_slice_11Ç
while/gru_cell_1/BiasAdd_5BiasAdd#while/gru_cell_1/MatMul_5:product:0*while/gru_cell_1/strided_slice_11:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/BiasAdd_5¯
while/gru_cell_1/mul_6Mulwhile/gru_cell_1/Sigmoid_1:y:0#while/gru_cell_1/BiasAdd_5:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/mul_6­
while/gru_cell_1/add_2AddV2#while/gru_cell_1/BiasAdd_2:output:0while/gru_cell_1/mul_6:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/add_2
while/gru_cell_1/TanhTanhwhile/gru_cell_1/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/Tanh
while/gru_cell_1/mul_7Mulwhile/gru_cell_1/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/mul_7u
while/gru_cell_1/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
while/gru_cell_1/sub/x¥
while/gru_cell_1/subSubwhile/gru_cell_1/sub/x:output:0while/gru_cell_1/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/sub
while/gru_cell_1/mul_8Mulwhile/gru_cell_1/sub:z:0while/gru_cell_1/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/mul_8¤
while/gru_cell_1/add_3AddV2while/gru_cell_1/mul_7:z:0while/gru_cell_1/mul_8:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/add_3Þ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_1/add_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/gru_cell_1/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4Ô

while/NoOpNoOp ^while/gru_cell_1/ReadVariableOp"^while/gru_cell_1/ReadVariableOp_1"^while/gru_cell_1/ReadVariableOp_2"^while/gru_cell_1/ReadVariableOp_3"^while/gru_cell_1/ReadVariableOp_4"^while/gru_cell_1/ReadVariableOp_5"^while/gru_cell_1/ReadVariableOp_6*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp"Z
*while_gru_cell_1_readvariableop_1_resource,while_gru_cell_1_readvariableop_1_resource_0"Z
*while_gru_cell_1_readvariableop_4_resource,while_gru_cell_1_readvariableop_4_resource_0"V
(while_gru_cell_1_readvariableop_resource*while_gru_cell_1_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2B
while/gru_cell_1/ReadVariableOpwhile/gru_cell_1/ReadVariableOp2F
!while/gru_cell_1/ReadVariableOp_1!while/gru_cell_1/ReadVariableOp_12F
!while/gru_cell_1/ReadVariableOp_2!while/gru_cell_1/ReadVariableOp_22F
!while/gru_cell_1/ReadVariableOp_3!while/gru_cell_1/ReadVariableOp_32F
!while/gru_cell_1/ReadVariableOp_4!while/gru_cell_1/ReadVariableOp_42F
!while/gru_cell_1/ReadVariableOp_5!while/gru_cell_1/ReadVariableOp_52F
!while/gru_cell_1/ReadVariableOp_6!while/gru_cell_1/ReadVariableOp_6: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
÷
¥
while_cond_42057
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_42057___redundant_placeholder03
/while_while_cond_42057___redundant_placeholder13
/while_while_cond_42057___redundant_placeholder23
/while_while_cond_42057___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:

ë
 __inference__wrapped_model_38830
embedding_1_inputA
/sequential_2_embedding_1_embedding_lookup_38538:2H
5sequential_2_gru_1_gru_cell_1_readvariableop_resource:	ÂJ
7sequential_2_gru_1_gru_cell_1_readvariableop_1_resource:	2ÂK
7sequential_2_gru_1_gru_cell_1_readvariableop_4_resource:
ÂD
1sequential_2_dense_matmul_readvariableop_resource:	@
2sequential_2_dense_biasadd_readvariableop_resource:
identity¢)sequential_2/dense/BiasAdd/ReadVariableOp¢(sequential_2/dense/MatMul/ReadVariableOp¢)sequential_2/embedding_1/embedding_lookup¢,sequential_2/gru_1/gru_cell_1/ReadVariableOp¢.sequential_2/gru_1/gru_cell_1/ReadVariableOp_1¢.sequential_2/gru_1/gru_cell_1/ReadVariableOp_2¢.sequential_2/gru_1/gru_cell_1/ReadVariableOp_3¢.sequential_2/gru_1/gru_cell_1/ReadVariableOp_4¢.sequential_2/gru_1/gru_cell_1/ReadVariableOp_5¢.sequential_2/gru_1/gru_cell_1/ReadVariableOp_6¢sequential_2/gru_1/while
sequential_2/embedding_1/CastCastembedding_1_input*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
sequential_2/embedding_1/Castø
)sequential_2/embedding_1/embedding_lookupResourceGather/sequential_2_embedding_1_embedding_lookup_38538!sequential_2/embedding_1/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*B
_class8
64loc:@sequential_2/embedding_1/embedding_lookup/38538*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*
dtype02+
)sequential_2/embedding_1/embedding_lookupÐ
2sequential_2/embedding_1/embedding_lookup/IdentityIdentity2sequential_2/embedding_1/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*B
_class8
64loc:@sequential_2/embedding_1/embedding_lookup/38538*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2224
2sequential_2/embedding_1/embedding_lookup/Identityë
4sequential_2/embedding_1/embedding_lookup/Identity_1Identity;sequential_2/embedding_1/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2226
4sequential_2/embedding_1/embedding_lookup/Identity_1¡
sequential_2/gru_1/ShapeShape=sequential_2/embedding_1/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:2
sequential_2/gru_1/Shape
&sequential_2/gru_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&sequential_2/gru_1/strided_slice/stack
(sequential_2/gru_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(sequential_2/gru_1/strided_slice/stack_1
(sequential_2/gru_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(sequential_2/gru_1/strided_slice/stack_2Ô
 sequential_2/gru_1/strided_sliceStridedSlice!sequential_2/gru_1/Shape:output:0/sequential_2/gru_1/strided_slice/stack:output:01sequential_2/gru_1/strided_slice/stack_1:output:01sequential_2/gru_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 sequential_2/gru_1/strided_slice
sequential_2/gru_1/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2 
sequential_2/gru_1/zeros/mul/y¸
sequential_2/gru_1/zeros/mulMul)sequential_2/gru_1/strided_slice:output:0'sequential_2/gru_1/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
sequential_2/gru_1/zeros/mul
sequential_2/gru_1/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2!
sequential_2/gru_1/zeros/Less/y³
sequential_2/gru_1/zeros/LessLess sequential_2/gru_1/zeros/mul:z:0(sequential_2/gru_1/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
sequential_2/gru_1/zeros/Less
!sequential_2/gru_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :2#
!sequential_2/gru_1/zeros/packed/1Ï
sequential_2/gru_1/zeros/packedPack)sequential_2/gru_1/strided_slice:output:0*sequential_2/gru_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2!
sequential_2/gru_1/zeros/packed
sequential_2/gru_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2 
sequential_2/gru_1/zeros/ConstÂ
sequential_2/gru_1/zerosFill(sequential_2/gru_1/zeros/packed:output:0'sequential_2/gru_1/zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_2/gru_1/zeros
!sequential_2/gru_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!sequential_2/gru_1/transpose/permê
sequential_2/gru_1/transpose	Transpose=sequential_2/embedding_1/embedding_lookup/Identity_1:output:0*sequential_2/gru_1/transpose/perm:output:0*
T0*+
_output_shapes
:2ÿÿÿÿÿÿÿÿÿ22
sequential_2/gru_1/transpose
sequential_2/gru_1/Shape_1Shape sequential_2/gru_1/transpose:y:0*
T0*
_output_shapes
:2
sequential_2/gru_1/Shape_1
(sequential_2/gru_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(sequential_2/gru_1/strided_slice_1/stack¢
*sequential_2/gru_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential_2/gru_1/strided_slice_1/stack_1¢
*sequential_2/gru_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential_2/gru_1/strided_slice_1/stack_2à
"sequential_2/gru_1/strided_slice_1StridedSlice#sequential_2/gru_1/Shape_1:output:01sequential_2/gru_1/strided_slice_1/stack:output:03sequential_2/gru_1/strided_slice_1/stack_1:output:03sequential_2/gru_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"sequential_2/gru_1/strided_slice_1«
.sequential_2/gru_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ20
.sequential_2/gru_1/TensorArrayV2/element_shapeþ
 sequential_2/gru_1/TensorArrayV2TensorListReserve7sequential_2/gru_1/TensorArrayV2/element_shape:output:0+sequential_2/gru_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02"
 sequential_2/gru_1/TensorArrayV2å
Hsequential_2/gru_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   2J
Hsequential_2/gru_1/TensorArrayUnstack/TensorListFromTensor/element_shapeÄ
:sequential_2/gru_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor sequential_2/gru_1/transpose:y:0Qsequential_2/gru_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02<
:sequential_2/gru_1/TensorArrayUnstack/TensorListFromTensor
(sequential_2/gru_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(sequential_2/gru_1/strided_slice_2/stack¢
*sequential_2/gru_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential_2/gru_1/strided_slice_2/stack_1¢
*sequential_2/gru_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential_2/gru_1/strided_slice_2/stack_2î
"sequential_2/gru_1/strided_slice_2StridedSlice sequential_2/gru_1/transpose:y:01sequential_2/gru_1/strided_slice_2/stack:output:03sequential_2/gru_1/strided_slice_2/stack_1:output:03sequential_2/gru_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask2$
"sequential_2/gru_1/strided_slice_2¹
-sequential_2/gru_1/gru_cell_1/ones_like/ShapeShape+sequential_2/gru_1/strided_slice_2:output:0*
T0*
_output_shapes
:2/
-sequential_2/gru_1/gru_cell_1/ones_like/Shape£
-sequential_2/gru_1/gru_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2/
-sequential_2/gru_1/gru_cell_1/ones_like/Constü
'sequential_2/gru_1/gru_cell_1/ones_likeFill6sequential_2/gru_1/gru_cell_1/ones_like/Shape:output:06sequential_2/gru_1/gru_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22)
'sequential_2/gru_1/gru_cell_1/ones_like³
/sequential_2/gru_1/gru_cell_1/ones_like_1/ShapeShape!sequential_2/gru_1/zeros:output:0*
T0*
_output_shapes
:21
/sequential_2/gru_1/gru_cell_1/ones_like_1/Shape§
/sequential_2/gru_1/gru_cell_1/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?21
/sequential_2/gru_1/gru_cell_1/ones_like_1/Const
)sequential_2/gru_1/gru_cell_1/ones_like_1Fill8sequential_2/gru_1/gru_cell_1/ones_like_1/Shape:output:08sequential_2/gru_1/gru_cell_1/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2+
)sequential_2/gru_1/gru_cell_1/ones_like_1Ó
,sequential_2/gru_1/gru_cell_1/ReadVariableOpReadVariableOp5sequential_2_gru_1_gru_cell_1_readvariableop_resource*
_output_shapes
:	Â*
dtype02.
,sequential_2/gru_1/gru_cell_1/ReadVariableOpÆ
%sequential_2/gru_1/gru_cell_1/unstackUnpack4sequential_2/gru_1/gru_cell_1/ReadVariableOp:value:0*
T0*"
_output_shapes
:Â:Â*	
num2'
%sequential_2/gru_1/gru_cell_1/unstackÞ
!sequential_2/gru_1/gru_cell_1/mulMul+sequential_2/gru_1/strided_slice_2:output:00sequential_2/gru_1/gru_cell_1/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22#
!sequential_2/gru_1/gru_cell_1/mulâ
#sequential_2/gru_1/gru_cell_1/mul_1Mul+sequential_2/gru_1/strided_slice_2:output:00sequential_2/gru_1/gru_cell_1/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22%
#sequential_2/gru_1/gru_cell_1/mul_1â
#sequential_2/gru_1/gru_cell_1/mul_2Mul+sequential_2/gru_1/strided_slice_2:output:00sequential_2/gru_1/gru_cell_1/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22%
#sequential_2/gru_1/gru_cell_1/mul_2Ù
.sequential_2/gru_1/gru_cell_1/ReadVariableOp_1ReadVariableOp7sequential_2_gru_1_gru_cell_1_readvariableop_1_resource*
_output_shapes
:	2Â*
dtype020
.sequential_2/gru_1/gru_cell_1/ReadVariableOp_1·
1sequential_2/gru_1/gru_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        23
1sequential_2/gru_1/gru_cell_1/strided_slice/stack»
3sequential_2/gru_1/gru_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       25
3sequential_2/gru_1/gru_cell_1/strided_slice/stack_1»
3sequential_2/gru_1/gru_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      25
3sequential_2/gru_1/gru_cell_1/strided_slice/stack_2³
+sequential_2/gru_1/gru_cell_1/strided_sliceStridedSlice6sequential_2/gru_1/gru_cell_1/ReadVariableOp_1:value:0:sequential_2/gru_1/gru_cell_1/strided_slice/stack:output:0<sequential_2/gru_1/gru_cell_1/strided_slice/stack_1:output:0<sequential_2/gru_1/gru_cell_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2*

begin_mask*
end_mask2-
+sequential_2/gru_1/gru_cell_1/strided_sliceæ
$sequential_2/gru_1/gru_cell_1/MatMulMatMul%sequential_2/gru_1/gru_cell_1/mul:z:04sequential_2/gru_1/gru_cell_1/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2&
$sequential_2/gru_1/gru_cell_1/MatMulÙ
.sequential_2/gru_1/gru_cell_1/ReadVariableOp_2ReadVariableOp7sequential_2_gru_1_gru_cell_1_readvariableop_1_resource*
_output_shapes
:	2Â*
dtype020
.sequential_2/gru_1/gru_cell_1/ReadVariableOp_2»
3sequential_2/gru_1/gru_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       25
3sequential_2/gru_1/gru_cell_1/strided_slice_1/stack¿
5sequential_2/gru_1/gru_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  27
5sequential_2/gru_1/gru_cell_1/strided_slice_1/stack_1¿
5sequential_2/gru_1/gru_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      27
5sequential_2/gru_1/gru_cell_1/strided_slice_1/stack_2½
-sequential_2/gru_1/gru_cell_1/strided_slice_1StridedSlice6sequential_2/gru_1/gru_cell_1/ReadVariableOp_2:value:0<sequential_2/gru_1/gru_cell_1/strided_slice_1/stack:output:0>sequential_2/gru_1/gru_cell_1/strided_slice_1/stack_1:output:0>sequential_2/gru_1/gru_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2*

begin_mask*
end_mask2/
-sequential_2/gru_1/gru_cell_1/strided_slice_1î
&sequential_2/gru_1/gru_cell_1/MatMul_1MatMul'sequential_2/gru_1/gru_cell_1/mul_1:z:06sequential_2/gru_1/gru_cell_1/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&sequential_2/gru_1/gru_cell_1/MatMul_1Ù
.sequential_2/gru_1/gru_cell_1/ReadVariableOp_3ReadVariableOp7sequential_2_gru_1_gru_cell_1_readvariableop_1_resource*
_output_shapes
:	2Â*
dtype020
.sequential_2/gru_1/gru_cell_1/ReadVariableOp_3»
3sequential_2/gru_1/gru_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  25
3sequential_2/gru_1/gru_cell_1/strided_slice_2/stack¿
5sequential_2/gru_1/gru_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        27
5sequential_2/gru_1/gru_cell_1/strided_slice_2/stack_1¿
5sequential_2/gru_1/gru_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      27
5sequential_2/gru_1/gru_cell_1/strided_slice_2/stack_2½
-sequential_2/gru_1/gru_cell_1/strided_slice_2StridedSlice6sequential_2/gru_1/gru_cell_1/ReadVariableOp_3:value:0<sequential_2/gru_1/gru_cell_1/strided_slice_2/stack:output:0>sequential_2/gru_1/gru_cell_1/strided_slice_2/stack_1:output:0>sequential_2/gru_1/gru_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2*

begin_mask*
end_mask2/
-sequential_2/gru_1/gru_cell_1/strided_slice_2î
&sequential_2/gru_1/gru_cell_1/MatMul_2MatMul'sequential_2/gru_1/gru_cell_1/mul_2:z:06sequential_2/gru_1/gru_cell_1/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&sequential_2/gru_1/gru_cell_1/MatMul_2´
3sequential_2/gru_1/gru_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential_2/gru_1/gru_cell_1/strided_slice_3/stack¹
5sequential_2/gru_1/gru_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_2/gru_1/gru_cell_1/strided_slice_3/stack_1¸
5sequential_2/gru_1/gru_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_2/gru_1/gru_cell_1/strided_slice_3/stack_2¡
-sequential_2/gru_1/gru_cell_1/strided_slice_3StridedSlice.sequential_2/gru_1/gru_cell_1/unstack:output:0<sequential_2/gru_1/gru_cell_1/strided_slice_3/stack:output:0>sequential_2/gru_1/gru_cell_1/strided_slice_3/stack_1:output:0>sequential_2/gru_1/gru_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes	
:*

begin_mask2/
-sequential_2/gru_1/gru_cell_1/strided_slice_3ô
%sequential_2/gru_1/gru_cell_1/BiasAddBiasAdd.sequential_2/gru_1/gru_cell_1/MatMul:product:06sequential_2/gru_1/gru_cell_1/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2'
%sequential_2/gru_1/gru_cell_1/BiasAddµ
3sequential_2/gru_1/gru_cell_1/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:25
3sequential_2/gru_1/gru_cell_1/strided_slice_4/stack¹
5sequential_2/gru_1/gru_cell_1/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:¬27
5sequential_2/gru_1/gru_cell_1/strided_slice_4/stack_1¸
5sequential_2/gru_1/gru_cell_1/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_2/gru_1/gru_cell_1/strided_slice_4/stack_2
-sequential_2/gru_1/gru_cell_1/strided_slice_4StridedSlice.sequential_2/gru_1/gru_cell_1/unstack:output:0<sequential_2/gru_1/gru_cell_1/strided_slice_4/stack:output:0>sequential_2/gru_1/gru_cell_1/strided_slice_4/stack_1:output:0>sequential_2/gru_1/gru_cell_1/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes	
:2/
-sequential_2/gru_1/gru_cell_1/strided_slice_4ú
'sequential_2/gru_1/gru_cell_1/BiasAdd_1BiasAdd0sequential_2/gru_1/gru_cell_1/MatMul_1:product:06sequential_2/gru_1/gru_cell_1/strided_slice_4:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'sequential_2/gru_1/gru_cell_1/BiasAdd_1µ
3sequential_2/gru_1/gru_cell_1/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:¬25
3sequential_2/gru_1/gru_cell_1/strided_slice_5/stack¸
5sequential_2/gru_1/gru_cell_1/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_2/gru_1/gru_cell_1/strided_slice_5/stack_1¸
5sequential_2/gru_1/gru_cell_1/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_2/gru_1/gru_cell_1/strided_slice_5/stack_2
-sequential_2/gru_1/gru_cell_1/strided_slice_5StridedSlice.sequential_2/gru_1/gru_cell_1/unstack:output:0<sequential_2/gru_1/gru_cell_1/strided_slice_5/stack:output:0>sequential_2/gru_1/gru_cell_1/strided_slice_5/stack_1:output:0>sequential_2/gru_1/gru_cell_1/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes	
:*
end_mask2/
-sequential_2/gru_1/gru_cell_1/strided_slice_5ú
'sequential_2/gru_1/gru_cell_1/BiasAdd_2BiasAdd0sequential_2/gru_1/gru_cell_1/MatMul_2:product:06sequential_2/gru_1/gru_cell_1/strided_slice_5:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'sequential_2/gru_1/gru_cell_1/BiasAdd_2Û
#sequential_2/gru_1/gru_cell_1/mul_3Mul!sequential_2/gru_1/zeros:output:02sequential_2/gru_1/gru_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2%
#sequential_2/gru_1/gru_cell_1/mul_3Û
#sequential_2/gru_1/gru_cell_1/mul_4Mul!sequential_2/gru_1/zeros:output:02sequential_2/gru_1/gru_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2%
#sequential_2/gru_1/gru_cell_1/mul_4Û
#sequential_2/gru_1/gru_cell_1/mul_5Mul!sequential_2/gru_1/zeros:output:02sequential_2/gru_1/gru_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2%
#sequential_2/gru_1/gru_cell_1/mul_5Ú
.sequential_2/gru_1/gru_cell_1/ReadVariableOp_4ReadVariableOp7sequential_2_gru_1_gru_cell_1_readvariableop_4_resource* 
_output_shapes
:
Â*
dtype020
.sequential_2/gru_1/gru_cell_1/ReadVariableOp_4»
3sequential_2/gru_1/gru_cell_1/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        25
3sequential_2/gru_1/gru_cell_1/strided_slice_6/stack¿
5sequential_2/gru_1/gru_cell_1/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       27
5sequential_2/gru_1/gru_cell_1/strided_slice_6/stack_1¿
5sequential_2/gru_1/gru_cell_1/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      27
5sequential_2/gru_1/gru_cell_1/strided_slice_6/stack_2¾
-sequential_2/gru_1/gru_cell_1/strided_slice_6StridedSlice6sequential_2/gru_1/gru_cell_1/ReadVariableOp_4:value:0<sequential_2/gru_1/gru_cell_1/strided_slice_6/stack:output:0>sequential_2/gru_1/gru_cell_1/strided_slice_6/stack_1:output:0>sequential_2/gru_1/gru_cell_1/strided_slice_6/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2/
-sequential_2/gru_1/gru_cell_1/strided_slice_6î
&sequential_2/gru_1/gru_cell_1/MatMul_3MatMul'sequential_2/gru_1/gru_cell_1/mul_3:z:06sequential_2/gru_1/gru_cell_1/strided_slice_6:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&sequential_2/gru_1/gru_cell_1/MatMul_3Ú
.sequential_2/gru_1/gru_cell_1/ReadVariableOp_5ReadVariableOp7sequential_2_gru_1_gru_cell_1_readvariableop_4_resource* 
_output_shapes
:
Â*
dtype020
.sequential_2/gru_1/gru_cell_1/ReadVariableOp_5»
3sequential_2/gru_1/gru_cell_1/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"       25
3sequential_2/gru_1/gru_cell_1/strided_slice_7/stack¿
5sequential_2/gru_1/gru_cell_1/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  27
5sequential_2/gru_1/gru_cell_1/strided_slice_7/stack_1¿
5sequential_2/gru_1/gru_cell_1/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      27
5sequential_2/gru_1/gru_cell_1/strided_slice_7/stack_2¾
-sequential_2/gru_1/gru_cell_1/strided_slice_7StridedSlice6sequential_2/gru_1/gru_cell_1/ReadVariableOp_5:value:0<sequential_2/gru_1/gru_cell_1/strided_slice_7/stack:output:0>sequential_2/gru_1/gru_cell_1/strided_slice_7/stack_1:output:0>sequential_2/gru_1/gru_cell_1/strided_slice_7/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2/
-sequential_2/gru_1/gru_cell_1/strided_slice_7î
&sequential_2/gru_1/gru_cell_1/MatMul_4MatMul'sequential_2/gru_1/gru_cell_1/mul_4:z:06sequential_2/gru_1/gru_cell_1/strided_slice_7:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&sequential_2/gru_1/gru_cell_1/MatMul_4´
3sequential_2/gru_1/gru_cell_1/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential_2/gru_1/gru_cell_1/strided_slice_8/stack¹
5sequential_2/gru_1/gru_cell_1/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_2/gru_1/gru_cell_1/strided_slice_8/stack_1¸
5sequential_2/gru_1/gru_cell_1/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_2/gru_1/gru_cell_1/strided_slice_8/stack_2¡
-sequential_2/gru_1/gru_cell_1/strided_slice_8StridedSlice.sequential_2/gru_1/gru_cell_1/unstack:output:1<sequential_2/gru_1/gru_cell_1/strided_slice_8/stack:output:0>sequential_2/gru_1/gru_cell_1/strided_slice_8/stack_1:output:0>sequential_2/gru_1/gru_cell_1/strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes	
:*

begin_mask2/
-sequential_2/gru_1/gru_cell_1/strided_slice_8ú
'sequential_2/gru_1/gru_cell_1/BiasAdd_3BiasAdd0sequential_2/gru_1/gru_cell_1/MatMul_3:product:06sequential_2/gru_1/gru_cell_1/strided_slice_8:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'sequential_2/gru_1/gru_cell_1/BiasAdd_3µ
3sequential_2/gru_1/gru_cell_1/strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB:25
3sequential_2/gru_1/gru_cell_1/strided_slice_9/stack¹
5sequential_2/gru_1/gru_cell_1/strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:¬27
5sequential_2/gru_1/gru_cell_1/strided_slice_9/stack_1¸
5sequential_2/gru_1/gru_cell_1/strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_2/gru_1/gru_cell_1/strided_slice_9/stack_2
-sequential_2/gru_1/gru_cell_1/strided_slice_9StridedSlice.sequential_2/gru_1/gru_cell_1/unstack:output:1<sequential_2/gru_1/gru_cell_1/strided_slice_9/stack:output:0>sequential_2/gru_1/gru_cell_1/strided_slice_9/stack_1:output:0>sequential_2/gru_1/gru_cell_1/strided_slice_9/stack_2:output:0*
Index0*
T0*
_output_shapes	
:2/
-sequential_2/gru_1/gru_cell_1/strided_slice_9ú
'sequential_2/gru_1/gru_cell_1/BiasAdd_4BiasAdd0sequential_2/gru_1/gru_cell_1/MatMul_4:product:06sequential_2/gru_1/gru_cell_1/strided_slice_9:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'sequential_2/gru_1/gru_cell_1/BiasAdd_4ä
!sequential_2/gru_1/gru_cell_1/addAddV2.sequential_2/gru_1/gru_cell_1/BiasAdd:output:00sequential_2/gru_1/gru_cell_1/BiasAdd_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!sequential_2/gru_1/gru_cell_1/add³
%sequential_2/gru_1/gru_cell_1/SigmoidSigmoid%sequential_2/gru_1/gru_cell_1/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2'
%sequential_2/gru_1/gru_cell_1/Sigmoidê
#sequential_2/gru_1/gru_cell_1/add_1AddV20sequential_2/gru_1/gru_cell_1/BiasAdd_1:output:00sequential_2/gru_1/gru_cell_1/BiasAdd_4:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2%
#sequential_2/gru_1/gru_cell_1/add_1¹
'sequential_2/gru_1/gru_cell_1/Sigmoid_1Sigmoid'sequential_2/gru_1/gru_cell_1/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'sequential_2/gru_1/gru_cell_1/Sigmoid_1Ú
.sequential_2/gru_1/gru_cell_1/ReadVariableOp_6ReadVariableOp7sequential_2_gru_1_gru_cell_1_readvariableop_4_resource* 
_output_shapes
:
Â*
dtype020
.sequential_2/gru_1/gru_cell_1/ReadVariableOp_6½
4sequential_2/gru_1/gru_cell_1/strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  26
4sequential_2/gru_1/gru_cell_1/strided_slice_10/stackÁ
6sequential_2/gru_1/gru_cell_1/strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        28
6sequential_2/gru_1/gru_cell_1/strided_slice_10/stack_1Á
6sequential_2/gru_1/gru_cell_1/strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      28
6sequential_2/gru_1/gru_cell_1/strided_slice_10/stack_2Ã
.sequential_2/gru_1/gru_cell_1/strided_slice_10StridedSlice6sequential_2/gru_1/gru_cell_1/ReadVariableOp_6:value:0=sequential_2/gru_1/gru_cell_1/strided_slice_10/stack:output:0?sequential_2/gru_1/gru_cell_1/strided_slice_10/stack_1:output:0?sequential_2/gru_1/gru_cell_1/strided_slice_10/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask20
.sequential_2/gru_1/gru_cell_1/strided_slice_10ï
&sequential_2/gru_1/gru_cell_1/MatMul_5MatMul'sequential_2/gru_1/gru_cell_1/mul_5:z:07sequential_2/gru_1/gru_cell_1/strided_slice_10:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&sequential_2/gru_1/gru_cell_1/MatMul_5·
4sequential_2/gru_1/gru_cell_1/strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB:¬26
4sequential_2/gru_1/gru_cell_1/strided_slice_11/stackº
6sequential_2/gru_1/gru_cell_1/strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 28
6sequential_2/gru_1/gru_cell_1/strided_slice_11/stack_1º
6sequential_2/gru_1/gru_cell_1/strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6sequential_2/gru_1/gru_cell_1/strided_slice_11/stack_2¤
.sequential_2/gru_1/gru_cell_1/strided_slice_11StridedSlice.sequential_2/gru_1/gru_cell_1/unstack:output:1=sequential_2/gru_1/gru_cell_1/strided_slice_11/stack:output:0?sequential_2/gru_1/gru_cell_1/strided_slice_11/stack_1:output:0?sequential_2/gru_1/gru_cell_1/strided_slice_11/stack_2:output:0*
Index0*
T0*
_output_shapes	
:*
end_mask20
.sequential_2/gru_1/gru_cell_1/strided_slice_11û
'sequential_2/gru_1/gru_cell_1/BiasAdd_5BiasAdd0sequential_2/gru_1/gru_cell_1/MatMul_5:product:07sequential_2/gru_1/gru_cell_1/strided_slice_11:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'sequential_2/gru_1/gru_cell_1/BiasAdd_5ã
#sequential_2/gru_1/gru_cell_1/mul_6Mul+sequential_2/gru_1/gru_cell_1/Sigmoid_1:y:00sequential_2/gru_1/gru_cell_1/BiasAdd_5:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2%
#sequential_2/gru_1/gru_cell_1/mul_6á
#sequential_2/gru_1/gru_cell_1/add_2AddV20sequential_2/gru_1/gru_cell_1/BiasAdd_2:output:0'sequential_2/gru_1/gru_cell_1/mul_6:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2%
#sequential_2/gru_1/gru_cell_1/add_2¬
"sequential_2/gru_1/gru_cell_1/TanhTanh'sequential_2/gru_1/gru_cell_1/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2$
"sequential_2/gru_1/gru_cell_1/TanhÒ
#sequential_2/gru_1/gru_cell_1/mul_7Mul)sequential_2/gru_1/gru_cell_1/Sigmoid:y:0!sequential_2/gru_1/zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2%
#sequential_2/gru_1/gru_cell_1/mul_7
#sequential_2/gru_1/gru_cell_1/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2%
#sequential_2/gru_1/gru_cell_1/sub/xÙ
!sequential_2/gru_1/gru_cell_1/subSub,sequential_2/gru_1/gru_cell_1/sub/x:output:0)sequential_2/gru_1/gru_cell_1/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!sequential_2/gru_1/gru_cell_1/subÓ
#sequential_2/gru_1/gru_cell_1/mul_8Mul%sequential_2/gru_1/gru_cell_1/sub:z:0&sequential_2/gru_1/gru_cell_1/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2%
#sequential_2/gru_1/gru_cell_1/mul_8Ø
#sequential_2/gru_1/gru_cell_1/add_3AddV2'sequential_2/gru_1/gru_cell_1/mul_7:z:0'sequential_2/gru_1/gru_cell_1/mul_8:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2%
#sequential_2/gru_1/gru_cell_1/add_3µ
0sequential_2/gru_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0sequential_2/gru_1/TensorArrayV2_1/element_shape
"sequential_2/gru_1/TensorArrayV2_1TensorListReserve9sequential_2/gru_1/TensorArrayV2_1/element_shape:output:0+sequential_2/gru_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02$
"sequential_2/gru_1/TensorArrayV2_1t
sequential_2/gru_1/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_2/gru_1/time¥
+sequential_2/gru_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2-
+sequential_2/gru_1/while/maximum_iterations
%sequential_2/gru_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2'
%sequential_2/gru_1/while/loop_counterÂ
sequential_2/gru_1/whileWhile.sequential_2/gru_1/while/loop_counter:output:04sequential_2/gru_1/while/maximum_iterations:output:0 sequential_2/gru_1/time:output:0+sequential_2/gru_1/TensorArrayV2_1:handle:0!sequential_2/gru_1/zeros:output:0+sequential_2/gru_1/strided_slice_1:output:0Jsequential_2/gru_1/TensorArrayUnstack/TensorListFromTensor:output_handle:05sequential_2_gru_1_gru_cell_1_readvariableop_resource7sequential_2_gru_1_gru_cell_1_readvariableop_1_resource7sequential_2_gru_1_gru_cell_1_readvariableop_4_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( */
body'R%
#sequential_2_gru_1_while_body_38671*/
cond'R%
#sequential_2_gru_1_while_cond_38670*9
output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
sequential_2/gru_1/whileÛ
Csequential_2/gru_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2E
Csequential_2/gru_1/TensorArrayV2Stack/TensorListStack/element_shapeµ
5sequential_2/gru_1/TensorArrayV2Stack/TensorListStackTensorListStack!sequential_2/gru_1/while:output:3Lsequential_2/gru_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:2ÿÿÿÿÿÿÿÿÿ*
element_dtype027
5sequential_2/gru_1/TensorArrayV2Stack/TensorListStack§
(sequential_2/gru_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2*
(sequential_2/gru_1/strided_slice_3/stack¢
*sequential_2/gru_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2,
*sequential_2/gru_1/strided_slice_3/stack_1¢
*sequential_2/gru_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential_2/gru_1/strided_slice_3/stack_2
"sequential_2/gru_1/strided_slice_3StridedSlice>sequential_2/gru_1/TensorArrayV2Stack/TensorListStack:tensor:01sequential_2/gru_1/strided_slice_3/stack:output:03sequential_2/gru_1/strided_slice_3/stack_1:output:03sequential_2/gru_1/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2$
"sequential_2/gru_1/strided_slice_3
#sequential_2/gru_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2%
#sequential_2/gru_1/transpose_1/permò
sequential_2/gru_1/transpose_1	Transpose>sequential_2/gru_1/TensorArrayV2Stack/TensorListStack:tensor:0,sequential_2/gru_1/transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22 
sequential_2/gru_1/transpose_1
sequential_2/gru_1/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential_2/gru_1/runtimeÇ
(sequential_2/dense/MatMul/ReadVariableOpReadVariableOp1sequential_2_dense_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02*
(sequential_2/dense/MatMul/ReadVariableOpÑ
sequential_2/dense/MatMulMatMul+sequential_2/gru_1/strided_slice_3:output:00sequential_2/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_2/dense/MatMulÅ
)sequential_2/dense/BiasAdd/ReadVariableOpReadVariableOp2sequential_2_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)sequential_2/dense/BiasAdd/ReadVariableOpÍ
sequential_2/dense/BiasAddBiasAdd#sequential_2/dense/MatMul:product:01sequential_2/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_2/dense/BiasAdd
sequential_2/dense/SoftmaxSoftmax#sequential_2/dense/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_2/dense/Softmax
IdentityIdentity$sequential_2/dense/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

IdentityÁ
NoOpNoOp*^sequential_2/dense/BiasAdd/ReadVariableOp)^sequential_2/dense/MatMul/ReadVariableOp*^sequential_2/embedding_1/embedding_lookup-^sequential_2/gru_1/gru_cell_1/ReadVariableOp/^sequential_2/gru_1/gru_cell_1/ReadVariableOp_1/^sequential_2/gru_1/gru_cell_1/ReadVariableOp_2/^sequential_2/gru_1/gru_cell_1/ReadVariableOp_3/^sequential_2/gru_1/gru_cell_1/ReadVariableOp_4/^sequential_2/gru_1/gru_cell_1/ReadVariableOp_5/^sequential_2/gru_1/gru_cell_1/ReadVariableOp_6^sequential_2/gru_1/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ2: : : : : : 2V
)sequential_2/dense/BiasAdd/ReadVariableOp)sequential_2/dense/BiasAdd/ReadVariableOp2T
(sequential_2/dense/MatMul/ReadVariableOp(sequential_2/dense/MatMul/ReadVariableOp2V
)sequential_2/embedding_1/embedding_lookup)sequential_2/embedding_1/embedding_lookup2\
,sequential_2/gru_1/gru_cell_1/ReadVariableOp,sequential_2/gru_1/gru_cell_1/ReadVariableOp2`
.sequential_2/gru_1/gru_cell_1/ReadVariableOp_1.sequential_2/gru_1/gru_cell_1/ReadVariableOp_12`
.sequential_2/gru_1/gru_cell_1/ReadVariableOp_2.sequential_2/gru_1/gru_cell_1/ReadVariableOp_22`
.sequential_2/gru_1/gru_cell_1/ReadVariableOp_3.sequential_2/gru_1/gru_cell_1/ReadVariableOp_32`
.sequential_2/gru_1/gru_cell_1/ReadVariableOp_4.sequential_2/gru_1/gru_cell_1/ReadVariableOp_42`
.sequential_2/gru_1/gru_cell_1/ReadVariableOp_5.sequential_2/gru_1/gru_cell_1/ReadVariableOp_52`
.sequential_2/gru_1/gru_cell_1/ReadVariableOp_6.sequential_2/gru_1/gru_cell_1/ReadVariableOp_624
sequential_2/gru_1/whilesequential_2/gru_1/while:Z V
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
+
_user_specified_nameembedding_1_input
µ"
©
while_body_39288
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0+
while_gru_cell_1_39310_0:	Â+
while_gru_cell_1_39312_0:	2Â,
while_gru_cell_1_39314_0:
Â
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor)
while_gru_cell_1_39310:	Â)
while_gru_cell_1_39312:	2Â*
while_gru_cell_1_39314:
Â¢(while/gru_cell_1/StatefulPartitionedCallÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem©
(while/gru_cell_1/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_gru_cell_1_39310_0while_gru_cell_1_39312_0while_gru_cell_1_39314_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_gru_cell_1_layer_call_and_return_conditional_losses_392212*
(while/gru_cell_1/StatefulPartitionedCallõ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder1while/gru_cell_1/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3£
while/Identity_4Identity1while/gru_cell_1/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4

while/NoOpNoOp)^while/gru_cell_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp"2
while_gru_cell_1_39310while_gru_cell_1_39310_0"2
while_gru_cell_1_39312while_gru_cell_1_39312_0"2
while_gru_cell_1_39314while_gru_cell_1_39314_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2T
(while/gru_cell_1/StatefulPartitionedCall(while/gru_cell_1/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
ò£

E__inference_gru_cell_1_layer_call_and_return_conditional_losses_42889

inputs
states_0*
readvariableop_resource:	Â,
readvariableop_1_resource:	2Â-
readvariableop_4_resource:
Â
identity

identity_1¢ReadVariableOp¢ReadVariableOp_1¢ReadVariableOp_2¢ReadVariableOp_3¢ReadVariableOp_4¢ReadVariableOp_5¢ReadVariableOp_6X
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
ones_like/Const
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
	ones_likec
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?2
dropout/Const
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dropout/Mul`
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout/ShapeÓ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2ý¥2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2
dropout/GreaterEqual/y¾
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dropout/Mul_1g
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?2
dropout_1/Const
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dropout_1/Muld
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_1/ShapeÙ
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2©ô2(
&dropout_1/random_uniform/RandomUniformy
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2
dropout_1/GreaterEqual/yÆ
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dropout_1/GreaterEqual
dropout_1/CastCastdropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dropout_1/Cast
dropout_1/Mul_1Muldropout_1/Mul:z:0dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dropout_1/Mul_1g
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?2
dropout_2/Const
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dropout_2/Muld
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_2/ShapeÙ
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2Ò³Ã2(
&dropout_2/random_uniform/RandomUniformy
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2
dropout_2/GreaterEqual/yÆ
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dropout_2/GreaterEqual
dropout_2/CastCastdropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dropout_2/Cast
dropout_2/Mul_1Muldropout_2/Mul:z:0dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dropout_2/Mul_1^
ones_like_1/ShapeShapestates_0*
T0*
_output_shapes
:2
ones_like_1/Shapek
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
ones_like_1/Const
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
ones_like_1g
dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?2
dropout_3/Const
dropout_3/MulMulones_like_1:output:0dropout_3/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_3/Mulf
dropout_3/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_3/ShapeÚ
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
seed±ÿå)*
seed2Ò®2(
&dropout_3/random_uniform/RandomUniformy
dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2
dropout_3/GreaterEqual/yÇ
dropout_3/GreaterEqualGreaterEqual/dropout_3/random_uniform/RandomUniform:output:0!dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_3/GreaterEqual
dropout_3/CastCastdropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_3/Cast
dropout_3/Mul_1Muldropout_3/Mul:z:0dropout_3/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_3/Mul_1g
dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?2
dropout_4/Const
dropout_4/MulMulones_like_1:output:0dropout_4/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_4/Mulf
dropout_4/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_4/ShapeÙ
&dropout_4/random_uniform/RandomUniformRandomUniformdropout_4/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
seed±ÿå)*
seed2ª2(
&dropout_4/random_uniform/RandomUniformy
dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2
dropout_4/GreaterEqual/yÇ
dropout_4/GreaterEqualGreaterEqual/dropout_4/random_uniform/RandomUniform:output:0!dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_4/GreaterEqual
dropout_4/CastCastdropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_4/Cast
dropout_4/Mul_1Muldropout_4/Mul:z:0dropout_4/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_4/Mul_1g
dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?2
dropout_5/Const
dropout_5/MulMulones_like_1:output:0dropout_5/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_5/Mulf
dropout_5/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_5/ShapeÙ
&dropout_5/random_uniform/RandomUniformRandomUniformdropout_5/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
seed±ÿå)*
seed2â»2(
&dropout_5/random_uniform/RandomUniformy
dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2
dropout_5/GreaterEqual/yÇ
dropout_5/GreaterEqualGreaterEqual/dropout_5/random_uniform/RandomUniform:output:0!dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_5/GreaterEqual
dropout_5/CastCastdropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_5/Cast
dropout_5/Mul_1Muldropout_5/Mul:z:0dropout_5/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_5/Mul_1y
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	Â*
dtype02
ReadVariableOpl
unstackUnpackReadVariableOp:value:0*
T0*"
_output_shapes
:Â:Â*	
num2	
unstack^
mulMulinputsdropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
muld
mul_1Mulinputsdropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
mul_1d
mul_2Mulinputsdropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
mul_2
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:	2Â*
dtype02
ReadVariableOp_1{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2ÿ
strided_sliceStridedSliceReadVariableOp_1:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2*

begin_mask*
end_mask2
strided_slicen
MatMulMatMulmul:z:0strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
ReadVariableOp_2ReadVariableOpreadvariableop_1_resource*
_output_shapes
:	2Â*
dtype02
ReadVariableOp_2
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_1/stack
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2
strided_slice_1/stack_1
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2
strided_slice_1StridedSliceReadVariableOp_2:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2*

begin_mask*
end_mask2
strided_slice_1v
MatMul_1MatMul	mul_1:z:0strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

MatMul_1
ReadVariableOp_3ReadVariableOpreadvariableop_1_resource*
_output_shapes
:	2Â*
dtype02
ReadVariableOp_3
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2
strided_slice_2/stack
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_2/stack_1
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2
strided_slice_2StridedSliceReadVariableOp_3:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2*

begin_mask*
end_mask2
strided_slice_2v
MatMul_2MatMul	mul_2:z:0strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

MatMul_2x
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack}
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2í
strided_slice_3StridedSliceunstack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes	
:*

begin_mask2
strided_slice_3|
BiasAddBiasAddMatMul:product:0strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddy
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_4/stack}
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:¬2
strided_slice_4/stack_1|
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_4/stack_2Û
strided_slice_4StridedSliceunstack:output:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes	
:2
strided_slice_4
	BiasAdd_1BiasAddMatMul_1:product:0strided_slice_4:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	BiasAdd_1y
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:¬2
strided_slice_5/stack|
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_5/stack_1|
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_5/stack_2ë
strided_slice_5StridedSliceunstack:output:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes	
:*
end_mask2
strided_slice_5
	BiasAdd_2BiasAddMatMul_2:product:0strided_slice_5:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	BiasAdd_2g
mul_3Mulstates_0dropout_3/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_3g
mul_4Mulstates_0dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_4g
mul_5Mulstates_0dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_5
ReadVariableOp_4ReadVariableOpreadvariableop_4_resource* 
_output_shapes
:
Â*
dtype02
ReadVariableOp_4
strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_6/stack
strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_6/stack_1
strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_6/stack_2
strided_slice_6StridedSliceReadVariableOp_4:value:0strided_slice_6/stack:output:0 strided_slice_6/stack_1:output:0 strided_slice_6/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2
strided_slice_6v
MatMul_3MatMul	mul_3:z:0strided_slice_6:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

MatMul_3
ReadVariableOp_5ReadVariableOpreadvariableop_4_resource* 
_output_shapes
:
Â*
dtype02
ReadVariableOp_5
strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_7/stack
strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2
strided_slice_7/stack_1
strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_7/stack_2
strided_slice_7StridedSliceReadVariableOp_5:value:0strided_slice_7/stack:output:0 strided_slice_7/stack_1:output:0 strided_slice_7/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2
strided_slice_7v
MatMul_4MatMul	mul_4:z:0strided_slice_7:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

MatMul_4x
strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_8/stack}
strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_8/stack_1|
strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_8/stack_2í
strided_slice_8StridedSliceunstack:output:1strided_slice_8/stack:output:0 strided_slice_8/stack_1:output:0 strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes	
:*

begin_mask2
strided_slice_8
	BiasAdd_3BiasAddMatMul_3:product:0strided_slice_8:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	BiasAdd_3y
strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_9/stack}
strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:¬2
strided_slice_9/stack_1|
strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_9/stack_2Û
strided_slice_9StridedSliceunstack:output:1strided_slice_9/stack:output:0 strided_slice_9/stack_1:output:0 strided_slice_9/stack_2:output:0*
Index0*
T0*
_output_shapes	
:2
strided_slice_9
	BiasAdd_4BiasAddMatMul_4:product:0strided_slice_9:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	BiasAdd_4l
addAddV2BiasAdd:output:0BiasAdd_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
addY
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Sigmoidr
add_1AddV2BiasAdd_1:output:0BiasAdd_4:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add_1_
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_1
ReadVariableOp_6ReadVariableOpreadvariableop_4_resource* 
_output_shapes
:
Â*
dtype02
ReadVariableOp_6
strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2
strided_slice_10/stack
strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_10/stack_1
strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_10/stack_2
strided_slice_10StridedSliceReadVariableOp_6:value:0strided_slice_10/stack:output:0!strided_slice_10/stack_1:output:0!strided_slice_10/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2
strided_slice_10w
MatMul_5MatMul	mul_5:z:0strided_slice_10:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

MatMul_5{
strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB:¬2
strided_slice_11/stack~
strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_11/stack_1~
strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_11/stack_2ð
strided_slice_11StridedSliceunstack:output:1strided_slice_11/stack:output:0!strided_slice_11/stack_1:output:0!strided_slice_11/stack_2:output:0*
Index0*
T0*
_output_shapes	
:*
end_mask2
strided_slice_11
	BiasAdd_5BiasAddMatMul_5:product:0strided_slice_11:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	BiasAdd_5k
mul_6MulSigmoid_1:y:0BiasAdd_5:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_6i
add_2AddV2BiasAdd_2:output:0	mul_6:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add_2R
TanhTanh	add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Tanh_
mul_7MulSigmoid:y:0states_0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_7S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
sub/xa
subSubsub/x:output:0Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sub[
mul_8Mulsub:z:0Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_8`
add_3AddV2	mul_7:z:0	mul_8:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add_3e
IdentityIdentity	add_3:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityi

Identity_1Identity	add_3:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1Ñ
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^ReadVariableOp_4^ReadVariableOp_5^ReadVariableOp_6*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ: : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32$
ReadVariableOp_4ReadVariableOp_42$
ReadVariableOp_5ReadVariableOp_52$
ReadVariableOp_6ReadVariableOp_6:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0
ç

¢
F__inference_embedding_1_layer_call_and_return_conditional_losses_39603

inputs(
embedding_lookup_39597:2
identity¢embedding_lookup]
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
Castû
embedding_lookupResourceGatherembedding_lookup_39597Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*)
_class
loc:@embedding_lookup/39597*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*
dtype02
embedding_lookupì
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@embedding_lookup/39597*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ222
embedding_lookup/Identity 
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ222
embedding_lookup/Identity_1
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ222

Identitya
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
æm

E__inference_gru_cell_1_layer_call_and_return_conditional_losses_38967

inputs

states*
readvariableop_resource:	Â,
readvariableop_1_resource:	2Â-
readvariableop_4_resource:
Â
identity

identity_1¢ReadVariableOp¢ReadVariableOp_1¢ReadVariableOp_2¢ReadVariableOp_3¢ReadVariableOp_4¢ReadVariableOp_5¢ReadVariableOp_6X
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
ones_like/Const
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
	ones_like\
ones_like_1/ShapeShapestates*
T0*
_output_shapes
:2
ones_like_1/Shapek
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
ones_like_1/Const
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
ones_like_1y
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	Â*
dtype02
ReadVariableOpl
unstackUnpackReadVariableOp:value:0*
T0*"
_output_shapes
:Â:Â*	
num2	
unstack_
mulMulinputsones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
mulc
mul_1Mulinputsones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
mul_1c
mul_2Mulinputsones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
mul_2
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:	2Â*
dtype02
ReadVariableOp_1{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2ÿ
strided_sliceStridedSliceReadVariableOp_1:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2*

begin_mask*
end_mask2
strided_slicen
MatMulMatMulmul:z:0strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
ReadVariableOp_2ReadVariableOpreadvariableop_1_resource*
_output_shapes
:	2Â*
dtype02
ReadVariableOp_2
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_1/stack
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2
strided_slice_1/stack_1
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2
strided_slice_1StridedSliceReadVariableOp_2:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2*

begin_mask*
end_mask2
strided_slice_1v
MatMul_1MatMul	mul_1:z:0strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

MatMul_1
ReadVariableOp_3ReadVariableOpreadvariableop_1_resource*
_output_shapes
:	2Â*
dtype02
ReadVariableOp_3
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2
strided_slice_2/stack
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_2/stack_1
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2
strided_slice_2StridedSliceReadVariableOp_3:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2*

begin_mask*
end_mask2
strided_slice_2v
MatMul_2MatMul	mul_2:z:0strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

MatMul_2x
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack}
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2í
strided_slice_3StridedSliceunstack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes	
:*

begin_mask2
strided_slice_3|
BiasAddBiasAddMatMul:product:0strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddy
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_4/stack}
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:¬2
strided_slice_4/stack_1|
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_4/stack_2Û
strided_slice_4StridedSliceunstack:output:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes	
:2
strided_slice_4
	BiasAdd_1BiasAddMatMul_1:product:0strided_slice_4:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	BiasAdd_1y
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:¬2
strided_slice_5/stack|
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_5/stack_1|
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_5/stack_2ë
strided_slice_5StridedSliceunstack:output:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes	
:*
end_mask2
strided_slice_5
	BiasAdd_2BiasAddMatMul_2:product:0strided_slice_5:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	BiasAdd_2f
mul_3Mulstatesones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_3f
mul_4Mulstatesones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_4f
mul_5Mulstatesones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_5
ReadVariableOp_4ReadVariableOpreadvariableop_4_resource* 
_output_shapes
:
Â*
dtype02
ReadVariableOp_4
strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_6/stack
strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_6/stack_1
strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_6/stack_2
strided_slice_6StridedSliceReadVariableOp_4:value:0strided_slice_6/stack:output:0 strided_slice_6/stack_1:output:0 strided_slice_6/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2
strided_slice_6v
MatMul_3MatMul	mul_3:z:0strided_slice_6:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

MatMul_3
ReadVariableOp_5ReadVariableOpreadvariableop_4_resource* 
_output_shapes
:
Â*
dtype02
ReadVariableOp_5
strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_7/stack
strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2
strided_slice_7/stack_1
strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_7/stack_2
strided_slice_7StridedSliceReadVariableOp_5:value:0strided_slice_7/stack:output:0 strided_slice_7/stack_1:output:0 strided_slice_7/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2
strided_slice_7v
MatMul_4MatMul	mul_4:z:0strided_slice_7:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

MatMul_4x
strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_8/stack}
strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_8/stack_1|
strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_8/stack_2í
strided_slice_8StridedSliceunstack:output:1strided_slice_8/stack:output:0 strided_slice_8/stack_1:output:0 strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes	
:*

begin_mask2
strided_slice_8
	BiasAdd_3BiasAddMatMul_3:product:0strided_slice_8:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	BiasAdd_3y
strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_9/stack}
strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:¬2
strided_slice_9/stack_1|
strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_9/stack_2Û
strided_slice_9StridedSliceunstack:output:1strided_slice_9/stack:output:0 strided_slice_9/stack_1:output:0 strided_slice_9/stack_2:output:0*
Index0*
T0*
_output_shapes	
:2
strided_slice_9
	BiasAdd_4BiasAddMatMul_4:product:0strided_slice_9:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	BiasAdd_4l
addAddV2BiasAdd:output:0BiasAdd_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
addY
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Sigmoidr
add_1AddV2BiasAdd_1:output:0BiasAdd_4:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add_1_
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_1
ReadVariableOp_6ReadVariableOpreadvariableop_4_resource* 
_output_shapes
:
Â*
dtype02
ReadVariableOp_6
strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2
strided_slice_10/stack
strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_10/stack_1
strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_10/stack_2
strided_slice_10StridedSliceReadVariableOp_6:value:0strided_slice_10/stack:output:0!strided_slice_10/stack_1:output:0!strided_slice_10/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2
strided_slice_10w
MatMul_5MatMul	mul_5:z:0strided_slice_10:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

MatMul_5{
strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB:¬2
strided_slice_11/stack~
strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_11/stack_1~
strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_11/stack_2ð
strided_slice_11StridedSliceunstack:output:1strided_slice_11/stack:output:0!strided_slice_11/stack_1:output:0!strided_slice_11/stack_2:output:0*
Index0*
T0*
_output_shapes	
:*
end_mask2
strided_slice_11
	BiasAdd_5BiasAddMatMul_5:product:0strided_slice_11:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	BiasAdd_5k
mul_6MulSigmoid_1:y:0BiasAdd_5:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_6i
add_2AddV2BiasAdd_2:output:0	mul_6:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add_2R
TanhTanh	add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Tanh]
mul_7MulSigmoid:y:0states*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_7S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
sub/xa
subSubsub/x:output:0Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sub[
mul_8Mulsub:z:0Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_8`
add_3AddV2	mul_7:z:0	mul_8:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add_3e
IdentityIdentity	add_3:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityi

Identity_1Identity	add_3:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1Ñ
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^ReadVariableOp_4^ReadVariableOp_5^ReadVariableOp_6*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ: : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32$
ReadVariableOp_4ReadVariableOp_42$
ReadVariableOp_5ReadVariableOp_52$
ReadVariableOp_6ReadVariableOp_6:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates
¬½
á
@__inference_gru_1_layer_call_and_return_conditional_losses_39889

inputs5
"gru_cell_1_readvariableop_resource:	Â7
$gru_cell_1_readvariableop_1_resource:	2Â8
$gru_cell_1_readvariableop_4_resource:
Â
identity¢gru_cell_1/ReadVariableOp¢gru_cell_1/ReadVariableOp_1¢gru_cell_1/ReadVariableOp_2¢gru_cell_1/ReadVariableOp_3¢gru_cell_1/ReadVariableOp_4¢gru_cell_1/ReadVariableOp_5¢gru_cell_1/ReadVariableOp_6¢whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:2ÿÿÿÿÿÿÿÿÿ22
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask2
strided_slice_2
gru_cell_1/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
gru_cell_1/ones_like/Shape}
gru_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_cell_1/ones_like/Const°
gru_cell_1/ones_likeFill#gru_cell_1/ones_like/Shape:output:0#gru_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
gru_cell_1/ones_likez
gru_cell_1/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
gru_cell_1/ones_like_1/Shape
gru_cell_1/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_cell_1/ones_like_1/Const¹
gru_cell_1/ones_like_1Fill%gru_cell_1/ones_like_1/Shape:output:0%gru_cell_1/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/ones_like_1
gru_cell_1/ReadVariableOpReadVariableOp"gru_cell_1_readvariableop_resource*
_output_shapes
:	Â*
dtype02
gru_cell_1/ReadVariableOp
gru_cell_1/unstackUnpack!gru_cell_1/ReadVariableOp:value:0*
T0*"
_output_shapes
:Â:Â*	
num2
gru_cell_1/unstack
gru_cell_1/mulMulstrided_slice_2:output:0gru_cell_1/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
gru_cell_1/mul
gru_cell_1/mul_1Mulstrided_slice_2:output:0gru_cell_1/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
gru_cell_1/mul_1
gru_cell_1/mul_2Mulstrided_slice_2:output:0gru_cell_1/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
gru_cell_1/mul_2 
gru_cell_1/ReadVariableOp_1ReadVariableOp$gru_cell_1_readvariableop_1_resource*
_output_shapes
:	2Â*
dtype02
gru_cell_1/ReadVariableOp_1
gru_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2 
gru_cell_1/strided_slice/stack
 gru_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2"
 gru_cell_1/strided_slice/stack_1
 gru_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_cell_1/strided_slice/stack_2Á
gru_cell_1/strided_sliceStridedSlice#gru_cell_1/ReadVariableOp_1:value:0'gru_cell_1/strided_slice/stack:output:0)gru_cell_1/strided_slice/stack_1:output:0)gru_cell_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2*

begin_mask*
end_mask2
gru_cell_1/strided_slice
gru_cell_1/MatMulMatMulgru_cell_1/mul:z:0!gru_cell_1/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/MatMul 
gru_cell_1/ReadVariableOp_2ReadVariableOp$gru_cell_1_readvariableop_1_resource*
_output_shapes
:	2Â*
dtype02
gru_cell_1/ReadVariableOp_2
 gru_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2"
 gru_cell_1/strided_slice_1/stack
"gru_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2$
"gru_cell_1/strided_slice_1/stack_1
"gru_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"gru_cell_1/strided_slice_1/stack_2Ë
gru_cell_1/strided_slice_1StridedSlice#gru_cell_1/ReadVariableOp_2:value:0)gru_cell_1/strided_slice_1/stack:output:0+gru_cell_1/strided_slice_1/stack_1:output:0+gru_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2*

begin_mask*
end_mask2
gru_cell_1/strided_slice_1¢
gru_cell_1/MatMul_1MatMulgru_cell_1/mul_1:z:0#gru_cell_1/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/MatMul_1 
gru_cell_1/ReadVariableOp_3ReadVariableOp$gru_cell_1_readvariableop_1_resource*
_output_shapes
:	2Â*
dtype02
gru_cell_1/ReadVariableOp_3
 gru_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2"
 gru_cell_1/strided_slice_2/stack
"gru_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"gru_cell_1/strided_slice_2/stack_1
"gru_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"gru_cell_1/strided_slice_2/stack_2Ë
gru_cell_1/strided_slice_2StridedSlice#gru_cell_1/ReadVariableOp_3:value:0)gru_cell_1/strided_slice_2/stack:output:0+gru_cell_1/strided_slice_2/stack_1:output:0+gru_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2*

begin_mask*
end_mask2
gru_cell_1/strided_slice_2¢
gru_cell_1/MatMul_2MatMulgru_cell_1/mul_2:z:0#gru_cell_1/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/MatMul_2
 gru_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 gru_cell_1/strided_slice_3/stack
"gru_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"gru_cell_1/strided_slice_3/stack_1
"gru_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"gru_cell_1/strided_slice_3/stack_2¯
gru_cell_1/strided_slice_3StridedSlicegru_cell_1/unstack:output:0)gru_cell_1/strided_slice_3/stack:output:0+gru_cell_1/strided_slice_3/stack_1:output:0+gru_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes	
:*

begin_mask2
gru_cell_1/strided_slice_3¨
gru_cell_1/BiasAddBiasAddgru_cell_1/MatMul:product:0#gru_cell_1/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/BiasAdd
 gru_cell_1/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:2"
 gru_cell_1/strided_slice_4/stack
"gru_cell_1/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:¬2$
"gru_cell_1/strided_slice_4/stack_1
"gru_cell_1/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"gru_cell_1/strided_slice_4/stack_2
gru_cell_1/strided_slice_4StridedSlicegru_cell_1/unstack:output:0)gru_cell_1/strided_slice_4/stack:output:0+gru_cell_1/strided_slice_4/stack_1:output:0+gru_cell_1/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes	
:2
gru_cell_1/strided_slice_4®
gru_cell_1/BiasAdd_1BiasAddgru_cell_1/MatMul_1:product:0#gru_cell_1/strided_slice_4:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/BiasAdd_1
 gru_cell_1/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:¬2"
 gru_cell_1/strided_slice_5/stack
"gru_cell_1/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2$
"gru_cell_1/strided_slice_5/stack_1
"gru_cell_1/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"gru_cell_1/strided_slice_5/stack_2­
gru_cell_1/strided_slice_5StridedSlicegru_cell_1/unstack:output:0)gru_cell_1/strided_slice_5/stack:output:0+gru_cell_1/strided_slice_5/stack_1:output:0+gru_cell_1/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes	
:*
end_mask2
gru_cell_1/strided_slice_5®
gru_cell_1/BiasAdd_2BiasAddgru_cell_1/MatMul_2:product:0#gru_cell_1/strided_slice_5:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/BiasAdd_2
gru_cell_1/mul_3Mulzeros:output:0gru_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/mul_3
gru_cell_1/mul_4Mulzeros:output:0gru_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/mul_4
gru_cell_1/mul_5Mulzeros:output:0gru_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/mul_5¡
gru_cell_1/ReadVariableOp_4ReadVariableOp$gru_cell_1_readvariableop_4_resource* 
_output_shapes
:
Â*
dtype02
gru_cell_1/ReadVariableOp_4
 gru_cell_1/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 gru_cell_1/strided_slice_6/stack
"gru_cell_1/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2$
"gru_cell_1/strided_slice_6/stack_1
"gru_cell_1/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"gru_cell_1/strided_slice_6/stack_2Ì
gru_cell_1/strided_slice_6StridedSlice#gru_cell_1/ReadVariableOp_4:value:0)gru_cell_1/strided_slice_6/stack:output:0+gru_cell_1/strided_slice_6/stack_1:output:0+gru_cell_1/strided_slice_6/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2
gru_cell_1/strided_slice_6¢
gru_cell_1/MatMul_3MatMulgru_cell_1/mul_3:z:0#gru_cell_1/strided_slice_6:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/MatMul_3¡
gru_cell_1/ReadVariableOp_5ReadVariableOp$gru_cell_1_readvariableop_4_resource* 
_output_shapes
:
Â*
dtype02
gru_cell_1/ReadVariableOp_5
 gru_cell_1/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"       2"
 gru_cell_1/strided_slice_7/stack
"gru_cell_1/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2$
"gru_cell_1/strided_slice_7/stack_1
"gru_cell_1/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"gru_cell_1/strided_slice_7/stack_2Ì
gru_cell_1/strided_slice_7StridedSlice#gru_cell_1/ReadVariableOp_5:value:0)gru_cell_1/strided_slice_7/stack:output:0+gru_cell_1/strided_slice_7/stack_1:output:0+gru_cell_1/strided_slice_7/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2
gru_cell_1/strided_slice_7¢
gru_cell_1/MatMul_4MatMulgru_cell_1/mul_4:z:0#gru_cell_1/strided_slice_7:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/MatMul_4
 gru_cell_1/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 gru_cell_1/strided_slice_8/stack
"gru_cell_1/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"gru_cell_1/strided_slice_8/stack_1
"gru_cell_1/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"gru_cell_1/strided_slice_8/stack_2¯
gru_cell_1/strided_slice_8StridedSlicegru_cell_1/unstack:output:1)gru_cell_1/strided_slice_8/stack:output:0+gru_cell_1/strided_slice_8/stack_1:output:0+gru_cell_1/strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes	
:*

begin_mask2
gru_cell_1/strided_slice_8®
gru_cell_1/BiasAdd_3BiasAddgru_cell_1/MatMul_3:product:0#gru_cell_1/strided_slice_8:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/BiasAdd_3
 gru_cell_1/strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB:2"
 gru_cell_1/strided_slice_9/stack
"gru_cell_1/strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:¬2$
"gru_cell_1/strided_slice_9/stack_1
"gru_cell_1/strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"gru_cell_1/strided_slice_9/stack_2
gru_cell_1/strided_slice_9StridedSlicegru_cell_1/unstack:output:1)gru_cell_1/strided_slice_9/stack:output:0+gru_cell_1/strided_slice_9/stack_1:output:0+gru_cell_1/strided_slice_9/stack_2:output:0*
Index0*
T0*
_output_shapes	
:2
gru_cell_1/strided_slice_9®
gru_cell_1/BiasAdd_4BiasAddgru_cell_1/MatMul_4:product:0#gru_cell_1/strided_slice_9:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/BiasAdd_4
gru_cell_1/addAddV2gru_cell_1/BiasAdd:output:0gru_cell_1/BiasAdd_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/addz
gru_cell_1/SigmoidSigmoidgru_cell_1/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/Sigmoid
gru_cell_1/add_1AddV2gru_cell_1/BiasAdd_1:output:0gru_cell_1/BiasAdd_4:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/add_1
gru_cell_1/Sigmoid_1Sigmoidgru_cell_1/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/Sigmoid_1¡
gru_cell_1/ReadVariableOp_6ReadVariableOp$gru_cell_1_readvariableop_4_resource* 
_output_shapes
:
Â*
dtype02
gru_cell_1/ReadVariableOp_6
!gru_cell_1/strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2#
!gru_cell_1/strided_slice_10/stack
#gru_cell_1/strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#gru_cell_1/strided_slice_10/stack_1
#gru_cell_1/strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#gru_cell_1/strided_slice_10/stack_2Ñ
gru_cell_1/strided_slice_10StridedSlice#gru_cell_1/ReadVariableOp_6:value:0*gru_cell_1/strided_slice_10/stack:output:0,gru_cell_1/strided_slice_10/stack_1:output:0,gru_cell_1/strided_slice_10/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2
gru_cell_1/strided_slice_10£
gru_cell_1/MatMul_5MatMulgru_cell_1/mul_5:z:0$gru_cell_1/strided_slice_10:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/MatMul_5
!gru_cell_1/strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB:¬2#
!gru_cell_1/strided_slice_11/stack
#gru_cell_1/strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2%
#gru_cell_1/strided_slice_11/stack_1
#gru_cell_1/strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#gru_cell_1/strided_slice_11/stack_2²
gru_cell_1/strided_slice_11StridedSlicegru_cell_1/unstack:output:1*gru_cell_1/strided_slice_11/stack:output:0,gru_cell_1/strided_slice_11/stack_1:output:0,gru_cell_1/strided_slice_11/stack_2:output:0*
Index0*
T0*
_output_shapes	
:*
end_mask2
gru_cell_1/strided_slice_11¯
gru_cell_1/BiasAdd_5BiasAddgru_cell_1/MatMul_5:product:0$gru_cell_1/strided_slice_11:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/BiasAdd_5
gru_cell_1/mul_6Mulgru_cell_1/Sigmoid_1:y:0gru_cell_1/BiasAdd_5:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/mul_6
gru_cell_1/add_2AddV2gru_cell_1/BiasAdd_2:output:0gru_cell_1/mul_6:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/add_2s
gru_cell_1/TanhTanhgru_cell_1/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/Tanh
gru_cell_1/mul_7Mulgru_cell_1/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/mul_7i
gru_cell_1/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_cell_1/sub/x
gru_cell_1/subSubgru_cell_1/sub/x:output:0gru_cell_1/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/sub
gru_cell_1/mul_8Mulgru_cell_1/sub:z:0gru_cell_1/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/mul_8
gru_cell_1/add_3AddV2gru_cell_1/mul_7:z:0gru_cell_1/mul_8:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/add_3
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter¸
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0"gru_cell_1_readvariableop_resource$gru_cell_1_readvariableop_1_resource$gru_cell_1_readvariableop_4_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_39737*
condR
while_cond_39736*9
output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeé
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:2ÿÿÿÿÿÿÿÿÿ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¦
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimet
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity¦
NoOpNoOp^gru_cell_1/ReadVariableOp^gru_cell_1/ReadVariableOp_1^gru_cell_1/ReadVariableOp_2^gru_cell_1/ReadVariableOp_3^gru_cell_1/ReadVariableOp_4^gru_cell_1/ReadVariableOp_5^gru_cell_1/ReadVariableOp_6^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ22: : : 26
gru_cell_1/ReadVariableOpgru_cell_1/ReadVariableOp2:
gru_cell_1/ReadVariableOp_1gru_cell_1/ReadVariableOp_12:
gru_cell_1/ReadVariableOp_2gru_cell_1/ReadVariableOp_22:
gru_cell_1/ReadVariableOp_3gru_cell_1/ReadVariableOp_32:
gru_cell_1/ReadVariableOp_4gru_cell_1/ReadVariableOp_42:
gru_cell_1/ReadVariableOp_5gru_cell_1/ReadVariableOp_52:
gru_cell_1/ReadVariableOp_6gru_cell_1/ReadVariableOp_62
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
 
_user_specified_nameinputs
¼å
ª
G__inference_sequential_2_layer_call_and_return_conditional_losses_40812

inputs4
"embedding_1_embedding_lookup_40520:2;
(gru_1_gru_cell_1_readvariableop_resource:	Â=
*gru_1_gru_cell_1_readvariableop_1_resource:	2Â>
*gru_1_gru_cell_1_readvariableop_4_resource:
Â7
$dense_matmul_readvariableop_resource:	3
%dense_biasadd_readvariableop_resource:
identity¢dense/BiasAdd/ReadVariableOp¢dense/MatMul/ReadVariableOp¢embedding_1/embedding_lookup¢gru_1/gru_cell_1/ReadVariableOp¢!gru_1/gru_cell_1/ReadVariableOp_1¢!gru_1/gru_cell_1/ReadVariableOp_2¢!gru_1/gru_cell_1/ReadVariableOp_3¢!gru_1/gru_cell_1/ReadVariableOp_4¢!gru_1/gru_cell_1/ReadVariableOp_5¢!gru_1/gru_cell_1/ReadVariableOp_6¢gru_1/whileu
embedding_1/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
embedding_1/Cast·
embedding_1/embedding_lookupResourceGather"embedding_1_embedding_lookup_40520embedding_1/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*5
_class+
)'loc:@embedding_1/embedding_lookup/40520*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*
dtype02
embedding_1/embedding_lookup
%embedding_1/embedding_lookup/IdentityIdentity%embedding_1/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*5
_class+
)'loc:@embedding_1/embedding_lookup/40520*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ222'
%embedding_1/embedding_lookup/IdentityÄ
'embedding_1/embedding_lookup/Identity_1Identity.embedding_1/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ222)
'embedding_1/embedding_lookup/Identity_1z
gru_1/ShapeShape0embedding_1/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:2
gru_1/Shape
gru_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_1/strided_slice/stack
gru_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru_1/strided_slice/stack_1
gru_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_1/strided_slice/stack_2
gru_1/strided_sliceStridedSlicegru_1/Shape:output:0"gru_1/strided_slice/stack:output:0$gru_1/strided_slice/stack_1:output:0$gru_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
gru_1/strided_slicei
gru_1/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
gru_1/zeros/mul/y
gru_1/zeros/mulMulgru_1/strided_slice:output:0gru_1/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
gru_1/zeros/mulk
gru_1/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
gru_1/zeros/Less/y
gru_1/zeros/LessLessgru_1/zeros/mul:z:0gru_1/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
gru_1/zeros/Lesso
gru_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :2
gru_1/zeros/packed/1
gru_1/zeros/packedPackgru_1/strided_slice:output:0gru_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
gru_1/zeros/packedk
gru_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
gru_1/zeros/Const
gru_1/zerosFillgru_1/zeros/packed:output:0gru_1/zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_1/zeros
gru_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gru_1/transpose/perm¶
gru_1/transpose	Transpose0embedding_1/embedding_lookup/Identity_1:output:0gru_1/transpose/perm:output:0*
T0*+
_output_shapes
:2ÿÿÿÿÿÿÿÿÿ22
gru_1/transposea
gru_1/Shape_1Shapegru_1/transpose:y:0*
T0*
_output_shapes
:2
gru_1/Shape_1
gru_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_1/strided_slice_1/stack
gru_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru_1/strided_slice_1/stack_1
gru_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_1/strided_slice_1/stack_2
gru_1/strided_slice_1StridedSlicegru_1/Shape_1:output:0$gru_1/strided_slice_1/stack:output:0&gru_1/strided_slice_1/stack_1:output:0&gru_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
gru_1/strided_slice_1
!gru_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2#
!gru_1/TensorArrayV2/element_shapeÊ
gru_1/TensorArrayV2TensorListReserve*gru_1/TensorArrayV2/element_shape:output:0gru_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
gru_1/TensorArrayV2Ë
;gru_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   2=
;gru_1/TensorArrayUnstack/TensorListFromTensor/element_shape
-gru_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorgru_1/transpose:y:0Dgru_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02/
-gru_1/TensorArrayUnstack/TensorListFromTensor
gru_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_1/strided_slice_2/stack
gru_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru_1/strided_slice_2/stack_1
gru_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_1/strided_slice_2/stack_2 
gru_1/strided_slice_2StridedSlicegru_1/transpose:y:0$gru_1/strided_slice_2/stack:output:0&gru_1/strided_slice_2/stack_1:output:0&gru_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask2
gru_1/strided_slice_2
 gru_1/gru_cell_1/ones_like/ShapeShapegru_1/strided_slice_2:output:0*
T0*
_output_shapes
:2"
 gru_1/gru_cell_1/ones_like/Shape
 gru_1/gru_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2"
 gru_1/gru_cell_1/ones_like/ConstÈ
gru_1/gru_cell_1/ones_likeFill)gru_1/gru_cell_1/ones_like/Shape:output:0)gru_1/gru_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
gru_1/gru_cell_1/ones_like
"gru_1/gru_cell_1/ones_like_1/ShapeShapegru_1/zeros:output:0*
T0*
_output_shapes
:2$
"gru_1/gru_cell_1/ones_like_1/Shape
"gru_1/gru_cell_1/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2$
"gru_1/gru_cell_1/ones_like_1/ConstÑ
gru_1/gru_cell_1/ones_like_1Fill+gru_1/gru_cell_1/ones_like_1/Shape:output:0+gru_1/gru_cell_1/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_1/gru_cell_1/ones_like_1¬
gru_1/gru_cell_1/ReadVariableOpReadVariableOp(gru_1_gru_cell_1_readvariableop_resource*
_output_shapes
:	Â*
dtype02!
gru_1/gru_cell_1/ReadVariableOp
gru_1/gru_cell_1/unstackUnpack'gru_1/gru_cell_1/ReadVariableOp:value:0*
T0*"
_output_shapes
:Â:Â*	
num2
gru_1/gru_cell_1/unstackª
gru_1/gru_cell_1/mulMulgru_1/strided_slice_2:output:0#gru_1/gru_cell_1/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
gru_1/gru_cell_1/mul®
gru_1/gru_cell_1/mul_1Mulgru_1/strided_slice_2:output:0#gru_1/gru_cell_1/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
gru_1/gru_cell_1/mul_1®
gru_1/gru_cell_1/mul_2Mulgru_1/strided_slice_2:output:0#gru_1/gru_cell_1/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
gru_1/gru_cell_1/mul_2²
!gru_1/gru_cell_1/ReadVariableOp_1ReadVariableOp*gru_1_gru_cell_1_readvariableop_1_resource*
_output_shapes
:	2Â*
dtype02#
!gru_1/gru_cell_1/ReadVariableOp_1
$gru_1/gru_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2&
$gru_1/gru_cell_1/strided_slice/stack¡
&gru_1/gru_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2(
&gru_1/gru_cell_1/strided_slice/stack_1¡
&gru_1/gru_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&gru_1/gru_cell_1/strided_slice/stack_2å
gru_1/gru_cell_1/strided_sliceStridedSlice)gru_1/gru_cell_1/ReadVariableOp_1:value:0-gru_1/gru_cell_1/strided_slice/stack:output:0/gru_1/gru_cell_1/strided_slice/stack_1:output:0/gru_1/gru_cell_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2*

begin_mask*
end_mask2 
gru_1/gru_cell_1/strided_slice²
gru_1/gru_cell_1/MatMulMatMulgru_1/gru_cell_1/mul:z:0'gru_1/gru_cell_1/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_1/gru_cell_1/MatMul²
!gru_1/gru_cell_1/ReadVariableOp_2ReadVariableOp*gru_1_gru_cell_1_readvariableop_1_resource*
_output_shapes
:	2Â*
dtype02#
!gru_1/gru_cell_1/ReadVariableOp_2¡
&gru_1/gru_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2(
&gru_1/gru_cell_1/strided_slice_1/stack¥
(gru_1/gru_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2*
(gru_1/gru_cell_1/strided_slice_1/stack_1¥
(gru_1/gru_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(gru_1/gru_cell_1/strided_slice_1/stack_2ï
 gru_1/gru_cell_1/strided_slice_1StridedSlice)gru_1/gru_cell_1/ReadVariableOp_2:value:0/gru_1/gru_cell_1/strided_slice_1/stack:output:01gru_1/gru_cell_1/strided_slice_1/stack_1:output:01gru_1/gru_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2*

begin_mask*
end_mask2"
 gru_1/gru_cell_1/strided_slice_1º
gru_1/gru_cell_1/MatMul_1MatMulgru_1/gru_cell_1/mul_1:z:0)gru_1/gru_cell_1/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_1/gru_cell_1/MatMul_1²
!gru_1/gru_cell_1/ReadVariableOp_3ReadVariableOp*gru_1_gru_cell_1_readvariableop_1_resource*
_output_shapes
:	2Â*
dtype02#
!gru_1/gru_cell_1/ReadVariableOp_3¡
&gru_1/gru_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2(
&gru_1/gru_cell_1/strided_slice_2/stack¥
(gru_1/gru_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(gru_1/gru_cell_1/strided_slice_2/stack_1¥
(gru_1/gru_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(gru_1/gru_cell_1/strided_slice_2/stack_2ï
 gru_1/gru_cell_1/strided_slice_2StridedSlice)gru_1/gru_cell_1/ReadVariableOp_3:value:0/gru_1/gru_cell_1/strided_slice_2/stack:output:01gru_1/gru_cell_1/strided_slice_2/stack_1:output:01gru_1/gru_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2*

begin_mask*
end_mask2"
 gru_1/gru_cell_1/strided_slice_2º
gru_1/gru_cell_1/MatMul_2MatMulgru_1/gru_cell_1/mul_2:z:0)gru_1/gru_cell_1/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_1/gru_cell_1/MatMul_2
&gru_1/gru_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&gru_1/gru_cell_1/strided_slice_3/stack
(gru_1/gru_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(gru_1/gru_cell_1/strided_slice_3/stack_1
(gru_1/gru_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(gru_1/gru_cell_1/strided_slice_3/stack_2Ó
 gru_1/gru_cell_1/strided_slice_3StridedSlice!gru_1/gru_cell_1/unstack:output:0/gru_1/gru_cell_1/strided_slice_3/stack:output:01gru_1/gru_cell_1/strided_slice_3/stack_1:output:01gru_1/gru_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes	
:*

begin_mask2"
 gru_1/gru_cell_1/strided_slice_3À
gru_1/gru_cell_1/BiasAddBiasAdd!gru_1/gru_cell_1/MatMul:product:0)gru_1/gru_cell_1/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_1/gru_cell_1/BiasAdd
&gru_1/gru_cell_1/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:2(
&gru_1/gru_cell_1/strided_slice_4/stack
(gru_1/gru_cell_1/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:¬2*
(gru_1/gru_cell_1/strided_slice_4/stack_1
(gru_1/gru_cell_1/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(gru_1/gru_cell_1/strided_slice_4/stack_2Á
 gru_1/gru_cell_1/strided_slice_4StridedSlice!gru_1/gru_cell_1/unstack:output:0/gru_1/gru_cell_1/strided_slice_4/stack:output:01gru_1/gru_cell_1/strided_slice_4/stack_1:output:01gru_1/gru_cell_1/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes	
:2"
 gru_1/gru_cell_1/strided_slice_4Æ
gru_1/gru_cell_1/BiasAdd_1BiasAdd#gru_1/gru_cell_1/MatMul_1:product:0)gru_1/gru_cell_1/strided_slice_4:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_1/gru_cell_1/BiasAdd_1
&gru_1/gru_cell_1/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:¬2(
&gru_1/gru_cell_1/strided_slice_5/stack
(gru_1/gru_cell_1/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2*
(gru_1/gru_cell_1/strided_slice_5/stack_1
(gru_1/gru_cell_1/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(gru_1/gru_cell_1/strided_slice_5/stack_2Ñ
 gru_1/gru_cell_1/strided_slice_5StridedSlice!gru_1/gru_cell_1/unstack:output:0/gru_1/gru_cell_1/strided_slice_5/stack:output:01gru_1/gru_cell_1/strided_slice_5/stack_1:output:01gru_1/gru_cell_1/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes	
:*
end_mask2"
 gru_1/gru_cell_1/strided_slice_5Æ
gru_1/gru_cell_1/BiasAdd_2BiasAdd#gru_1/gru_cell_1/MatMul_2:product:0)gru_1/gru_cell_1/strided_slice_5:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_1/gru_cell_1/BiasAdd_2§
gru_1/gru_cell_1/mul_3Mulgru_1/zeros:output:0%gru_1/gru_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_1/gru_cell_1/mul_3§
gru_1/gru_cell_1/mul_4Mulgru_1/zeros:output:0%gru_1/gru_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_1/gru_cell_1/mul_4§
gru_1/gru_cell_1/mul_5Mulgru_1/zeros:output:0%gru_1/gru_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_1/gru_cell_1/mul_5³
!gru_1/gru_cell_1/ReadVariableOp_4ReadVariableOp*gru_1_gru_cell_1_readvariableop_4_resource* 
_output_shapes
:
Â*
dtype02#
!gru_1/gru_cell_1/ReadVariableOp_4¡
&gru_1/gru_cell_1/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&gru_1/gru_cell_1/strided_slice_6/stack¥
(gru_1/gru_cell_1/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2*
(gru_1/gru_cell_1/strided_slice_6/stack_1¥
(gru_1/gru_cell_1/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(gru_1/gru_cell_1/strided_slice_6/stack_2ð
 gru_1/gru_cell_1/strided_slice_6StridedSlice)gru_1/gru_cell_1/ReadVariableOp_4:value:0/gru_1/gru_cell_1/strided_slice_6/stack:output:01gru_1/gru_cell_1/strided_slice_6/stack_1:output:01gru_1/gru_cell_1/strided_slice_6/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2"
 gru_1/gru_cell_1/strided_slice_6º
gru_1/gru_cell_1/MatMul_3MatMulgru_1/gru_cell_1/mul_3:z:0)gru_1/gru_cell_1/strided_slice_6:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_1/gru_cell_1/MatMul_3³
!gru_1/gru_cell_1/ReadVariableOp_5ReadVariableOp*gru_1_gru_cell_1_readvariableop_4_resource* 
_output_shapes
:
Â*
dtype02#
!gru_1/gru_cell_1/ReadVariableOp_5¡
&gru_1/gru_cell_1/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"       2(
&gru_1/gru_cell_1/strided_slice_7/stack¥
(gru_1/gru_cell_1/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2*
(gru_1/gru_cell_1/strided_slice_7/stack_1¥
(gru_1/gru_cell_1/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(gru_1/gru_cell_1/strided_slice_7/stack_2ð
 gru_1/gru_cell_1/strided_slice_7StridedSlice)gru_1/gru_cell_1/ReadVariableOp_5:value:0/gru_1/gru_cell_1/strided_slice_7/stack:output:01gru_1/gru_cell_1/strided_slice_7/stack_1:output:01gru_1/gru_cell_1/strided_slice_7/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2"
 gru_1/gru_cell_1/strided_slice_7º
gru_1/gru_cell_1/MatMul_4MatMulgru_1/gru_cell_1/mul_4:z:0)gru_1/gru_cell_1/strided_slice_7:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_1/gru_cell_1/MatMul_4
&gru_1/gru_cell_1/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&gru_1/gru_cell_1/strided_slice_8/stack
(gru_1/gru_cell_1/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(gru_1/gru_cell_1/strided_slice_8/stack_1
(gru_1/gru_cell_1/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(gru_1/gru_cell_1/strided_slice_8/stack_2Ó
 gru_1/gru_cell_1/strided_slice_8StridedSlice!gru_1/gru_cell_1/unstack:output:1/gru_1/gru_cell_1/strided_slice_8/stack:output:01gru_1/gru_cell_1/strided_slice_8/stack_1:output:01gru_1/gru_cell_1/strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes	
:*

begin_mask2"
 gru_1/gru_cell_1/strided_slice_8Æ
gru_1/gru_cell_1/BiasAdd_3BiasAdd#gru_1/gru_cell_1/MatMul_3:product:0)gru_1/gru_cell_1/strided_slice_8:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_1/gru_cell_1/BiasAdd_3
&gru_1/gru_cell_1/strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB:2(
&gru_1/gru_cell_1/strided_slice_9/stack
(gru_1/gru_cell_1/strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:¬2*
(gru_1/gru_cell_1/strided_slice_9/stack_1
(gru_1/gru_cell_1/strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(gru_1/gru_cell_1/strided_slice_9/stack_2Á
 gru_1/gru_cell_1/strided_slice_9StridedSlice!gru_1/gru_cell_1/unstack:output:1/gru_1/gru_cell_1/strided_slice_9/stack:output:01gru_1/gru_cell_1/strided_slice_9/stack_1:output:01gru_1/gru_cell_1/strided_slice_9/stack_2:output:0*
Index0*
T0*
_output_shapes	
:2"
 gru_1/gru_cell_1/strided_slice_9Æ
gru_1/gru_cell_1/BiasAdd_4BiasAdd#gru_1/gru_cell_1/MatMul_4:product:0)gru_1/gru_cell_1/strided_slice_9:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_1/gru_cell_1/BiasAdd_4°
gru_1/gru_cell_1/addAddV2!gru_1/gru_cell_1/BiasAdd:output:0#gru_1/gru_cell_1/BiasAdd_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_1/gru_cell_1/add
gru_1/gru_cell_1/SigmoidSigmoidgru_1/gru_cell_1/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_1/gru_cell_1/Sigmoid¶
gru_1/gru_cell_1/add_1AddV2#gru_1/gru_cell_1/BiasAdd_1:output:0#gru_1/gru_cell_1/BiasAdd_4:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_1/gru_cell_1/add_1
gru_1/gru_cell_1/Sigmoid_1Sigmoidgru_1/gru_cell_1/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_1/gru_cell_1/Sigmoid_1³
!gru_1/gru_cell_1/ReadVariableOp_6ReadVariableOp*gru_1_gru_cell_1_readvariableop_4_resource* 
_output_shapes
:
Â*
dtype02#
!gru_1/gru_cell_1/ReadVariableOp_6£
'gru_1/gru_cell_1/strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2)
'gru_1/gru_cell_1/strided_slice_10/stack§
)gru_1/gru_cell_1/strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)gru_1/gru_cell_1/strided_slice_10/stack_1§
)gru_1/gru_cell_1/strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)gru_1/gru_cell_1/strided_slice_10/stack_2õ
!gru_1/gru_cell_1/strided_slice_10StridedSlice)gru_1/gru_cell_1/ReadVariableOp_6:value:00gru_1/gru_cell_1/strided_slice_10/stack:output:02gru_1/gru_cell_1/strided_slice_10/stack_1:output:02gru_1/gru_cell_1/strided_slice_10/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2#
!gru_1/gru_cell_1/strided_slice_10»
gru_1/gru_cell_1/MatMul_5MatMulgru_1/gru_cell_1/mul_5:z:0*gru_1/gru_cell_1/strided_slice_10:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_1/gru_cell_1/MatMul_5
'gru_1/gru_cell_1/strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB:¬2)
'gru_1/gru_cell_1/strided_slice_11/stack 
)gru_1/gru_cell_1/strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2+
)gru_1/gru_cell_1/strided_slice_11/stack_1 
)gru_1/gru_cell_1/strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)gru_1/gru_cell_1/strided_slice_11/stack_2Ö
!gru_1/gru_cell_1/strided_slice_11StridedSlice!gru_1/gru_cell_1/unstack:output:10gru_1/gru_cell_1/strided_slice_11/stack:output:02gru_1/gru_cell_1/strided_slice_11/stack_1:output:02gru_1/gru_cell_1/strided_slice_11/stack_2:output:0*
Index0*
T0*
_output_shapes	
:*
end_mask2#
!gru_1/gru_cell_1/strided_slice_11Ç
gru_1/gru_cell_1/BiasAdd_5BiasAdd#gru_1/gru_cell_1/MatMul_5:product:0*gru_1/gru_cell_1/strided_slice_11:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_1/gru_cell_1/BiasAdd_5¯
gru_1/gru_cell_1/mul_6Mulgru_1/gru_cell_1/Sigmoid_1:y:0#gru_1/gru_cell_1/BiasAdd_5:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_1/gru_cell_1/mul_6­
gru_1/gru_cell_1/add_2AddV2#gru_1/gru_cell_1/BiasAdd_2:output:0gru_1/gru_cell_1/mul_6:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_1/gru_cell_1/add_2
gru_1/gru_cell_1/TanhTanhgru_1/gru_cell_1/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_1/gru_cell_1/Tanh
gru_1/gru_cell_1/mul_7Mulgru_1/gru_cell_1/Sigmoid:y:0gru_1/zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_1/gru_cell_1/mul_7u
gru_1/gru_cell_1/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_1/gru_cell_1/sub/x¥
gru_1/gru_cell_1/subSubgru_1/gru_cell_1/sub/x:output:0gru_1/gru_cell_1/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_1/gru_cell_1/sub
gru_1/gru_cell_1/mul_8Mulgru_1/gru_cell_1/sub:z:0gru_1/gru_cell_1/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_1/gru_cell_1/mul_8¤
gru_1/gru_cell_1/add_3AddV2gru_1/gru_cell_1/mul_7:z:0gru_1/gru_cell_1/mul_8:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_1/gru_cell_1/add_3
#gru_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2%
#gru_1/TensorArrayV2_1/element_shapeÐ
gru_1/TensorArrayV2_1TensorListReserve,gru_1/TensorArrayV2_1/element_shape:output:0gru_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
gru_1/TensorArrayV2_1Z

gru_1/timeConst*
_output_shapes
: *
dtype0*
value	B : 2

gru_1/time
gru_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2 
gru_1/while/maximum_iterationsv
gru_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
gru_1/while/loop_counter
gru_1/whileWhile!gru_1/while/loop_counter:output:0'gru_1/while/maximum_iterations:output:0gru_1/time:output:0gru_1/TensorArrayV2_1:handle:0gru_1/zeros:output:0gru_1/strided_slice_1:output:0=gru_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0(gru_1_gru_cell_1_readvariableop_resource*gru_1_gru_cell_1_readvariableop_1_resource*gru_1_gru_cell_1_readvariableop_4_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *"
bodyR
gru_1_while_body_40653*"
condR
gru_1_while_cond_40652*9
output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
gru_1/whileÁ
6gru_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   28
6gru_1/TensorArrayV2Stack/TensorListStack/element_shape
(gru_1/TensorArrayV2Stack/TensorListStackTensorListStackgru_1/while:output:3?gru_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:2ÿÿÿÿÿÿÿÿÿ*
element_dtype02*
(gru_1/TensorArrayV2Stack/TensorListStack
gru_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
gru_1/strided_slice_3/stack
gru_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
gru_1/strided_slice_3/stack_1
gru_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_1/strided_slice_3/stack_2¿
gru_1/strided_slice_3StridedSlice1gru_1/TensorArrayV2Stack/TensorListStack:tensor:0$gru_1/strided_slice_3/stack:output:0&gru_1/strided_slice_3/stack_1:output:0&gru_1/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
gru_1/strided_slice_3
gru_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gru_1/transpose_1/perm¾
gru_1/transpose_1	Transpose1gru_1/TensorArrayV2Stack/TensorListStack:tensor:0gru_1/transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
gru_1/transpose_1r
gru_1/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
gru_1/runtime 
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02
dense/MatMul/ReadVariableOp
dense/MatMulMatMulgru_1/strided_slice_3:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense/MatMul
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
dense/BiasAdd/ReadVariableOp
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense/BiasAdds
dense/SoftmaxSoftmaxdense/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense/Softmaxr
IdentityIdentitydense/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity²
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^embedding_1/embedding_lookup ^gru_1/gru_cell_1/ReadVariableOp"^gru_1/gru_cell_1/ReadVariableOp_1"^gru_1/gru_cell_1/ReadVariableOp_2"^gru_1/gru_cell_1/ReadVariableOp_3"^gru_1/gru_cell_1/ReadVariableOp_4"^gru_1/gru_cell_1/ReadVariableOp_5"^gru_1/gru_cell_1/ReadVariableOp_6^gru_1/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ2: : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2<
embedding_1/embedding_lookupembedding_1/embedding_lookup2B
gru_1/gru_cell_1/ReadVariableOpgru_1/gru_cell_1/ReadVariableOp2F
!gru_1/gru_cell_1/ReadVariableOp_1!gru_1/gru_cell_1/ReadVariableOp_12F
!gru_1/gru_cell_1/ReadVariableOp_2!gru_1/gru_cell_1/ReadVariableOp_22F
!gru_1/gru_cell_1/ReadVariableOp_3!gru_1/gru_cell_1/ReadVariableOp_32F
!gru_1/gru_cell_1/ReadVariableOp_4!gru_1/gru_cell_1/ReadVariableOp_42F
!gru_1/gru_cell_1/ReadVariableOp_5!gru_1/gru_cell_1/ReadVariableOp_52F
!gru_1/gru_cell_1/ReadVariableOp_6!gru_1/gru_cell_1/ReadVariableOp_62
gru_1/whilegru_1/while:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
¿
¹
%__inference_gru_1_layer_call_fn_41243
inputs_0
unknown:	Â
	unknown_0:	2Â
	unknown_1:
Â
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_gru_1_layer_call_and_return_conditional_losses_393522
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
"
_user_specified_name
inputs/0
«
á
@__inference_gru_1_layer_call_and_return_conditional_losses_42589

inputs5
"gru_cell_1_readvariableop_resource:	Â7
$gru_cell_1_readvariableop_1_resource:	2Â8
$gru_cell_1_readvariableop_4_resource:
Â
identity¢gru_cell_1/ReadVariableOp¢gru_cell_1/ReadVariableOp_1¢gru_cell_1/ReadVariableOp_2¢gru_cell_1/ReadVariableOp_3¢gru_cell_1/ReadVariableOp_4¢gru_cell_1/ReadVariableOp_5¢gru_cell_1/ReadVariableOp_6¢whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:2ÿÿÿÿÿÿÿÿÿ22
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask2
strided_slice_2
gru_cell_1/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
gru_cell_1/ones_like/Shape}
gru_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_cell_1/ones_like/Const°
gru_cell_1/ones_likeFill#gru_cell_1/ones_like/Shape:output:0#gru_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
gru_cell_1/ones_likey
gru_cell_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?2
gru_cell_1/dropout/Const«
gru_cell_1/dropout/MulMulgru_cell_1/ones_like:output:0!gru_cell_1/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
gru_cell_1/dropout/Mul
gru_cell_1/dropout/ShapeShapegru_cell_1/ones_like:output:0*
T0*
_output_shapes
:2
gru_cell_1/dropout/Shapeô
/gru_cell_1/dropout/random_uniform/RandomUniformRandomUniform!gru_cell_1/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2ò21
/gru_cell_1/dropout/random_uniform/RandomUniform
!gru_cell_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2#
!gru_cell_1/dropout/GreaterEqual/yê
gru_cell_1/dropout/GreaterEqualGreaterEqual8gru_cell_1/dropout/random_uniform/RandomUniform:output:0*gru_cell_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22!
gru_cell_1/dropout/GreaterEqual 
gru_cell_1/dropout/CastCast#gru_cell_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
gru_cell_1/dropout/Cast¦
gru_cell_1/dropout/Mul_1Mulgru_cell_1/dropout/Mul:z:0gru_cell_1/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
gru_cell_1/dropout/Mul_1}
gru_cell_1/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?2
gru_cell_1/dropout_1/Const±
gru_cell_1/dropout_1/MulMulgru_cell_1/ones_like:output:0#gru_cell_1/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
gru_cell_1/dropout_1/Mul
gru_cell_1/dropout_1/ShapeShapegru_cell_1/ones_like:output:0*
T0*
_output_shapes
:2
gru_cell_1/dropout_1/Shapeú
1gru_cell_1/dropout_1/random_uniform/RandomUniformRandomUniform#gru_cell_1/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2×¡ÿ23
1gru_cell_1/dropout_1/random_uniform/RandomUniform
#gru_cell_1/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2%
#gru_cell_1/dropout_1/GreaterEqual/yò
!gru_cell_1/dropout_1/GreaterEqualGreaterEqual:gru_cell_1/dropout_1/random_uniform/RandomUniform:output:0,gru_cell_1/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22#
!gru_cell_1/dropout_1/GreaterEqual¦
gru_cell_1/dropout_1/CastCast%gru_cell_1/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
gru_cell_1/dropout_1/Cast®
gru_cell_1/dropout_1/Mul_1Mulgru_cell_1/dropout_1/Mul:z:0gru_cell_1/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
gru_cell_1/dropout_1/Mul_1}
gru_cell_1/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?2
gru_cell_1/dropout_2/Const±
gru_cell_1/dropout_2/MulMulgru_cell_1/ones_like:output:0#gru_cell_1/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
gru_cell_1/dropout_2/Mul
gru_cell_1/dropout_2/ShapeShapegru_cell_1/ones_like:output:0*
T0*
_output_shapes
:2
gru_cell_1/dropout_2/Shapeú
1gru_cell_1/dropout_2/random_uniform/RandomUniformRandomUniform#gru_cell_1/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2ÿ¥§23
1gru_cell_1/dropout_2/random_uniform/RandomUniform
#gru_cell_1/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2%
#gru_cell_1/dropout_2/GreaterEqual/yò
!gru_cell_1/dropout_2/GreaterEqualGreaterEqual:gru_cell_1/dropout_2/random_uniform/RandomUniform:output:0,gru_cell_1/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22#
!gru_cell_1/dropout_2/GreaterEqual¦
gru_cell_1/dropout_2/CastCast%gru_cell_1/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
gru_cell_1/dropout_2/Cast®
gru_cell_1/dropout_2/Mul_1Mulgru_cell_1/dropout_2/Mul:z:0gru_cell_1/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
gru_cell_1/dropout_2/Mul_1z
gru_cell_1/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
gru_cell_1/ones_like_1/Shape
gru_cell_1/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_cell_1/ones_like_1/Const¹
gru_cell_1/ones_like_1Fill%gru_cell_1/ones_like_1/Shape:output:0%gru_cell_1/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/ones_like_1}
gru_cell_1/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?2
gru_cell_1/dropout_3/Const´
gru_cell_1/dropout_3/MulMulgru_cell_1/ones_like_1:output:0#gru_cell_1/dropout_3/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/dropout_3/Mul
gru_cell_1/dropout_3/ShapeShapegru_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:2
gru_cell_1/dropout_3/Shapeú
1gru_cell_1/dropout_3/random_uniform/RandomUniformRandomUniform#gru_cell_1/dropout_3/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
seed±ÿå)*
seed2ç³-23
1gru_cell_1/dropout_3/random_uniform/RandomUniform
#gru_cell_1/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2%
#gru_cell_1/dropout_3/GreaterEqual/yó
!gru_cell_1/dropout_3/GreaterEqualGreaterEqual:gru_cell_1/dropout_3/random_uniform/RandomUniform:output:0,gru_cell_1/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!gru_cell_1/dropout_3/GreaterEqual§
gru_cell_1/dropout_3/CastCast%gru_cell_1/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/dropout_3/Cast¯
gru_cell_1/dropout_3/Mul_1Mulgru_cell_1/dropout_3/Mul:z:0gru_cell_1/dropout_3/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/dropout_3/Mul_1}
gru_cell_1/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?2
gru_cell_1/dropout_4/Const´
gru_cell_1/dropout_4/MulMulgru_cell_1/ones_like_1:output:0#gru_cell_1/dropout_4/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/dropout_4/Mul
gru_cell_1/dropout_4/ShapeShapegru_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:2
gru_cell_1/dropout_4/Shapeú
1gru_cell_1/dropout_4/random_uniform/RandomUniformRandomUniform#gru_cell_1/dropout_4/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
seed±ÿå)*
seed2ÁÈB23
1gru_cell_1/dropout_4/random_uniform/RandomUniform
#gru_cell_1/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2%
#gru_cell_1/dropout_4/GreaterEqual/yó
!gru_cell_1/dropout_4/GreaterEqualGreaterEqual:gru_cell_1/dropout_4/random_uniform/RandomUniform:output:0,gru_cell_1/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!gru_cell_1/dropout_4/GreaterEqual§
gru_cell_1/dropout_4/CastCast%gru_cell_1/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/dropout_4/Cast¯
gru_cell_1/dropout_4/Mul_1Mulgru_cell_1/dropout_4/Mul:z:0gru_cell_1/dropout_4/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/dropout_4/Mul_1}
gru_cell_1/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?2
gru_cell_1/dropout_5/Const´
gru_cell_1/dropout_5/MulMulgru_cell_1/ones_like_1:output:0#gru_cell_1/dropout_5/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/dropout_5/Mul
gru_cell_1/dropout_5/ShapeShapegru_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:2
gru_cell_1/dropout_5/Shapeû
1gru_cell_1/dropout_5/random_uniform/RandomUniformRandomUniform#gru_cell_1/dropout_5/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
seed±ÿå)*
seed2¹î23
1gru_cell_1/dropout_5/random_uniform/RandomUniform
#gru_cell_1/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2%
#gru_cell_1/dropout_5/GreaterEqual/yó
!gru_cell_1/dropout_5/GreaterEqualGreaterEqual:gru_cell_1/dropout_5/random_uniform/RandomUniform:output:0,gru_cell_1/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!gru_cell_1/dropout_5/GreaterEqual§
gru_cell_1/dropout_5/CastCast%gru_cell_1/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/dropout_5/Cast¯
gru_cell_1/dropout_5/Mul_1Mulgru_cell_1/dropout_5/Mul:z:0gru_cell_1/dropout_5/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/dropout_5/Mul_1
gru_cell_1/ReadVariableOpReadVariableOp"gru_cell_1_readvariableop_resource*
_output_shapes
:	Â*
dtype02
gru_cell_1/ReadVariableOp
gru_cell_1/unstackUnpack!gru_cell_1/ReadVariableOp:value:0*
T0*"
_output_shapes
:Â:Â*	
num2
gru_cell_1/unstack
gru_cell_1/mulMulstrided_slice_2:output:0gru_cell_1/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
gru_cell_1/mul
gru_cell_1/mul_1Mulstrided_slice_2:output:0gru_cell_1/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
gru_cell_1/mul_1
gru_cell_1/mul_2Mulstrided_slice_2:output:0gru_cell_1/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
gru_cell_1/mul_2 
gru_cell_1/ReadVariableOp_1ReadVariableOp$gru_cell_1_readvariableop_1_resource*
_output_shapes
:	2Â*
dtype02
gru_cell_1/ReadVariableOp_1
gru_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2 
gru_cell_1/strided_slice/stack
 gru_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2"
 gru_cell_1/strided_slice/stack_1
 gru_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_cell_1/strided_slice/stack_2Á
gru_cell_1/strided_sliceStridedSlice#gru_cell_1/ReadVariableOp_1:value:0'gru_cell_1/strided_slice/stack:output:0)gru_cell_1/strided_slice/stack_1:output:0)gru_cell_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2*

begin_mask*
end_mask2
gru_cell_1/strided_slice
gru_cell_1/MatMulMatMulgru_cell_1/mul:z:0!gru_cell_1/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/MatMul 
gru_cell_1/ReadVariableOp_2ReadVariableOp$gru_cell_1_readvariableop_1_resource*
_output_shapes
:	2Â*
dtype02
gru_cell_1/ReadVariableOp_2
 gru_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2"
 gru_cell_1/strided_slice_1/stack
"gru_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2$
"gru_cell_1/strided_slice_1/stack_1
"gru_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"gru_cell_1/strided_slice_1/stack_2Ë
gru_cell_1/strided_slice_1StridedSlice#gru_cell_1/ReadVariableOp_2:value:0)gru_cell_1/strided_slice_1/stack:output:0+gru_cell_1/strided_slice_1/stack_1:output:0+gru_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2*

begin_mask*
end_mask2
gru_cell_1/strided_slice_1¢
gru_cell_1/MatMul_1MatMulgru_cell_1/mul_1:z:0#gru_cell_1/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/MatMul_1 
gru_cell_1/ReadVariableOp_3ReadVariableOp$gru_cell_1_readvariableop_1_resource*
_output_shapes
:	2Â*
dtype02
gru_cell_1/ReadVariableOp_3
 gru_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2"
 gru_cell_1/strided_slice_2/stack
"gru_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"gru_cell_1/strided_slice_2/stack_1
"gru_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"gru_cell_1/strided_slice_2/stack_2Ë
gru_cell_1/strided_slice_2StridedSlice#gru_cell_1/ReadVariableOp_3:value:0)gru_cell_1/strided_slice_2/stack:output:0+gru_cell_1/strided_slice_2/stack_1:output:0+gru_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2*

begin_mask*
end_mask2
gru_cell_1/strided_slice_2¢
gru_cell_1/MatMul_2MatMulgru_cell_1/mul_2:z:0#gru_cell_1/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/MatMul_2
 gru_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 gru_cell_1/strided_slice_3/stack
"gru_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"gru_cell_1/strided_slice_3/stack_1
"gru_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"gru_cell_1/strided_slice_3/stack_2¯
gru_cell_1/strided_slice_3StridedSlicegru_cell_1/unstack:output:0)gru_cell_1/strided_slice_3/stack:output:0+gru_cell_1/strided_slice_3/stack_1:output:0+gru_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes	
:*

begin_mask2
gru_cell_1/strided_slice_3¨
gru_cell_1/BiasAddBiasAddgru_cell_1/MatMul:product:0#gru_cell_1/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/BiasAdd
 gru_cell_1/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:2"
 gru_cell_1/strided_slice_4/stack
"gru_cell_1/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:¬2$
"gru_cell_1/strided_slice_4/stack_1
"gru_cell_1/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"gru_cell_1/strided_slice_4/stack_2
gru_cell_1/strided_slice_4StridedSlicegru_cell_1/unstack:output:0)gru_cell_1/strided_slice_4/stack:output:0+gru_cell_1/strided_slice_4/stack_1:output:0+gru_cell_1/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes	
:2
gru_cell_1/strided_slice_4®
gru_cell_1/BiasAdd_1BiasAddgru_cell_1/MatMul_1:product:0#gru_cell_1/strided_slice_4:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/BiasAdd_1
 gru_cell_1/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:¬2"
 gru_cell_1/strided_slice_5/stack
"gru_cell_1/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2$
"gru_cell_1/strided_slice_5/stack_1
"gru_cell_1/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"gru_cell_1/strided_slice_5/stack_2­
gru_cell_1/strided_slice_5StridedSlicegru_cell_1/unstack:output:0)gru_cell_1/strided_slice_5/stack:output:0+gru_cell_1/strided_slice_5/stack_1:output:0+gru_cell_1/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes	
:*
end_mask2
gru_cell_1/strided_slice_5®
gru_cell_1/BiasAdd_2BiasAddgru_cell_1/MatMul_2:product:0#gru_cell_1/strided_slice_5:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/BiasAdd_2
gru_cell_1/mul_3Mulzeros:output:0gru_cell_1/dropout_3/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/mul_3
gru_cell_1/mul_4Mulzeros:output:0gru_cell_1/dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/mul_4
gru_cell_1/mul_5Mulzeros:output:0gru_cell_1/dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/mul_5¡
gru_cell_1/ReadVariableOp_4ReadVariableOp$gru_cell_1_readvariableop_4_resource* 
_output_shapes
:
Â*
dtype02
gru_cell_1/ReadVariableOp_4
 gru_cell_1/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 gru_cell_1/strided_slice_6/stack
"gru_cell_1/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2$
"gru_cell_1/strided_slice_6/stack_1
"gru_cell_1/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"gru_cell_1/strided_slice_6/stack_2Ì
gru_cell_1/strided_slice_6StridedSlice#gru_cell_1/ReadVariableOp_4:value:0)gru_cell_1/strided_slice_6/stack:output:0+gru_cell_1/strided_slice_6/stack_1:output:0+gru_cell_1/strided_slice_6/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2
gru_cell_1/strided_slice_6¢
gru_cell_1/MatMul_3MatMulgru_cell_1/mul_3:z:0#gru_cell_1/strided_slice_6:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/MatMul_3¡
gru_cell_1/ReadVariableOp_5ReadVariableOp$gru_cell_1_readvariableop_4_resource* 
_output_shapes
:
Â*
dtype02
gru_cell_1/ReadVariableOp_5
 gru_cell_1/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"       2"
 gru_cell_1/strided_slice_7/stack
"gru_cell_1/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2$
"gru_cell_1/strided_slice_7/stack_1
"gru_cell_1/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"gru_cell_1/strided_slice_7/stack_2Ì
gru_cell_1/strided_slice_7StridedSlice#gru_cell_1/ReadVariableOp_5:value:0)gru_cell_1/strided_slice_7/stack:output:0+gru_cell_1/strided_slice_7/stack_1:output:0+gru_cell_1/strided_slice_7/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2
gru_cell_1/strided_slice_7¢
gru_cell_1/MatMul_4MatMulgru_cell_1/mul_4:z:0#gru_cell_1/strided_slice_7:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/MatMul_4
 gru_cell_1/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 gru_cell_1/strided_slice_8/stack
"gru_cell_1/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"gru_cell_1/strided_slice_8/stack_1
"gru_cell_1/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"gru_cell_1/strided_slice_8/stack_2¯
gru_cell_1/strided_slice_8StridedSlicegru_cell_1/unstack:output:1)gru_cell_1/strided_slice_8/stack:output:0+gru_cell_1/strided_slice_8/stack_1:output:0+gru_cell_1/strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes	
:*

begin_mask2
gru_cell_1/strided_slice_8®
gru_cell_1/BiasAdd_3BiasAddgru_cell_1/MatMul_3:product:0#gru_cell_1/strided_slice_8:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/BiasAdd_3
 gru_cell_1/strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB:2"
 gru_cell_1/strided_slice_9/stack
"gru_cell_1/strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:¬2$
"gru_cell_1/strided_slice_9/stack_1
"gru_cell_1/strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"gru_cell_1/strided_slice_9/stack_2
gru_cell_1/strided_slice_9StridedSlicegru_cell_1/unstack:output:1)gru_cell_1/strided_slice_9/stack:output:0+gru_cell_1/strided_slice_9/stack_1:output:0+gru_cell_1/strided_slice_9/stack_2:output:0*
Index0*
T0*
_output_shapes	
:2
gru_cell_1/strided_slice_9®
gru_cell_1/BiasAdd_4BiasAddgru_cell_1/MatMul_4:product:0#gru_cell_1/strided_slice_9:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/BiasAdd_4
gru_cell_1/addAddV2gru_cell_1/BiasAdd:output:0gru_cell_1/BiasAdd_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/addz
gru_cell_1/SigmoidSigmoidgru_cell_1/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/Sigmoid
gru_cell_1/add_1AddV2gru_cell_1/BiasAdd_1:output:0gru_cell_1/BiasAdd_4:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/add_1
gru_cell_1/Sigmoid_1Sigmoidgru_cell_1/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/Sigmoid_1¡
gru_cell_1/ReadVariableOp_6ReadVariableOp$gru_cell_1_readvariableop_4_resource* 
_output_shapes
:
Â*
dtype02
gru_cell_1/ReadVariableOp_6
!gru_cell_1/strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2#
!gru_cell_1/strided_slice_10/stack
#gru_cell_1/strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#gru_cell_1/strided_slice_10/stack_1
#gru_cell_1/strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#gru_cell_1/strided_slice_10/stack_2Ñ
gru_cell_1/strided_slice_10StridedSlice#gru_cell_1/ReadVariableOp_6:value:0*gru_cell_1/strided_slice_10/stack:output:0,gru_cell_1/strided_slice_10/stack_1:output:0,gru_cell_1/strided_slice_10/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2
gru_cell_1/strided_slice_10£
gru_cell_1/MatMul_5MatMulgru_cell_1/mul_5:z:0$gru_cell_1/strided_slice_10:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/MatMul_5
!gru_cell_1/strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB:¬2#
!gru_cell_1/strided_slice_11/stack
#gru_cell_1/strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2%
#gru_cell_1/strided_slice_11/stack_1
#gru_cell_1/strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#gru_cell_1/strided_slice_11/stack_2²
gru_cell_1/strided_slice_11StridedSlicegru_cell_1/unstack:output:1*gru_cell_1/strided_slice_11/stack:output:0,gru_cell_1/strided_slice_11/stack_1:output:0,gru_cell_1/strided_slice_11/stack_2:output:0*
Index0*
T0*
_output_shapes	
:*
end_mask2
gru_cell_1/strided_slice_11¯
gru_cell_1/BiasAdd_5BiasAddgru_cell_1/MatMul_5:product:0$gru_cell_1/strided_slice_11:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/BiasAdd_5
gru_cell_1/mul_6Mulgru_cell_1/Sigmoid_1:y:0gru_cell_1/BiasAdd_5:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/mul_6
gru_cell_1/add_2AddV2gru_cell_1/BiasAdd_2:output:0gru_cell_1/mul_6:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/add_2s
gru_cell_1/TanhTanhgru_cell_1/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/Tanh
gru_cell_1/mul_7Mulgru_cell_1/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/mul_7i
gru_cell_1/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_cell_1/sub/x
gru_cell_1/subSubgru_cell_1/sub/x:output:0gru_cell_1/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/sub
gru_cell_1/mul_8Mulgru_cell_1/sub:z:0gru_cell_1/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/mul_8
gru_cell_1/add_3AddV2gru_cell_1/mul_7:z:0gru_cell_1/mul_8:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/add_3
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter¸
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0"gru_cell_1_readvariableop_resource$gru_cell_1_readvariableop_1_resource$gru_cell_1_readvariableop_4_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_42389*
condR
while_cond_42388*9
output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeé
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:2ÿÿÿÿÿÿÿÿÿ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¦
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimet
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity¦
NoOpNoOp^gru_cell_1/ReadVariableOp^gru_cell_1/ReadVariableOp_1^gru_cell_1/ReadVariableOp_2^gru_cell_1/ReadVariableOp_3^gru_cell_1/ReadVariableOp_4^gru_cell_1/ReadVariableOp_5^gru_cell_1/ReadVariableOp_6^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ22: : : 26
gru_cell_1/ReadVariableOpgru_cell_1/ReadVariableOp2:
gru_cell_1/ReadVariableOp_1gru_cell_1/ReadVariableOp_12:
gru_cell_1/ReadVariableOp_2gru_cell_1/ReadVariableOp_22:
gru_cell_1/ReadVariableOp_3gru_cell_1/ReadVariableOp_32:
gru_cell_1/ReadVariableOp_4gru_cell_1/ReadVariableOp_42:
gru_cell_1/ReadVariableOp_5gru_cell_1/ReadVariableOp_52:
gru_cell_1/ReadVariableOp_6gru_cell_1/ReadVariableOp_62
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
 
_user_specified_nameinputs
â½
ã
@__inference_gru_1_layer_call_and_return_conditional_losses_41548
inputs_05
"gru_cell_1_readvariableop_resource:	Â7
$gru_cell_1_readvariableop_1_resource:	2Â8
$gru_cell_1_readvariableop_4_resource:
Â
identity¢gru_cell_1/ReadVariableOp¢gru_cell_1/ReadVariableOp_1¢gru_cell_1/ReadVariableOp_2¢gru_cell_1/ReadVariableOp_3¢gru_cell_1/ReadVariableOp_4¢gru_cell_1/ReadVariableOp_5¢gru_cell_1/ReadVariableOp_6¢whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
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
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ22
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask2
strided_slice_2
gru_cell_1/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
gru_cell_1/ones_like/Shape}
gru_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_cell_1/ones_like/Const°
gru_cell_1/ones_likeFill#gru_cell_1/ones_like/Shape:output:0#gru_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
gru_cell_1/ones_likez
gru_cell_1/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
gru_cell_1/ones_like_1/Shape
gru_cell_1/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_cell_1/ones_like_1/Const¹
gru_cell_1/ones_like_1Fill%gru_cell_1/ones_like_1/Shape:output:0%gru_cell_1/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/ones_like_1
gru_cell_1/ReadVariableOpReadVariableOp"gru_cell_1_readvariableop_resource*
_output_shapes
:	Â*
dtype02
gru_cell_1/ReadVariableOp
gru_cell_1/unstackUnpack!gru_cell_1/ReadVariableOp:value:0*
T0*"
_output_shapes
:Â:Â*	
num2
gru_cell_1/unstack
gru_cell_1/mulMulstrided_slice_2:output:0gru_cell_1/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
gru_cell_1/mul
gru_cell_1/mul_1Mulstrided_slice_2:output:0gru_cell_1/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
gru_cell_1/mul_1
gru_cell_1/mul_2Mulstrided_slice_2:output:0gru_cell_1/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
gru_cell_1/mul_2 
gru_cell_1/ReadVariableOp_1ReadVariableOp$gru_cell_1_readvariableop_1_resource*
_output_shapes
:	2Â*
dtype02
gru_cell_1/ReadVariableOp_1
gru_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2 
gru_cell_1/strided_slice/stack
 gru_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2"
 gru_cell_1/strided_slice/stack_1
 gru_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_cell_1/strided_slice/stack_2Á
gru_cell_1/strided_sliceStridedSlice#gru_cell_1/ReadVariableOp_1:value:0'gru_cell_1/strided_slice/stack:output:0)gru_cell_1/strided_slice/stack_1:output:0)gru_cell_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2*

begin_mask*
end_mask2
gru_cell_1/strided_slice
gru_cell_1/MatMulMatMulgru_cell_1/mul:z:0!gru_cell_1/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/MatMul 
gru_cell_1/ReadVariableOp_2ReadVariableOp$gru_cell_1_readvariableop_1_resource*
_output_shapes
:	2Â*
dtype02
gru_cell_1/ReadVariableOp_2
 gru_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2"
 gru_cell_1/strided_slice_1/stack
"gru_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2$
"gru_cell_1/strided_slice_1/stack_1
"gru_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"gru_cell_1/strided_slice_1/stack_2Ë
gru_cell_1/strided_slice_1StridedSlice#gru_cell_1/ReadVariableOp_2:value:0)gru_cell_1/strided_slice_1/stack:output:0+gru_cell_1/strided_slice_1/stack_1:output:0+gru_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2*

begin_mask*
end_mask2
gru_cell_1/strided_slice_1¢
gru_cell_1/MatMul_1MatMulgru_cell_1/mul_1:z:0#gru_cell_1/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/MatMul_1 
gru_cell_1/ReadVariableOp_3ReadVariableOp$gru_cell_1_readvariableop_1_resource*
_output_shapes
:	2Â*
dtype02
gru_cell_1/ReadVariableOp_3
 gru_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2"
 gru_cell_1/strided_slice_2/stack
"gru_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"gru_cell_1/strided_slice_2/stack_1
"gru_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"gru_cell_1/strided_slice_2/stack_2Ë
gru_cell_1/strided_slice_2StridedSlice#gru_cell_1/ReadVariableOp_3:value:0)gru_cell_1/strided_slice_2/stack:output:0+gru_cell_1/strided_slice_2/stack_1:output:0+gru_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2*

begin_mask*
end_mask2
gru_cell_1/strided_slice_2¢
gru_cell_1/MatMul_2MatMulgru_cell_1/mul_2:z:0#gru_cell_1/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/MatMul_2
 gru_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 gru_cell_1/strided_slice_3/stack
"gru_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"gru_cell_1/strided_slice_3/stack_1
"gru_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"gru_cell_1/strided_slice_3/stack_2¯
gru_cell_1/strided_slice_3StridedSlicegru_cell_1/unstack:output:0)gru_cell_1/strided_slice_3/stack:output:0+gru_cell_1/strided_slice_3/stack_1:output:0+gru_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes	
:*

begin_mask2
gru_cell_1/strided_slice_3¨
gru_cell_1/BiasAddBiasAddgru_cell_1/MatMul:product:0#gru_cell_1/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/BiasAdd
 gru_cell_1/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:2"
 gru_cell_1/strided_slice_4/stack
"gru_cell_1/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:¬2$
"gru_cell_1/strided_slice_4/stack_1
"gru_cell_1/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"gru_cell_1/strided_slice_4/stack_2
gru_cell_1/strided_slice_4StridedSlicegru_cell_1/unstack:output:0)gru_cell_1/strided_slice_4/stack:output:0+gru_cell_1/strided_slice_4/stack_1:output:0+gru_cell_1/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes	
:2
gru_cell_1/strided_slice_4®
gru_cell_1/BiasAdd_1BiasAddgru_cell_1/MatMul_1:product:0#gru_cell_1/strided_slice_4:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/BiasAdd_1
 gru_cell_1/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:¬2"
 gru_cell_1/strided_slice_5/stack
"gru_cell_1/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2$
"gru_cell_1/strided_slice_5/stack_1
"gru_cell_1/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"gru_cell_1/strided_slice_5/stack_2­
gru_cell_1/strided_slice_5StridedSlicegru_cell_1/unstack:output:0)gru_cell_1/strided_slice_5/stack:output:0+gru_cell_1/strided_slice_5/stack_1:output:0+gru_cell_1/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes	
:*
end_mask2
gru_cell_1/strided_slice_5®
gru_cell_1/BiasAdd_2BiasAddgru_cell_1/MatMul_2:product:0#gru_cell_1/strided_slice_5:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/BiasAdd_2
gru_cell_1/mul_3Mulzeros:output:0gru_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/mul_3
gru_cell_1/mul_4Mulzeros:output:0gru_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/mul_4
gru_cell_1/mul_5Mulzeros:output:0gru_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/mul_5¡
gru_cell_1/ReadVariableOp_4ReadVariableOp$gru_cell_1_readvariableop_4_resource* 
_output_shapes
:
Â*
dtype02
gru_cell_1/ReadVariableOp_4
 gru_cell_1/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 gru_cell_1/strided_slice_6/stack
"gru_cell_1/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2$
"gru_cell_1/strided_slice_6/stack_1
"gru_cell_1/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"gru_cell_1/strided_slice_6/stack_2Ì
gru_cell_1/strided_slice_6StridedSlice#gru_cell_1/ReadVariableOp_4:value:0)gru_cell_1/strided_slice_6/stack:output:0+gru_cell_1/strided_slice_6/stack_1:output:0+gru_cell_1/strided_slice_6/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2
gru_cell_1/strided_slice_6¢
gru_cell_1/MatMul_3MatMulgru_cell_1/mul_3:z:0#gru_cell_1/strided_slice_6:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/MatMul_3¡
gru_cell_1/ReadVariableOp_5ReadVariableOp$gru_cell_1_readvariableop_4_resource* 
_output_shapes
:
Â*
dtype02
gru_cell_1/ReadVariableOp_5
 gru_cell_1/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"       2"
 gru_cell_1/strided_slice_7/stack
"gru_cell_1/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2$
"gru_cell_1/strided_slice_7/stack_1
"gru_cell_1/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"gru_cell_1/strided_slice_7/stack_2Ì
gru_cell_1/strided_slice_7StridedSlice#gru_cell_1/ReadVariableOp_5:value:0)gru_cell_1/strided_slice_7/stack:output:0+gru_cell_1/strided_slice_7/stack_1:output:0+gru_cell_1/strided_slice_7/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2
gru_cell_1/strided_slice_7¢
gru_cell_1/MatMul_4MatMulgru_cell_1/mul_4:z:0#gru_cell_1/strided_slice_7:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/MatMul_4
 gru_cell_1/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 gru_cell_1/strided_slice_8/stack
"gru_cell_1/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"gru_cell_1/strided_slice_8/stack_1
"gru_cell_1/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"gru_cell_1/strided_slice_8/stack_2¯
gru_cell_1/strided_slice_8StridedSlicegru_cell_1/unstack:output:1)gru_cell_1/strided_slice_8/stack:output:0+gru_cell_1/strided_slice_8/stack_1:output:0+gru_cell_1/strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes	
:*

begin_mask2
gru_cell_1/strided_slice_8®
gru_cell_1/BiasAdd_3BiasAddgru_cell_1/MatMul_3:product:0#gru_cell_1/strided_slice_8:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/BiasAdd_3
 gru_cell_1/strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB:2"
 gru_cell_1/strided_slice_9/stack
"gru_cell_1/strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:¬2$
"gru_cell_1/strided_slice_9/stack_1
"gru_cell_1/strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"gru_cell_1/strided_slice_9/stack_2
gru_cell_1/strided_slice_9StridedSlicegru_cell_1/unstack:output:1)gru_cell_1/strided_slice_9/stack:output:0+gru_cell_1/strided_slice_9/stack_1:output:0+gru_cell_1/strided_slice_9/stack_2:output:0*
Index0*
T0*
_output_shapes	
:2
gru_cell_1/strided_slice_9®
gru_cell_1/BiasAdd_4BiasAddgru_cell_1/MatMul_4:product:0#gru_cell_1/strided_slice_9:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/BiasAdd_4
gru_cell_1/addAddV2gru_cell_1/BiasAdd:output:0gru_cell_1/BiasAdd_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/addz
gru_cell_1/SigmoidSigmoidgru_cell_1/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/Sigmoid
gru_cell_1/add_1AddV2gru_cell_1/BiasAdd_1:output:0gru_cell_1/BiasAdd_4:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/add_1
gru_cell_1/Sigmoid_1Sigmoidgru_cell_1/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/Sigmoid_1¡
gru_cell_1/ReadVariableOp_6ReadVariableOp$gru_cell_1_readvariableop_4_resource* 
_output_shapes
:
Â*
dtype02
gru_cell_1/ReadVariableOp_6
!gru_cell_1/strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2#
!gru_cell_1/strided_slice_10/stack
#gru_cell_1/strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#gru_cell_1/strided_slice_10/stack_1
#gru_cell_1/strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#gru_cell_1/strided_slice_10/stack_2Ñ
gru_cell_1/strided_slice_10StridedSlice#gru_cell_1/ReadVariableOp_6:value:0*gru_cell_1/strided_slice_10/stack:output:0,gru_cell_1/strided_slice_10/stack_1:output:0,gru_cell_1/strided_slice_10/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2
gru_cell_1/strided_slice_10£
gru_cell_1/MatMul_5MatMulgru_cell_1/mul_5:z:0$gru_cell_1/strided_slice_10:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/MatMul_5
!gru_cell_1/strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB:¬2#
!gru_cell_1/strided_slice_11/stack
#gru_cell_1/strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2%
#gru_cell_1/strided_slice_11/stack_1
#gru_cell_1/strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#gru_cell_1/strided_slice_11/stack_2²
gru_cell_1/strided_slice_11StridedSlicegru_cell_1/unstack:output:1*gru_cell_1/strided_slice_11/stack:output:0,gru_cell_1/strided_slice_11/stack_1:output:0,gru_cell_1/strided_slice_11/stack_2:output:0*
Index0*
T0*
_output_shapes	
:*
end_mask2
gru_cell_1/strided_slice_11¯
gru_cell_1/BiasAdd_5BiasAddgru_cell_1/MatMul_5:product:0$gru_cell_1/strided_slice_11:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/BiasAdd_5
gru_cell_1/mul_6Mulgru_cell_1/Sigmoid_1:y:0gru_cell_1/BiasAdd_5:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/mul_6
gru_cell_1/add_2AddV2gru_cell_1/BiasAdd_2:output:0gru_cell_1/mul_6:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/add_2s
gru_cell_1/TanhTanhgru_cell_1/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/Tanh
gru_cell_1/mul_7Mulgru_cell_1/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/mul_7i
gru_cell_1/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_cell_1/sub/x
gru_cell_1/subSubgru_cell_1/sub/x:output:0gru_cell_1/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/sub
gru_cell_1/mul_8Mulgru_cell_1/sub:z:0gru_cell_1/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/mul_8
gru_cell_1/add_3AddV2gru_cell_1/mul_7:z:0gru_cell_1/mul_8:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_1/add_3
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter¸
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0"gru_cell_1_readvariableop_resource$gru_cell_1_readvariableop_1_resource$gru_cell_1_readvariableop_4_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_41396*
condR
while_cond_41395*9
output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeò
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¯
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimet
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity¦
NoOpNoOp^gru_cell_1/ReadVariableOp^gru_cell_1/ReadVariableOp_1^gru_cell_1/ReadVariableOp_2^gru_cell_1/ReadVariableOp_3^gru_cell_1/ReadVariableOp_4^gru_cell_1/ReadVariableOp_5^gru_cell_1/ReadVariableOp_6^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2: : : 26
gru_cell_1/ReadVariableOpgru_cell_1/ReadVariableOp2:
gru_cell_1/ReadVariableOp_1gru_cell_1/ReadVariableOp_12:
gru_cell_1/ReadVariableOp_2gru_cell_1/ReadVariableOp_22:
gru_cell_1/ReadVariableOp_3gru_cell_1/ReadVariableOp_32:
gru_cell_1/ReadVariableOp_4gru_cell_1/ReadVariableOp_42:
gru_cell_1/ReadVariableOp_5gru_cell_1/ReadVariableOp_52:
gru_cell_1/ReadVariableOp_6gru_cell_1/ReadVariableOp_62
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
"
_user_specified_name
inputs/0
î±
ì
while_body_39737
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0=
*while_gru_cell_1_readvariableop_resource_0:	Â?
,while_gru_cell_1_readvariableop_1_resource_0:	2Â@
,while_gru_cell_1_readvariableop_4_resource_0:
Â
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor;
(while_gru_cell_1_readvariableop_resource:	Â=
*while_gru_cell_1_readvariableop_1_resource:	2Â>
*while_gru_cell_1_readvariableop_4_resource:
Â¢while/gru_cell_1/ReadVariableOp¢!while/gru_cell_1/ReadVariableOp_1¢!while/gru_cell_1/ReadVariableOp_2¢!while/gru_cell_1/ReadVariableOp_3¢!while/gru_cell_1/ReadVariableOp_4¢!while/gru_cell_1/ReadVariableOp_5¢!while/gru_cell_1/ReadVariableOp_6Ã
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem¤
 while/gru_cell_1/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2"
 while/gru_cell_1/ones_like/Shape
 while/gru_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2"
 while/gru_cell_1/ones_like/ConstÈ
while/gru_cell_1/ones_likeFill)while/gru_cell_1/ones_like/Shape:output:0)while/gru_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/gru_cell_1/ones_like
"while/gru_cell_1/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2$
"while/gru_cell_1/ones_like_1/Shape
"while/gru_cell_1/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2$
"while/gru_cell_1/ones_like_1/ConstÑ
while/gru_cell_1/ones_like_1Fill+while/gru_cell_1/ones_like_1/Shape:output:0+while/gru_cell_1/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/ones_like_1®
while/gru_cell_1/ReadVariableOpReadVariableOp*while_gru_cell_1_readvariableop_resource_0*
_output_shapes
:	Â*
dtype02!
while/gru_cell_1/ReadVariableOp
while/gru_cell_1/unstackUnpack'while/gru_cell_1/ReadVariableOp:value:0*
T0*"
_output_shapes
:Â:Â*	
num2
while/gru_cell_1/unstack¼
while/gru_cell_1/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0#while/gru_cell_1/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/gru_cell_1/mulÀ
while/gru_cell_1/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0#while/gru_cell_1/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/gru_cell_1/mul_1À
while/gru_cell_1/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0#while/gru_cell_1/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/gru_cell_1/mul_2´
!while/gru_cell_1/ReadVariableOp_1ReadVariableOp,while_gru_cell_1_readvariableop_1_resource_0*
_output_shapes
:	2Â*
dtype02#
!while/gru_cell_1/ReadVariableOp_1
$while/gru_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2&
$while/gru_cell_1/strided_slice/stack¡
&while/gru_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2(
&while/gru_cell_1/strided_slice/stack_1¡
&while/gru_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&while/gru_cell_1/strided_slice/stack_2å
while/gru_cell_1/strided_sliceStridedSlice)while/gru_cell_1/ReadVariableOp_1:value:0-while/gru_cell_1/strided_slice/stack:output:0/while/gru_cell_1/strided_slice/stack_1:output:0/while/gru_cell_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2*

begin_mask*
end_mask2 
while/gru_cell_1/strided_slice²
while/gru_cell_1/MatMulMatMulwhile/gru_cell_1/mul:z:0'while/gru_cell_1/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/MatMul´
!while/gru_cell_1/ReadVariableOp_2ReadVariableOp,while_gru_cell_1_readvariableop_1_resource_0*
_output_shapes
:	2Â*
dtype02#
!while/gru_cell_1/ReadVariableOp_2¡
&while/gru_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2(
&while/gru_cell_1/strided_slice_1/stack¥
(while/gru_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2*
(while/gru_cell_1/strided_slice_1/stack_1¥
(while/gru_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/gru_cell_1/strided_slice_1/stack_2ï
 while/gru_cell_1/strided_slice_1StridedSlice)while/gru_cell_1/ReadVariableOp_2:value:0/while/gru_cell_1/strided_slice_1/stack:output:01while/gru_cell_1/strided_slice_1/stack_1:output:01while/gru_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2*

begin_mask*
end_mask2"
 while/gru_cell_1/strided_slice_1º
while/gru_cell_1/MatMul_1MatMulwhile/gru_cell_1/mul_1:z:0)while/gru_cell_1/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/MatMul_1´
!while/gru_cell_1/ReadVariableOp_3ReadVariableOp,while_gru_cell_1_readvariableop_1_resource_0*
_output_shapes
:	2Â*
dtype02#
!while/gru_cell_1/ReadVariableOp_3¡
&while/gru_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2(
&while/gru_cell_1/strided_slice_2/stack¥
(while/gru_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/gru_cell_1/strided_slice_2/stack_1¥
(while/gru_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/gru_cell_1/strided_slice_2/stack_2ï
 while/gru_cell_1/strided_slice_2StridedSlice)while/gru_cell_1/ReadVariableOp_3:value:0/while/gru_cell_1/strided_slice_2/stack:output:01while/gru_cell_1/strided_slice_2/stack_1:output:01while/gru_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2*

begin_mask*
end_mask2"
 while/gru_cell_1/strided_slice_2º
while/gru_cell_1/MatMul_2MatMulwhile/gru_cell_1/mul_2:z:0)while/gru_cell_1/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/MatMul_2
&while/gru_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&while/gru_cell_1/strided_slice_3/stack
(while/gru_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(while/gru_cell_1/strided_slice_3/stack_1
(while/gru_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(while/gru_cell_1/strided_slice_3/stack_2Ó
 while/gru_cell_1/strided_slice_3StridedSlice!while/gru_cell_1/unstack:output:0/while/gru_cell_1/strided_slice_3/stack:output:01while/gru_cell_1/strided_slice_3/stack_1:output:01while/gru_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes	
:*

begin_mask2"
 while/gru_cell_1/strided_slice_3À
while/gru_cell_1/BiasAddBiasAdd!while/gru_cell_1/MatMul:product:0)while/gru_cell_1/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/BiasAdd
&while/gru_cell_1/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:2(
&while/gru_cell_1/strided_slice_4/stack
(while/gru_cell_1/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:¬2*
(while/gru_cell_1/strided_slice_4/stack_1
(while/gru_cell_1/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(while/gru_cell_1/strided_slice_4/stack_2Á
 while/gru_cell_1/strided_slice_4StridedSlice!while/gru_cell_1/unstack:output:0/while/gru_cell_1/strided_slice_4/stack:output:01while/gru_cell_1/strided_slice_4/stack_1:output:01while/gru_cell_1/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes	
:2"
 while/gru_cell_1/strided_slice_4Æ
while/gru_cell_1/BiasAdd_1BiasAdd#while/gru_cell_1/MatMul_1:product:0)while/gru_cell_1/strided_slice_4:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/BiasAdd_1
&while/gru_cell_1/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:¬2(
&while/gru_cell_1/strided_slice_5/stack
(while/gru_cell_1/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2*
(while/gru_cell_1/strided_slice_5/stack_1
(while/gru_cell_1/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(while/gru_cell_1/strided_slice_5/stack_2Ñ
 while/gru_cell_1/strided_slice_5StridedSlice!while/gru_cell_1/unstack:output:0/while/gru_cell_1/strided_slice_5/stack:output:01while/gru_cell_1/strided_slice_5/stack_1:output:01while/gru_cell_1/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes	
:*
end_mask2"
 while/gru_cell_1/strided_slice_5Æ
while/gru_cell_1/BiasAdd_2BiasAdd#while/gru_cell_1/MatMul_2:product:0)while/gru_cell_1/strided_slice_5:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/BiasAdd_2¦
while/gru_cell_1/mul_3Mulwhile_placeholder_2%while/gru_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/mul_3¦
while/gru_cell_1/mul_4Mulwhile_placeholder_2%while/gru_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/mul_4¦
while/gru_cell_1/mul_5Mulwhile_placeholder_2%while/gru_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/mul_5µ
!while/gru_cell_1/ReadVariableOp_4ReadVariableOp,while_gru_cell_1_readvariableop_4_resource_0* 
_output_shapes
:
Â*
dtype02#
!while/gru_cell_1/ReadVariableOp_4¡
&while/gru_cell_1/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/gru_cell_1/strided_slice_6/stack¥
(while/gru_cell_1/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2*
(while/gru_cell_1/strided_slice_6/stack_1¥
(while/gru_cell_1/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/gru_cell_1/strided_slice_6/stack_2ð
 while/gru_cell_1/strided_slice_6StridedSlice)while/gru_cell_1/ReadVariableOp_4:value:0/while/gru_cell_1/strided_slice_6/stack:output:01while/gru_cell_1/strided_slice_6/stack_1:output:01while/gru_cell_1/strided_slice_6/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2"
 while/gru_cell_1/strided_slice_6º
while/gru_cell_1/MatMul_3MatMulwhile/gru_cell_1/mul_3:z:0)while/gru_cell_1/strided_slice_6:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/MatMul_3µ
!while/gru_cell_1/ReadVariableOp_5ReadVariableOp,while_gru_cell_1_readvariableop_4_resource_0* 
_output_shapes
:
Â*
dtype02#
!while/gru_cell_1/ReadVariableOp_5¡
&while/gru_cell_1/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"       2(
&while/gru_cell_1/strided_slice_7/stack¥
(while/gru_cell_1/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2*
(while/gru_cell_1/strided_slice_7/stack_1¥
(while/gru_cell_1/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/gru_cell_1/strided_slice_7/stack_2ð
 while/gru_cell_1/strided_slice_7StridedSlice)while/gru_cell_1/ReadVariableOp_5:value:0/while/gru_cell_1/strided_slice_7/stack:output:01while/gru_cell_1/strided_slice_7/stack_1:output:01while/gru_cell_1/strided_slice_7/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2"
 while/gru_cell_1/strided_slice_7º
while/gru_cell_1/MatMul_4MatMulwhile/gru_cell_1/mul_4:z:0)while/gru_cell_1/strided_slice_7:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/MatMul_4
&while/gru_cell_1/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&while/gru_cell_1/strided_slice_8/stack
(while/gru_cell_1/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(while/gru_cell_1/strided_slice_8/stack_1
(while/gru_cell_1/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(while/gru_cell_1/strided_slice_8/stack_2Ó
 while/gru_cell_1/strided_slice_8StridedSlice!while/gru_cell_1/unstack:output:1/while/gru_cell_1/strided_slice_8/stack:output:01while/gru_cell_1/strided_slice_8/stack_1:output:01while/gru_cell_1/strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes	
:*

begin_mask2"
 while/gru_cell_1/strided_slice_8Æ
while/gru_cell_1/BiasAdd_3BiasAdd#while/gru_cell_1/MatMul_3:product:0)while/gru_cell_1/strided_slice_8:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/BiasAdd_3
&while/gru_cell_1/strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB:2(
&while/gru_cell_1/strided_slice_9/stack
(while/gru_cell_1/strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:¬2*
(while/gru_cell_1/strided_slice_9/stack_1
(while/gru_cell_1/strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(while/gru_cell_1/strided_slice_9/stack_2Á
 while/gru_cell_1/strided_slice_9StridedSlice!while/gru_cell_1/unstack:output:1/while/gru_cell_1/strided_slice_9/stack:output:01while/gru_cell_1/strided_slice_9/stack_1:output:01while/gru_cell_1/strided_slice_9/stack_2:output:0*
Index0*
T0*
_output_shapes	
:2"
 while/gru_cell_1/strided_slice_9Æ
while/gru_cell_1/BiasAdd_4BiasAdd#while/gru_cell_1/MatMul_4:product:0)while/gru_cell_1/strided_slice_9:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/BiasAdd_4°
while/gru_cell_1/addAddV2!while/gru_cell_1/BiasAdd:output:0#while/gru_cell_1/BiasAdd_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/add
while/gru_cell_1/SigmoidSigmoidwhile/gru_cell_1/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/Sigmoid¶
while/gru_cell_1/add_1AddV2#while/gru_cell_1/BiasAdd_1:output:0#while/gru_cell_1/BiasAdd_4:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/add_1
while/gru_cell_1/Sigmoid_1Sigmoidwhile/gru_cell_1/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/Sigmoid_1µ
!while/gru_cell_1/ReadVariableOp_6ReadVariableOp,while_gru_cell_1_readvariableop_4_resource_0* 
_output_shapes
:
Â*
dtype02#
!while/gru_cell_1/ReadVariableOp_6£
'while/gru_cell_1/strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2)
'while/gru_cell_1/strided_slice_10/stack§
)while/gru_cell_1/strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/gru_cell_1/strided_slice_10/stack_1§
)while/gru_cell_1/strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/gru_cell_1/strided_slice_10/stack_2õ
!while/gru_cell_1/strided_slice_10StridedSlice)while/gru_cell_1/ReadVariableOp_6:value:00while/gru_cell_1/strided_slice_10/stack:output:02while/gru_cell_1/strided_slice_10/stack_1:output:02while/gru_cell_1/strided_slice_10/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2#
!while/gru_cell_1/strided_slice_10»
while/gru_cell_1/MatMul_5MatMulwhile/gru_cell_1/mul_5:z:0*while/gru_cell_1/strided_slice_10:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/MatMul_5
'while/gru_cell_1/strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB:¬2)
'while/gru_cell_1/strided_slice_11/stack 
)while/gru_cell_1/strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2+
)while/gru_cell_1/strided_slice_11/stack_1 
)while/gru_cell_1/strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)while/gru_cell_1/strided_slice_11/stack_2Ö
!while/gru_cell_1/strided_slice_11StridedSlice!while/gru_cell_1/unstack:output:10while/gru_cell_1/strided_slice_11/stack:output:02while/gru_cell_1/strided_slice_11/stack_1:output:02while/gru_cell_1/strided_slice_11/stack_2:output:0*
Index0*
T0*
_output_shapes	
:*
end_mask2#
!while/gru_cell_1/strided_slice_11Ç
while/gru_cell_1/BiasAdd_5BiasAdd#while/gru_cell_1/MatMul_5:product:0*while/gru_cell_1/strided_slice_11:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/BiasAdd_5¯
while/gru_cell_1/mul_6Mulwhile/gru_cell_1/Sigmoid_1:y:0#while/gru_cell_1/BiasAdd_5:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/mul_6­
while/gru_cell_1/add_2AddV2#while/gru_cell_1/BiasAdd_2:output:0while/gru_cell_1/mul_6:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/add_2
while/gru_cell_1/TanhTanhwhile/gru_cell_1/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/Tanh
while/gru_cell_1/mul_7Mulwhile/gru_cell_1/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/mul_7u
while/gru_cell_1/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
while/gru_cell_1/sub/x¥
while/gru_cell_1/subSubwhile/gru_cell_1/sub/x:output:0while/gru_cell_1/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/sub
while/gru_cell_1/mul_8Mulwhile/gru_cell_1/sub:z:0while/gru_cell_1/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/mul_8¤
while/gru_cell_1/add_3AddV2while/gru_cell_1/mul_7:z:0while/gru_cell_1/mul_8:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/add_3Þ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_1/add_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/gru_cell_1/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4Ô

while/NoOpNoOp ^while/gru_cell_1/ReadVariableOp"^while/gru_cell_1/ReadVariableOp_1"^while/gru_cell_1/ReadVariableOp_2"^while/gru_cell_1/ReadVariableOp_3"^while/gru_cell_1/ReadVariableOp_4"^while/gru_cell_1/ReadVariableOp_5"^while/gru_cell_1/ReadVariableOp_6*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp"Z
*while_gru_cell_1_readvariableop_1_resource,while_gru_cell_1_readvariableop_1_resource_0"Z
*while_gru_cell_1_readvariableop_4_resource,while_gru_cell_1_readvariableop_4_resource_0"V
(while_gru_cell_1_readvariableop_resource*while_gru_cell_1_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2B
while/gru_cell_1/ReadVariableOpwhile/gru_cell_1/ReadVariableOp2F
!while/gru_cell_1/ReadVariableOp_1!while/gru_cell_1/ReadVariableOp_12F
!while/gru_cell_1/ReadVariableOp_2!while/gru_cell_1/ReadVariableOp_22F
!while/gru_cell_1/ReadVariableOp_3!while/gru_cell_1/ReadVariableOp_32F
!while/gru_cell_1/ReadVariableOp_4!while/gru_cell_1/ReadVariableOp_42F
!while/gru_cell_1/ReadVariableOp_5!while/gru_cell_1/ReadVariableOp_52F
!while/gru_cell_1/ReadVariableOp_6!while/gru_cell_1/ReadVariableOp_6: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
î±
ì
while_body_41396
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0=
*while_gru_cell_1_readvariableop_resource_0:	Â?
,while_gru_cell_1_readvariableop_1_resource_0:	2Â@
,while_gru_cell_1_readvariableop_4_resource_0:
Â
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor;
(while_gru_cell_1_readvariableop_resource:	Â=
*while_gru_cell_1_readvariableop_1_resource:	2Â>
*while_gru_cell_1_readvariableop_4_resource:
Â¢while/gru_cell_1/ReadVariableOp¢!while/gru_cell_1/ReadVariableOp_1¢!while/gru_cell_1/ReadVariableOp_2¢!while/gru_cell_1/ReadVariableOp_3¢!while/gru_cell_1/ReadVariableOp_4¢!while/gru_cell_1/ReadVariableOp_5¢!while/gru_cell_1/ReadVariableOp_6Ã
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem¤
 while/gru_cell_1/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2"
 while/gru_cell_1/ones_like/Shape
 while/gru_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2"
 while/gru_cell_1/ones_like/ConstÈ
while/gru_cell_1/ones_likeFill)while/gru_cell_1/ones_like/Shape:output:0)while/gru_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/gru_cell_1/ones_like
"while/gru_cell_1/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2$
"while/gru_cell_1/ones_like_1/Shape
"while/gru_cell_1/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2$
"while/gru_cell_1/ones_like_1/ConstÑ
while/gru_cell_1/ones_like_1Fill+while/gru_cell_1/ones_like_1/Shape:output:0+while/gru_cell_1/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/ones_like_1®
while/gru_cell_1/ReadVariableOpReadVariableOp*while_gru_cell_1_readvariableop_resource_0*
_output_shapes
:	Â*
dtype02!
while/gru_cell_1/ReadVariableOp
while/gru_cell_1/unstackUnpack'while/gru_cell_1/ReadVariableOp:value:0*
T0*"
_output_shapes
:Â:Â*	
num2
while/gru_cell_1/unstack¼
while/gru_cell_1/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0#while/gru_cell_1/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/gru_cell_1/mulÀ
while/gru_cell_1/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0#while/gru_cell_1/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/gru_cell_1/mul_1À
while/gru_cell_1/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0#while/gru_cell_1/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/gru_cell_1/mul_2´
!while/gru_cell_1/ReadVariableOp_1ReadVariableOp,while_gru_cell_1_readvariableop_1_resource_0*
_output_shapes
:	2Â*
dtype02#
!while/gru_cell_1/ReadVariableOp_1
$while/gru_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2&
$while/gru_cell_1/strided_slice/stack¡
&while/gru_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2(
&while/gru_cell_1/strided_slice/stack_1¡
&while/gru_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&while/gru_cell_1/strided_slice/stack_2å
while/gru_cell_1/strided_sliceStridedSlice)while/gru_cell_1/ReadVariableOp_1:value:0-while/gru_cell_1/strided_slice/stack:output:0/while/gru_cell_1/strided_slice/stack_1:output:0/while/gru_cell_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2*

begin_mask*
end_mask2 
while/gru_cell_1/strided_slice²
while/gru_cell_1/MatMulMatMulwhile/gru_cell_1/mul:z:0'while/gru_cell_1/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/MatMul´
!while/gru_cell_1/ReadVariableOp_2ReadVariableOp,while_gru_cell_1_readvariableop_1_resource_0*
_output_shapes
:	2Â*
dtype02#
!while/gru_cell_1/ReadVariableOp_2¡
&while/gru_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2(
&while/gru_cell_1/strided_slice_1/stack¥
(while/gru_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2*
(while/gru_cell_1/strided_slice_1/stack_1¥
(while/gru_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/gru_cell_1/strided_slice_1/stack_2ï
 while/gru_cell_1/strided_slice_1StridedSlice)while/gru_cell_1/ReadVariableOp_2:value:0/while/gru_cell_1/strided_slice_1/stack:output:01while/gru_cell_1/strided_slice_1/stack_1:output:01while/gru_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2*

begin_mask*
end_mask2"
 while/gru_cell_1/strided_slice_1º
while/gru_cell_1/MatMul_1MatMulwhile/gru_cell_1/mul_1:z:0)while/gru_cell_1/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/MatMul_1´
!while/gru_cell_1/ReadVariableOp_3ReadVariableOp,while_gru_cell_1_readvariableop_1_resource_0*
_output_shapes
:	2Â*
dtype02#
!while/gru_cell_1/ReadVariableOp_3¡
&while/gru_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2(
&while/gru_cell_1/strided_slice_2/stack¥
(while/gru_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/gru_cell_1/strided_slice_2/stack_1¥
(while/gru_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/gru_cell_1/strided_slice_2/stack_2ï
 while/gru_cell_1/strided_slice_2StridedSlice)while/gru_cell_1/ReadVariableOp_3:value:0/while/gru_cell_1/strided_slice_2/stack:output:01while/gru_cell_1/strided_slice_2/stack_1:output:01while/gru_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	2*

begin_mask*
end_mask2"
 while/gru_cell_1/strided_slice_2º
while/gru_cell_1/MatMul_2MatMulwhile/gru_cell_1/mul_2:z:0)while/gru_cell_1/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/MatMul_2
&while/gru_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&while/gru_cell_1/strided_slice_3/stack
(while/gru_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(while/gru_cell_1/strided_slice_3/stack_1
(while/gru_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(while/gru_cell_1/strided_slice_3/stack_2Ó
 while/gru_cell_1/strided_slice_3StridedSlice!while/gru_cell_1/unstack:output:0/while/gru_cell_1/strided_slice_3/stack:output:01while/gru_cell_1/strided_slice_3/stack_1:output:01while/gru_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes	
:*

begin_mask2"
 while/gru_cell_1/strided_slice_3À
while/gru_cell_1/BiasAddBiasAdd!while/gru_cell_1/MatMul:product:0)while/gru_cell_1/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/BiasAdd
&while/gru_cell_1/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:2(
&while/gru_cell_1/strided_slice_4/stack
(while/gru_cell_1/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:¬2*
(while/gru_cell_1/strided_slice_4/stack_1
(while/gru_cell_1/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(while/gru_cell_1/strided_slice_4/stack_2Á
 while/gru_cell_1/strided_slice_4StridedSlice!while/gru_cell_1/unstack:output:0/while/gru_cell_1/strided_slice_4/stack:output:01while/gru_cell_1/strided_slice_4/stack_1:output:01while/gru_cell_1/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes	
:2"
 while/gru_cell_1/strided_slice_4Æ
while/gru_cell_1/BiasAdd_1BiasAdd#while/gru_cell_1/MatMul_1:product:0)while/gru_cell_1/strided_slice_4:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/BiasAdd_1
&while/gru_cell_1/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:¬2(
&while/gru_cell_1/strided_slice_5/stack
(while/gru_cell_1/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2*
(while/gru_cell_1/strided_slice_5/stack_1
(while/gru_cell_1/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(while/gru_cell_1/strided_slice_5/stack_2Ñ
 while/gru_cell_1/strided_slice_5StridedSlice!while/gru_cell_1/unstack:output:0/while/gru_cell_1/strided_slice_5/stack:output:01while/gru_cell_1/strided_slice_5/stack_1:output:01while/gru_cell_1/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes	
:*
end_mask2"
 while/gru_cell_1/strided_slice_5Æ
while/gru_cell_1/BiasAdd_2BiasAdd#while/gru_cell_1/MatMul_2:product:0)while/gru_cell_1/strided_slice_5:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/BiasAdd_2¦
while/gru_cell_1/mul_3Mulwhile_placeholder_2%while/gru_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/mul_3¦
while/gru_cell_1/mul_4Mulwhile_placeholder_2%while/gru_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/mul_4¦
while/gru_cell_1/mul_5Mulwhile_placeholder_2%while/gru_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/mul_5µ
!while/gru_cell_1/ReadVariableOp_4ReadVariableOp,while_gru_cell_1_readvariableop_4_resource_0* 
_output_shapes
:
Â*
dtype02#
!while/gru_cell_1/ReadVariableOp_4¡
&while/gru_cell_1/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/gru_cell_1/strided_slice_6/stack¥
(while/gru_cell_1/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2*
(while/gru_cell_1/strided_slice_6/stack_1¥
(while/gru_cell_1/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/gru_cell_1/strided_slice_6/stack_2ð
 while/gru_cell_1/strided_slice_6StridedSlice)while/gru_cell_1/ReadVariableOp_4:value:0/while/gru_cell_1/strided_slice_6/stack:output:01while/gru_cell_1/strided_slice_6/stack_1:output:01while/gru_cell_1/strided_slice_6/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2"
 while/gru_cell_1/strided_slice_6º
while/gru_cell_1/MatMul_3MatMulwhile/gru_cell_1/mul_3:z:0)while/gru_cell_1/strided_slice_6:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/MatMul_3µ
!while/gru_cell_1/ReadVariableOp_5ReadVariableOp,while_gru_cell_1_readvariableop_4_resource_0* 
_output_shapes
:
Â*
dtype02#
!while/gru_cell_1/ReadVariableOp_5¡
&while/gru_cell_1/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"       2(
&while/gru_cell_1/strided_slice_7/stack¥
(while/gru_cell_1/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2*
(while/gru_cell_1/strided_slice_7/stack_1¥
(while/gru_cell_1/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/gru_cell_1/strided_slice_7/stack_2ð
 while/gru_cell_1/strided_slice_7StridedSlice)while/gru_cell_1/ReadVariableOp_5:value:0/while/gru_cell_1/strided_slice_7/stack:output:01while/gru_cell_1/strided_slice_7/stack_1:output:01while/gru_cell_1/strided_slice_7/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2"
 while/gru_cell_1/strided_slice_7º
while/gru_cell_1/MatMul_4MatMulwhile/gru_cell_1/mul_4:z:0)while/gru_cell_1/strided_slice_7:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/MatMul_4
&while/gru_cell_1/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&while/gru_cell_1/strided_slice_8/stack
(while/gru_cell_1/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(while/gru_cell_1/strided_slice_8/stack_1
(while/gru_cell_1/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(while/gru_cell_1/strided_slice_8/stack_2Ó
 while/gru_cell_1/strided_slice_8StridedSlice!while/gru_cell_1/unstack:output:1/while/gru_cell_1/strided_slice_8/stack:output:01while/gru_cell_1/strided_slice_8/stack_1:output:01while/gru_cell_1/strided_slice_8/stack_2:output:0*
Index0*
T0*
_output_shapes	
:*

begin_mask2"
 while/gru_cell_1/strided_slice_8Æ
while/gru_cell_1/BiasAdd_3BiasAdd#while/gru_cell_1/MatMul_3:product:0)while/gru_cell_1/strided_slice_8:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/BiasAdd_3
&while/gru_cell_1/strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB:2(
&while/gru_cell_1/strided_slice_9/stack
(while/gru_cell_1/strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:¬2*
(while/gru_cell_1/strided_slice_9/stack_1
(while/gru_cell_1/strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(while/gru_cell_1/strided_slice_9/stack_2Á
 while/gru_cell_1/strided_slice_9StridedSlice!while/gru_cell_1/unstack:output:1/while/gru_cell_1/strided_slice_9/stack:output:01while/gru_cell_1/strided_slice_9/stack_1:output:01while/gru_cell_1/strided_slice_9/stack_2:output:0*
Index0*
T0*
_output_shapes	
:2"
 while/gru_cell_1/strided_slice_9Æ
while/gru_cell_1/BiasAdd_4BiasAdd#while/gru_cell_1/MatMul_4:product:0)while/gru_cell_1/strided_slice_9:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/BiasAdd_4°
while/gru_cell_1/addAddV2!while/gru_cell_1/BiasAdd:output:0#while/gru_cell_1/BiasAdd_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/add
while/gru_cell_1/SigmoidSigmoidwhile/gru_cell_1/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/Sigmoid¶
while/gru_cell_1/add_1AddV2#while/gru_cell_1/BiasAdd_1:output:0#while/gru_cell_1/BiasAdd_4:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/add_1
while/gru_cell_1/Sigmoid_1Sigmoidwhile/gru_cell_1/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/Sigmoid_1µ
!while/gru_cell_1/ReadVariableOp_6ReadVariableOp,while_gru_cell_1_readvariableop_4_resource_0* 
_output_shapes
:
Â*
dtype02#
!while/gru_cell_1/ReadVariableOp_6£
'while/gru_cell_1/strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2)
'while/gru_cell_1/strided_slice_10/stack§
)while/gru_cell_1/strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/gru_cell_1/strided_slice_10/stack_1§
)while/gru_cell_1/strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/gru_cell_1/strided_slice_10/stack_2õ
!while/gru_cell_1/strided_slice_10StridedSlice)while/gru_cell_1/ReadVariableOp_6:value:00while/gru_cell_1/strided_slice_10/stack:output:02while/gru_cell_1/strided_slice_10/stack_1:output:02while/gru_cell_1/strided_slice_10/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2#
!while/gru_cell_1/strided_slice_10»
while/gru_cell_1/MatMul_5MatMulwhile/gru_cell_1/mul_5:z:0*while/gru_cell_1/strided_slice_10:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/MatMul_5
'while/gru_cell_1/strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB:¬2)
'while/gru_cell_1/strided_slice_11/stack 
)while/gru_cell_1/strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2+
)while/gru_cell_1/strided_slice_11/stack_1 
)while/gru_cell_1/strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)while/gru_cell_1/strided_slice_11/stack_2Ö
!while/gru_cell_1/strided_slice_11StridedSlice!while/gru_cell_1/unstack:output:10while/gru_cell_1/strided_slice_11/stack:output:02while/gru_cell_1/strided_slice_11/stack_1:output:02while/gru_cell_1/strided_slice_11/stack_2:output:0*
Index0*
T0*
_output_shapes	
:*
end_mask2#
!while/gru_cell_1/strided_slice_11Ç
while/gru_cell_1/BiasAdd_5BiasAdd#while/gru_cell_1/MatMul_5:product:0*while/gru_cell_1/strided_slice_11:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/BiasAdd_5¯
while/gru_cell_1/mul_6Mulwhile/gru_cell_1/Sigmoid_1:y:0#while/gru_cell_1/BiasAdd_5:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/mul_6­
while/gru_cell_1/add_2AddV2#while/gru_cell_1/BiasAdd_2:output:0while/gru_cell_1/mul_6:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/add_2
while/gru_cell_1/TanhTanhwhile/gru_cell_1/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/Tanh
while/gru_cell_1/mul_7Mulwhile/gru_cell_1/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/mul_7u
while/gru_cell_1/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
while/gru_cell_1/sub/x¥
while/gru_cell_1/subSubwhile/gru_cell_1/sub/x:output:0while/gru_cell_1/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/sub
while/gru_cell_1/mul_8Mulwhile/gru_cell_1/sub:z:0while/gru_cell_1/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/mul_8¤
while/gru_cell_1/add_3AddV2while/gru_cell_1/mul_7:z:0while/gru_cell_1/mul_8:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_1/add_3Þ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_1/add_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/gru_cell_1/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4Ô

while/NoOpNoOp ^while/gru_cell_1/ReadVariableOp"^while/gru_cell_1/ReadVariableOp_1"^while/gru_cell_1/ReadVariableOp_2"^while/gru_cell_1/ReadVariableOp_3"^while/gru_cell_1/ReadVariableOp_4"^while/gru_cell_1/ReadVariableOp_5"^while/gru_cell_1/ReadVariableOp_6*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp"Z
*while_gru_cell_1_readvariableop_1_resource,while_gru_cell_1_readvariableop_1_resource_0"Z
*while_gru_cell_1_readvariableop_4_resource,while_gru_cell_1_readvariableop_4_resource_0"V
(while_gru_cell_1_readvariableop_resource*while_gru_cell_1_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2B
while/gru_cell_1/ReadVariableOpwhile/gru_cell_1/ReadVariableOp2F
!while/gru_cell_1/ReadVariableOp_1!while/gru_cell_1/ReadVariableOp_12F
!while/gru_cell_1/ReadVariableOp_2!while/gru_cell_1/ReadVariableOp_22F
!while/gru_cell_1/ReadVariableOp_3!while/gru_cell_1/ReadVariableOp_32F
!while/gru_cell_1/ReadVariableOp_4!while/gru_cell_1/ReadVariableOp_42F
!while/gru_cell_1/ReadVariableOp_5!while/gru_cell_1/ReadVariableOp_52F
!while/gru_cell_1/ReadVariableOp_6!while/gru_cell_1/ReadVariableOp_6: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
÷
¥
while_cond_41395
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_41395___redundant_placeholder03
/while_while_cond_41395___redundant_placeholder13
/while_while_cond_41395___redundant_placeholder23
/while_while_cond_41395___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
 

#sequential_2_gru_1_while_cond_38670B
>sequential_2_gru_1_while_sequential_2_gru_1_while_loop_counterH
Dsequential_2_gru_1_while_sequential_2_gru_1_while_maximum_iterations(
$sequential_2_gru_1_while_placeholder*
&sequential_2_gru_1_while_placeholder_1*
&sequential_2_gru_1_while_placeholder_2D
@sequential_2_gru_1_while_less_sequential_2_gru_1_strided_slice_1Y
Usequential_2_gru_1_while_sequential_2_gru_1_while_cond_38670___redundant_placeholder0Y
Usequential_2_gru_1_while_sequential_2_gru_1_while_cond_38670___redundant_placeholder1Y
Usequential_2_gru_1_while_sequential_2_gru_1_while_cond_38670___redundant_placeholder2Y
Usequential_2_gru_1_while_sequential_2_gru_1_while_cond_38670___redundant_placeholder3%
!sequential_2_gru_1_while_identity
Ï
sequential_2/gru_1/while/LessLess$sequential_2_gru_1_while_placeholder@sequential_2_gru_1_while_less_sequential_2_gru_1_strided_slice_1*
T0*
_output_shapes
: 2
sequential_2/gru_1/while/Less
!sequential_2/gru_1/while/IdentityIdentity!sequential_2/gru_1/while/Less:z:0*
T0
*
_output_shapes
: 2#
!sequential_2/gru_1/while/Identity"O
!sequential_2_gru_1_while_identity*sequential_2/gru_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
Í	

,__inference_sequential_2_layer_call_fn_40419
embedding_1_input
unknown:2
	unknown_0:	Â
	unknown_1:	2Â
	unknown_2:
Â
	unknown_3:	
	unknown_4:
identity¢StatefulPartitionedCall¶
StatefulPartitionedCallStatefulPartitionedCallembedding_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_2_layer_call_and_return_conditional_losses_403872
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ2: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
+
_user_specified_nameembedding_1_input
>
ü
@__inference_gru_1_layer_call_and_return_conditional_losses_39044

inputs#
gru_cell_1_38968:	Â#
gru_cell_1_38970:	2Â$
gru_cell_1_38972:
Â
identity¢"gru_cell_1/StatefulPartitionedCall¢whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ22
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask2
strided_slice_2è
"gru_cell_1/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0gru_cell_1_38968gru_cell_1_38970gru_cell_1_38972*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_gru_cell_1_layer_call_and_return_conditional_losses_389672$
"gru_cell_1/StatefulPartitionedCall
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterþ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0gru_cell_1_38968gru_cell_1_38970gru_cell_1_38972*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_38980*
condR
while_cond_38979*9
output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeò
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¯
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimet
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity{
NoOpNoOp#^gru_cell_1/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2: : : 2H
"gru_cell_1/StatefulPartitionedCall"gru_cell_1/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
æv
ó
!__inference__traced_restore_43084
file_prefix9
'assignvariableop_embedding_1_embeddings:22
assignvariableop_1_dense_kernel:	+
assignvariableop_2_dense_bias:#
assignvariableop_3_beta_1: #
assignvariableop_4_beta_2: "
assignvariableop_5_decay: *
 assignvariableop_6_learning_rate: &
assignvariableop_7_adam_iter:	 =
*assignvariableop_8_gru_1_gru_cell_1_kernel:	2ÂH
4assignvariableop_9_gru_1_gru_cell_1_recurrent_kernel:
Â<
)assignvariableop_10_gru_1_gru_cell_1_bias:	Â#
assignvariableop_11_total: #
assignvariableop_12_count: %
assignvariableop_13_total_1: %
assignvariableop_14_count_1: C
1assignvariableop_15_adam_embedding_1_embeddings_m:2:
'assignvariableop_16_adam_dense_kernel_m:	3
%assignvariableop_17_adam_dense_bias_m:E
2assignvariableop_18_adam_gru_1_gru_cell_1_kernel_m:	2ÂP
<assignvariableop_19_adam_gru_1_gru_cell_1_recurrent_kernel_m:
ÂC
0assignvariableop_20_adam_gru_1_gru_cell_1_bias_m:	ÂC
1assignvariableop_21_adam_embedding_1_embeddings_v:2:
'assignvariableop_22_adam_dense_kernel_v:	3
%assignvariableop_23_adam_dense_bias_v:E
2assignvariableop_24_adam_gru_1_gru_cell_1_kernel_v:	2ÂP
<assignvariableop_25_adam_gru_1_gru_cell_1_recurrent_kernel_v:
ÂC
0assignvariableop_26_adam_gru_1_gru_cell_1_bias_v:	Â
identity_28¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_3¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9ô
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueöBóB:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesÆ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices¸
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapesr
p::::::::::::::::::::::::::::**
dtypes 
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity¦
AssignVariableOpAssignVariableOp'assignvariableop_embedding_1_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1¤
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2¢
AssignVariableOp_2AssignVariableOpassignvariableop_2_dense_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3
AssignVariableOp_3AssignVariableOpassignvariableop_3_beta_1Identity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4
AssignVariableOp_4AssignVariableOpassignvariableop_4_beta_2Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5
AssignVariableOp_5AssignVariableOpassignvariableop_5_decayIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6¥
AssignVariableOp_6AssignVariableOp assignvariableop_6_learning_rateIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_7¡
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_iterIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8¯
AssignVariableOp_8AssignVariableOp*assignvariableop_8_gru_1_gru_cell_1_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9¹
AssignVariableOp_9AssignVariableOp4assignvariableop_9_gru_1_gru_cell_1_recurrent_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10±
AssignVariableOp_10AssignVariableOp)assignvariableop_10_gru_1_gru_cell_1_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11¡
AssignVariableOp_11AssignVariableOpassignvariableop_11_totalIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12¡
AssignVariableOp_12AssignVariableOpassignvariableop_12_countIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13£
AssignVariableOp_13AssignVariableOpassignvariableop_13_total_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14£
AssignVariableOp_14AssignVariableOpassignvariableop_14_count_1Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15¹
AssignVariableOp_15AssignVariableOp1assignvariableop_15_adam_embedding_1_embeddings_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16¯
AssignVariableOp_16AssignVariableOp'assignvariableop_16_adam_dense_kernel_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17­
AssignVariableOp_17AssignVariableOp%assignvariableop_17_adam_dense_bias_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18º
AssignVariableOp_18AssignVariableOp2assignvariableop_18_adam_gru_1_gru_cell_1_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19Ä
AssignVariableOp_19AssignVariableOp<assignvariableop_19_adam_gru_1_gru_cell_1_recurrent_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20¸
AssignVariableOp_20AssignVariableOp0assignvariableop_20_adam_gru_1_gru_cell_1_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21¹
AssignVariableOp_21AssignVariableOp1assignvariableop_21_adam_embedding_1_embeddings_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22¯
AssignVariableOp_22AssignVariableOp'assignvariableop_22_adam_dense_kernel_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23­
AssignVariableOp_23AssignVariableOp%assignvariableop_23_adam_dense_bias_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24º
AssignVariableOp_24AssignVariableOp2assignvariableop_24_adam_gru_1_gru_cell_1_kernel_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25Ä
AssignVariableOp_25AssignVariableOp<assignvariableop_25_adam_gru_1_gru_cell_1_recurrent_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26¸
AssignVariableOp_26AssignVariableOp0assignvariableop_26_adam_gru_1_gru_cell_1_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_269
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp°
Identity_27Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_27f
Identity_28IdentityIdentity_27:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_28
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_28Identity_28:output:0*K
_input_shapes:
8: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262(
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

ò
@__inference_dense_layer_call_and_return_conditional_losses_39908

inputs1
matmul_readvariableop_resource:	-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Softmaxl
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs"¨L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*¼
serving_default¨
O
embedding_1_input:
#serving_default_embedding_1_input:0ÿÿÿÿÿÿÿÿÿ29
dense0
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:½o
Û
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	optimizer
regularization_losses
trainable_variables
	variables
	keras_api
	
signatures
X__call__
Y_default_save_signature
*Z&call_and_return_all_conditional_losses"
_tf_keras_sequential
µ


embeddings
regularization_losses
trainable_variables
	variables
	keras_api
[__call__
*\&call_and_return_all_conditional_losses"
_tf_keras_layer
Ã
cell

state_spec
regularization_losses
trainable_variables
	variables
	keras_api
]__call__
*^&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
»

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
___call__
*`&call_and_return_all_conditional_losses"
_tf_keras_layer
¿

beta_1

beta_2
	decay
learning_rate
iter
mLmMmN mO!mP"mQ
vRvSvT vU!vV"vW"
	optimizer
 "
trackable_list_wrapper
J

0
 1
!2
"3
4
5"
trackable_list_wrapper
J

0
 1
!2
"3
4
5"
trackable_list_wrapper
Ê

#layers
regularization_losses
trainable_variables
	variables
$layer_regularization_losses
%layer_metrics
&non_trainable_variables
'metrics
X__call__
Y_default_save_signature
*Z&call_and_return_all_conditional_losses
&Z"call_and_return_conditional_losses"
_generic_user_object
,
aserving_default"
signature_map
(:&22embedding_1/embeddings
 "
trackable_list_wrapper
'

0"
trackable_list_wrapper
'

0"
trackable_list_wrapper
­

(layers
regularization_losses
trainable_variables
	variables
)layer_regularization_losses
*layer_metrics
+non_trainable_variables
,metrics
[__call__
*\&call_and_return_all_conditional_losses
&\"call_and_return_conditional_losses"
_generic_user_object
Ñ

 kernel
!recurrent_kernel
"bias
-regularization_losses
.trainable_variables
/	variables
0	keras_api
b__call__
*c&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5
 0
!1
"2"
trackable_list_wrapper
5
 0
!1
"2"
trackable_list_wrapper
¹

1layers
regularization_losses
trainable_variables
	variables
2layer_regularization_losses
3layer_metrics

4states
5non_trainable_variables
6metrics
]__call__
*^&call_and_return_all_conditional_losses
&^"call_and_return_conditional_losses"
_generic_user_object
:	2dense/kernel
:2
dense/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
­

7layers
regularization_losses
trainable_variables
	variables
8layer_regularization_losses
9layer_metrics
:non_trainable_variables
;metrics
___call__
*`&call_and_return_all_conditional_losses
&`"call_and_return_conditional_losses"
_generic_user_object
: (2beta_1
: (2beta_2
: (2decay
: (2learning_rate
:	 (2	Adam/iter
*:(	2Â2gru_1/gru_cell_1/kernel
5:3
Â2!gru_1/gru_cell_1/recurrent_kernel
(:&	Â2gru_1/gru_cell_1/bias
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
<0
=1"
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
5
 0
!1
"2"
trackable_list_wrapper
5
 0
!1
"2"
trackable_list_wrapper
­

>layers
-regularization_losses
.trainable_variables
/	variables
?layer_regularization_losses
@layer_metrics
Anon_trainable_variables
Bmetrics
b__call__
*c&call_and_return_all_conditional_losses
&c"call_and_return_conditional_losses"
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
N
	Ctotal
	Dcount
E	variables
F	keras_api"
_tf_keras_metric
^
	Gtotal
	Hcount
I
_fn_kwargs
J	variables
K	keras_api"
_tf_keras_metric
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
:  (2total
:  (2count
.
C0
D1"
trackable_list_wrapper
-
E	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
G0
H1"
trackable_list_wrapper
-
J	variables"
_generic_user_object
-:+22Adam/embedding_1/embeddings/m
$:"	2Adam/dense/kernel/m
:2Adam/dense/bias/m
/:-	2Â2Adam/gru_1/gru_cell_1/kernel/m
::8
Â2(Adam/gru_1/gru_cell_1/recurrent_kernel/m
-:+	Â2Adam/gru_1/gru_cell_1/bias/m
-:+22Adam/embedding_1/embeddings/v
$:"	2Adam/dense/kernel/v
:2Adam/dense/bias/v
/:-	2Â2Adam/gru_1/gru_cell_1/kernel/v
::8
Â2(Adam/gru_1/gru_cell_1/recurrent_kernel/v
-:+	Â2Adam/gru_1/gru_cell_1/bias/v
þ2û
,__inference_sequential_2_layer_call_fn_39930
,__inference_sequential_2_layer_call_fn_40499
,__inference_sequential_2_layer_call_fn_40516
,__inference_sequential_2_layer_call_fn_40419À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ÕBÒ
 __inference__wrapped_model_38830embedding_1_input"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ê2ç
G__inference_sequential_2_layer_call_and_return_conditional_losses_40812
G__inference_sequential_2_layer_call_and_return_conditional_losses_41204
G__inference_sequential_2_layer_call_and_return_conditional_losses_40438
G__inference_sequential_2_layer_call_and_return_conditional_losses_40457À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Õ2Ò
+__inference_embedding_1_layer_call_fn_41211¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ð2í
F__inference_embedding_1_layer_call_and_return_conditional_losses_41221¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
÷2ô
%__inference_gru_1_layer_call_fn_41232
%__inference_gru_1_layer_call_fn_41243
%__inference_gru_1_layer_call_fn_41254
%__inference_gru_1_layer_call_fn_41265Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ã2à
@__inference_gru_1_layer_call_and_return_conditional_losses_41548
@__inference_gru_1_layer_call_and_return_conditional_losses_41927
@__inference_gru_1_layer_call_and_return_conditional_losses_42210
@__inference_gru_1_layer_call_and_return_conditional_losses_42589Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ï2Ì
%__inference_dense_layer_call_fn_42598¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ê2ç
@__inference_dense_layer_call_and_return_conditional_losses_42609¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ÔBÑ
#__inference_signature_wrapper_40482embedding_1_input"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
2
*__inference_gru_cell_1_layer_call_fn_42623
*__inference_gru_cell_1_layer_call_fn_42637¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ò2Ï
E__inference_gru_cell_1_layer_call_and_return_conditional_losses_42739
E__inference_gru_cell_1_layer_call_and_return_conditional_losses_42889¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
 __inference__wrapped_model_38830s
" !:¢7
0¢-
+(
embedding_1_inputÿÿÿÿÿÿÿÿÿ2
ª "-ª*
(
dense
denseÿÿÿÿÿÿÿÿÿ¡
@__inference_dense_layer_call_and_return_conditional_losses_42609]0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 y
%__inference_dense_layer_call_fn_42598P0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ©
F__inference_embedding_1_layer_call_and_return_conditional_losses_41221_
/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ2
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ22
 
+__inference_embedding_1_layer_call_fn_41211R
/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ2
ª "ÿÿÿÿÿÿÿÿÿ22Â
@__inference_gru_1_layer_call_and_return_conditional_losses_41548~" !O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

 
p 

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 Â
@__inference_gru_1_layer_call_and_return_conditional_losses_41927~" !O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

 
p

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 ²
@__inference_gru_1_layer_call_and_return_conditional_losses_42210n" !?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ22

 
p 

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 ²
@__inference_gru_1_layer_call_and_return_conditional_losses_42589n" !?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ22

 
p

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
%__inference_gru_1_layer_call_fn_41232q" !O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
%__inference_gru_1_layer_call_fn_41243q" !O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

 
p

 
ª "ÿÿÿÿÿÿÿÿÿ
%__inference_gru_1_layer_call_fn_41254a" !?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ22

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
%__inference_gru_1_layer_call_fn_41265a" !?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ22

 
p

 
ª "ÿÿÿÿÿÿÿÿÿ
E__inference_gru_cell_1_layer_call_and_return_conditional_losses_42739º" !]¢Z
S¢P
 
inputsÿÿÿÿÿÿÿÿÿ2
(¢%
# 
states/0ÿÿÿÿÿÿÿÿÿ
p 
ª "T¢Q
J¢G

0/0ÿÿÿÿÿÿÿÿÿ
%"
 
0/1/0ÿÿÿÿÿÿÿÿÿ
 
E__inference_gru_cell_1_layer_call_and_return_conditional_losses_42889º" !]¢Z
S¢P
 
inputsÿÿÿÿÿÿÿÿÿ2
(¢%
# 
states/0ÿÿÿÿÿÿÿÿÿ
p
ª "T¢Q
J¢G

0/0ÿÿÿÿÿÿÿÿÿ
%"
 
0/1/0ÿÿÿÿÿÿÿÿÿ
 Û
*__inference_gru_cell_1_layer_call_fn_42623¬" !]¢Z
S¢P
 
inputsÿÿÿÿÿÿÿÿÿ2
(¢%
# 
states/0ÿÿÿÿÿÿÿÿÿ
p 
ª "F¢C

0ÿÿÿÿÿÿÿÿÿ
# 

1/0ÿÿÿÿÿÿÿÿÿÛ
*__inference_gru_cell_1_layer_call_fn_42637¬" !]¢Z
S¢P
 
inputsÿÿÿÿÿÿÿÿÿ2
(¢%
# 
states/0ÿÿÿÿÿÿÿÿÿ
p
ª "F¢C

0ÿÿÿÿÿÿÿÿÿ
# 

1/0ÿÿÿÿÿÿÿÿÿ¾
G__inference_sequential_2_layer_call_and_return_conditional_losses_40438s
" !B¢?
8¢5
+(
embedding_1_inputÿÿÿÿÿÿÿÿÿ2
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¾
G__inference_sequential_2_layer_call_and_return_conditional_losses_40457s
" !B¢?
8¢5
+(
embedding_1_inputÿÿÿÿÿÿÿÿÿ2
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ³
G__inference_sequential_2_layer_call_and_return_conditional_losses_40812h
" !7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ2
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ³
G__inference_sequential_2_layer_call_and_return_conditional_losses_41204h
" !7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ2
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
,__inference_sequential_2_layer_call_fn_39930f
" !B¢?
8¢5
+(
embedding_1_inputÿÿÿÿÿÿÿÿÿ2
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
,__inference_sequential_2_layer_call_fn_40419f
" !B¢?
8¢5
+(
embedding_1_inputÿÿÿÿÿÿÿÿÿ2
p

 
ª "ÿÿÿÿÿÿÿÿÿ
,__inference_sequential_2_layer_call_fn_40499[
" !7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ2
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
,__inference_sequential_2_layer_call_fn_40516[
" !7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ2
p

 
ª "ÿÿÿÿÿÿÿÿÿ°
#__inference_signature_wrapper_40482
" !O¢L
¢ 
EªB
@
embedding_1_input+(
embedding_1_inputÿÿÿÿÿÿÿÿÿ2"-ª*
(
dense
denseÿÿÿÿÿÿÿÿÿ