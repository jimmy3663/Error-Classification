Ы–
ЎЃ
B
AssignVariableOp
resource
value"dtype"
dtypetypeИ
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
Ы
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
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
≠
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
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
М
Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И
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
dtypetypeИ
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
Њ
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
executor_typestring И
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
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.4.02v2.4.0-0-g582c8d236cb8уд	
Х
dcnn/embedding_1/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:Їо»*,
shared_namedcnn/embedding_1/embeddings
О
/dcnn/embedding_1/embeddings/Read/ReadVariableOpReadVariableOpdcnn/embedding_1/embeddings*!
_output_shapes
:Їо»*
dtype0
Й
dcnn/conv1d_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:»d*%
shared_namedcnn/conv1d_3/kernel
В
(dcnn/conv1d_3/kernel/Read/ReadVariableOpReadVariableOpdcnn/conv1d_3/kernel*#
_output_shapes
:»d*
dtype0
|
dcnn/conv1d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*#
shared_namedcnn/conv1d_3/bias
u
&dcnn/conv1d_3/bias/Read/ReadVariableOpReadVariableOpdcnn/conv1d_3/bias*
_output_shapes
:d*
dtype0
Й
dcnn/conv1d_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:»d*%
shared_namedcnn/conv1d_4/kernel
В
(dcnn/conv1d_4/kernel/Read/ReadVariableOpReadVariableOpdcnn/conv1d_4/kernel*#
_output_shapes
:»d*
dtype0
|
dcnn/conv1d_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*#
shared_namedcnn/conv1d_4/bias
u
&dcnn/conv1d_4/bias/Read/ReadVariableOpReadVariableOpdcnn/conv1d_4/bias*
_output_shapes
:d*
dtype0
Й
dcnn/conv1d_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:»d*%
shared_namedcnn/conv1d_5/kernel
В
(dcnn/conv1d_5/kernel/Read/ReadVariableOpReadVariableOpdcnn/conv1d_5/kernel*#
_output_shapes
:»d*
dtype0
|
dcnn/conv1d_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*#
shared_namedcnn/conv1d_5/bias
u
&dcnn/conv1d_5/bias/Read/ReadVariableOpReadVariableOpdcnn/conv1d_5/bias*
_output_shapes
:d*
dtype0
Д
dcnn/dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ђА*$
shared_namedcnn/dense_2/kernel
}
'dcnn/dense_2/kernel/Read/ReadVariableOpReadVariableOpdcnn/dense_2/kernel* 
_output_shapes
:
ђА*
dtype0
{
dcnn/dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_namedcnn/dense_2/bias
t
%dcnn/dense_2/bias/Read/ReadVariableOpReadVariableOpdcnn/dense_2/bias*
_output_shapes	
:А*
dtype0
Г
dcnn/dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*$
shared_namedcnn/dense_3/kernel
|
'dcnn/dense_3/kernel/Read/ReadVariableOpReadVariableOpdcnn/dense_3/kernel*
_output_shapes
:	А*
dtype0
z
dcnn/dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_namedcnn/dense_3/bias
s
%dcnn/dense_3/bias/Read/ReadVariableOpReadVariableOpdcnn/dense_3/bias*
_output_shapes
:*
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
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
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
£
"Adam/dcnn/embedding_1/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:Їо»*3
shared_name$"Adam/dcnn/embedding_1/embeddings/m
Ь
6Adam/dcnn/embedding_1/embeddings/m/Read/ReadVariableOpReadVariableOp"Adam/dcnn/embedding_1/embeddings/m*!
_output_shapes
:Їо»*
dtype0
Ч
Adam/dcnn/conv1d_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:»d*,
shared_nameAdam/dcnn/conv1d_3/kernel/m
Р
/Adam/dcnn/conv1d_3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dcnn/conv1d_3/kernel/m*#
_output_shapes
:»d*
dtype0
К
Adam/dcnn/conv1d_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:d**
shared_nameAdam/dcnn/conv1d_3/bias/m
Г
-Adam/dcnn/conv1d_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/dcnn/conv1d_3/bias/m*
_output_shapes
:d*
dtype0
Ч
Adam/dcnn/conv1d_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:»d*,
shared_nameAdam/dcnn/conv1d_4/kernel/m
Р
/Adam/dcnn/conv1d_4/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dcnn/conv1d_4/kernel/m*#
_output_shapes
:»d*
dtype0
К
Adam/dcnn/conv1d_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:d**
shared_nameAdam/dcnn/conv1d_4/bias/m
Г
-Adam/dcnn/conv1d_4/bias/m/Read/ReadVariableOpReadVariableOpAdam/dcnn/conv1d_4/bias/m*
_output_shapes
:d*
dtype0
Ч
Adam/dcnn/conv1d_5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:»d*,
shared_nameAdam/dcnn/conv1d_5/kernel/m
Р
/Adam/dcnn/conv1d_5/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dcnn/conv1d_5/kernel/m*#
_output_shapes
:»d*
dtype0
К
Adam/dcnn/conv1d_5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:d**
shared_nameAdam/dcnn/conv1d_5/bias/m
Г
-Adam/dcnn/conv1d_5/bias/m/Read/ReadVariableOpReadVariableOpAdam/dcnn/conv1d_5/bias/m*
_output_shapes
:d*
dtype0
Т
Adam/dcnn/dense_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ђА*+
shared_nameAdam/dcnn/dense_2/kernel/m
Л
.Adam/dcnn/dense_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dcnn/dense_2/kernel/m* 
_output_shapes
:
ђА*
dtype0
Й
Adam/dcnn/dense_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*)
shared_nameAdam/dcnn/dense_2/bias/m
В
,Adam/dcnn/dense_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/dcnn/dense_2/bias/m*
_output_shapes	
:А*
dtype0
С
Adam/dcnn/dense_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*+
shared_nameAdam/dcnn/dense_3/kernel/m
К
.Adam/dcnn/dense_3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dcnn/dense_3/kernel/m*
_output_shapes
:	А*
dtype0
И
Adam/dcnn/dense_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/dcnn/dense_3/bias/m
Б
,Adam/dcnn/dense_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/dcnn/dense_3/bias/m*
_output_shapes
:*
dtype0
£
"Adam/dcnn/embedding_1/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:Їо»*3
shared_name$"Adam/dcnn/embedding_1/embeddings/v
Ь
6Adam/dcnn/embedding_1/embeddings/v/Read/ReadVariableOpReadVariableOp"Adam/dcnn/embedding_1/embeddings/v*!
_output_shapes
:Їо»*
dtype0
Ч
Adam/dcnn/conv1d_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:»d*,
shared_nameAdam/dcnn/conv1d_3/kernel/v
Р
/Adam/dcnn/conv1d_3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dcnn/conv1d_3/kernel/v*#
_output_shapes
:»d*
dtype0
К
Adam/dcnn/conv1d_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:d**
shared_nameAdam/dcnn/conv1d_3/bias/v
Г
-Adam/dcnn/conv1d_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/dcnn/conv1d_3/bias/v*
_output_shapes
:d*
dtype0
Ч
Adam/dcnn/conv1d_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:»d*,
shared_nameAdam/dcnn/conv1d_4/kernel/v
Р
/Adam/dcnn/conv1d_4/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dcnn/conv1d_4/kernel/v*#
_output_shapes
:»d*
dtype0
К
Adam/dcnn/conv1d_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:d**
shared_nameAdam/dcnn/conv1d_4/bias/v
Г
-Adam/dcnn/conv1d_4/bias/v/Read/ReadVariableOpReadVariableOpAdam/dcnn/conv1d_4/bias/v*
_output_shapes
:d*
dtype0
Ч
Adam/dcnn/conv1d_5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:»d*,
shared_nameAdam/dcnn/conv1d_5/kernel/v
Р
/Adam/dcnn/conv1d_5/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dcnn/conv1d_5/kernel/v*#
_output_shapes
:»d*
dtype0
К
Adam/dcnn/conv1d_5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:d**
shared_nameAdam/dcnn/conv1d_5/bias/v
Г
-Adam/dcnn/conv1d_5/bias/v/Read/ReadVariableOpReadVariableOpAdam/dcnn/conv1d_5/bias/v*
_output_shapes
:d*
dtype0
Т
Adam/dcnn/dense_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ђА*+
shared_nameAdam/dcnn/dense_2/kernel/v
Л
.Adam/dcnn/dense_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dcnn/dense_2/kernel/v* 
_output_shapes
:
ђА*
dtype0
Й
Adam/dcnn/dense_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*)
shared_nameAdam/dcnn/dense_2/bias/v
В
,Adam/dcnn/dense_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/dcnn/dense_2/bias/v*
_output_shapes	
:А*
dtype0
С
Adam/dcnn/dense_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*+
shared_nameAdam/dcnn/dense_3/kernel/v
К
.Adam/dcnn/dense_3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dcnn/dense_3/kernel/v*
_output_shapes
:	А*
dtype0
И
Adam/dcnn/dense_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/dcnn/dense_3/bias/v
Б
,Adam/dcnn/dense_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/dcnn/dense_3/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
Ђ>
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ж=
value№=Bў= B“=
џ
	embedding

bigram
trigram
fourgram
pool
dense_1
dropout

last_dense
		optimizer

trainable_variables
regularization_losses
	variables
	keras_api

signatures
b

embeddings
trainable_variables
regularization_losses
	variables
	keras_api
h

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
h

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
h

 kernel
!bias
"trainable_variables
#regularization_losses
$	variables
%	keras_api
R
&trainable_variables
'regularization_losses
(	variables
)	keras_api
h

*kernel
+bias
,trainable_variables
-regularization_losses
.	variables
/	keras_api
R
0trainable_variables
1regularization_losses
2	variables
3	keras_api
h

4kernel
5bias
6trainable_variables
7regularization_losses
8	variables
9	keras_api
У
:iter

;beta_1

<beta_2
	=decay
>learning_ratemwmxmymzm{ m|!m}*m~+m4mА5mБvВvГvДvЕvЖ vЗ!vИ*vЙ+vК4vЛ5vМ
N
0
1
2
3
4
 5
!6
*7
+8
49
510
 
N
0
1
2
3
4
 5
!6
*7
+8
49
510
≠

?layers
@non_trainable_variables

trainable_variables
Ametrics
regularization_losses
Blayer_regularization_losses
Clayer_metrics
	variables
 
`^
VARIABLE_VALUEdcnn/embedding_1/embeddings/embedding/embeddings/.ATTRIBUTES/VARIABLE_VALUE

0
 

0
≠

Dlayers
Enon_trainable_variables
Fmetrics
trainable_variables
regularization_losses
Glayer_regularization_losses
Hlayer_metrics
	variables
RP
VARIABLE_VALUEdcnn/conv1d_3/kernel(bigram/kernel/.ATTRIBUTES/VARIABLE_VALUE
NL
VARIABLE_VALUEdcnn/conv1d_3/bias&bigram/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
≠

Ilayers
Jnon_trainable_variables
Kmetrics
trainable_variables
regularization_losses
Llayer_regularization_losses
Mlayer_metrics
	variables
SQ
VARIABLE_VALUEdcnn/conv1d_4/kernel)trigram/kernel/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEdcnn/conv1d_4/bias'trigram/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
≠

Nlayers
Onon_trainable_variables
Pmetrics
trainable_variables
regularization_losses
Qlayer_regularization_losses
Rlayer_metrics
	variables
TR
VARIABLE_VALUEdcnn/conv1d_5/kernel*fourgram/kernel/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEdcnn/conv1d_5/bias(fourgram/bias/.ATTRIBUTES/VARIABLE_VALUE

 0
!1
 

 0
!1
≠

Slayers
Tnon_trainable_variables
Umetrics
"trainable_variables
#regularization_losses
Vlayer_regularization_losses
Wlayer_metrics
$	variables
 
 
 
≠

Xlayers
Ynon_trainable_variables
Zmetrics
&trainable_variables
'regularization_losses
[layer_regularization_losses
\layer_metrics
(	variables
RP
VARIABLE_VALUEdcnn/dense_2/kernel)dense_1/kernel/.ATTRIBUTES/VARIABLE_VALUE
NL
VARIABLE_VALUEdcnn/dense_2/bias'dense_1/bias/.ATTRIBUTES/VARIABLE_VALUE

*0
+1
 

*0
+1
≠

]layers
^non_trainable_variables
_metrics
,trainable_variables
-regularization_losses
`layer_regularization_losses
alayer_metrics
.	variables
 
 
 
≠

blayers
cnon_trainable_variables
dmetrics
0trainable_variables
1regularization_losses
elayer_regularization_losses
flayer_metrics
2	variables
US
VARIABLE_VALUEdcnn/dense_3/kernel,last_dense/kernel/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEdcnn/dense_3/bias*last_dense/bias/.ATTRIBUTES/VARIABLE_VALUE

40
51
 

40
51
≠

glayers
hnon_trainable_variables
imetrics
6trainable_variables
7regularization_losses
jlayer_regularization_losses
klayer_metrics
8	variables
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
8
0
1
2
3
4
5
6
7
 

l0
m1
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
4
	ntotal
	ocount
p	variables
q	keras_api
D
	rtotal
	scount
t
_fn_kwargs
u	variables
v	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

n0
o1

p	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

r0
s1

u	variables
ДБ
VARIABLE_VALUE"Adam/dcnn/embedding_1/embeddings/mKembedding/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/dcnn/conv1d_3/kernel/mDbigram/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
qo
VARIABLE_VALUEAdam/dcnn/conv1d_3/bias/mBbigram/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/dcnn/conv1d_4/kernel/mEtrigram/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUEAdam/dcnn/conv1d_4/bias/mCtrigram/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dcnn/conv1d_5/kernel/mFfourgram/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUEAdam/dcnn/conv1d_5/bias/mDfourgram/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/dcnn/dense_2/kernel/mEdense_1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
qo
VARIABLE_VALUEAdam/dcnn/dense_2/bias/mCdense_1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/dcnn/dense_3/kernel/mHlast_dense/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdam/dcnn/dense_3/bias/mFlast_dense/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ДБ
VARIABLE_VALUE"Adam/dcnn/embedding_1/embeddings/vKembedding/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/dcnn/conv1d_3/kernel/vDbigram/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
qo
VARIABLE_VALUEAdam/dcnn/conv1d_3/bias/vBbigram/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/dcnn/conv1d_4/kernel/vEtrigram/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUEAdam/dcnn/conv1d_4/bias/vCtrigram/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dcnn/conv1d_5/kernel/vFfourgram/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUEAdam/dcnn/conv1d_5/bias/vDfourgram/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/dcnn/dense_2/kernel/vEdense_1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
qo
VARIABLE_VALUEAdam/dcnn/dense_2/bias/vCdense_1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/dcnn/dense_3/kernel/vHlast_dense/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdam/dcnn/dense_3/bias/vFlast_dense/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
М
serving_default_input_1Placeholder*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
dtype0*%
shape:€€€€€€€€€€€€€€€€€€
≤
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1dcnn/embedding_1/embeddingsdcnn/conv1d_3/kerneldcnn/conv1d_3/biasdcnn/conv1d_4/kerneldcnn/conv1d_4/biasdcnn/conv1d_5/kerneldcnn/conv1d_5/biasdcnn/dense_2/kerneldcnn/dense_2/biasdcnn/dense_3/kerneldcnn/dense_3/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *,
f'R%
#__inference_signature_wrapper_52780
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ћ
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename/dcnn/embedding_1/embeddings/Read/ReadVariableOp(dcnn/conv1d_3/kernel/Read/ReadVariableOp&dcnn/conv1d_3/bias/Read/ReadVariableOp(dcnn/conv1d_4/kernel/Read/ReadVariableOp&dcnn/conv1d_4/bias/Read/ReadVariableOp(dcnn/conv1d_5/kernel/Read/ReadVariableOp&dcnn/conv1d_5/bias/Read/ReadVariableOp'dcnn/dense_2/kernel/Read/ReadVariableOp%dcnn/dense_2/bias/Read/ReadVariableOp'dcnn/dense_3/kernel/Read/ReadVariableOp%dcnn/dense_3/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp6Adam/dcnn/embedding_1/embeddings/m/Read/ReadVariableOp/Adam/dcnn/conv1d_3/kernel/m/Read/ReadVariableOp-Adam/dcnn/conv1d_3/bias/m/Read/ReadVariableOp/Adam/dcnn/conv1d_4/kernel/m/Read/ReadVariableOp-Adam/dcnn/conv1d_4/bias/m/Read/ReadVariableOp/Adam/dcnn/conv1d_5/kernel/m/Read/ReadVariableOp-Adam/dcnn/conv1d_5/bias/m/Read/ReadVariableOp.Adam/dcnn/dense_2/kernel/m/Read/ReadVariableOp,Adam/dcnn/dense_2/bias/m/Read/ReadVariableOp.Adam/dcnn/dense_3/kernel/m/Read/ReadVariableOp,Adam/dcnn/dense_3/bias/m/Read/ReadVariableOp6Adam/dcnn/embedding_1/embeddings/v/Read/ReadVariableOp/Adam/dcnn/conv1d_3/kernel/v/Read/ReadVariableOp-Adam/dcnn/conv1d_3/bias/v/Read/ReadVariableOp/Adam/dcnn/conv1d_4/kernel/v/Read/ReadVariableOp-Adam/dcnn/conv1d_4/bias/v/Read/ReadVariableOp/Adam/dcnn/conv1d_5/kernel/v/Read/ReadVariableOp-Adam/dcnn/conv1d_5/bias/v/Read/ReadVariableOp.Adam/dcnn/dense_2/kernel/v/Read/ReadVariableOp,Adam/dcnn/dense_2/bias/v/Read/ReadVariableOp.Adam/dcnn/dense_3/kernel/v/Read/ReadVariableOp,Adam/dcnn/dense_3/bias/v/Read/ReadVariableOpConst*7
Tin0
.2,	*
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
GPU 2J 8В *'
f"R 
__inference__traced_save_53284
€	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedcnn/embedding_1/embeddingsdcnn/conv1d_3/kerneldcnn/conv1d_3/biasdcnn/conv1d_4/kerneldcnn/conv1d_4/biasdcnn/conv1d_5/kerneldcnn/conv1d_5/biasdcnn/dense_2/kerneldcnn/dense_2/biasdcnn/dense_3/kerneldcnn/dense_3/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1"Adam/dcnn/embedding_1/embeddings/mAdam/dcnn/conv1d_3/kernel/mAdam/dcnn/conv1d_3/bias/mAdam/dcnn/conv1d_4/kernel/mAdam/dcnn/conv1d_4/bias/mAdam/dcnn/conv1d_5/kernel/mAdam/dcnn/conv1d_5/bias/mAdam/dcnn/dense_2/kernel/mAdam/dcnn/dense_2/bias/mAdam/dcnn/dense_3/kernel/mAdam/dcnn/dense_3/bias/m"Adam/dcnn/embedding_1/embeddings/vAdam/dcnn/conv1d_3/kernel/vAdam/dcnn/conv1d_3/bias/vAdam/dcnn/conv1d_4/kernel/vAdam/dcnn/conv1d_4/bias/vAdam/dcnn/conv1d_5/kernel/vAdam/dcnn/conv1d_5/bias/vAdam/dcnn/dense_2/kernel/vAdam/dcnn/dense_2/bias/vAdam/dcnn/dense_3/kernel/vAdam/dcnn/dense_3/bias/v*6
Tin/
-2+*
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
GPU 2J 8В **
f%R#
!__inference__traced_restore_53420≤ѓ
Р
}
(__inference_conv1d_5_layer_call_fn_53068

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallА
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv1d_5_layer_call_and_return_conditional_losses_524702
StatefulPartitionedCallЫ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d2

Identity"
identityIdentity:output:0*<
_input_shapes+
):€€€€€€€€€€€€€€€€€€»::22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€»
 
_user_specified_nameinputs
ч	
џ
B__inference_dense_3_layer_call_and_return_conditional_losses_52557

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2	
SoftmaxЦ
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*/
_input_shapes
:€€€€€€€€€А::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Р
}
(__inference_conv1d_3_layer_call_fn_53018

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallА
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv1d_3_layer_call_and_return_conditional_losses_524042
StatefulPartitionedCallЫ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d2

Identity"
identityIdentity:output:0*<
_input_shapes+
):€€€€€€€€€€€€€€€€€€»::22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€»
 
_user_specified_nameinputs
И	
Б
$__inference_dcnn_layer_call_fn_52678
input_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9
identityИҐStatefulPartitionedCallе
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_dcnn_layer_call_and_return_conditional_losses_526532
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*[
_input_shapesJ
H:€€€€€€€€€€€€€€€€€€:::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
!
_user_specified_name	input_1
Џ
|
'__inference_dense_3_layer_call_fn_53135

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallт
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_525572
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*/
_input_shapes
:€€€€€€€€€А::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
ж

µ
F__inference_embedding_1_layer_call_and_return_conditional_losses_52986

inputs,
(embedding_lookup_readvariableop_resource
identityИҐembedding_lookup/ReadVariableOpЃ
embedding_lookup/ReadVariableOpReadVariableOp(embedding_lookup_readvariableop_resource*!
_output_shapes
:Їо»*
dtype02!
embedding_lookup/ReadVariableOp§
embedding_lookup/axisConst*2
_class(
&$loc:@embedding_lookup/ReadVariableOp*
_output_shapes
: *
dtype0*
value	B : 2
embedding_lookup/axisШ
embedding_lookupGatherV2'embedding_lookup/ReadVariableOp:value:0inputsembedding_lookup/axis:output:0*
Taxis0*
Tindices0*
Tparams0*2
_class(
&$loc:@embedding_lookup/ReadVariableOp*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€»2
embedding_lookupЭ
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€»2
embedding_lookup/Identity¶
IdentityIdentity"embedding_lookup/Identity:output:0 ^embedding_lookup/ReadVariableOp*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€»2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :€€€€€€€€€€€€€€€€€€:2B
embedding_lookup/ReadVariableOpembedding_lookup/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Р
}
(__inference_conv1d_4_layer_call_fn_53043

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallА
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv1d_4_layer_call_and_return_conditional_losses_524372
StatefulPartitionedCallЫ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d2

Identity"
identityIdentity:output:0*<
_input_shapes+
):€€€€€€€€€€€€€€€€€€»::22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€»
 
_user_specified_nameinputs
Ю1
∞
?__inference_dcnn_layer_call_and_return_conditional_losses_52653

inputs
embedding_1_52618
conv1d_3_52621
conv1d_3_52623
conv1d_4_52627
conv1d_4_52629
conv1d_5_52633
conv1d_5_52635
dense_2_52641
dense_2_52643
dense_3_52647
dense_3_52649
identityИҐ conv1d_3/StatefulPartitionedCallҐ conv1d_4/StatefulPartitionedCallҐ conv1d_5/StatefulPartitionedCallҐdense_2/StatefulPartitionedCallҐdense_3/StatefulPartitionedCallҐ!dropout_1/StatefulPartitionedCallҐ#embedding_1/StatefulPartitionedCallЩ
#embedding_1/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_1_52618*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€»*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_embedding_1_layer_call_and_return_conditional_losses_523762%
#embedding_1/StatefulPartitionedCallƒ
 conv1d_3/StatefulPartitionedCallStatefulPartitionedCall,embedding_1/StatefulPartitionedCall:output:0conv1d_3_52621conv1d_3_52623*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv1d_3_layer_call_and_return_conditional_losses_524042"
 conv1d_3/StatefulPartitionedCall†
&global_max_pooling1d_1/PartitionedCallPartitionedCall)conv1d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€d* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Z
fURS
Q__inference_global_max_pooling1d_1_layer_call_and_return_conditional_losses_523572(
&global_max_pooling1d_1/PartitionedCallƒ
 conv1d_4/StatefulPartitionedCallStatefulPartitionedCall,embedding_1/StatefulPartitionedCall:output:0conv1d_4_52627conv1d_4_52629*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv1d_4_layer_call_and_return_conditional_losses_524372"
 conv1d_4/StatefulPartitionedCall§
(global_max_pooling1d_1/PartitionedCall_1PartitionedCall)conv1d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€d* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Z
fURS
Q__inference_global_max_pooling1d_1_layer_call_and_return_conditional_losses_523572*
(global_max_pooling1d_1/PartitionedCall_1ƒ
 conv1d_5/StatefulPartitionedCallStatefulPartitionedCall,embedding_1/StatefulPartitionedCall:output:0conv1d_5_52633conv1d_5_52635*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv1d_5_layer_call_and_return_conditional_losses_524702"
 conv1d_5/StatefulPartitionedCall§
(global_max_pooling1d_1/PartitionedCall_2PartitionedCall)conv1d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€d* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Z
fURS
Q__inference_global_max_pooling1d_1_layer_call_and_return_conditional_losses_523572*
(global_max_pooling1d_1/PartitionedCall_2e
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
concat/axisЕ
concatConcatV2/global_max_pooling1d_1/PartitionedCall:output:01global_max_pooling1d_1/PartitionedCall_1:output:01global_max_pooling1d_1/PartitionedCall_2:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:€€€€€€€€€ђ2
concatЦ
dense_2/StatefulPartitionedCallStatefulPartitionedCallconcat:output:0dense_2_52641dense_2_52643*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_525002!
dense_2/StatefulPartitionedCallС
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_525282#
!dropout_1/StatefulPartitionedCall∞
dense_3/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0dense_3_52647dense_3_52649*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_525572!
dense_3/StatefulPartitionedCallу
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0!^conv1d_3/StatefulPartitionedCall!^conv1d_4/StatefulPartitionedCall!^conv1d_5/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall$^embedding_1/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*[
_input_shapesJ
H:€€€€€€€€€€€€€€€€€€:::::::::::2D
 conv1d_3/StatefulPartitionedCall conv1d_3/StatefulPartitionedCall2D
 conv1d_4/StatefulPartitionedCall conv1d_4/StatefulPartitionedCall2D
 conv1d_5/StatefulPartitionedCall conv1d_5/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2J
#embedding_1/StatefulPartitionedCall#embedding_1/StatefulPartitionedCall:X T
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
я
ц
C__inference_conv1d_3_layer_call_and_return_conditional_losses_52404

inputs/
+conv1d_expanddims_1_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐ"conv1d/ExpandDims_1/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
э€€€€€€€€2
conv1d/ExpandDims/dim†
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€»2
conv1d/ExpandDimsє
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:»d*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dimЄ
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:»d2
conv1d/ExpandDims_1ј
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€d*
paddingVALID*
strides
2
conv1dЫ
conv1d/SqueezeSqueezeconv1d:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d*
squeeze_dims

э€€€€€€€€2
conv1d/SqueezeМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
BiasAdd/ReadVariableOpХ
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d2	
BiasAdde
ReluReluBiasAdd:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d2
Relu±
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d2

Identity"
identityIdentity:output:0*<
_input_shapes+
):€€€€€€€€€€€€€€€€€€»::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:] Y
5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€»
 
_user_specified_nameinputs
я
ц
C__inference_conv1d_4_layer_call_and_return_conditional_losses_53034

inputs/
+conv1d_expanddims_1_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐ"conv1d/ExpandDims_1/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
э€€€€€€€€2
conv1d/ExpandDims/dim†
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€»2
conv1d/ExpandDimsє
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:»d*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dimЄ
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:»d2
conv1d/ExpandDims_1ј
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€d*
paddingVALID*
strides
2
conv1dЫ
conv1d/SqueezeSqueezeconv1d:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d*
squeeze_dims

э€€€€€€€€2
conv1d/SqueezeМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
BiasAdd/ReadVariableOpХ
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d2	
BiasAdde
ReluReluBiasAdd:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d2
Relu±
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d2

Identity"
identityIdentity:output:0*<
_input_shapes+
):€€€€€€€€€€€€€€€€€€»::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:] Y
5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€»
 
_user_specified_nameinputs
Й
c
D__inference_dropout_1_layer_call_and_return_conditional_losses_53100

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shapeµ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€А*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>2
dropout/GreaterEqual/yњ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dropout/GreaterEqualА
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:€€€€€€€€€А2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*'
_input_shapes
:€€€€€€€€€А:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Ц
E
)__inference_dropout_1_layer_call_fn_53115

inputs
identity√
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_525332
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*'
_input_shapes
:€€€€€€€€€А:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Ыi
Ґ
?__inference_dcnn_layer_call_and_return_conditional_losses_52855

inputs8
4embedding_1_embedding_lookup_readvariableop_resource8
4conv1d_3_conv1d_expanddims_1_readvariableop_resource,
(conv1d_3_biasadd_readvariableop_resource8
4conv1d_4_conv1d_expanddims_1_readvariableop_resource,
(conv1d_4_biasadd_readvariableop_resource8
4conv1d_5_conv1d_expanddims_1_readvariableop_resource,
(conv1d_5_biasadd_readvariableop_resource*
&dense_2_matmul_readvariableop_resource+
'dense_2_biasadd_readvariableop_resource*
&dense_3_matmul_readvariableop_resource+
'dense_3_biasadd_readvariableop_resource
identityИҐconv1d_3/BiasAdd/ReadVariableOpҐ+conv1d_3/conv1d/ExpandDims_1/ReadVariableOpҐconv1d_4/BiasAdd/ReadVariableOpҐ+conv1d_4/conv1d/ExpandDims_1/ReadVariableOpҐconv1d_5/BiasAdd/ReadVariableOpҐ+conv1d_5/conv1d/ExpandDims_1/ReadVariableOpҐdense_2/BiasAdd/ReadVariableOpҐdense_2/MatMul/ReadVariableOpҐdense_3/BiasAdd/ReadVariableOpҐdense_3/MatMul/ReadVariableOpҐ+embedding_1/embedding_lookup/ReadVariableOp“
+embedding_1/embedding_lookup/ReadVariableOpReadVariableOp4embedding_1_embedding_lookup_readvariableop_resource*!
_output_shapes
:Їо»*
dtype02-
+embedding_1/embedding_lookup/ReadVariableOp»
!embedding_1/embedding_lookup/axisConst*>
_class4
20loc:@embedding_1/embedding_lookup/ReadVariableOp*
_output_shapes
: *
dtype0*
value	B : 2#
!embedding_1/embedding_lookup/axis‘
embedding_1/embedding_lookupGatherV23embedding_1/embedding_lookup/ReadVariableOp:value:0inputs*embedding_1/embedding_lookup/axis:output:0*
Taxis0*
Tindices0*
Tparams0*>
_class4
20loc:@embedding_1/embedding_lookup/ReadVariableOp*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€»2
embedding_1/embedding_lookupЅ
%embedding_1/embedding_lookup/IdentityIdentity%embedding_1/embedding_lookup:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€»2'
%embedding_1/embedding_lookup/IdentityЛ
conv1d_3/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
э€€€€€€€€2 
conv1d_3/conv1d/ExpandDims/dimг
conv1d_3/conv1d/ExpandDims
ExpandDims.embedding_1/embedding_lookup/Identity:output:0'conv1d_3/conv1d/ExpandDims/dim:output:0*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€»2
conv1d_3/conv1d/ExpandDims‘
+conv1d_3/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_3_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:»d*
dtype02-
+conv1d_3/conv1d/ExpandDims_1/ReadVariableOpЖ
 conv1d_3/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2"
 conv1d_3/conv1d/ExpandDims_1/dim№
conv1d_3/conv1d/ExpandDims_1
ExpandDims3conv1d_3/conv1d/ExpandDims_1/ReadVariableOp:value:0)conv1d_3/conv1d/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:»d2
conv1d_3/conv1d/ExpandDims_1д
conv1d_3/conv1dConv2D#conv1d_3/conv1d/ExpandDims:output:0%conv1d_3/conv1d/ExpandDims_1:output:0*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€d*
paddingVALID*
strides
2
conv1d_3/conv1dґ
conv1d_3/conv1d/SqueezeSqueezeconv1d_3/conv1d:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d*
squeeze_dims

э€€€€€€€€2
conv1d_3/conv1d/SqueezeІ
conv1d_3/BiasAdd/ReadVariableOpReadVariableOp(conv1d_3_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02!
conv1d_3/BiasAdd/ReadVariableOpє
conv1d_3/BiasAddBiasAdd conv1d_3/conv1d/Squeeze:output:0'conv1d_3/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d2
conv1d_3/BiasAddА
conv1d_3/ReluReluconv1d_3/BiasAdd:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d2
conv1d_3/ReluЮ
,global_max_pooling1d_1/Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2.
,global_max_pooling1d_1/Max/reduction_indices≈
global_max_pooling1d_1/MaxMaxconv1d_3/Relu:activations:05global_max_pooling1d_1/Max/reduction_indices:output:0*
T0*'
_output_shapes
:€€€€€€€€€d2
global_max_pooling1d_1/MaxЛ
conv1d_4/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
э€€€€€€€€2 
conv1d_4/conv1d/ExpandDims/dimг
conv1d_4/conv1d/ExpandDims
ExpandDims.embedding_1/embedding_lookup/Identity:output:0'conv1d_4/conv1d/ExpandDims/dim:output:0*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€»2
conv1d_4/conv1d/ExpandDims‘
+conv1d_4/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_4_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:»d*
dtype02-
+conv1d_4/conv1d/ExpandDims_1/ReadVariableOpЖ
 conv1d_4/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2"
 conv1d_4/conv1d/ExpandDims_1/dim№
conv1d_4/conv1d/ExpandDims_1
ExpandDims3conv1d_4/conv1d/ExpandDims_1/ReadVariableOp:value:0)conv1d_4/conv1d/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:»d2
conv1d_4/conv1d/ExpandDims_1д
conv1d_4/conv1dConv2D#conv1d_4/conv1d/ExpandDims:output:0%conv1d_4/conv1d/ExpandDims_1:output:0*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€d*
paddingVALID*
strides
2
conv1d_4/conv1dґ
conv1d_4/conv1d/SqueezeSqueezeconv1d_4/conv1d:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d*
squeeze_dims

э€€€€€€€€2
conv1d_4/conv1d/SqueezeІ
conv1d_4/BiasAdd/ReadVariableOpReadVariableOp(conv1d_4_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02!
conv1d_4/BiasAdd/ReadVariableOpє
conv1d_4/BiasAddBiasAdd conv1d_4/conv1d/Squeeze:output:0'conv1d_4/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d2
conv1d_4/BiasAddА
conv1d_4/ReluReluconv1d_4/BiasAdd:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d2
conv1d_4/ReluҐ
.global_max_pooling1d_1/Max_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :20
.global_max_pooling1d_1/Max_1/reduction_indicesЋ
global_max_pooling1d_1/Max_1Maxconv1d_4/Relu:activations:07global_max_pooling1d_1/Max_1/reduction_indices:output:0*
T0*'
_output_shapes
:€€€€€€€€€d2
global_max_pooling1d_1/Max_1Л
conv1d_5/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
э€€€€€€€€2 
conv1d_5/conv1d/ExpandDims/dimг
conv1d_5/conv1d/ExpandDims
ExpandDims.embedding_1/embedding_lookup/Identity:output:0'conv1d_5/conv1d/ExpandDims/dim:output:0*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€»2
conv1d_5/conv1d/ExpandDims‘
+conv1d_5/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_5_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:»d*
dtype02-
+conv1d_5/conv1d/ExpandDims_1/ReadVariableOpЖ
 conv1d_5/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2"
 conv1d_5/conv1d/ExpandDims_1/dim№
conv1d_5/conv1d/ExpandDims_1
ExpandDims3conv1d_5/conv1d/ExpandDims_1/ReadVariableOp:value:0)conv1d_5/conv1d/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:»d2
conv1d_5/conv1d/ExpandDims_1д
conv1d_5/conv1dConv2D#conv1d_5/conv1d/ExpandDims:output:0%conv1d_5/conv1d/ExpandDims_1:output:0*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€d*
paddingVALID*
strides
2
conv1d_5/conv1dґ
conv1d_5/conv1d/SqueezeSqueezeconv1d_5/conv1d:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d*
squeeze_dims

э€€€€€€€€2
conv1d_5/conv1d/SqueezeІ
conv1d_5/BiasAdd/ReadVariableOpReadVariableOp(conv1d_5_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02!
conv1d_5/BiasAdd/ReadVariableOpє
conv1d_5/BiasAddBiasAdd conv1d_5/conv1d/Squeeze:output:0'conv1d_5/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d2
conv1d_5/BiasAddА
conv1d_5/ReluReluconv1d_5/BiasAdd:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d2
conv1d_5/ReluҐ
.global_max_pooling1d_1/Max_2/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :20
.global_max_pooling1d_1/Max_2/reduction_indicesЋ
global_max_pooling1d_1/Max_2Maxconv1d_5/Relu:activations:07global_max_pooling1d_1/Max_2/reduction_indices:output:0*
T0*'
_output_shapes
:€€€€€€€€€d2
global_max_pooling1d_1/Max_2e
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
concat/axisб
concatConcatV2#global_max_pooling1d_1/Max:output:0%global_max_pooling1d_1/Max_1:output:0%global_max_pooling1d_1/Max_2:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:€€€€€€€€€ђ2
concatІ
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource* 
_output_shapes
:
ђА*
dtype02
dense_2/MatMul/ReadVariableOpХ
dense_2/MatMulMatMulconcat:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dense_2/MatMul•
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02 
dense_2/BiasAdd/ReadVariableOpҐ
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dense_2/BiasAddq
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dense_2/Reluw
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2
dropout_1/dropout/Const¶
dropout_1/dropout/MulMuldense_2/Relu:activations:0 dropout_1/dropout/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dropout_1/dropout/Mul|
dropout_1/dropout/ShapeShapedense_2/Relu:activations:0*
T0*
_output_shapes
:2
dropout_1/dropout/Shape”
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€А*
dtype020
.dropout_1/dropout/random_uniform/RandomUniformЙ
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>2"
 dropout_1/dropout/GreaterEqual/yз
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2 
dropout_1/dropout/GreaterEqualЮ
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:€€€€€€€€€А2
dropout_1/dropout/Cast£
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dropout_1/dropout/Mul_1¶
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02
dense_3/MatMul/ReadVariableOp†
dense_3/MatMulMatMuldropout_1/dropout/Mul_1:z:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_3/MatMul§
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_3/BiasAdd/ReadVariableOp°
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_3/BiasAddy
dense_3/SoftmaxSoftmaxdense_3/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_3/SoftmaxН
IdentityIdentitydense_3/Softmax:softmax:0 ^conv1d_3/BiasAdd/ReadVariableOp,^conv1d_3/conv1d/ExpandDims_1/ReadVariableOp ^conv1d_4/BiasAdd/ReadVariableOp,^conv1d_4/conv1d/ExpandDims_1/ReadVariableOp ^conv1d_5/BiasAdd/ReadVariableOp,^conv1d_5/conv1d/ExpandDims_1/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp,^embedding_1/embedding_lookup/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*[
_input_shapesJ
H:€€€€€€€€€€€€€€€€€€:::::::::::2B
conv1d_3/BiasAdd/ReadVariableOpconv1d_3/BiasAdd/ReadVariableOp2Z
+conv1d_3/conv1d/ExpandDims_1/ReadVariableOp+conv1d_3/conv1d/ExpandDims_1/ReadVariableOp2B
conv1d_4/BiasAdd/ReadVariableOpconv1d_4/BiasAdd/ReadVariableOp2Z
+conv1d_4/conv1d/ExpandDims_1/ReadVariableOp+conv1d_4/conv1d/ExpandDims_1/ReadVariableOp2B
conv1d_5/BiasAdd/ReadVariableOpconv1d_5/BiasAdd/ReadVariableOp2Z
+conv1d_5/conv1d/ExpandDims_1/ReadVariableOp+conv1d_5/conv1d/ExpandDims_1/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2Z
+embedding_1/embedding_lookup/ReadVariableOp+embedding_1/embedding_lookup/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
ч	
џ
B__inference_dense_3_layer_call_and_return_conditional_losses_53126

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2	
SoftmaxЦ
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*/
_input_shapes
:€€€€€€€€€А::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Ћ
b
D__inference_dropout_1_layer_call_and_return_conditional_losses_52533

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:€€€€€€€€€А2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity_1"!

identity_1Identity_1:output:0*'
_input_shapes
:€€€€€€€€€А:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
и
А
#__inference_signature_wrapper_52780
input_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9
identityИҐStatefulPartitionedCall∆
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *)
f$R"
 __inference__wrapped_model_523502
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*[
_input_shapesJ
H:€€€€€€€€€€€€€€€€€€:::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
!
_user_specified_name	input_1
о_
Ґ
?__inference_dcnn_layer_call_and_return_conditional_losses_52923

inputs8
4embedding_1_embedding_lookup_readvariableop_resource8
4conv1d_3_conv1d_expanddims_1_readvariableop_resource,
(conv1d_3_biasadd_readvariableop_resource8
4conv1d_4_conv1d_expanddims_1_readvariableop_resource,
(conv1d_4_biasadd_readvariableop_resource8
4conv1d_5_conv1d_expanddims_1_readvariableop_resource,
(conv1d_5_biasadd_readvariableop_resource*
&dense_2_matmul_readvariableop_resource+
'dense_2_biasadd_readvariableop_resource*
&dense_3_matmul_readvariableop_resource+
'dense_3_biasadd_readvariableop_resource
identityИҐconv1d_3/BiasAdd/ReadVariableOpҐ+conv1d_3/conv1d/ExpandDims_1/ReadVariableOpҐconv1d_4/BiasAdd/ReadVariableOpҐ+conv1d_4/conv1d/ExpandDims_1/ReadVariableOpҐconv1d_5/BiasAdd/ReadVariableOpҐ+conv1d_5/conv1d/ExpandDims_1/ReadVariableOpҐdense_2/BiasAdd/ReadVariableOpҐdense_2/MatMul/ReadVariableOpҐdense_3/BiasAdd/ReadVariableOpҐdense_3/MatMul/ReadVariableOpҐ+embedding_1/embedding_lookup/ReadVariableOp“
+embedding_1/embedding_lookup/ReadVariableOpReadVariableOp4embedding_1_embedding_lookup_readvariableop_resource*!
_output_shapes
:Їо»*
dtype02-
+embedding_1/embedding_lookup/ReadVariableOp»
!embedding_1/embedding_lookup/axisConst*>
_class4
20loc:@embedding_1/embedding_lookup/ReadVariableOp*
_output_shapes
: *
dtype0*
value	B : 2#
!embedding_1/embedding_lookup/axis‘
embedding_1/embedding_lookupGatherV23embedding_1/embedding_lookup/ReadVariableOp:value:0inputs*embedding_1/embedding_lookup/axis:output:0*
Taxis0*
Tindices0*
Tparams0*>
_class4
20loc:@embedding_1/embedding_lookup/ReadVariableOp*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€»2
embedding_1/embedding_lookupЅ
%embedding_1/embedding_lookup/IdentityIdentity%embedding_1/embedding_lookup:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€»2'
%embedding_1/embedding_lookup/IdentityЛ
conv1d_3/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
э€€€€€€€€2 
conv1d_3/conv1d/ExpandDims/dimг
conv1d_3/conv1d/ExpandDims
ExpandDims.embedding_1/embedding_lookup/Identity:output:0'conv1d_3/conv1d/ExpandDims/dim:output:0*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€»2
conv1d_3/conv1d/ExpandDims‘
+conv1d_3/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_3_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:»d*
dtype02-
+conv1d_3/conv1d/ExpandDims_1/ReadVariableOpЖ
 conv1d_3/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2"
 conv1d_3/conv1d/ExpandDims_1/dim№
conv1d_3/conv1d/ExpandDims_1
ExpandDims3conv1d_3/conv1d/ExpandDims_1/ReadVariableOp:value:0)conv1d_3/conv1d/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:»d2
conv1d_3/conv1d/ExpandDims_1д
conv1d_3/conv1dConv2D#conv1d_3/conv1d/ExpandDims:output:0%conv1d_3/conv1d/ExpandDims_1:output:0*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€d*
paddingVALID*
strides
2
conv1d_3/conv1dґ
conv1d_3/conv1d/SqueezeSqueezeconv1d_3/conv1d:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d*
squeeze_dims

э€€€€€€€€2
conv1d_3/conv1d/SqueezeІ
conv1d_3/BiasAdd/ReadVariableOpReadVariableOp(conv1d_3_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02!
conv1d_3/BiasAdd/ReadVariableOpє
conv1d_3/BiasAddBiasAdd conv1d_3/conv1d/Squeeze:output:0'conv1d_3/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d2
conv1d_3/BiasAddА
conv1d_3/ReluReluconv1d_3/BiasAdd:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d2
conv1d_3/ReluЮ
,global_max_pooling1d_1/Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2.
,global_max_pooling1d_1/Max/reduction_indices≈
global_max_pooling1d_1/MaxMaxconv1d_3/Relu:activations:05global_max_pooling1d_1/Max/reduction_indices:output:0*
T0*'
_output_shapes
:€€€€€€€€€d2
global_max_pooling1d_1/MaxЛ
conv1d_4/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
э€€€€€€€€2 
conv1d_4/conv1d/ExpandDims/dimг
conv1d_4/conv1d/ExpandDims
ExpandDims.embedding_1/embedding_lookup/Identity:output:0'conv1d_4/conv1d/ExpandDims/dim:output:0*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€»2
conv1d_4/conv1d/ExpandDims‘
+conv1d_4/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_4_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:»d*
dtype02-
+conv1d_4/conv1d/ExpandDims_1/ReadVariableOpЖ
 conv1d_4/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2"
 conv1d_4/conv1d/ExpandDims_1/dim№
conv1d_4/conv1d/ExpandDims_1
ExpandDims3conv1d_4/conv1d/ExpandDims_1/ReadVariableOp:value:0)conv1d_4/conv1d/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:»d2
conv1d_4/conv1d/ExpandDims_1д
conv1d_4/conv1dConv2D#conv1d_4/conv1d/ExpandDims:output:0%conv1d_4/conv1d/ExpandDims_1:output:0*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€d*
paddingVALID*
strides
2
conv1d_4/conv1dґ
conv1d_4/conv1d/SqueezeSqueezeconv1d_4/conv1d:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d*
squeeze_dims

э€€€€€€€€2
conv1d_4/conv1d/SqueezeІ
conv1d_4/BiasAdd/ReadVariableOpReadVariableOp(conv1d_4_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02!
conv1d_4/BiasAdd/ReadVariableOpє
conv1d_4/BiasAddBiasAdd conv1d_4/conv1d/Squeeze:output:0'conv1d_4/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d2
conv1d_4/BiasAddА
conv1d_4/ReluReluconv1d_4/BiasAdd:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d2
conv1d_4/ReluҐ
.global_max_pooling1d_1/Max_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :20
.global_max_pooling1d_1/Max_1/reduction_indicesЋ
global_max_pooling1d_1/Max_1Maxconv1d_4/Relu:activations:07global_max_pooling1d_1/Max_1/reduction_indices:output:0*
T0*'
_output_shapes
:€€€€€€€€€d2
global_max_pooling1d_1/Max_1Л
conv1d_5/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
э€€€€€€€€2 
conv1d_5/conv1d/ExpandDims/dimг
conv1d_5/conv1d/ExpandDims
ExpandDims.embedding_1/embedding_lookup/Identity:output:0'conv1d_5/conv1d/ExpandDims/dim:output:0*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€»2
conv1d_5/conv1d/ExpandDims‘
+conv1d_5/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_5_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:»d*
dtype02-
+conv1d_5/conv1d/ExpandDims_1/ReadVariableOpЖ
 conv1d_5/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2"
 conv1d_5/conv1d/ExpandDims_1/dim№
conv1d_5/conv1d/ExpandDims_1
ExpandDims3conv1d_5/conv1d/ExpandDims_1/ReadVariableOp:value:0)conv1d_5/conv1d/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:»d2
conv1d_5/conv1d/ExpandDims_1д
conv1d_5/conv1dConv2D#conv1d_5/conv1d/ExpandDims:output:0%conv1d_5/conv1d/ExpandDims_1:output:0*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€d*
paddingVALID*
strides
2
conv1d_5/conv1dґ
conv1d_5/conv1d/SqueezeSqueezeconv1d_5/conv1d:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d*
squeeze_dims

э€€€€€€€€2
conv1d_5/conv1d/SqueezeІ
conv1d_5/BiasAdd/ReadVariableOpReadVariableOp(conv1d_5_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02!
conv1d_5/BiasAdd/ReadVariableOpє
conv1d_5/BiasAddBiasAdd conv1d_5/conv1d/Squeeze:output:0'conv1d_5/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d2
conv1d_5/BiasAddА
conv1d_5/ReluReluconv1d_5/BiasAdd:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d2
conv1d_5/ReluҐ
.global_max_pooling1d_1/Max_2/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :20
.global_max_pooling1d_1/Max_2/reduction_indicesЋ
global_max_pooling1d_1/Max_2Maxconv1d_5/Relu:activations:07global_max_pooling1d_1/Max_2/reduction_indices:output:0*
T0*'
_output_shapes
:€€€€€€€€€d2
global_max_pooling1d_1/Max_2e
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
concat/axisб
concatConcatV2#global_max_pooling1d_1/Max:output:0%global_max_pooling1d_1/Max_1:output:0%global_max_pooling1d_1/Max_2:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:€€€€€€€€€ђ2
concatІ
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource* 
_output_shapes
:
ђА*
dtype02
dense_2/MatMul/ReadVariableOpХ
dense_2/MatMulMatMulconcat:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dense_2/MatMul•
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02 
dense_2/BiasAdd/ReadVariableOpҐ
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dense_2/BiasAddq
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dense_2/ReluГ
dropout_1/IdentityIdentitydense_2/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dropout_1/Identity¶
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02
dense_3/MatMul/ReadVariableOp†
dense_3/MatMulMatMuldropout_1/Identity:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_3/MatMul§
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_3/BiasAdd/ReadVariableOp°
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_3/BiasAddy
dense_3/SoftmaxSoftmaxdense_3/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_3/SoftmaxН
IdentityIdentitydense_3/Softmax:softmax:0 ^conv1d_3/BiasAdd/ReadVariableOp,^conv1d_3/conv1d/ExpandDims_1/ReadVariableOp ^conv1d_4/BiasAdd/ReadVariableOp,^conv1d_4/conv1d/ExpandDims_1/ReadVariableOp ^conv1d_5/BiasAdd/ReadVariableOp,^conv1d_5/conv1d/ExpandDims_1/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp,^embedding_1/embedding_lookup/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*[
_input_shapesJ
H:€€€€€€€€€€€€€€€€€€:::::::::::2B
conv1d_3/BiasAdd/ReadVariableOpconv1d_3/BiasAdd/ReadVariableOp2Z
+conv1d_3/conv1d/ExpandDims_1/ReadVariableOp+conv1d_3/conv1d/ExpandDims_1/ReadVariableOp2B
conv1d_4/BiasAdd/ReadVariableOpconv1d_4/BiasAdd/ReadVariableOp2Z
+conv1d_4/conv1d/ExpandDims_1/ReadVariableOp+conv1d_4/conv1d/ExpandDims_1/ReadVariableOp2B
conv1d_5/BiasAdd/ReadVariableOpconv1d_5/BiasAdd/ReadVariableOp2Z
+conv1d_5/conv1d/ExpandDims_1/ReadVariableOp+conv1d_5/conv1d/ExpandDims_1/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2Z
+embedding_1/embedding_lookup/ReadVariableOp+embedding_1/embedding_lookup/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Ќh
т
 __inference__wrapped_model_52350
input_1=
9dcnn_embedding_1_embedding_lookup_readvariableop_resource=
9dcnn_conv1d_3_conv1d_expanddims_1_readvariableop_resource1
-dcnn_conv1d_3_biasadd_readvariableop_resource=
9dcnn_conv1d_4_conv1d_expanddims_1_readvariableop_resource1
-dcnn_conv1d_4_biasadd_readvariableop_resource=
9dcnn_conv1d_5_conv1d_expanddims_1_readvariableop_resource1
-dcnn_conv1d_5_biasadd_readvariableop_resource/
+dcnn_dense_2_matmul_readvariableop_resource0
,dcnn_dense_2_biasadd_readvariableop_resource/
+dcnn_dense_3_matmul_readvariableop_resource0
,dcnn_dense_3_biasadd_readvariableop_resource
identityИҐ$dcnn/conv1d_3/BiasAdd/ReadVariableOpҐ0dcnn/conv1d_3/conv1d/ExpandDims_1/ReadVariableOpҐ$dcnn/conv1d_4/BiasAdd/ReadVariableOpҐ0dcnn/conv1d_4/conv1d/ExpandDims_1/ReadVariableOpҐ$dcnn/conv1d_5/BiasAdd/ReadVariableOpҐ0dcnn/conv1d_5/conv1d/ExpandDims_1/ReadVariableOpҐ#dcnn/dense_2/BiasAdd/ReadVariableOpҐ"dcnn/dense_2/MatMul/ReadVariableOpҐ#dcnn/dense_3/BiasAdd/ReadVariableOpҐ"dcnn/dense_3/MatMul/ReadVariableOpҐ0dcnn/embedding_1/embedding_lookup/ReadVariableOpб
0dcnn/embedding_1/embedding_lookup/ReadVariableOpReadVariableOp9dcnn_embedding_1_embedding_lookup_readvariableop_resource*!
_output_shapes
:Їо»*
dtype022
0dcnn/embedding_1/embedding_lookup/ReadVariableOp„
&dcnn/embedding_1/embedding_lookup/axisConst*C
_class9
75loc:@dcnn/embedding_1/embedding_lookup/ReadVariableOp*
_output_shapes
: *
dtype0*
value	B : 2(
&dcnn/embedding_1/embedding_lookup/axisо
!dcnn/embedding_1/embedding_lookupGatherV28dcnn/embedding_1/embedding_lookup/ReadVariableOp:value:0input_1/dcnn/embedding_1/embedding_lookup/axis:output:0*
Taxis0*
Tindices0*
Tparams0*C
_class9
75loc:@dcnn/embedding_1/embedding_lookup/ReadVariableOp*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€»2#
!dcnn/embedding_1/embedding_lookup–
*dcnn/embedding_1/embedding_lookup/IdentityIdentity*dcnn/embedding_1/embedding_lookup:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€»2,
*dcnn/embedding_1/embedding_lookup/IdentityХ
#dcnn/conv1d_3/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
э€€€€€€€€2%
#dcnn/conv1d_3/conv1d/ExpandDims/dimч
dcnn/conv1d_3/conv1d/ExpandDims
ExpandDims3dcnn/embedding_1/embedding_lookup/Identity:output:0,dcnn/conv1d_3/conv1d/ExpandDims/dim:output:0*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€»2!
dcnn/conv1d_3/conv1d/ExpandDimsг
0dcnn/conv1d_3/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp9dcnn_conv1d_3_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:»d*
dtype022
0dcnn/conv1d_3/conv1d/ExpandDims_1/ReadVariableOpР
%dcnn/conv1d_3/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2'
%dcnn/conv1d_3/conv1d/ExpandDims_1/dimр
!dcnn/conv1d_3/conv1d/ExpandDims_1
ExpandDims8dcnn/conv1d_3/conv1d/ExpandDims_1/ReadVariableOp:value:0.dcnn/conv1d_3/conv1d/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:»d2#
!dcnn/conv1d_3/conv1d/ExpandDims_1ш
dcnn/conv1d_3/conv1dConv2D(dcnn/conv1d_3/conv1d/ExpandDims:output:0*dcnn/conv1d_3/conv1d/ExpandDims_1:output:0*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€d*
paddingVALID*
strides
2
dcnn/conv1d_3/conv1d≈
dcnn/conv1d_3/conv1d/SqueezeSqueezedcnn/conv1d_3/conv1d:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d*
squeeze_dims

э€€€€€€€€2
dcnn/conv1d_3/conv1d/Squeezeґ
$dcnn/conv1d_3/BiasAdd/ReadVariableOpReadVariableOp-dcnn_conv1d_3_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02&
$dcnn/conv1d_3/BiasAdd/ReadVariableOpЌ
dcnn/conv1d_3/BiasAddBiasAdd%dcnn/conv1d_3/conv1d/Squeeze:output:0,dcnn/conv1d_3/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d2
dcnn/conv1d_3/BiasAddП
dcnn/conv1d_3/ReluReludcnn/conv1d_3/BiasAdd:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d2
dcnn/conv1d_3/Relu®
1dcnn/global_max_pooling1d_1/Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :23
1dcnn/global_max_pooling1d_1/Max/reduction_indicesў
dcnn/global_max_pooling1d_1/MaxMax dcnn/conv1d_3/Relu:activations:0:dcnn/global_max_pooling1d_1/Max/reduction_indices:output:0*
T0*'
_output_shapes
:€€€€€€€€€d2!
dcnn/global_max_pooling1d_1/MaxХ
#dcnn/conv1d_4/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
э€€€€€€€€2%
#dcnn/conv1d_4/conv1d/ExpandDims/dimч
dcnn/conv1d_4/conv1d/ExpandDims
ExpandDims3dcnn/embedding_1/embedding_lookup/Identity:output:0,dcnn/conv1d_4/conv1d/ExpandDims/dim:output:0*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€»2!
dcnn/conv1d_4/conv1d/ExpandDimsг
0dcnn/conv1d_4/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp9dcnn_conv1d_4_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:»d*
dtype022
0dcnn/conv1d_4/conv1d/ExpandDims_1/ReadVariableOpР
%dcnn/conv1d_4/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2'
%dcnn/conv1d_4/conv1d/ExpandDims_1/dimр
!dcnn/conv1d_4/conv1d/ExpandDims_1
ExpandDims8dcnn/conv1d_4/conv1d/ExpandDims_1/ReadVariableOp:value:0.dcnn/conv1d_4/conv1d/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:»d2#
!dcnn/conv1d_4/conv1d/ExpandDims_1ш
dcnn/conv1d_4/conv1dConv2D(dcnn/conv1d_4/conv1d/ExpandDims:output:0*dcnn/conv1d_4/conv1d/ExpandDims_1:output:0*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€d*
paddingVALID*
strides
2
dcnn/conv1d_4/conv1d≈
dcnn/conv1d_4/conv1d/SqueezeSqueezedcnn/conv1d_4/conv1d:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d*
squeeze_dims

э€€€€€€€€2
dcnn/conv1d_4/conv1d/Squeezeґ
$dcnn/conv1d_4/BiasAdd/ReadVariableOpReadVariableOp-dcnn_conv1d_4_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02&
$dcnn/conv1d_4/BiasAdd/ReadVariableOpЌ
dcnn/conv1d_4/BiasAddBiasAdd%dcnn/conv1d_4/conv1d/Squeeze:output:0,dcnn/conv1d_4/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d2
dcnn/conv1d_4/BiasAddП
dcnn/conv1d_4/ReluReludcnn/conv1d_4/BiasAdd:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d2
dcnn/conv1d_4/Reluђ
3dcnn/global_max_pooling1d_1/Max_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :25
3dcnn/global_max_pooling1d_1/Max_1/reduction_indicesя
!dcnn/global_max_pooling1d_1/Max_1Max dcnn/conv1d_4/Relu:activations:0<dcnn/global_max_pooling1d_1/Max_1/reduction_indices:output:0*
T0*'
_output_shapes
:€€€€€€€€€d2#
!dcnn/global_max_pooling1d_1/Max_1Х
#dcnn/conv1d_5/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
э€€€€€€€€2%
#dcnn/conv1d_5/conv1d/ExpandDims/dimч
dcnn/conv1d_5/conv1d/ExpandDims
ExpandDims3dcnn/embedding_1/embedding_lookup/Identity:output:0,dcnn/conv1d_5/conv1d/ExpandDims/dim:output:0*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€»2!
dcnn/conv1d_5/conv1d/ExpandDimsг
0dcnn/conv1d_5/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp9dcnn_conv1d_5_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:»d*
dtype022
0dcnn/conv1d_5/conv1d/ExpandDims_1/ReadVariableOpР
%dcnn/conv1d_5/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2'
%dcnn/conv1d_5/conv1d/ExpandDims_1/dimр
!dcnn/conv1d_5/conv1d/ExpandDims_1
ExpandDims8dcnn/conv1d_5/conv1d/ExpandDims_1/ReadVariableOp:value:0.dcnn/conv1d_5/conv1d/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:»d2#
!dcnn/conv1d_5/conv1d/ExpandDims_1ш
dcnn/conv1d_5/conv1dConv2D(dcnn/conv1d_5/conv1d/ExpandDims:output:0*dcnn/conv1d_5/conv1d/ExpandDims_1:output:0*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€d*
paddingVALID*
strides
2
dcnn/conv1d_5/conv1d≈
dcnn/conv1d_5/conv1d/SqueezeSqueezedcnn/conv1d_5/conv1d:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d*
squeeze_dims

э€€€€€€€€2
dcnn/conv1d_5/conv1d/Squeezeґ
$dcnn/conv1d_5/BiasAdd/ReadVariableOpReadVariableOp-dcnn_conv1d_5_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02&
$dcnn/conv1d_5/BiasAdd/ReadVariableOpЌ
dcnn/conv1d_5/BiasAddBiasAdd%dcnn/conv1d_5/conv1d/Squeeze:output:0,dcnn/conv1d_5/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d2
dcnn/conv1d_5/BiasAddП
dcnn/conv1d_5/ReluReludcnn/conv1d_5/BiasAdd:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d2
dcnn/conv1d_5/Reluђ
3dcnn/global_max_pooling1d_1/Max_2/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :25
3dcnn/global_max_pooling1d_1/Max_2/reduction_indicesя
!dcnn/global_max_pooling1d_1/Max_2Max dcnn/conv1d_5/Relu:activations:0<dcnn/global_max_pooling1d_1/Max_2/reduction_indices:output:0*
T0*'
_output_shapes
:€€€€€€€€€d2#
!dcnn/global_max_pooling1d_1/Max_2o
dcnn/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
dcnn/concat/axis€
dcnn/concatConcatV2(dcnn/global_max_pooling1d_1/Max:output:0*dcnn/global_max_pooling1d_1/Max_1:output:0*dcnn/global_max_pooling1d_1/Max_2:output:0dcnn/concat/axis:output:0*
N*
T0*(
_output_shapes
:€€€€€€€€€ђ2
dcnn/concatґ
"dcnn/dense_2/MatMul/ReadVariableOpReadVariableOp+dcnn_dense_2_matmul_readvariableop_resource* 
_output_shapes
:
ђА*
dtype02$
"dcnn/dense_2/MatMul/ReadVariableOp©
dcnn/dense_2/MatMulMatMuldcnn/concat:output:0*dcnn/dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dcnn/dense_2/MatMulі
#dcnn/dense_2/BiasAdd/ReadVariableOpReadVariableOp,dcnn_dense_2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#dcnn/dense_2/BiasAdd/ReadVariableOpґ
dcnn/dense_2/BiasAddBiasAdddcnn/dense_2/MatMul:product:0+dcnn/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dcnn/dense_2/BiasAddА
dcnn/dense_2/ReluReludcnn/dense_2/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dcnn/dense_2/ReluТ
dcnn/dropout_1/IdentityIdentitydcnn/dense_2/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dcnn/dropout_1/Identityµ
"dcnn/dense_3/MatMul/ReadVariableOpReadVariableOp+dcnn_dense_3_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02$
"dcnn/dense_3/MatMul/ReadVariableOpі
dcnn/dense_3/MatMulMatMul dcnn/dropout_1/Identity:output:0*dcnn/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dcnn/dense_3/MatMul≥
#dcnn/dense_3/BiasAdd/ReadVariableOpReadVariableOp,dcnn_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02%
#dcnn/dense_3/BiasAdd/ReadVariableOpµ
dcnn/dense_3/BiasAddBiasAdddcnn/dense_3/MatMul:product:0+dcnn/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dcnn/dense_3/BiasAddИ
dcnn/dense_3/SoftmaxSoftmaxdcnn/dense_3/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
dcnn/dense_3/Softmax…
IdentityIdentitydcnn/dense_3/Softmax:softmax:0%^dcnn/conv1d_3/BiasAdd/ReadVariableOp1^dcnn/conv1d_3/conv1d/ExpandDims_1/ReadVariableOp%^dcnn/conv1d_4/BiasAdd/ReadVariableOp1^dcnn/conv1d_4/conv1d/ExpandDims_1/ReadVariableOp%^dcnn/conv1d_5/BiasAdd/ReadVariableOp1^dcnn/conv1d_5/conv1d/ExpandDims_1/ReadVariableOp$^dcnn/dense_2/BiasAdd/ReadVariableOp#^dcnn/dense_2/MatMul/ReadVariableOp$^dcnn/dense_3/BiasAdd/ReadVariableOp#^dcnn/dense_3/MatMul/ReadVariableOp1^dcnn/embedding_1/embedding_lookup/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*[
_input_shapesJ
H:€€€€€€€€€€€€€€€€€€:::::::::::2L
$dcnn/conv1d_3/BiasAdd/ReadVariableOp$dcnn/conv1d_3/BiasAdd/ReadVariableOp2d
0dcnn/conv1d_3/conv1d/ExpandDims_1/ReadVariableOp0dcnn/conv1d_3/conv1d/ExpandDims_1/ReadVariableOp2L
$dcnn/conv1d_4/BiasAdd/ReadVariableOp$dcnn/conv1d_4/BiasAdd/ReadVariableOp2d
0dcnn/conv1d_4/conv1d/ExpandDims_1/ReadVariableOp0dcnn/conv1d_4/conv1d/ExpandDims_1/ReadVariableOp2L
$dcnn/conv1d_5/BiasAdd/ReadVariableOp$dcnn/conv1d_5/BiasAdd/ReadVariableOp2d
0dcnn/conv1d_5/conv1d/ExpandDims_1/ReadVariableOp0dcnn/conv1d_5/conv1d/ExpandDims_1/ReadVariableOp2J
#dcnn/dense_2/BiasAdd/ReadVariableOp#dcnn/dense_2/BiasAdd/ReadVariableOp2H
"dcnn/dense_2/MatMul/ReadVariableOp"dcnn/dense_2/MatMul/ReadVariableOp2J
#dcnn/dense_3/BiasAdd/ReadVariableOp#dcnn/dense_3/BiasAdd/ReadVariableOp2H
"dcnn/dense_3/MatMul/ReadVariableOp"dcnn/dense_3/MatMul/ReadVariableOp2d
0dcnn/embedding_1/embedding_lookup/ReadVariableOp0dcnn/embedding_1/embedding_lookup/ReadVariableOp:Y U
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
!
_user_specified_name	input_1
И	
Б
$__inference_dcnn_layer_call_fn_52743
input_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9
identityИҐStatefulPartitionedCallе
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_dcnn_layer_call_and_return_conditional_losses_527182
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*[
_input_shapesJ
H:€€€€€€€€€€€€€€€€€€:::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
!
_user_specified_name	input_1
Ж
m
Q__inference_global_max_pooling1d_1_layer_call_and_return_conditional_losses_52357

inputs
identityp
Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Max/reduction_indicest
MaxMaxinputsMax/reduction_indices:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2
Maxi
IdentityIdentityMax:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*<
_input_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€:e a
=
_output_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
я
ц
C__inference_conv1d_5_layer_call_and_return_conditional_losses_53059

inputs/
+conv1d_expanddims_1_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐ"conv1d/ExpandDims_1/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
э€€€€€€€€2
conv1d/ExpandDims/dim†
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€»2
conv1d/ExpandDimsє
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:»d*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dimЄ
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:»d2
conv1d/ExpandDims_1ј
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€d*
paddingVALID*
strides
2
conv1dЫ
conv1d/SqueezeSqueezeconv1d:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d*
squeeze_dims

э€€€€€€€€2
conv1d/SqueezeМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
BiasAdd/ReadVariableOpХ
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d2	
BiasAdde
ReluReluBiasAdd:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d2
Relu±
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d2

Identity"
identityIdentity:output:0*<
_input_shapes+
):€€€€€€€€€€€€€€€€€€»::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:] Y
5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€»
 
_user_specified_nameinputs
я
ц
C__inference_conv1d_5_layer_call_and_return_conditional_losses_52470

inputs/
+conv1d_expanddims_1_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐ"conv1d/ExpandDims_1/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
э€€€€€€€€2
conv1d/ExpandDims/dim†
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€»2
conv1d/ExpandDimsє
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:»d*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dimЄ
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:»d2
conv1d/ExpandDims_1ј
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€d*
paddingVALID*
strides
2
conv1dЫ
conv1d/SqueezeSqueezeconv1d:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d*
squeeze_dims

э€€€€€€€€2
conv1d/SqueezeМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
BiasAdd/ReadVariableOpХ
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d2	
BiasAdde
ReluReluBiasAdd:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d2
Relu±
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d2

Identity"
identityIdentity:output:0*<
_input_shapes+
):€€€€€€€€€€€€€€€€€€»::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:] Y
5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€»
 
_user_specified_nameinputs
о
q
+__inference_embedding_1_layer_call_fn_52993

inputs
unknown
identityИҐStatefulPartitionedCallч
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€»*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_embedding_1_layer_call_and_return_conditional_losses_523762
StatefulPartitionedCallЬ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€»2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :€€€€€€€€€€€€€€€€€€:22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Ґ
b
)__inference_dropout_1_layer_call_fn_53110

inputs
identityИҐStatefulPartitionedCallџ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_525282
StatefulPartitionedCallП
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*'
_input_shapes
:€€€€€€€€€А22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Е	
А
$__inference_dcnn_layer_call_fn_52977

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9
identityИҐStatefulPartitionedCallд
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_dcnn_layer_call_and_return_conditional_losses_527182
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*[
_input_shapesJ
H:€€€€€€€€€€€€€€€€€€:::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Е	
А
$__inference_dcnn_layer_call_fn_52950

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9
identityИҐStatefulPartitionedCallд
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_dcnn_layer_call_and_return_conditional_losses_526532
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*[
_input_shapesJ
H:€€€€€€€€€€€€€€€€€€:::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
с/
Н
?__inference_dcnn_layer_call_and_return_conditional_losses_52612
input_1
embedding_1_52577
conv1d_3_52580
conv1d_3_52582
conv1d_4_52586
conv1d_4_52588
conv1d_5_52592
conv1d_5_52594
dense_2_52600
dense_2_52602
dense_3_52606
dense_3_52608
identityИҐ conv1d_3/StatefulPartitionedCallҐ conv1d_4/StatefulPartitionedCallҐ conv1d_5/StatefulPartitionedCallҐdense_2/StatefulPartitionedCallҐdense_3/StatefulPartitionedCallҐ#embedding_1/StatefulPartitionedCallЪ
#embedding_1/StatefulPartitionedCallStatefulPartitionedCallinput_1embedding_1_52577*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€»*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_embedding_1_layer_call_and_return_conditional_losses_523762%
#embedding_1/StatefulPartitionedCallƒ
 conv1d_3/StatefulPartitionedCallStatefulPartitionedCall,embedding_1/StatefulPartitionedCall:output:0conv1d_3_52580conv1d_3_52582*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv1d_3_layer_call_and_return_conditional_losses_524042"
 conv1d_3/StatefulPartitionedCall†
&global_max_pooling1d_1/PartitionedCallPartitionedCall)conv1d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€d* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Z
fURS
Q__inference_global_max_pooling1d_1_layer_call_and_return_conditional_losses_523572(
&global_max_pooling1d_1/PartitionedCallƒ
 conv1d_4/StatefulPartitionedCallStatefulPartitionedCall,embedding_1/StatefulPartitionedCall:output:0conv1d_4_52586conv1d_4_52588*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv1d_4_layer_call_and_return_conditional_losses_524372"
 conv1d_4/StatefulPartitionedCall§
(global_max_pooling1d_1/PartitionedCall_1PartitionedCall)conv1d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€d* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Z
fURS
Q__inference_global_max_pooling1d_1_layer_call_and_return_conditional_losses_523572*
(global_max_pooling1d_1/PartitionedCall_1ƒ
 conv1d_5/StatefulPartitionedCallStatefulPartitionedCall,embedding_1/StatefulPartitionedCall:output:0conv1d_5_52592conv1d_5_52594*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv1d_5_layer_call_and_return_conditional_losses_524702"
 conv1d_5/StatefulPartitionedCall§
(global_max_pooling1d_1/PartitionedCall_2PartitionedCall)conv1d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€d* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Z
fURS
Q__inference_global_max_pooling1d_1_layer_call_and_return_conditional_losses_523572*
(global_max_pooling1d_1/PartitionedCall_2e
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
concat/axisЕ
concatConcatV2/global_max_pooling1d_1/PartitionedCall:output:01global_max_pooling1d_1/PartitionedCall_1:output:01global_max_pooling1d_1/PartitionedCall_2:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:€€€€€€€€€ђ2
concatЦ
dense_2/StatefulPartitionedCallStatefulPartitionedCallconcat:output:0dense_2_52600dense_2_52602*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_525002!
dense_2/StatefulPartitionedCallщ
dropout_1/PartitionedCallPartitionedCall(dense_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_525332
dropout_1/PartitionedCall®
dense_3/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0dense_3_52606dense_3_52608*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_525572!
dense_3/StatefulPartitionedCallѕ
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0!^conv1d_3/StatefulPartitionedCall!^conv1d_4/StatefulPartitionedCall!^conv1d_5/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall$^embedding_1/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*[
_input_shapesJ
H:€€€€€€€€€€€€€€€€€€:::::::::::2D
 conv1d_3/StatefulPartitionedCall conv1d_3/StatefulPartitionedCall2D
 conv1d_4/StatefulPartitionedCall conv1d_4/StatefulPartitionedCall2D
 conv1d_5/StatefulPartitionedCall conv1d_5/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2J
#embedding_1/StatefulPartitionedCall#embedding_1/StatefulPartitionedCall:Y U
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
!
_user_specified_name	input_1
к
R
6__inference_global_max_pooling1d_1_layer_call_fn_52363

inputs
identityЎ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Z
fURS
Q__inference_global_max_pooling1d_1_layer_call_and_return_conditional_losses_523572
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*<
_input_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€:e a
=
_output_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
х	
џ
B__inference_dense_2_layer_call_and_return_conditional_losses_53079

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpП
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
ђА*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
MatMulН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpВ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
ReluШ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*/
_input_shapes
:€€€€€€€€€ђ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€ђ
 
_user_specified_nameinputs
пW
Ѕ
__inference__traced_save_53284
file_prefix:
6savev2_dcnn_embedding_1_embeddings_read_readvariableop3
/savev2_dcnn_conv1d_3_kernel_read_readvariableop1
-savev2_dcnn_conv1d_3_bias_read_readvariableop3
/savev2_dcnn_conv1d_4_kernel_read_readvariableop1
-savev2_dcnn_conv1d_4_bias_read_readvariableop3
/savev2_dcnn_conv1d_5_kernel_read_readvariableop1
-savev2_dcnn_conv1d_5_bias_read_readvariableop2
.savev2_dcnn_dense_2_kernel_read_readvariableop0
,savev2_dcnn_dense_2_bias_read_readvariableop2
.savev2_dcnn_dense_3_kernel_read_readvariableop0
,savev2_dcnn_dense_3_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableopA
=savev2_adam_dcnn_embedding_1_embeddings_m_read_readvariableop:
6savev2_adam_dcnn_conv1d_3_kernel_m_read_readvariableop8
4savev2_adam_dcnn_conv1d_3_bias_m_read_readvariableop:
6savev2_adam_dcnn_conv1d_4_kernel_m_read_readvariableop8
4savev2_adam_dcnn_conv1d_4_bias_m_read_readvariableop:
6savev2_adam_dcnn_conv1d_5_kernel_m_read_readvariableop8
4savev2_adam_dcnn_conv1d_5_bias_m_read_readvariableop9
5savev2_adam_dcnn_dense_2_kernel_m_read_readvariableop7
3savev2_adam_dcnn_dense_2_bias_m_read_readvariableop9
5savev2_adam_dcnn_dense_3_kernel_m_read_readvariableop7
3savev2_adam_dcnn_dense_3_bias_m_read_readvariableopA
=savev2_adam_dcnn_embedding_1_embeddings_v_read_readvariableop:
6savev2_adam_dcnn_conv1d_3_kernel_v_read_readvariableop8
4savev2_adam_dcnn_conv1d_3_bias_v_read_readvariableop:
6savev2_adam_dcnn_conv1d_4_kernel_v_read_readvariableop8
4savev2_adam_dcnn_conv1d_4_bias_v_read_readvariableop:
6savev2_adam_dcnn_conv1d_5_kernel_v_read_readvariableop8
4savev2_adam_dcnn_conv1d_5_bias_v_read_readvariableop9
5savev2_adam_dcnn_dense_2_kernel_v_read_readvariableop7
3savev2_adam_dcnn_dense_2_bias_v_read_readvariableop9
5savev2_adam_dcnn_dense_3_kernel_v_read_readvariableop7
3savev2_adam_dcnn_dense_3_bias_v_read_readvariableop
savev2_const

identity_1ИҐMergeV2CheckpointsП
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
Const_1Л
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
ShardedFilename/shard¶
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename„
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*й
valueяB№+B/embedding/embeddings/.ATTRIBUTES/VARIABLE_VALUEB(bigram/kernel/.ATTRIBUTES/VARIABLE_VALUEB&bigram/bias/.ATTRIBUTES/VARIABLE_VALUEB)trigram/kernel/.ATTRIBUTES/VARIABLE_VALUEB'trigram/bias/.ATTRIBUTES/VARIABLE_VALUEB*fourgram/kernel/.ATTRIBUTES/VARIABLE_VALUEB(fourgram/bias/.ATTRIBUTES/VARIABLE_VALUEB)dense_1/kernel/.ATTRIBUTES/VARIABLE_VALUEB'dense_1/bias/.ATTRIBUTES/VARIABLE_VALUEB,last_dense/kernel/.ATTRIBUTES/VARIABLE_VALUEB*last_dense/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBKembedding/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBDbigram/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBbigram/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBEtrigram/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCtrigram/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBFfourgram/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBDfourgram/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBEdense_1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCdense_1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBHlast_dense/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBFlast_dense/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBKembedding/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBDbigram/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBbigram/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBEtrigram/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCtrigram/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBFfourgram/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBDfourgram/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBEdense_1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCdense_1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBHlast_dense/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBFlast_dense/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesё
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*i
value`B^+B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesТ
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:06savev2_dcnn_embedding_1_embeddings_read_readvariableop/savev2_dcnn_conv1d_3_kernel_read_readvariableop-savev2_dcnn_conv1d_3_bias_read_readvariableop/savev2_dcnn_conv1d_4_kernel_read_readvariableop-savev2_dcnn_conv1d_4_bias_read_readvariableop/savev2_dcnn_conv1d_5_kernel_read_readvariableop-savev2_dcnn_conv1d_5_bias_read_readvariableop.savev2_dcnn_dense_2_kernel_read_readvariableop,savev2_dcnn_dense_2_bias_read_readvariableop.savev2_dcnn_dense_3_kernel_read_readvariableop,savev2_dcnn_dense_3_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop=savev2_adam_dcnn_embedding_1_embeddings_m_read_readvariableop6savev2_adam_dcnn_conv1d_3_kernel_m_read_readvariableop4savev2_adam_dcnn_conv1d_3_bias_m_read_readvariableop6savev2_adam_dcnn_conv1d_4_kernel_m_read_readvariableop4savev2_adam_dcnn_conv1d_4_bias_m_read_readvariableop6savev2_adam_dcnn_conv1d_5_kernel_m_read_readvariableop4savev2_adam_dcnn_conv1d_5_bias_m_read_readvariableop5savev2_adam_dcnn_dense_2_kernel_m_read_readvariableop3savev2_adam_dcnn_dense_2_bias_m_read_readvariableop5savev2_adam_dcnn_dense_3_kernel_m_read_readvariableop3savev2_adam_dcnn_dense_3_bias_m_read_readvariableop=savev2_adam_dcnn_embedding_1_embeddings_v_read_readvariableop6savev2_adam_dcnn_conv1d_3_kernel_v_read_readvariableop4savev2_adam_dcnn_conv1d_3_bias_v_read_readvariableop6savev2_adam_dcnn_conv1d_4_kernel_v_read_readvariableop4savev2_adam_dcnn_conv1d_4_bias_v_read_readvariableop6savev2_adam_dcnn_conv1d_5_kernel_v_read_readvariableop4savev2_adam_dcnn_conv1d_5_bias_v_read_readvariableop5savev2_adam_dcnn_dense_2_kernel_v_read_readvariableop3savev2_adam_dcnn_dense_2_bias_v_read_readvariableop5savev2_adam_dcnn_dense_3_kernel_v_read_readvariableop3savev2_adam_dcnn_dense_3_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *9
dtypes/
-2+	2
SaveV2Ї
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes°
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*ы
_input_shapesй
ж: :Їо»:»d:d:»d:d:»d:d:
ђА:А:	А:: : : : : : : : : :Їо»:»d:d:»d:d:»d:d:
ђА:А:	А::Їо»:»d:d:»d:d:»d:d:
ђА:А:	А:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:'#
!
_output_shapes
:Їо»:)%
#
_output_shapes
:»d: 

_output_shapes
:d:)%
#
_output_shapes
:»d: 

_output_shapes
:d:)%
#
_output_shapes
:»d: 

_output_shapes
:d:&"
 
_output_shapes
:
ђА:!	

_output_shapes	
:А:%
!

_output_shapes
:	А: 

_output_shapes
::
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
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :'#
!
_output_shapes
:Їо»:)%
#
_output_shapes
:»d: 

_output_shapes
:d:)%
#
_output_shapes
:»d: 

_output_shapes
:d:)%
#
_output_shapes
:»d: 

_output_shapes
:d:&"
 
_output_shapes
:
ђА:!

_output_shapes	
:А:%!

_output_shapes
:	А: 

_output_shapes
::' #
!
_output_shapes
:Їо»:)!%
#
_output_shapes
:»d: "

_output_shapes
:d:)#%
#
_output_shapes
:»d: $

_output_shapes
:d:)%%
#
_output_shapes
:»d: &

_output_shapes
:d:&'"
 
_output_shapes
:
ђА:!(

_output_shapes	
:А:%)!

_output_shapes
:	А: *

_output_shapes
::+

_output_shapes
: 
“∞
ь
!__inference__traced_restore_53420
file_prefix0
,assignvariableop_dcnn_embedding_1_embeddings+
'assignvariableop_1_dcnn_conv1d_3_kernel)
%assignvariableop_2_dcnn_conv1d_3_bias+
'assignvariableop_3_dcnn_conv1d_4_kernel)
%assignvariableop_4_dcnn_conv1d_4_bias+
'assignvariableop_5_dcnn_conv1d_5_kernel)
%assignvariableop_6_dcnn_conv1d_5_bias*
&assignvariableop_7_dcnn_dense_2_kernel(
$assignvariableop_8_dcnn_dense_2_bias*
&assignvariableop_9_dcnn_dense_3_kernel)
%assignvariableop_10_dcnn_dense_3_bias!
assignvariableop_11_adam_iter#
assignvariableop_12_adam_beta_1#
assignvariableop_13_adam_beta_2"
assignvariableop_14_adam_decay*
&assignvariableop_15_adam_learning_rate
assignvariableop_16_total
assignvariableop_17_count
assignvariableop_18_total_1
assignvariableop_19_count_1:
6assignvariableop_20_adam_dcnn_embedding_1_embeddings_m3
/assignvariableop_21_adam_dcnn_conv1d_3_kernel_m1
-assignvariableop_22_adam_dcnn_conv1d_3_bias_m3
/assignvariableop_23_adam_dcnn_conv1d_4_kernel_m1
-assignvariableop_24_adam_dcnn_conv1d_4_bias_m3
/assignvariableop_25_adam_dcnn_conv1d_5_kernel_m1
-assignvariableop_26_adam_dcnn_conv1d_5_bias_m2
.assignvariableop_27_adam_dcnn_dense_2_kernel_m0
,assignvariableop_28_adam_dcnn_dense_2_bias_m2
.assignvariableop_29_adam_dcnn_dense_3_kernel_m0
,assignvariableop_30_adam_dcnn_dense_3_bias_m:
6assignvariableop_31_adam_dcnn_embedding_1_embeddings_v3
/assignvariableop_32_adam_dcnn_conv1d_3_kernel_v1
-assignvariableop_33_adam_dcnn_conv1d_3_bias_v3
/assignvariableop_34_adam_dcnn_conv1d_4_kernel_v1
-assignvariableop_35_adam_dcnn_conv1d_4_bias_v3
/assignvariableop_36_adam_dcnn_conv1d_5_kernel_v1
-assignvariableop_37_adam_dcnn_conv1d_5_bias_v2
.assignvariableop_38_adam_dcnn_dense_2_kernel_v0
,assignvariableop_39_adam_dcnn_dense_2_bias_v2
.assignvariableop_40_adam_dcnn_dense_3_kernel_v0
,assignvariableop_41_adam_dcnn_dense_3_bias_v
identity_43ИҐAssignVariableOpҐAssignVariableOp_1ҐAssignVariableOp_10ҐAssignVariableOp_11ҐAssignVariableOp_12ҐAssignVariableOp_13ҐAssignVariableOp_14ҐAssignVariableOp_15ҐAssignVariableOp_16ҐAssignVariableOp_17ҐAssignVariableOp_18ҐAssignVariableOp_19ҐAssignVariableOp_2ҐAssignVariableOp_20ҐAssignVariableOp_21ҐAssignVariableOp_22ҐAssignVariableOp_23ҐAssignVariableOp_24ҐAssignVariableOp_25ҐAssignVariableOp_26ҐAssignVariableOp_27ҐAssignVariableOp_28ҐAssignVariableOp_29ҐAssignVariableOp_3ҐAssignVariableOp_30ҐAssignVariableOp_31ҐAssignVariableOp_32ҐAssignVariableOp_33ҐAssignVariableOp_34ҐAssignVariableOp_35ҐAssignVariableOp_36ҐAssignVariableOp_37ҐAssignVariableOp_38ҐAssignVariableOp_39ҐAssignVariableOp_4ҐAssignVariableOp_40ҐAssignVariableOp_41ҐAssignVariableOp_5ҐAssignVariableOp_6ҐAssignVariableOp_7ҐAssignVariableOp_8ҐAssignVariableOp_9Ё
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*й
valueяB№+B/embedding/embeddings/.ATTRIBUTES/VARIABLE_VALUEB(bigram/kernel/.ATTRIBUTES/VARIABLE_VALUEB&bigram/bias/.ATTRIBUTES/VARIABLE_VALUEB)trigram/kernel/.ATTRIBUTES/VARIABLE_VALUEB'trigram/bias/.ATTRIBUTES/VARIABLE_VALUEB*fourgram/kernel/.ATTRIBUTES/VARIABLE_VALUEB(fourgram/bias/.ATTRIBUTES/VARIABLE_VALUEB)dense_1/kernel/.ATTRIBUTES/VARIABLE_VALUEB'dense_1/bias/.ATTRIBUTES/VARIABLE_VALUEB,last_dense/kernel/.ATTRIBUTES/VARIABLE_VALUEB*last_dense/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBKembedding/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBDbigram/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBbigram/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBEtrigram/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCtrigram/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBFfourgram/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBDfourgram/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBEdense_1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCdense_1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBHlast_dense/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBFlast_dense/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBKembedding/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBDbigram/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBbigram/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBEtrigram/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCtrigram/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBFfourgram/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBDfourgram/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBEdense_1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCdense_1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBHlast_dense/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBFlast_dense/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesд
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*i
value`B^+B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesЕ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*¬
_output_shapesѓ
ђ:::::::::::::::::::::::::::::::::::::::::::*9
dtypes/
-2+	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

IdentityЂ
AssignVariableOpAssignVariableOp,assignvariableop_dcnn_embedding_1_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1ђ
AssignVariableOp_1AssignVariableOp'assignvariableop_1_dcnn_conv1d_3_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2™
AssignVariableOp_2AssignVariableOp%assignvariableop_2_dcnn_conv1d_3_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3ђ
AssignVariableOp_3AssignVariableOp'assignvariableop_3_dcnn_conv1d_4_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4™
AssignVariableOp_4AssignVariableOp%assignvariableop_4_dcnn_conv1d_4_biasIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5ђ
AssignVariableOp_5AssignVariableOp'assignvariableop_5_dcnn_conv1d_5_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6™
AssignVariableOp_6AssignVariableOp%assignvariableop_6_dcnn_conv1d_5_biasIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7Ђ
AssignVariableOp_7AssignVariableOp&assignvariableop_7_dcnn_dense_2_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8©
AssignVariableOp_8AssignVariableOp$assignvariableop_8_dcnn_dense_2_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9Ђ
AssignVariableOp_9AssignVariableOp&assignvariableop_9_dcnn_dense_3_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10≠
AssignVariableOp_10AssignVariableOp%assignvariableop_10_dcnn_dense_3_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_11•
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_iterIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12І
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_beta_1Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13І
AssignVariableOp_13AssignVariableOpassignvariableop_13_adam_beta_2Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14¶
AssignVariableOp_14AssignVariableOpassignvariableop_14_adam_decayIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15Ѓ
AssignVariableOp_15AssignVariableOp&assignvariableop_15_adam_learning_rateIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16°
AssignVariableOp_16AssignVariableOpassignvariableop_16_totalIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17°
AssignVariableOp_17AssignVariableOpassignvariableop_17_countIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18£
AssignVariableOp_18AssignVariableOpassignvariableop_18_total_1Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19£
AssignVariableOp_19AssignVariableOpassignvariableop_19_count_1Identity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20Њ
AssignVariableOp_20AssignVariableOp6assignvariableop_20_adam_dcnn_embedding_1_embeddings_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21Ј
AssignVariableOp_21AssignVariableOp/assignvariableop_21_adam_dcnn_conv1d_3_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22µ
AssignVariableOp_22AssignVariableOp-assignvariableop_22_adam_dcnn_conv1d_3_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23Ј
AssignVariableOp_23AssignVariableOp/assignvariableop_23_adam_dcnn_conv1d_4_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24µ
AssignVariableOp_24AssignVariableOp-assignvariableop_24_adam_dcnn_conv1d_4_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25Ј
AssignVariableOp_25AssignVariableOp/assignvariableop_25_adam_dcnn_conv1d_5_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26µ
AssignVariableOp_26AssignVariableOp-assignvariableop_26_adam_dcnn_conv1d_5_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27ґ
AssignVariableOp_27AssignVariableOp.assignvariableop_27_adam_dcnn_dense_2_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28і
AssignVariableOp_28AssignVariableOp,assignvariableop_28_adam_dcnn_dense_2_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29ґ
AssignVariableOp_29AssignVariableOp.assignvariableop_29_adam_dcnn_dense_3_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30і
AssignVariableOp_30AssignVariableOp,assignvariableop_30_adam_dcnn_dense_3_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31Њ
AssignVariableOp_31AssignVariableOp6assignvariableop_31_adam_dcnn_embedding_1_embeddings_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32Ј
AssignVariableOp_32AssignVariableOp/assignvariableop_32_adam_dcnn_conv1d_3_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33µ
AssignVariableOp_33AssignVariableOp-assignvariableop_33_adam_dcnn_conv1d_3_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34Ј
AssignVariableOp_34AssignVariableOp/assignvariableop_34_adam_dcnn_conv1d_4_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35µ
AssignVariableOp_35AssignVariableOp-assignvariableop_35_adam_dcnn_conv1d_4_bias_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36Ј
AssignVariableOp_36AssignVariableOp/assignvariableop_36_adam_dcnn_conv1d_5_kernel_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37µ
AssignVariableOp_37AssignVariableOp-assignvariableop_37_adam_dcnn_conv1d_5_bias_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38ґ
AssignVariableOp_38AssignVariableOp.assignvariableop_38_adam_dcnn_dense_2_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39і
AssignVariableOp_39AssignVariableOp,assignvariableop_39_adam_dcnn_dense_2_bias_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40ґ
AssignVariableOp_40AssignVariableOp.assignvariableop_40_adam_dcnn_dense_3_kernel_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41і
AssignVariableOp_41AssignVariableOp,assignvariableop_41_adam_dcnn_dense_3_bias_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_419
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpъ
Identity_42Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_42н
Identity_43IdentityIdentity_42:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_43"#
identity_43Identity_43:output:0*њ
_input_shapes≠
™: ::::::::::::::::::::::::::::::::::::::::::2$
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
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412(
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
х	
џ
B__inference_dense_2_layer_call_and_return_conditional_losses_52500

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpП
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
ђА*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
MatMulН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpВ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
ReluШ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*/
_input_shapes
:€€€€€€€€€ђ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€ђ
 
_user_specified_nameinputs
Й
c
D__inference_dropout_1_layer_call_and_return_conditional_losses_52528

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shapeµ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€А*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>2
dropout/GreaterEqual/yњ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dropout/GreaterEqualА
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:€€€€€€€€€А2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*'
_input_shapes
:€€€€€€€€€А:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Ћ
b
D__inference_dropout_1_layer_call_and_return_conditional_losses_53105

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:€€€€€€€€€А2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity_1"!

identity_1Identity_1:output:0*'
_input_shapes
:€€€€€€€€€А:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
я
ц
C__inference_conv1d_3_layer_call_and_return_conditional_losses_53009

inputs/
+conv1d_expanddims_1_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐ"conv1d/ExpandDims_1/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
э€€€€€€€€2
conv1d/ExpandDims/dim†
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€»2
conv1d/ExpandDimsє
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:»d*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dimЄ
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:»d2
conv1d/ExpandDims_1ј
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€d*
paddingVALID*
strides
2
conv1dЫ
conv1d/SqueezeSqueezeconv1d:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d*
squeeze_dims

э€€€€€€€€2
conv1d/SqueezeМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
BiasAdd/ReadVariableOpХ
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d2	
BiasAdde
ReluReluBiasAdd:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d2
Relu±
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d2

Identity"
identityIdentity:output:0*<
_input_shapes+
):€€€€€€€€€€€€€€€€€€»::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:] Y
5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€»
 
_user_specified_nameinputs
№
|
'__inference_dense_2_layer_call_fn_53088

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallу
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_525002
StatefulPartitionedCallП
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*/
_input_shapes
:€€€€€€€€€ђ::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€ђ
 
_user_specified_nameinputs
°1
±
?__inference_dcnn_layer_call_and_return_conditional_losses_52574
input_1
embedding_1_52385
conv1d_3_52415
conv1d_3_52417
conv1d_4_52448
conv1d_4_52450
conv1d_5_52481
conv1d_5_52483
dense_2_52511
dense_2_52513
dense_3_52568
dense_3_52570
identityИҐ conv1d_3/StatefulPartitionedCallҐ conv1d_4/StatefulPartitionedCallҐ conv1d_5/StatefulPartitionedCallҐdense_2/StatefulPartitionedCallҐdense_3/StatefulPartitionedCallҐ!dropout_1/StatefulPartitionedCallҐ#embedding_1/StatefulPartitionedCallЪ
#embedding_1/StatefulPartitionedCallStatefulPartitionedCallinput_1embedding_1_52385*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€»*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_embedding_1_layer_call_and_return_conditional_losses_523762%
#embedding_1/StatefulPartitionedCallƒ
 conv1d_3/StatefulPartitionedCallStatefulPartitionedCall,embedding_1/StatefulPartitionedCall:output:0conv1d_3_52415conv1d_3_52417*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv1d_3_layer_call_and_return_conditional_losses_524042"
 conv1d_3/StatefulPartitionedCall†
&global_max_pooling1d_1/PartitionedCallPartitionedCall)conv1d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€d* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Z
fURS
Q__inference_global_max_pooling1d_1_layer_call_and_return_conditional_losses_523572(
&global_max_pooling1d_1/PartitionedCallƒ
 conv1d_4/StatefulPartitionedCallStatefulPartitionedCall,embedding_1/StatefulPartitionedCall:output:0conv1d_4_52448conv1d_4_52450*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv1d_4_layer_call_and_return_conditional_losses_524372"
 conv1d_4/StatefulPartitionedCall§
(global_max_pooling1d_1/PartitionedCall_1PartitionedCall)conv1d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€d* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Z
fURS
Q__inference_global_max_pooling1d_1_layer_call_and_return_conditional_losses_523572*
(global_max_pooling1d_1/PartitionedCall_1ƒ
 conv1d_5/StatefulPartitionedCallStatefulPartitionedCall,embedding_1/StatefulPartitionedCall:output:0conv1d_5_52481conv1d_5_52483*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv1d_5_layer_call_and_return_conditional_losses_524702"
 conv1d_5/StatefulPartitionedCall§
(global_max_pooling1d_1/PartitionedCall_2PartitionedCall)conv1d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€d* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Z
fURS
Q__inference_global_max_pooling1d_1_layer_call_and_return_conditional_losses_523572*
(global_max_pooling1d_1/PartitionedCall_2e
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
concat/axisЕ
concatConcatV2/global_max_pooling1d_1/PartitionedCall:output:01global_max_pooling1d_1/PartitionedCall_1:output:01global_max_pooling1d_1/PartitionedCall_2:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:€€€€€€€€€ђ2
concatЦ
dense_2/StatefulPartitionedCallStatefulPartitionedCallconcat:output:0dense_2_52511dense_2_52513*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_525002!
dense_2/StatefulPartitionedCallС
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_525282#
!dropout_1/StatefulPartitionedCall∞
dense_3/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0dense_3_52568dense_3_52570*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_525572!
dense_3/StatefulPartitionedCallу
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0!^conv1d_3/StatefulPartitionedCall!^conv1d_4/StatefulPartitionedCall!^conv1d_5/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall$^embedding_1/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*[
_input_shapesJ
H:€€€€€€€€€€€€€€€€€€:::::::::::2D
 conv1d_3/StatefulPartitionedCall conv1d_3/StatefulPartitionedCall2D
 conv1d_4/StatefulPartitionedCall conv1d_4/StatefulPartitionedCall2D
 conv1d_5/StatefulPartitionedCall conv1d_5/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2J
#embedding_1/StatefulPartitionedCall#embedding_1/StatefulPartitionedCall:Y U
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
!
_user_specified_name	input_1
ж

µ
F__inference_embedding_1_layer_call_and_return_conditional_losses_52376

inputs,
(embedding_lookup_readvariableop_resource
identityИҐembedding_lookup/ReadVariableOpЃ
embedding_lookup/ReadVariableOpReadVariableOp(embedding_lookup_readvariableop_resource*!
_output_shapes
:Їо»*
dtype02!
embedding_lookup/ReadVariableOp§
embedding_lookup/axisConst*2
_class(
&$loc:@embedding_lookup/ReadVariableOp*
_output_shapes
: *
dtype0*
value	B : 2
embedding_lookup/axisШ
embedding_lookupGatherV2'embedding_lookup/ReadVariableOp:value:0inputsembedding_lookup/axis:output:0*
Taxis0*
Tindices0*
Tparams0*2
_class(
&$loc:@embedding_lookup/ReadVariableOp*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€»2
embedding_lookupЭ
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€»2
embedding_lookup/Identity¶
IdentityIdentity"embedding_lookup/Identity:output:0 ^embedding_lookup/ReadVariableOp*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€»2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :€€€€€€€€€€€€€€€€€€:2B
embedding_lookup/ReadVariableOpembedding_lookup/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
я
ц
C__inference_conv1d_4_layer_call_and_return_conditional_losses_52437

inputs/
+conv1d_expanddims_1_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐ"conv1d/ExpandDims_1/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
э€€€€€€€€2
conv1d/ExpandDims/dim†
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€»2
conv1d/ExpandDimsє
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:»d*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dimЄ
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:»d2
conv1d/ExpandDims_1ј
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€d*
paddingVALID*
strides
2
conv1dЫ
conv1d/SqueezeSqueezeconv1d:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d*
squeeze_dims

э€€€€€€€€2
conv1d/SqueezeМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
BiasAdd/ReadVariableOpХ
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d2	
BiasAdde
ReluReluBiasAdd:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d2
Relu±
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d2

Identity"
identityIdentity:output:0*<
_input_shapes+
):€€€€€€€€€€€€€€€€€€»::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:] Y
5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€»
 
_user_specified_nameinputs
о/
М
?__inference_dcnn_layer_call_and_return_conditional_losses_52718

inputs
embedding_1_52683
conv1d_3_52686
conv1d_3_52688
conv1d_4_52692
conv1d_4_52694
conv1d_5_52698
conv1d_5_52700
dense_2_52706
dense_2_52708
dense_3_52712
dense_3_52714
identityИҐ conv1d_3/StatefulPartitionedCallҐ conv1d_4/StatefulPartitionedCallҐ conv1d_5/StatefulPartitionedCallҐdense_2/StatefulPartitionedCallҐdense_3/StatefulPartitionedCallҐ#embedding_1/StatefulPartitionedCallЩ
#embedding_1/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_1_52683*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€»*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_embedding_1_layer_call_and_return_conditional_losses_523762%
#embedding_1/StatefulPartitionedCallƒ
 conv1d_3/StatefulPartitionedCallStatefulPartitionedCall,embedding_1/StatefulPartitionedCall:output:0conv1d_3_52686conv1d_3_52688*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv1d_3_layer_call_and_return_conditional_losses_524042"
 conv1d_3/StatefulPartitionedCall†
&global_max_pooling1d_1/PartitionedCallPartitionedCall)conv1d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€d* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Z
fURS
Q__inference_global_max_pooling1d_1_layer_call_and_return_conditional_losses_523572(
&global_max_pooling1d_1/PartitionedCallƒ
 conv1d_4/StatefulPartitionedCallStatefulPartitionedCall,embedding_1/StatefulPartitionedCall:output:0conv1d_4_52692conv1d_4_52694*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv1d_4_layer_call_and_return_conditional_losses_524372"
 conv1d_4/StatefulPartitionedCall§
(global_max_pooling1d_1/PartitionedCall_1PartitionedCall)conv1d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€d* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Z
fURS
Q__inference_global_max_pooling1d_1_layer_call_and_return_conditional_losses_523572*
(global_max_pooling1d_1/PartitionedCall_1ƒ
 conv1d_5/StatefulPartitionedCallStatefulPartitionedCall,embedding_1/StatefulPartitionedCall:output:0conv1d_5_52698conv1d_5_52700*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv1d_5_layer_call_and_return_conditional_losses_524702"
 conv1d_5/StatefulPartitionedCall§
(global_max_pooling1d_1/PartitionedCall_2PartitionedCall)conv1d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€d* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Z
fURS
Q__inference_global_max_pooling1d_1_layer_call_and_return_conditional_losses_523572*
(global_max_pooling1d_1/PartitionedCall_2e
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
concat/axisЕ
concatConcatV2/global_max_pooling1d_1/PartitionedCall:output:01global_max_pooling1d_1/PartitionedCall_1:output:01global_max_pooling1d_1/PartitionedCall_2:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:€€€€€€€€€ђ2
concatЦ
dense_2/StatefulPartitionedCallStatefulPartitionedCallconcat:output:0dense_2_52706dense_2_52708*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_525002!
dense_2/StatefulPartitionedCallщ
dropout_1/PartitionedCallPartitionedCall(dense_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_525332
dropout_1/PartitionedCall®
dense_3/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0dense_3_52712dense_3_52714*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_525572!
dense_3/StatefulPartitionedCallѕ
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0!^conv1d_3/StatefulPartitionedCall!^conv1d_4/StatefulPartitionedCall!^conv1d_5/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall$^embedding_1/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*[
_input_shapesJ
H:€€€€€€€€€€€€€€€€€€:::::::::::2D
 conv1d_3/StatefulPartitionedCall conv1d_3/StatefulPartitionedCall2D
 conv1d_4/StatefulPartitionedCall conv1d_4/StatefulPartitionedCall2D
 conv1d_5/StatefulPartitionedCall conv1d_5/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2J
#embedding_1/StatefulPartitionedCall#embedding_1/StatefulPartitionedCall:X T
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs"±L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*і
serving_default†
D
input_19
serving_default_input_1:0€€€€€€€€€€€€€€€€€€<
output_10
StatefulPartitionedCall:0€€€€€€€€€tensorflow/serving/predict:я”
У	
	embedding

bigram
trigram
fourgram
pool
dense_1
dropout

last_dense
		optimizer

trainable_variables
regularization_losses
	variables
	keras_api

signatures
Н_default_save_signature
О__call__
+П&call_and_return_all_conditional_losses"џ
_tf_keras_modelЅ{"class_name": "DCNN", "name": "dcnn", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"layer was saved without config": true}, "is_graph_network": false, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "DCNN"}, "training_config": {"loss": "sparse_categorical_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "sparse_categorical_accuracy", "dtype": "float32", "fn": "sparse_categorical_accuracy"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
і

embeddings
trainable_variables
regularization_losses
	variables
	keras_api
Р__call__
+С&call_and_return_all_conditional_losses"У
_tf_keras_layerщ{"class_name": "Embedding", "name": "embedding_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "embedding_1", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 30522, "output_dim": 200, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": null}, "build_input_shape": {"class_name": "TensorShape", "items": [null, null]}}
н	

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
Т__call__
+У&call_and_return_all_conditional_losses"∆
_tf_keras_layerђ{"class_name": "Conv1D", "name": "conv1d_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv1d_3", "trainable": true, "dtype": "float32", "filters": 100, "kernel_size": {"class_name": "__tuple__", "items": [2]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 3, "axes": {"-1": 200}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, null, 200]}}
н	

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
Ф__call__
+Х&call_and_return_all_conditional_losses"∆
_tf_keras_layerђ{"class_name": "Conv1D", "name": "conv1d_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv1d_4", "trainable": true, "dtype": "float32", "filters": 100, "kernel_size": {"class_name": "__tuple__", "items": [3]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 3, "axes": {"-1": 200}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, null, 200]}}
н	

 kernel
!bias
"trainable_variables
#regularization_losses
$	variables
%	keras_api
Ц__call__
+Ч&call_and_return_all_conditional_losses"∆
_tf_keras_layerђ{"class_name": "Conv1D", "name": "conv1d_5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv1d_5", "trainable": true, "dtype": "float32", "filters": 100, "kernel_size": {"class_name": "__tuple__", "items": [4]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 3, "axes": {"-1": 200}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, null, 200]}}
Н
&trainable_variables
'regularization_losses
(	variables
)	keras_api
Ш__call__
+Щ&call_and_return_all_conditional_losses"ь
_tf_keras_layerв{"class_name": "GlobalMaxPooling1D", "name": "global_max_pooling1d_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "global_max_pooling1d_1", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}}
х

*kernel
+bias
,trainable_variables
-regularization_losses
.	variables
/	keras_api
Ъ__call__
+Ы&call_and_return_all_conditional_losses"ќ
_tf_keras_layerі{"class_name": "Dense", "name": "dense_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 300}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 300]}}
з
0trainable_variables
1regularization_losses
2	variables
3	keras_api
Ь__call__
+Э&call_and_return_all_conditional_losses"÷
_tf_keras_layerЉ{"class_name": "Dropout", "name": "dropout_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_1", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}
ц

4kernel
5bias
6trainable_variables
7regularization_losses
8	variables
9	keras_api
Ю__call__
+Я&call_and_return_all_conditional_losses"ѕ
_tf_keras_layerµ{"class_name": "Dense", "name": "dense_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 4, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 256}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256]}}
¶
:iter

;beta_1

<beta_2
	=decay
>learning_ratemwmxmymzm{ m|!m}*m~+m4mА5mБvВvГvДvЕvЖ vЗ!vИ*vЙ+vК4vЛ5vМ"
	optimizer
n
0
1
2
3
4
 5
!6
*7
+8
49
510"
trackable_list_wrapper
 "
trackable_list_wrapper
n
0
1
2
3
4
 5
!6
*7
+8
49
510"
trackable_list_wrapper
ќ

?layers
@non_trainable_variables

trainable_variables
Ametrics
regularization_losses
Blayer_regularization_losses
Clayer_metrics
	variables
О__call__
Н_default_save_signature
+П&call_and_return_all_conditional_losses
'П"call_and_return_conditional_losses"
_generic_user_object
-
†serving_default"
signature_map
0:.Їо»2dcnn/embedding_1/embeddings
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
∞

Dlayers
Enon_trainable_variables
Fmetrics
trainable_variables
regularization_losses
Glayer_regularization_losses
Hlayer_metrics
	variables
Р__call__
+С&call_and_return_all_conditional_losses
'С"call_and_return_conditional_losses"
_generic_user_object
+:)»d2dcnn/conv1d_3/kernel
 :d2dcnn/conv1d_3/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
∞

Ilayers
Jnon_trainable_variables
Kmetrics
trainable_variables
regularization_losses
Llayer_regularization_losses
Mlayer_metrics
	variables
Т__call__
+У&call_and_return_all_conditional_losses
'У"call_and_return_conditional_losses"
_generic_user_object
+:)»d2dcnn/conv1d_4/kernel
 :d2dcnn/conv1d_4/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
∞

Nlayers
Onon_trainable_variables
Pmetrics
trainable_variables
regularization_losses
Qlayer_regularization_losses
Rlayer_metrics
	variables
Ф__call__
+Х&call_and_return_all_conditional_losses
'Х"call_and_return_conditional_losses"
_generic_user_object
+:)»d2dcnn/conv1d_5/kernel
 :d2dcnn/conv1d_5/bias
.
 0
!1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
 0
!1"
trackable_list_wrapper
∞

Slayers
Tnon_trainable_variables
Umetrics
"trainable_variables
#regularization_losses
Vlayer_regularization_losses
Wlayer_metrics
$	variables
Ц__call__
+Ч&call_and_return_all_conditional_losses
'Ч"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
∞

Xlayers
Ynon_trainable_variables
Zmetrics
&trainable_variables
'regularization_losses
[layer_regularization_losses
\layer_metrics
(	variables
Ш__call__
+Щ&call_and_return_all_conditional_losses
'Щ"call_and_return_conditional_losses"
_generic_user_object
':%
ђА2dcnn/dense_2/kernel
 :А2dcnn/dense_2/bias
.
*0
+1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
*0
+1"
trackable_list_wrapper
∞

]layers
^non_trainable_variables
_metrics
,trainable_variables
-regularization_losses
`layer_regularization_losses
alayer_metrics
.	variables
Ъ__call__
+Ы&call_and_return_all_conditional_losses
'Ы"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
∞

blayers
cnon_trainable_variables
dmetrics
0trainable_variables
1regularization_losses
elayer_regularization_losses
flayer_metrics
2	variables
Ь__call__
+Э&call_and_return_all_conditional_losses
'Э"call_and_return_conditional_losses"
_generic_user_object
&:$	А2dcnn/dense_3/kernel
:2dcnn/dense_3/bias
.
40
51"
trackable_list_wrapper
 "
trackable_list_wrapper
.
40
51"
trackable_list_wrapper
∞

glayers
hnon_trainable_variables
imetrics
6trainable_variables
7regularization_losses
jlayer_regularization_losses
klayer_metrics
8	variables
Ю__call__
+Я&call_and_return_all_conditional_losses
'Я"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
 "
trackable_list_wrapper
.
l0
m1"
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
ї
	ntotal
	ocount
p	variables
q	keras_api"Д
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
ђ
	rtotal
	scount
t
_fn_kwargs
u	variables
v	keras_api"е
_tf_keras_metric {"class_name": "MeanMetricWrapper", "name": "sparse_categorical_accuracy", "dtype": "float32", "config": {"name": "sparse_categorical_accuracy", "dtype": "float32", "fn": "sparse_categorical_accuracy"}}
:  (2total
:  (2count
.
n0
o1"
trackable_list_wrapper
-
p	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
r0
s1"
trackable_list_wrapper
-
u	variables"
_generic_user_object
5:3Їо»2"Adam/dcnn/embedding_1/embeddings/m
0:.»d2Adam/dcnn/conv1d_3/kernel/m
%:#d2Adam/dcnn/conv1d_3/bias/m
0:.»d2Adam/dcnn/conv1d_4/kernel/m
%:#d2Adam/dcnn/conv1d_4/bias/m
0:.»d2Adam/dcnn/conv1d_5/kernel/m
%:#d2Adam/dcnn/conv1d_5/bias/m
,:*
ђА2Adam/dcnn/dense_2/kernel/m
%:#А2Adam/dcnn/dense_2/bias/m
+:)	А2Adam/dcnn/dense_3/kernel/m
$:"2Adam/dcnn/dense_3/bias/m
5:3Їо»2"Adam/dcnn/embedding_1/embeddings/v
0:.»d2Adam/dcnn/conv1d_3/kernel/v
%:#d2Adam/dcnn/conv1d_3/bias/v
0:.»d2Adam/dcnn/conv1d_4/kernel/v
%:#d2Adam/dcnn/conv1d_4/bias/v
0:.»d2Adam/dcnn/conv1d_5/kernel/v
%:#d2Adam/dcnn/conv1d_5/bias/v
,:*
ђА2Adam/dcnn/dense_2/kernel/v
%:#А2Adam/dcnn/dense_2/bias/v
+:)	А2Adam/dcnn/dense_3/kernel/v
$:"2Adam/dcnn/dense_3/bias/v
з2д
 __inference__wrapped_model_52350њ
Л≤З
FullArgSpec
argsЪ 
varargsjargs
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ */Ґ,
*К'
input_1€€€€€€€€€€€€€€€€€€
ќ2Ћ
$__inference_dcnn_layer_call_fn_52678
$__inference_dcnn_layer_call_fn_52950
$__inference_dcnn_layer_call_fn_52977
$__inference_dcnn_layer_call_fn_52743∞
І≤£
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
Ї2Ј
?__inference_dcnn_layer_call_and_return_conditional_losses_52923
?__inference_dcnn_layer_call_and_return_conditional_losses_52612
?__inference_dcnn_layer_call_and_return_conditional_losses_52855
?__inference_dcnn_layer_call_and_return_conditional_losses_52574∞
І≤£
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
’2“
+__inference_embedding_1_layer_call_fn_52993Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
р2н
F__inference_embedding_1_layer_call_and_return_conditional_losses_52986Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
“2ѕ
(__inference_conv1d_3_layer_call_fn_53018Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
н2к
C__inference_conv1d_3_layer_call_and_return_conditional_losses_53009Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
“2ѕ
(__inference_conv1d_4_layer_call_fn_53043Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
н2к
C__inference_conv1d_4_layer_call_and_return_conditional_losses_53034Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
“2ѕ
(__inference_conv1d_5_layer_call_fn_53068Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
н2к
C__inference_conv1d_5_layer_call_and_return_conditional_losses_53059Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
С2О
6__inference_global_max_pooling1d_1_layer_call_fn_52363”
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *3Ґ0
.К+'€€€€€€€€€€€€€€€€€€€€€€€€€€€
ђ2©
Q__inference_global_max_pooling1d_1_layer_call_and_return_conditional_losses_52357”
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *3Ґ0
.К+'€€€€€€€€€€€€€€€€€€€€€€€€€€€
—2ќ
'__inference_dense_2_layer_call_fn_53088Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
м2й
B__inference_dense_2_layer_call_and_return_conditional_losses_53079Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Р2Н
)__inference_dropout_1_layer_call_fn_53110
)__inference_dropout_1_layer_call_fn_53115і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
∆2√
D__inference_dropout_1_layer_call_and_return_conditional_losses_53105
D__inference_dropout_1_layer_call_and_return_conditional_losses_53100і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
—2ќ
'__inference_dense_3_layer_call_fn_53135Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
м2й
B__inference_dense_3_layer_call_and_return_conditional_losses_53126Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 B«
#__inference_signature_wrapper_52780input_1"Ф
Н≤Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 °
 __inference__wrapped_model_52350} !*+459Ґ6
/Ґ,
*К'
input_1€€€€€€€€€€€€€€€€€€
™ "3™0
.
output_1"К
output_1€€€€€€€€€Њ
C__inference_conv1d_3_layer_call_and_return_conditional_losses_53009w=Ґ:
3Ґ0
.К+
inputs€€€€€€€€€€€€€€€€€€»
™ "2Ґ/
(К%
0€€€€€€€€€€€€€€€€€€d
Ъ Ц
(__inference_conv1d_3_layer_call_fn_53018j=Ґ:
3Ґ0
.К+
inputs€€€€€€€€€€€€€€€€€€»
™ "%К"€€€€€€€€€€€€€€€€€€dЊ
C__inference_conv1d_4_layer_call_and_return_conditional_losses_53034w=Ґ:
3Ґ0
.К+
inputs€€€€€€€€€€€€€€€€€€»
™ "2Ґ/
(К%
0€€€€€€€€€€€€€€€€€€d
Ъ Ц
(__inference_conv1d_4_layer_call_fn_53043j=Ґ:
3Ґ0
.К+
inputs€€€€€€€€€€€€€€€€€€»
™ "%К"€€€€€€€€€€€€€€€€€€dЊ
C__inference_conv1d_5_layer_call_and_return_conditional_losses_53059w !=Ґ:
3Ґ0
.К+
inputs€€€€€€€€€€€€€€€€€€»
™ "2Ґ/
(К%
0€€€€€€€€€€€€€€€€€€d
Ъ Ц
(__inference_conv1d_5_layer_call_fn_53068j !=Ґ:
3Ґ0
.К+
inputs€€€€€€€€€€€€€€€€€€»
™ "%К"€€€€€€€€€€€€€€€€€€dґ
?__inference_dcnn_layer_call_and_return_conditional_losses_52574s !*+45=Ґ:
3Ґ0
*К'
input_1€€€€€€€€€€€€€€€€€€
p
™ "%Ґ"
К
0€€€€€€€€€
Ъ ґ
?__inference_dcnn_layer_call_and_return_conditional_losses_52612s !*+45=Ґ:
3Ґ0
*К'
input_1€€€€€€€€€€€€€€€€€€
p 
™ "%Ґ"
К
0€€€€€€€€€
Ъ µ
?__inference_dcnn_layer_call_and_return_conditional_losses_52855r !*+45<Ґ9
2Ґ/
)К&
inputs€€€€€€€€€€€€€€€€€€
p
™ "%Ґ"
К
0€€€€€€€€€
Ъ µ
?__inference_dcnn_layer_call_and_return_conditional_losses_52923r !*+45<Ґ9
2Ґ/
)К&
inputs€€€€€€€€€€€€€€€€€€
p 
™ "%Ґ"
К
0€€€€€€€€€
Ъ О
$__inference_dcnn_layer_call_fn_52678f !*+45=Ґ:
3Ґ0
*К'
input_1€€€€€€€€€€€€€€€€€€
p
™ "К€€€€€€€€€О
$__inference_dcnn_layer_call_fn_52743f !*+45=Ґ:
3Ґ0
*К'
input_1€€€€€€€€€€€€€€€€€€
p 
™ "К€€€€€€€€€Н
$__inference_dcnn_layer_call_fn_52950e !*+45<Ґ9
2Ґ/
)К&
inputs€€€€€€€€€€€€€€€€€€
p
™ "К€€€€€€€€€Н
$__inference_dcnn_layer_call_fn_52977e !*+45<Ґ9
2Ґ/
)К&
inputs€€€€€€€€€€€€€€€€€€
p 
™ "К€€€€€€€€€§
B__inference_dense_2_layer_call_and_return_conditional_losses_53079^*+0Ґ-
&Ґ#
!К
inputs€€€€€€€€€ђ
™ "&Ґ#
К
0€€€€€€€€€А
Ъ |
'__inference_dense_2_layer_call_fn_53088Q*+0Ґ-
&Ґ#
!К
inputs€€€€€€€€€ђ
™ "К€€€€€€€€€А£
B__inference_dense_3_layer_call_and_return_conditional_losses_53126]450Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "%Ґ"
К
0€€€€€€€€€
Ъ {
'__inference_dense_3_layer_call_fn_53135P450Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "К€€€€€€€€€¶
D__inference_dropout_1_layer_call_and_return_conditional_losses_53100^4Ґ1
*Ґ'
!К
inputs€€€€€€€€€А
p
™ "&Ґ#
К
0€€€€€€€€€А
Ъ ¶
D__inference_dropout_1_layer_call_and_return_conditional_losses_53105^4Ґ1
*Ґ'
!К
inputs€€€€€€€€€А
p 
™ "&Ґ#
К
0€€€€€€€€€А
Ъ ~
)__inference_dropout_1_layer_call_fn_53110Q4Ґ1
*Ґ'
!К
inputs€€€€€€€€€А
p
™ "К€€€€€€€€€А~
)__inference_dropout_1_layer_call_fn_53115Q4Ґ1
*Ґ'
!К
inputs€€€€€€€€€А
p 
™ "К€€€€€€€€€АЉ
F__inference_embedding_1_layer_call_and_return_conditional_losses_52986r8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€€€€€€€€€€
™ "3Ґ0
)К&
0€€€€€€€€€€€€€€€€€€»
Ъ Ф
+__inference_embedding_1_layer_call_fn_52993e8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€€€€€€€€€€
™ "&К#€€€€€€€€€€€€€€€€€€»ћ
Q__inference_global_max_pooling1d_1_layer_call_and_return_conditional_losses_52357wEҐB
;Ґ8
6К3
inputs'€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ".Ґ+
$К!
0€€€€€€€€€€€€€€€€€€
Ъ §
6__inference_global_max_pooling1d_1_layer_call_fn_52363jEҐB
;Ґ8
6К3
inputs'€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "!К€€€€€€€€€€€€€€€€€€∞
#__inference_signature_wrapper_52780И !*+45DҐA
Ґ 
:™7
5
input_1*К'
input_1€€€€€€€€€€€€€€€€€€"3™0
.
output_1"К
output_1€€€€€€€€€