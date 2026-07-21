// Not sure if you need this, since for me it doesn't prop up any warnings or errors
// feather disable all
// feather ignore all

// Some WISE GUY named some variables/methods the same as builtin types and methods. Those use the struct-set self[$ "name"] syntax
// Enums cannot be redefined, so those are prefixed with _. Should work the same even if technically not the same, but
// you can use the default ones if you want.

// Make this never compile, while also not showing any unreachable code errors
if (code_is_compiled() && !code_is_compiled())
{
	function GM3D_Animation() constructor
	{
		/// @is {real}
		/// @desc Gets animation duration in seconds.
		duration = undefined;
		/// @is {string}
		/// @desc Gets the animation name.
		path = undefined;
	}
	
	function GM3D_AnimationComponent() constructor
	{
		/// @is {bool}
		/// @desc Gets current playback state.
		isPlaying = undefined;
	
		/// @desc Gets enabled state.
		getEnabled = function() /*-> bool*/ {}
		/// @desc Gets playback speed.
		getSpeed = function() /*-> real*/ {}
		/// @desc Gets current animation time.
		getTime = function() /*-> real*/ {}
		/// @desc Pauses playback (sets playing=false).
		pause = function() {}
		/// @desc Starts playback.
		play = function(animation /*: any*/, loop /*: bool*/) {}
		/// @desc Resumes playback (sets playing=true).
		resume = function() {}
		/// @desc Sets enabled state.
		setEnabled = function(enabled /*: bool*/) {}
		/// @desc Sets playback speed.
		setSpeed = function(speed /*: real*/) {}
		/// @desc Sets current animation time.
		setTime = function(time /*: real*/) {}
	}
	
	function GM3D_CameraComponent() constructor
	{
		/// @is {int32}
		/// @desc Gets the camera's color render texture ID.
		renderTexture = undefined;
		/// @is {int32}
		/// @desc Gets the camera's depth texture ID.
		depthTexture = undefined;
	
		/// @desc Gets camera alpha.
		getAlpha = function() /*-> real*/ {}
		/// @desc Gets aspect ratio.
		getAspectRatio = function() /*-> real*/ {}
		/// @desc Gets enabled state.
		getEnabled = function() /*-> bool*/ {}
		/// @desc Gets far plane distance.
		getFar = function() /*-> real*/ {}
		/// @desc Gets vertical field-of-view in radians.
		getFovY = function() /*-> real*/ {}
		/// @desc Gets near plane distance.
		getNear = function() /*-> real*/ {}
		/// @desc Gets camera render order.
		getOrder = function() /*-> real*/ {}
		/// @desc Gets orthographic height.
		getOrthoHeight = function() /*-> real*/ {}
		/// @desc Gets orthographic width.
		getOrthoWidth = function() /*-> real*/ {}
		/// @desc Gets projection enum value.
		getProjection = function() /*-> real*/ {}
		/// @desc Gets render height.
		getRenderHeight = function() /*-> int32*/ {}
		/// @desc Gets render size mode enum value.
		getRenderSizeMode = function() /*-> real*/ {}
		/// @desc Gets render width.
		getRenderWidth = function() /*-> int32*/ {}
		/// @desc Gets screen rectangle as [x, y, width, height].
		getScreenRect = function() /*-> array*/ {}
		/// @desc Gets render target enum value.
		getTarget = function() /*-> real*/ {}
		/// @desc Sets camera alpha clamped to [0, 1].
		setAlpha = function(alpha /*: real*/) {}
		/// @desc Sets aspect ratio.
		setAspectRatio = function(aspectRatio /*: real*/) {}
		/// @desc Sets enabled state.
		setEnabled = function(enabled /*: bool*/) {}
		/// @desc Sets far plane distance.
		setFar = function(farValue /*: real*/) {}
		/// @desc Sets vertical field-of-view in radians.
		setFovY = function(fovYRadians /*: real*/) {}
		/// @desc Sets near plane distance.
		setNear = function(nearValue /*: real*/) {}
		/// @desc Sets camera render order.
		setOrder = function(order /*: real*/) {}
		/// @desc Sets orthographic height.
		setOrthoHeight = function(height /*: real*/) {}
		/// @desc Sets orthographic width.
		setOrthoWidth = function(width /*: real*/) {}
		/// @desc Sets projection enum value.
		setProjection = function(projection /*: real*/) {}
		/// @desc Sets render height.
		setRenderHeight = function(height /*: int32*/) {}
		/// @desc Sets render size mode enum value.
		setRenderSizeMode = function(mode /*: real*/) {}
		/// @desc Sets render width.
		setRenderWidth = function(width /*: int32*/) {}
		/// @desc Sets screen rectangle from [x, y, width, height].
		setScreenRect = function(rect /*: array*/) {}
		/// @desc Sets render target enum value.
		setTarget = function(target /*: real*/) {}
	}
	
	function GM3D_DualQuaternion() constructor
	{
		/// @is {object}
		/// @desc Dual (translation) quaternion component.
		dual = undefined;
		
		/// @is {object}
		/// @desc Real (rotation) quaternion component.
		self[$ "real"] = undefined;
	
		/// @desc Adds rhs component-wise and returns self.
		add = function(rhs /*: object*/) /*-> object*/ {}
		/// @desc Returns a new copy of self.
		clone = function() /*-> object*/ {}
		/// @desc Conjugates self and returns self.
		conjugate = function() /*-> object*/ {}
		/// @desc Copies src into self and returns self.
		copy = function(src /*: object*/) /*-> object*/ {}
		/// @desc Decomposes self into translation and rotation outputs.
		decompose = function(translation /*: object*/, rotation /*: object*/) /*-> object*/ {}
		/// @desc Returns dot product of self and rhs.
		dot = function(rhs /*: object*/) /*-> real*/ {}
		/// @desc Returns true if self and rhs are exactly equal.
		equals = function(rhs /*: object*/) /*-> bool*/ {}
		/// @desc Returns true if self and rhs are equal within epsilon.
		/// @param {object} rhs Right-hand sign
		/// @param {real} [epsilon] Epsilon
		equalsEpsilon = function(rhs /*: object*/, epsilon /*: real*/ = math_get_epsilon()) /*-> bool*/ {}
		/// @desc Applies dual quaternion exponential map to self and returns self.
		self[$ "exp"]  = function() /*-> object*/ {}
		/// @desc Returns the rotation component of self.
		getRotation = function() /*-> object*/ {}
		/// @desc Returns the translation component of self.
		getTranslation = function() /*-> object*/ {}
		/// @desc Inverts self and returns self.
		invert = function() /*-> object*/ {}
		/// @desc Returns Euclidean length of self.
		length = function() /*-> real*/ {}
		/// @desc Returns squared Euclidean length of self.
		lengthSq = function() /*-> real*/ {}
		/// @desc Applies dual quaternion logarithm map to self and returns self.
		log = function() /*-> object*/ {}
		/// @desc Multiplies self by rhs and returns self.
		multiply = function(rhs /*: object*/) /*-> object*/ {}
		/// @desc Multiplies all components by scalar s and returns self.
		multiplyScalar = function(s /*: real*/) /*-> object*/ {}
		/// @desc Normalizes self and returns self.
		normalize = function() /*-> object*/ {}
		/// @desc Normalizes self using custom epsilon and returns self.
		/// @param {real} [epsilon] Epsilon
		normalizeSafe = function(epsilon /*: real*/ = math_get_epsilon()) /*-> object*/ {}
		/// @desc Raises self to a scalar power and returns self.
		pow = function(power /*: real*/) /*-> object*/ {}
		/// @desc Screw-linearly interpolates self toward rhs by t and returns self.
		scself[$ "lerp"]  = function(rhs /*: object*/, t /*: real*/) /*-> object*/ {}
		/// @desc Sets the dual quaternion component and returns self.
		setDual = function(dual /*: object*/) /*-> object*/ {}
		/// @desc Sets the real quaternion component and returns self.
		setReal = function(real /*: object*/) /*-> object*/ {}
		/// @desc Converts self to a transform matrix.
		toMatrix = function() /*-> object*/ {}
		/// @desc Transforms a point by self.
		transformPoint = function(point /*: object*/) /*-> object*/ {}
		/// @desc Transforms a vector by self.
		transformVector = function(vector /*: object*/) /*-> object*/ {}
	
		/// @desc Creates a dual quaternion from a transform matrix.
		/// @returns {Struct.GM3D_DualQuaternion}
		static fromMatrix = function(matrix /*: object*/) /*-> object*/ {} 
		/// @desc Creates a dual quaternion from real and dual parts.
		/// @returns {Struct.GM3D_DualQuaternion}
		static fromRealDual = function(real /*: object*/, dual /*: object*/) /*-> object*/ {}
		/// @desc Creates a dual quaternion from translation and rotation.
		/// @returns {Struct.GM3D_DualQuaternion}
		static fromTranslationRotation = function(translation /*: object*/, rotation /*: object*/) /*-> object*/ {}
		/// @desc Returns a new identity dual quaternion.
		/// @returns {Struct.GM3D_DualQuaternion}
		static identity = function() /*-> object*/ {}
	} 
			
	/// @param {real} [x] X component.
	/// @param {real} [y] Y component.
	/// @param {real} [z] Z component.
	/// @param {string} [order] Rotation order string (for example "XYZ").
	function GM3D_Euler(x /*: real*/ = 0, y /*: real*/ = 0, z /*: real*/ = 0, order /*: string*/ = "XYZ") constructor
	{
		/// @is {string}
		self.order = order; // Rotation order string (for example "XYZ").
		/// @is {real}
		self.x = x; // Rotation around the X axis in radians.
		/// @is {real}
		self.y = y; // Rotation around the Y axis in radians.
		/// @is {real}
		self.z = z; // Rotation around the Z axis in radians.
	
		/// @desc Clones this object.
		clone = function() /*-> object*/ {}
		/// @desc Copies source Euler and returns self.
		copy = function(src /*: object*/) /*-> object*/ {}
		/// @desc Compares Euler values for exact equality.
		equals = function(rhs /*: object*/) /*-> bool*/ {}
		/// @desc Sets Euler components and returns self.
		/// @param {real} [x] X component.
		/// @param {real} [y] Y component.
		/// @param {real} [z] Z component.
		/// @param {string} [order] Rotation order string (for example "XYZ").
		set = function(x /*: real*/, y /*: real*/, z /*: real*/, order /*: string*/ = self.order) /*-> object*/ {}
		/// @desc Sets order.
		setOrder = function(order /*: string*/) {}
		/// @desc Sets x.
		setX = function(x /*: real*/) {}
		/// @desc Sets y.
		setY = function(y /*: real*/) {}
		/// @desc Sets z.
		setZ = function(z /*: real*/) {}
	}
	
	function GM3D_EnvironmentVolumeComponent() constructor
	{
		/// @desc Gets ambient light color as packed integer (`0x00BBGGRR`).
		getAmbientColor = function() /*-> int32*/ {}
		/// @desc Gets enabled state.
		getEnabled = function() /*-> bool*/ {}
		/// @desc Gets fog color as packed integer (`0x00BBGGRR`).
		getFogColor = function() /*-> int32*/ {}
		/// @desc Gets whether fog override is enabled.
		getFogEnabled = function() /*-> bool*/ {}
		/// @desc Gets the fog end distance.
		getFogEnd = function() /*-> real*/ {}
		/// @desc Gets the fog start distance.
		getFogStart = function() /*-> real*/ {}
		/// @desc Gets the AABB size (width, height, depth) as a Vec3.
		getSize = function() /*-> object*/ {}
		/// @desc Sets ambient light color from packed integer (`0x00BBGGRR`).
		setAmbientColor = function(color /*: int32*/) {}
		/// @desc Sets enabled state.
		setEnabled = function(enabled /*: bool*/) {}
		/// @desc Sets fog color from packed integer (`0x00BBGGRR`).
		setFogColor = function(color /*: int32*/) {}
		/// @desc Sets whether fog override is enabled.
		setFogEnabled = function(enabled /*: bool*/) {}
		/// @param end
		/// @desc Sets the fog end distance.
		setFogEnd = function(_end /*: real*/) {}
		/// @desc Sets the fog start distance.
		setFogStart = function(start /*: real*/) {}
		/// @desc Sets the AABB size (width, height, depth). The volume is centered on the node's world-space position.
		setSize = function(x /*: real*/, y /*: real*/, z /*: real*/) {}
	}
	
	function GM3D_LightComponent() constructor
	{
		/// @desc Gets light color as packed integer (`0x00BBGGRR`).
		getColor = function() /*-> int32*/ {}
		/// @desc Gets enabled state.
		getEnabled = function() /*-> bool*/ {}
		/// @desc Gets inner cone angle in radians.
		getInnerConeAngle = function() /*-> real*/ {}
		/// @desc Gets intensity.
		getIntensity = function() /*-> real*/ {}
		/// @desc Gets outer cone angle in radians.
		getOuterConeAngle = function() /*-> real*/ {}
		/// @desc Gets range.
		getRange = function() /*-> real*/ {}
		/// @desc Gets light type enum value.
		getType = function() /*-> real*/ {}
		/// @desc Sets light color from packed integer (`0x00BBGGRR`).
		setColor = function(color /*: int32*/) {}
		/// @desc Sets enabled state.
		setEnabled = function(enabled /*: bool*/) {}
		/// @desc Sets inner cone angle in radians.
		setInnerConeAngle = function(angleRadians /*: real*/) {}
		/// @desc Sets intensity clamped to >= 0.
		setIntensity = function(intensity /*: real*/) {}
		/// @desc Sets outer cone angle in radians.
		setOuterConeAngle = function(angleRadians /*: real*/) {}
		/// @desc Sets range clamped to >= 0.
		setRange = function(range /*: real*/) {}
		/// @desc Sets light type enum value.
		setType = function(type /*: real*/) {}
	}
	
	/// @param {string} name Material name
	function GM3D_Material(name /*: string*/) constructor
	{
		/// @desc Clones this material into a new independent material handle.
		clone = function() /*-> object*/ {}
		/// @desc Clears material state (uniforms, textures, pipeline/shader assignments).
		destroy = function() {}
		/// @desc Gets alpha-test enable flag.
		getAlphaTestEnable = function() /*-> bool*/ {}
		/// @desc Gets alpha-test reference value.
		getAlphaTestRef = function() /*-> int32*/ {}
		/// @desc Gets alpha blend enable flag.
		getBlendEnable = function() /*-> bool*/ {}
		/// @desc Gets blend equation for color in legacy equation numbering.
		getBlendEquation = function() /*-> int32*/ {}
		/// @desc Gets [equation, alphaEquation] in legacy equation numbering.
		getBlendEquationSepAlpha = function() /*-> array*/ {}
		/// @desc Gets blend mode in legacy packed form.
		getBlendMode = function() /*-> int32*/ {}
		/// @desc Gets destination blend factor (color).
		getBlendModeDest = function() /*-> int32*/ {}
		/// @desc Gets destination blend factor (alpha).
		getBlendModeDestAlpha = function() /*-> int32*/ {}
		/// @desc Gets [src, dest] blend factors.
		getBlendModeExt = function() /*-> array*/ {}
		/// @desc Gets [src, dest, srcAlpha, destAlpha] blend factors.
		getBlendModeExtSepAlpha = function() /*-> array*/ {}
		/// @desc Gets source blend factor (color).
		getBlendModeSrc = function() /*-> int32*/ {}
		/// @desc Gets source blend factor (alpha).
		getBlendModeSrcAlpha = function() /*-> int32*/ {}
		/// @desc Gets color-write enable flags as [red, green, blue, alpha] booleans.
		getColorWriteEnable = function() /*-> array*/ {}
		/// @desc Gets cull mode enum value.
		getCullMode = function() /*-> int32*/ {}
		/// @desc Gets a float uniform value.
		getFloat = function(name /*: string*/) /*-> real*/ {}
		/// @desc Gets a float uniform array.
		getFloatArray = function(name /*: string*/) /*-> array*/ {}
		/// @desc Gets fog-enable flag.
		getFogEnable = function() /*-> bool*/ {}
		/// @desc Gets an int uniform value.
		getInt = function(name /*: string*/) /*-> int32*/ {}
		/// @desc Gets an int uniform array.
		getIntArray = function(name /*: string*/) /*-> array*/ {}
		/// @desc Gets per-material lighting-enable flag.
		getLightingEnable = function() /*-> bool*/ {}
		/// @desc Gets the material name.
		getName = function() /*-> string*/ {}
		/// @desc Gets the assigned shader. Currently always returns undefined (shader-to-asset mapping is not yet implemented).
		getShader = function() /*-> any*/ {}
		/// @desc Gets stencil op used when depth test fails after stencil pass.
		getStencilDepthFail = function() /*-> int32*/ {}
		/// @desc Gets stencil-test enable flag.
		getStencilEnable = function() /*-> bool*/ {}
		/// @desc Gets stencil op used when stencil test fails.
		getStencilFail = function() /*-> int32*/ {}
		/// @desc Gets stencil compare function enum value.
		getStencilFunc = function() /*-> int32*/ {}
		/// @desc Gets stencil op used when both stencil and depth tests pass.
		getStencilPass = function() /*-> int32*/ {}
		/// @desc Gets stencil read mask.
		getStencilReadMask = function() /*-> int32*/ {}
		/// @desc Gets stencil reference value.
		getStencilRef = function() /*-> int32*/ {}
		/// @desc Gets stencil write mask.
		getStencilWriteMask = function() /*-> int32*/ {}
		/// @desc Gets the texture ID assigned to the named texture slot.
		getTexture = function(name /*: string*/) /*-> int32*/ {}
		/// @desc Gets depth compare function enum value.
		getZFunc = function() /*-> int32*/ {}
		/// @desc Gets depth-test enable flag.
		getZTestEnable = function() /*-> bool*/ {}
		/// @desc Gets depth-write enable flag.
		getZWriteEnable = function() /*-> bool*/ {}
		/// @desc Sets alpha-test enable flag.
		setAlphaTestEnable = function(enable /*: bool*/) {}
		/// @desc Sets alpha-test reference value.
		setAlphaTestRef = function(ref /*: int32*/) {}
		/// @desc Enables or disables alpha blending.
		setBlendEnable = function(enable /*: bool*/) {}
		/// @desc Sets blend equation for color path.
		setBlendEquation = function(equation /*: int32*/) {}
		/// @desc Sets [equation, alphaEquation].
		setBlendEquationSepAlpha = function(equation /*: int32*/, alphaEquation /*: int32*/) {}
		/// @desc Sets blend mode using legacy packed mode ID.
		setBlendMode = function(blendMode /*: int32*/) {}
		/// @desc Sets [src, dest] blend factors.
		setBlendModeExt = function(srcBlendMode /*: int32*/, destBlendMode /*: int32*/) {}
		/// @desc Sets [src, dest, srcAlpha, destAlpha] blend factors.
		setBlendModeExtSepAlpha = function(srcBlendMode /*: int32*/, destBlendMode /*: int32*/, srcAlphaBlendMode /*: int32*/, destAlphaBlendMode /*: int32*/) {}
		/// @desc Sets color-write enable flags.
		setColorWriteEnable = function(red /*: bool*/, green /*: bool*/, blue /*: bool*/, alpha /*: bool*/) {}
		/// @desc Sets cull mode enum value.
		setCullMode = function(cullMode /*: int32*/) {}
		/// @desc Sets a float uniform value.
		setFloat = function(name /*: string*/, value /*: real*/) {}
		/// @desc Sets a float uniform array.
		setFloatArray = function(name /*: string*/, values /*: array*/) {}
		/// @desc Sets fog-enable flag while preserving fog color/start/end values.
		setFogEnable = function(enable /*: bool*/) {}
		/// @desc Sets an int uniform value.
		setInt = function(name /*: string*/, value /*: int32*/) {}
		/// @desc Sets an int uniform array.
		setIntArray = function(name /*: string*/, values /*: array*/) {}
		/// @desc Sets per-material lighting-enable flag.
		setLightingEnable = function(enable /*: bool*/) {}
		/// @desc Sets the material name.
		setName = function(name /*: string*/) {}
		/// @desc Sets the shader used by this material.
		setShader = function(shader /*: any*/) {}
		/// @desc Sets stencil op used when depth test fails after stencil pass.
		setStencilDepthFail = function(stencilOp /*: int32*/) {}
		/// @desc Sets stencil-test enable flag.
		setStencilEnable = function(enable /*: bool*/) {}
		/// @desc Sets stencil op used when stencil test fails.
		setStencilFail = function(stencilOp /*: int32*/) {}
		/// @desc Sets stencil compare function enum value.
		setStencilFunc = function(func /*: int32*/) {}
		/// @desc Sets stencil op used when both stencil and depth tests pass.
		setStencilPass = function(stencilOp /*: int32*/) {}
		/// @desc Sets stencil read mask.
		setStencilReadMask = function(mask /*: int32*/) {}
		/// @desc Sets stencil reference value.
		setStencilRef = function(ref /*: int32*/) {}
		/// @desc Sets stencil write mask.
		setStencilWriteMask = function(mask /*: int32*/) {}
		/// @desc Sets a named texture slot.
		setTexture = function(name /*: string*/, texture /*: any*/) {}
		/// @desc Sets depth compare function enum value.
		setZFunc = function(func /*: int32*/) {}
		/// @desc Sets depth-test enable flag.
		setZTestEnable = function(enable /*: bool*/) {}
		/// @desc Sets depth-write enable flag.
		setZWriteEnable = function(enable /*: bool*/) {}
	}
	
	/// @param {real} [n11] Top-left value
	/// @param {real} [n12] Top-right value
	/// @param {real} [n12] Bottom-left value
	/// @param {real} [n22] Bottom-right value
	function GM3D_Matrix2(n11 /*: real*/ = 0, n12 /*: real*/ = 0, n21 /*: real*/ = 0, n22 /*: real*/ = 0) constructor
	{
		/// @is {array}
		/// @desc Matrix elements in column-major order (4 values).
		elements = undefined;
	
		/// @desc Returns a new copy of self.
		clone = function() /*-> object*/ {}
		/// @desc Copies src into self and returns self.
		copy = function(src /*: object*/) /*-> object*/ {}
		/// @desc Returns determinant of self.
		determinant = function() /*-> real*/ {}
		/// @desc Returns true if self equals rhs.
		equals = function(rhs /*: object*/) /*-> bool*/ {}
		/// @desc Returns true when self and rhs differ by at most epsilon.
		/// @param {object} rhs Right-hand sign
		/// @param {real} [epsilon] Epsilon
		equalsEpsilon = function(rhs /*: object*/, epsilon /*: real*/ = math_get_epsilon()) /*-> bool*/ {}
		/// @desc Loads elements from an array in column-major order and returns self.
		/// @param {array} source Source array
		/// @param {int32} [offset] Offset into the array
		fromArray = function(source /*: array*/, offset /*: int32*/ = 0) /*-> object*/ {}
		/// @desc Sets this matrix to identity and returns self.
		identity = function() /*-> object*/ {}
		/// @desc Inverts self and returns self.
		invert = function() /*-> object*/ {}
		/// @desc Returns true if self is identity within epsilon.
		/// @param {real} [epsilon] Epsilon	
		isIdentity = function(epsilon /*: real*/ = math_get_epsilon()) /*-> bool*/ {}
		/// @desc Adds rhs component-wise and returns self.
		addComponentwise = function(rhs /*: object*/) /*-> object*/ {}
		/// @desc Subtracts rhs component-wise and returns self.
		subComponentwise = function(rhs /*: object*/) /*-> object*/ {}
		/// @desc Multiplies rhs component-wise and returns self.
		mulComponentwise = function(rhs /*: object*/) /*-> object*/ {}
		/// @desc Post-multiplies self by rhs and returns self.
		multiply = function(rhs /*: object*/) /*-> object*/ {}
		/// @desc Sets self to a * b and returns self.
		multiplyMatrices = function(a /*: object*/, b /*: object*/) /*-> object*/ {}
		/// @desc Multiplies all elements by scalar s and returns self.
		multiplyScalar = function(s /*: real*/) /*-> object*/ {}
		/// @desc Pre-multiplies self by lhs and returns self.
		premultiply = function(lhs /*: object*/) /*-> object*/ {}
		/// @desc Sets self as a 2D rotation matrix and returns self.
		makeRotation = function(thetaRadians /*: real*/) /*-> object*/ {}
		/// @desc Rotates self by theta and returns self.
		rotate = function(thetaRadians /*: real*/) /*-> object*/ {}
		/// @desc Sets self as a 2D scale matrix and returns self.
		makeScale = function(x /*: real*/, y /*: real*/) /*-> object*/ {}
		/// @desc Scales self by sx and sy and returns self.
		scale = function(sx /*: real*/, sy /*: real*/) /*-> object*/ {}
		/// @desc Sets the elements of this matrix in row-major order and returns self.
		set = function(n11 /*: real*/, n12 /*: real*/, n21 /*: real*/, n22 /*: real*/) /*-> object*/ {}
		/// @desc Sets self from the upper-left 2x2 of a 3x3 matrix and returns self.
		setFromMatrix3 = function(source /*: object*/) /*-> object*/ {}
		/// @desc Sets self from the upper-left 2x2 of a 4x4 matrix and returns self.
		setFromMatrix4 = function(source /*: object*/) /*-> object*/ {}
		/// @desc Writes self to an array in column-major order and returns that array.
		/// @param {array} [target] Target
		/// @param {real} [offset] Offset
		toArray = function(target /*: array*/ = [], offset /*: int32*/ = 0) /*-> array*/ {}
		/// @desc Transforms a Vec2 using this matrix.
		transformVector = function(vector /*: object*/) /*-> object*/ {}
		/// @desc Transposes self and returns self.
		transpose = function() /*-> object*/ {}
	}
	
	function GM3D_Matrix3() constructor
	{
		/// @is {array}
		/// @desc Matrix elements in column-major order (9 values).
		elements = undefined;
	
		/// @desc Returns a new copy of self.
		clone = function() /*-> object*/ {}
		/// @desc Copies src into self and returns self.
		copy = function(src /*: object*/) /*-> object*/ {}
		/// @desc Returns determinant of self.
		determinant = function() /*-> real*/ {}
		/// @desc Returns true if self equals rhs.
		equals = function(rhs /*: object*/) /*-> bool*/ {}
		/// @desc Returns true when self and rhs differ by at most epsilon.
		/// @param {object} rhs Right-hand sign
		/// @param {real} [epsilon] Epsilon
		equalsEpsilon = function(rhs /*: object*/, epsilon /*: real*/ = math_get_epsilon()) /*-> bool*/ {}
		/// @desc Extracts basis axes from self and returns self.
		extractBasis = function(xAxis /*: object*/, yAxis /*: object*/, zAxis /*: object*/) /*-> object*/ {}
		/// @desc Loads elements from an array in column-major order and returns self.
		/// @param {array} source Source array
		/// @param {int32} [offset] Offset into the array
		fromArray = function(source /*: array*/, offset /*: int32*/ = 0) /*-> object*/ {}
		/// @desc Returns maximum basis scale magnitude.
		getMaxScaleOnAxis = function() /*-> real*/ {}
		/// @desc Sets self to the normal matrix derived from a 4x4 matrix and returns self.
		getNormalMatrix = function(matrix4 /*: object*/) /*-> object*/ {}
		/// @desc Sets this matrix to identity and returns self.
		identity = function() /*-> object*/ {}
		/// @desc Inverts self and returns self.
		invert = function() /*-> object*/ {}
		/// @desc Returns true if self is identity within epsilon.
		/// @param {real} [epsilon] Epsilon
		isIdentity = function(epsilon /*: real*/ = math_get_epsilon()) /*-> bool*/ {}
		/// @desc Adds rhs component-wise and returns self.
		addComponentwise = function(rhs /*: object*/) /*-> object*/ {}
		/// @desc Subtracts rhs component-wise and returns self.
		subComponentwise = function(rhs /*: object*/) /*-> object*/ {}
		/// @desc Multiplies rhs component-wise and returns self.
		mulComponentwise = function(rhs /*: object*/) /*-> object*/ {}
		/// @desc Sets self as a 2D rotation matrix and returns self.
		makeRotation = function(thetaRadians /*: real*/) /*-> object*/ {}
		/// @desc Sets self as a 2D scale matrix and returns self.
		makeScale = function(x /*: real*/, y /*: real*/) /*-> object*/ {}
		/// @desc Sets self as a 2D translation matrix and returns self.
		makeTranslation = function(x /*: real*/, y /*: real*/) /*-> object*/ {}
		/// @desc Post-multiplies self by rhs and returns self.
		multiply = function(rhs /*: object*/) /*-> object*/ {}
		/// @desc Sets self to a * b and returns self.
		multiplyMatrices = function(a /*: object*/, b /*: object*/) /*-> object*/ {}
		/// @desc Multiplies all elements by scalar s and returns self.
		multiplyScalar = function(s /*: real*/) /*-> object*/ {}
		/// @desc Pre-multiplies self by lhs and returns self.
		premultiply = function(lhs /*: object*/) /*-> object*/ {}
		/// @desc Rotates self by theta and returns self.
		rotate = function(thetaRadians /*: real*/) /*-> object*/ {}
		/// @desc Scales self by sx and sy and returns self.
		scale = function(sx /*: real*/, sy /*: real*/) /*-> object*/ {}
		/// @desc Copies values from another Matrix3 and returns self.
		setFromMatrix3 = function(source /*: object*/) /*-> object*/ {}
		/// @desc Sets self from the upper 3x3 of a 4x4 matrix and returns self.
		setFromMatrix4 = function(matrix /*: object*/) /*-> object*/ {}
		/// @desc Sets self as a UV transform matrix and returns self.
		setUvTransform = function(tx /*: real*/, ty /*: real*/, sx /*: real*/, sy /*: real*/, rotationRadians /*: real*/, cx /*: real*/, cy /*: real*/) /*-> object*/ {}
		/// @desc Writes self to an array in column-major order and returns that array.
		/// @param {array} [target] Target
		/// @param {real} [offset] Offset
		toArray = function(target /*: array*/ = [], offset /*: int32*/ = 0) /*-> array*/ {}
		/// @desc Translates self by tx and ty and returns self.
		translate = function(tx /*: real*/, ty /*: real*/) /*-> object*/ {}
		/// @desc Transposes self and returns self.
		transpose = function() /*-> object*/ {}
		/// @desc Writes the transposed matrix to target and returns self.
		transposeIntoArray = function(target /*: array*/) /*-> object*/ {}
	}
	
	function GM3D_Matrix4() constructor
	{
		/// @is {array}
		/// @desc Matrix elements in column-major order (16 values).
		elements = undefined;
	
		/// @desc Adds componentwise.
		addComponentwise = function(rhs /*: object*/) /*-> object*/ {}
		/// @desc Clones this object.
		clone = function() /*-> object*/ {}
		/// @desc Composes matrix from translation, rotation, and scale.
		compose = function(translation /*: object*/, rotation /*: object*/, scale /*: object*/) /*-> object*/ {}
		/// @desc Copies source matrix and returns self.
		copy = function(src /*: object*/) /*-> object*/ {}
		/// @desc Copies position.
		copyPosition = function(matrix /*: object*/) /*-> object*/ {}
		/// @desc Decomposes matrix into translation, rotation, and scale outputs.
		decompose = function(position /*: object*/, quaternion /*: object*/, scale /*: object*/) /*-> object*/ {}
		/// @desc Computes determinant.
		determinant = function() /*-> real*/ {}
		/// @desc Compares matrices for exact equality.
		equals = function(rhs /*: object*/) /*-> bool*/ {}
		/// @desc equals epsilon.
		/// @param {object} rhs Right-hand sign
		/// @param {real} [epsilon] Epsilon
		equalsEpsilon = function(rhs /*: object*/, epsilon /*: real*/ = math_get_epsilon()) /*-> bool*/ {}
		/// @desc extract basis.
		extractBasis = function(xAxis /*: object*/, yAxis /*: object*/, zAxis /*: object*/) /*-> object*/ {}
		/// @desc extract rotation.
		extractRotation = function(matrix /*: object*/) /*-> object*/ {}
		/// @desc from array.
		/// @param {array} source Source array
		/// @param {real} [offset] Offset into the array
		fromArray = function(source /*: array*/, offset /*: int32*/ = 0) /*-> object*/ {}
		/// @desc Gets max scale on axis.
		getMaxScaleOnAxis = function() /*-> real*/ {}
		/// @desc Gets rotation.
		getRotation = function() /*-> object*/ {}
		/// @desc Gets scale.
		getScale = function() /*-> object*/ {}
		/// @desc Gets translation.
		getTranslation = function() /*-> object*/ {}
		/// @desc Sets matrix to identity and returns self.
		identity = function() /*-> object*/ {}
		/// @desc Inverts matrix and returns self.
		invert = function() /*-> object*/ {}
		/// @desc Checks whether identity.
		/// @param {real} [epsilon] Epsilon
		isIdentity = function(epsilon /*: real*/) /*-> bool*/ {}
		/// @desc look at.
		lookAt = function(eye /*: object*/, target /*: object*/, up /*: object*/) /*-> object*/ {}
		/// @desc make basis.
		makeBasis = function(xAxis /*: object*/, yAxis /*: object*/, zAxis /*: object*/) /*-> object*/ {}
		/// @desc make orthographic.
		makeOrthographic = function(left /*: real*/, right /*: real*/, top /*: real*/, bottom /*: real*/, nearPlane /*: real*/, farPlane /*: real*/, coordinateSystem /*: int32*/ = GM3D_ECameraProjection.Orthographic, reversedDepth /*: bool*/ = false) /*-> object*/ {}
		/// @desc make perspective.
		makePerspective = function(left /*: real*/, right /*: real*/, top /*: real*/, bottom /*: real*/, nearPlane /*: real*/, farPlane /*: real*/, coordinateSystem /*: int32*/ = GM3D_ECameraProjection.Perspective, reversedDepth /*: bool*/ = false) /*-> object*/ {}
		/// @desc make rotation axis.
		makeRotationAxis = function(axis /*: object*/, angleRadians /*: real*/) /*-> object*/ {}
		/// @desc make rotation from euler.
		makeRotationFromEuler = function(euler /*: object*/) /*-> object*/ {}
		/// @desc make rotation from quaternion.
		makeRotationFromQuaternion = function(quaternion /*: object*/) /*-> object*/ {}
		/// @desc make rotation x.
		makeRotationX = function(angleRadians /*: real*/) /*-> object*/ {}
		/// @desc make rotation y.
		makeRotationY = function(angleRadians /*: real*/) /*-> object*/ {}
		/// @desc make rotation z.
		makeRotationZ = function(angleRadians /*: real*/) /*-> object*/ {}
		/// @desc make scale.
		makeScale = function(x /*: real*/, y /*: real*/, z /*: real*/) /*-> object*/ {}
		/// @desc make shear.
		makeShear = function(xy /*: real*/, xz /*: real*/, yx /*: real*/, yz /*: real*/, zx /*: real*/, zy /*: real*/) /*-> object*/ {}
		/// @desc make translation.
		makeTranslation = function(x /*: real*/, y /*: real*/, z /*: real*/) /*-> object*/ {}
		/// @desc mul componentwise.
		mulComponentwise = function(rhs /*: object*/) /*-> object*/ {}
		/// @desc Post-multiplies by rhs and returns self.
		multiply = function(rhs /*: object*/) /*-> object*/ {}
		/// @desc multiply matrices.
		multiplyMatrices = function(a /*: object*/, b /*: object*/) /*-> object*/ {}
		/// @desc multiply scalar.
		multiplyScalar = function(s /*: real*/) /*-> object*/ {}
		/// @desc Pre-multiplies by lhs and returns self.
		premultiply = function(lhs /*: object*/) /*-> object*/ {}
		/// @desc rotate euler.
		rotateEuler = function(eulerRadians /*: object*/) /*-> object*/ {}
		/// @desc rotate quat.
		rotateQuat = function(rotation /*: object*/) /*-> object*/ {}
		/// @desc rotate x.
		rotateX = function(angleRadians /*: real*/) /*-> object*/ {}
		/// @desc rotate y.
		rotateY = function(angleRadians /*: real*/) /*-> object*/ {}
		/// @desc rotate z.
		rotateZ = function(angleRadians /*: real*/) /*-> object*/ {}
		/// @desc Applies uniform scale and returns self.
		scale = function(s /*: real*/) /*-> object*/ {}
		/// @desc scale componentwise.
		scaleComponentwise = function(scale /*: object*/) /*-> object*/ {}
		/// @desc Sets from matrix3.
		setFromMatrix3 = function(source /*: object*/) /*-> object*/ {}
		/// @desc Sets position.
		setPosition = function(position /*: object*/) /*-> object*/ {}
		/// @desc sub componentwise.
		subComponentwise = function(rhs /*: object*/) /*-> object*/ {}
		/// @desc to array.
		/// @param {array} [target]	target
		/// @param {int32} [offset]	offset
		toArray = function(target /*: array*/, offset /*: int32*/) /*-> array*/ {}
		/// @desc to euler.
		toEuler = function() /*-> object*/ {}
		/// @desc transform direction.
		transformDirection = function(direction /*: object*/) /*-> object*/ {}
		/// @desc transform point.
		transformPoint = function(point /*: object*/) /*-> object*/ {}
		/// @desc transform vector.
		transformVector = function(vector /*: object*/) /*-> object*/ {}
		/// @desc Applies translation and returns self.
		translate = function(translation /*: object*/) /*-> object*/ {}
		/// @desc Transposes matrix and returns self.
		transpose = function() /*-> object*/ {}
	
		/// @desc Creates an identity matrix.
		/// @returns {Struct.GM3D_Matrix4}
		static identity = function() /*-> Struct.GM3D_Matrix4*/ {}
		/// @desc look at.
		/// @returns {Struct.GM3D_Matrix4}
		static lookAt = function(from /*: object*/, to /*: object*/, up /*: object*/) /*-> Struct.GM3D_Matrix4*/ {}
		/// @desc Creates an orthographic projection matrix.
		/// @returns {Struct.GM3D_Matrix4}
		static orthographic = function(width /*: real*/, height /*: real*/, nearPlane /*: real*/, farPlane /*: real*/) /*-> Struct.GM3D_Matrix4*/ {}
		/// @desc Creates a perspective projection matrix.
		/// @returns {Struct.GM3D_Matrix4}
		static perspective = function(fovY /*: real*/, aspect /*: real*/, nearPlane /*: real*/, farPlane /*: real*/) /*-> Struct.GM3D_Matrix4*/ {}
		/// @desc perspective fov.
		/// @returns {Struct.GM3D_Matrix4}
		static perspectiveFov = function(fovY /*: real*/, width /*: real*/, height /*: real*/, nearPlane /*: real*/, farPlane /*: real*/) /*-> Struct.GM3D_Matrix4*/ {}
	}
	
	function GM3D_Mesh() constructor
	{
		/// @is {bool}
		isSkinned = undefined; // True when the mesh contains skinning data.
		
		/// @is {int32}
		primitiveType = undefined; // Primitive type enum value used when drawing this mesh.
		
		/// @is {object}
		vertexBuffer = undefined; // Handle object for the underlying vertex buffer resource.
		
		/// @is {int32}
		vertexFormat = undefined; // Vertex format ID used by this mesh.
	
		/// @desc Gets the mesh bounding box maximum corner.
		getBoundingBoxself[$ "max"]  = function() /*-> object*/ {}
		/// @desc Gets the mesh bounding box minimum corner.
		getBoundingBoxself[$ "min"]  = function() /*-> object*/ {}
	}
	
	/// @param {Struct.GM3D_Mesh} mesh A GM3D_Mesh instance
	/// @param {Struct.GM3D_Material} material A GM3D_Material instance
	function GM3D_MeshComponent(mesh /*: object*/, material /*: object*/) constructor
	{
		/// @desc Gets enabled state.
		getEnabled = function() /*-> bool*/ {}
		/// @desc Gets material reference.
		getMaterial = function() /*-> any*/ {}
		/// @desc Gets mesh reference.
		getMesh = function() /*-> any*/ {}
		/// @desc Sets enabled state.
		setEnabled = function(enabled /*: bool*/) {}
		/// @desc Sets material reference.
		setMaterial = function(material /*: object*/) {}
	}
	
	/// @param {real} [x] X component.
	/// @param {real} [y] Y component.
	/// @param {real} [z] Z component.
	/// @param {real} [w] W component.
	function GM3D_Quaternion(x /*: real*/ = 0, y /*: real*/ = 0, z /*: real*/ = 0, w /*: real*/ = 0) constructor
	{
		/// @is {real}
		self.w = w; // W component.
		/// @is {real}
		self.x = x; // X component.
		/// @is {real}
		self.y = y; // Y component.
		/// @is {real}
		self.z = z; // Z component.
	
		/// @desc Adds rhs component-wise to self and returns self.
		add = function(rhs /*: object*/) /*-> object*/ {}
		/// @desc Returns angular distance to rhs in radians.
		angleTo = function(rhs /*: object*/) /*-> real*/ {}
		/// @desc Returns a new copy of self.
		clone = function() /*-> object*/ {}
		/// @desc Conjugates self and returns self.
		conjugate = function() /*-> object*/ {}
		/// @desc Copies src into self and returns self.
		copy = function(src /*: object*/) /*-> object*/ {}
		/// @desc Returns dot product of self and rhs.
		dot = function(rhs /*: object*/) /*-> real*/ {}
		/// @desc Returns true if self and rhs are exactly equal component-wise.
		equals = function(rhs /*: object*/) /*-> bool*/ {}
		/// @desc Returns true if component deltas are <= epsilon.
		/// @param {object} rhs Right-hand sign
		/// @param {real} [epsilon] Epsilon
		equalsEpsilon = function(rhs /*: object*/, epsilon /*: real*/ = math_get_epsilon()) /*-> bool*/ {}
		/// @desc Applies quaternion exponential map to self and returns self.
		self[$ "exp"]  = function() /*-> object*/ {}
		/// @desc Loads quaternion components from an array and returns self.
		/// @param {array} source Source array
		/// @param {int32} [offset] Offset into the array
		fromArray = function(source /*: array*/, offset /*: int32*/ = 0) /*-> object*/ {}
		/// @desc Loads quaternion components from an interleaved array and returns self.
		fromBufferAttribute = function(source /*: array*/, index /*: int32*/, stride /*: int32*/ = 0) /*-> object*/ {}
		/// @desc Returns the rotation angle represented by self.
		getAngle = function() /*-> real*/ {}
		/// @desc Returns the axis of rotation represented by self.
		getAxis = function() /*-> object*/ {}
		/// @desc Sets self to the identity quaternion and returns self.
		identity = function() /*-> object*/ {}
		/// @desc Inverts self and returns self.
		invert = function() /*-> object*/ {}
		/// @desc Returns Euclidean length of self.
		length = function() /*-> real*/ {}
		/// @desc Returns squared Euclidean length of self.
		lengthSq = function() /*-> real*/ {}
		/// @desc Linearly interpolates self toward rhs by t and returns self.
		self[$ "lerp"]  = function(rhs /*: object*/, t /*: real*/) /*-> object*/ {}
		/// @desc Applies quaternion logarithm map to self and returns self.
		log = function() /*-> object*/ {}
		/// @desc Multiplies self by rhs and returns self.
		multiply = function(rhs /*: object*/) /*-> object*/ {}
		/// @desc Sets self to a * b and returns self.
		multiplyQuaternions = function(a /*: object*/, b /*: object*/) /*-> object*/ {}
		/// @desc Multiplies all components by scalar s and returns self.
		multiplyScalar = function(s /*: real*/) /*-> object*/ {}
		/// @desc Performs normalized linear interpolation toward rhs and returns self.
		nself[$ "lerp"]  = function(rhs /*: object*/, t /*: real*/) /*-> object*/ {}
		/// @desc Normalizes self and returns self.
		normalize = function() /*-> object*/ {}
		/// @desc Normalizes self using custom epsilon and returns self.
		/// @param {real} [epsilon] Epsilon
		normalizeSafe = function(epsilon /*: real*/ = math_get_epsilon()) /*-> object*/ {}
		/// @desc Premultiplies self by lhs and returns self.
		premultiply = function(lhs /*: object*/) /*-> object*/ {}
		/// @desc Sets self to a random unit quaternion and returns self.
		self[$ "random"]  = function() /*-> object*/ {}
		/// @desc Rotates a vector by self.
		rotate = function(vector /*: object*/) /*-> object*/ {}
		/// @desc Rotates self toward rhs by up to maxRadiansDelta and returns self.
		rotateTowards = function(rhs /*: object*/, maxRadiansDelta /*: real*/) /*-> object*/ {}
		/// @desc Sets all components and returns self.
		set = function(x /*: real*/, y /*: real*/, z /*: real*/, w /*: real*/) /*-> object*/ {}
		/// @desc Sets self from axis-angle and returns self.
		setFromAxisAngle = function(axis /*: object*/, angleRadians /*: real*/) /*-> object*/ {}
		/// @desc Sets self from Euler rotation and returns self.
		setFromEuler = function(euler /*: object*/) /*-> object*/ {}
		/// @desc Sets self from a rotation matrix and returns self.
		setFromRotationMatrix = function(matrix /*: object*/) /*-> object*/ {}
		/// @desc Sets self to the shortest rotation from one direction to another.
		setFromUnitVectors = function(fromDir /*: object*/, toDir /*: object*/) /*-> object*/ {}
		/// @desc Sets the W component.
		setW = function(w /*: real*/) {}
		/// @desc Sets the X component.
		setX = function(x /*: real*/) {}
		/// @desc Sets the Y component.
		setY = function(y /*: real*/) {}
		/// @desc Sets the Z component.
		setZ = function(z /*: real*/) {}
		/// @desc Spherically interpolates self toward rhs by t and returns self.
		sself[$ "lerp"]  = function(rhs /*: object*/, t /*: real*/) /*-> object*/ {}
		/// @desc Sets self to sself[$ "lerp"]  = function(a, b, t) and returns self.
		slerpQuaternions = function(a /*: object*/, b /*: object*/, t /*: real*/) /*-> object*/ {}
		/// @desc Writes components to an array and returns that array.
		/// @param {array} [target] Target
		/// @param {real} [offset] Offset
		toArray = function(target /*: array*/ = [], offset /*: int32*/ = 0) /*-> array*/ {}
		/// @desc Returns axis-angle representation of self.
		toAxisAngle = function() /*-> array*/ {}
		/// @desc Converts self to Euler angles.
		toEuler = function() /*-> object*/ {}
		/// @desc Returns this quaternion as a JSON-compatible array.
		toJSON = function() /*-> array*/ {}
		/// @desc Converts self to a rotation matrix.
		toMatrix = function() /*-> object*/ {}
	
		/// @desc Creates a quaternion from axis-angle.
		/// @returns {Struct.GM3D_Quaternion}
		static fromAxisAngle = function(axis /*: object*/, angle /*: real*/) /*-> Struct.GM3D_Quaternion*/ {}
		/// @desc Creates a quaternion from Euler angles in radians.
		/// @returns {Struct.GM3D_Quaternion}
		static fromEuler = function(x /*: real*/, y /*: real*/, z /*: real*/) /*-> Struct.GM3D_Quaternion*/ {}
		/// @desc Creates a quaternion that looks in the forward direction using up as reference.
		/// @returns {Struct.GM3D_Quaternion}
		static fromLookRotation = function(forward /*: object*/, up /*: object*/) /*-> Struct.GM3D_Quaternion*/ {}
		/// @desc Creates a quaternion from a rotation matrix.
		/// @returns {Struct.GM3D_Quaternion}
		static fromMatrix = function(matrix /*: object*/) /*-> object*/ {}
		/// @desc Creates a quaternion representing rotation from fromDir to toDir.
		/// @returns {Struct.GM3D_Quaternion}
		static fromToRotation = function(fromDir /*: object*/, toDir /*: object*/) /*-> Struct.GM3D_Quaternion*/ {}
		/// @desc Returns a new identity quaternion.
		/// @returns {Struct.GM3D_Quaternion}
		static identity = function() /*-> Struct.GM3D_Quaternion*/ {}
		/// @desc Multiplies two packed quaternion arrays and writes to destination.
		/// @returns {Array}
		static multiplyQuaternionsFlat = function(dst /*: array*/, dstOffset /*: int32*/, src0 /*: array*/, srcOffset0 /*: int32*/, src1 /*: array*/, srcOffset1 /*: int32*/) /*-> array*/ {}
		/// @desc Performs spherical interpolation between two packed quaternion arrays.
		/// @returns {Array}
		static slerpFlat = function(dst /*: array*/, dstOffset /*: int32*/, src0 /*: array*/, srcOffset0 /*: int32*/, src1 /*: array*/, srcOffset1 /*: int32*/, t /*: real*/) /*-> array*/ {}
	}
	
	function GM3D_Renderer() constructor
	{
		/// @desc Renders the given scene using this renderer instance. `deltaTime` is elapsed time in seconds since the last render call.
		/// @param {GM3D_Scene} scene Scene
		/// @param {real} [deltaTime] Delta time
		render = function(scene /*: object*/, deltaTime /*: real*/ = delta_time) {}
	}
	
	function GM3D_Scene() constructor
	{
		/// @is {int32}
		/// @desc Gets current number of animation entries in the scene.
		animationCount = undefined;
		
		/// @is {int32}
		/// @desc Gets current number of material slots in the scene.
		materialCount = undefined;
		
		/// @is {int32}
		/// @desc Gets current number of nodes in the scene graph.
		nodeCount = undefined;
		
		/// @is {string}
		/// @desc Gets the file path this scene was loaded from, or an empty string for scenes not loaded from a file.
		path = undefined;
	
		/// @desc Applies animation at a specific time.
		applyAnimation = function(nameOrIndexOrStruct /*: any*/, time /*: real*/) {}
		/// @desc Creates a new empty scene.
		/// @returns {Struct.GM3D_Scene}
		createEmpty = function() /*-> Struct.GM3D_Scene*/ {}
		/// @desc Creates a new named node in this scene graph and returns a SceneNode wrapper.
		/// @returns {Struct.GM3D_SceneNode} }
		createNode = function(name /*: string*/ = "") /*-> Struct.GM3D_Node*/ {}
		/// @desc Releases the underlying scene graph immediately. Subsequent operations on this object will fail.
		destroy = function() {}
		/// @desc Freezes scene state for rendering, flushing pending transform updates.
		freeze = function() {}
		/// @desc Gets animation by name (string) or index (number).
		/// @returns {Struct.GM3D_Animation}
		getAnimation = function(nameOrIndex /*: any*/) /*-> any*/ {}
		/// @desc Gets animation names for valid scene animation references.
		/// @returns {Array<String>}
		getAnimationNames = function() /*-> array*/ {}
		/// @desc Gets Animation objects for all valid scene animation references.
		/// @returns {Array<Struct.GM3D_Animation>}
		getAnimations = function() /*-> array*/ {}
			
		/// @desc Gets a material by name (string) or slot index (number).
		/// @returns {Struct.GM3D_Material}
		getMaterial = function(nameOrIndex /*: any*/) /*-> any*/ {}
		/// @desc Gets names for all valid scene material slots.
		/// @returns {Array<String>}	
		getMaterialNames = function() /*-> array*/ {}
		/// @desc Gets material objects for valid scene material slots.
		/// @returns {Array<Struct.GM3D_Material>}
		getMaterials = function() /*-> array*/ {}
			
		/// @desc Gets a node by name (string) or node slot index (number).
		/// @returns {Struct.GM3D_SceneNode}
		getNode = function(nameOrIndex /*: any*/) /*-> any*/ {}
		/// @desc Gets names for all valid node slots.
		/// @returns {Array<String>}
		getNodeNames = function() /*-> array*/ {}
		/// @desc Gets all valid node slots as SceneNode objects.
		/// @returns {Array<Struct.GM3D_SceneNode>}
		getNodes = function() /*-> array*/ {}
			
		/// @desc Tests whether an animation exists on this scene.
		hasAnimation = function(nameOrIndexOrStruct /*: any*/) /*-> bool*/ {}
		/// @desc Loads a glTF file from disk and returns a new Scene, or undefined on failure. Reuses a cached scene if one exists for that path.
		loadGltf = function(path /*: string*/) /*-> any*/ {}
		/// @desc Replaces a scene material by name (string) or slot index (number).
		setMaterial = function(nameOrIndex /*: any*/, material /*: object*/) {}
		/// @desc Spawns this scene into destScene under parentNode (or the scene root when undefined), and returns the root SceneNode of the spawned hierarchy.
		spawnInto = function(destScene /*: object*/, parentNode /*: any*/) /*-> object*/ {}
		/// @desc Advances animation components and scene-graph state by deltaSeconds. Defaults to 0 when omitted.
		/// @param {real} [deltaSeconds] Delta seconds	
		update = function(deltaSeconds /*: real*/ = 0) {}
	}
	
	function GM3D_SceneNode() constructor
	{
		/// @is {string}
		/// @desc Gets the node name from the owning scene graph.
		name = undefined;
		
		/// @is {any}
		/// @desc Parent node, or undefined when this node has no parent.
		parent = undefined;
	
		/// @desc Appends child under this node.
		addChild = function(child /*: object*/) {}
		/// @desc Adds a supported component type to this node.
		addComponent = function(component /*: object*/) {}
		/// @desc Destroys this node in the owning scene graph.
		destroy = function() {}
			
		/// @desc Gets one animation component, or undefined when none exist.
		/// @returns {Struct.GM3D_AnimationComponent}
		getAnimationComponent = function() /*-> any*/ {}
		/// @desc Gets animation-component wrappers for this node.
		/// @returns {Array<Struct.GM3D_AnimationComponent>}
		getAnimationComponents = function() /*-> array*/ {}
		/// @desc Gets one camera component, or undefined when none exist.
		/// @returns {Struct.GM3D_CameraComponent}
		getCameraComponent = function() /*-> any*/ {}
		/// @desc Gets direct child nodes of this node as SceneNode objects.
		/// @returns {Struct.GM3D_SceneNode}
		getChildren = function() /*-> array*/ {}
		/// @desc Gets one environment volume component, or undefined when none exist.
		/// @returns {Struct.GM3D_EnvironmentVolumeComponent}
		getEnvironmentVolumeComponent = function() /*-> any*/ {}
		/// @desc Gets one light component, or undefined when none exist.
		/// @returns {Struct.GM3D_LightComponent}
		getLightComponent = function() /*-> any*/ {}
		/// @desc Gets local forward direction.
		getLocalForward = function() /*-> object*/ {}
		/// @desc Gets local transform matrix.
		getLocalMatrix = function() /*-> object*/ {}
		/// @desc Gets local position as a Vec3.
		getLocalPosition = function() /*-> object*/ {}
		/// @desc Gets local right direction as a Vec3 derived from the local matrix.
		getLocalRight = function() /*-> object*/ {}
		/// @desc Gets local rotation.
		getLocalRotation = function() /*-> object*/ {}
		/// @desc Gets local scale.
		getLocalScale = function() /*-> object*/ {}
		/// @desc Gets local up direction.
		getLocalUp = function() /*-> object*/ {}
		/// @desc Gets the first mesh component, or undefined when none exist.
		/// @returns {Struct.GM3D_MeshComponent}
		getMeshComponent = function() /*-> any*/ {}
		/// @desc Gets mesh components for this node.
		/// @returns {Array<Struct.GM3D_MeshComponent>}
		getMeshComponents = function() /*-> array*/ {}
		/// @desc Gets mesh objects from all valid mesh components attached to this node.
		/// @returns {Array<Struct.GM3D_Mesh>}
		getMeshes = function() /*-> array*/ {}
		/// @desc Gets the first skinned-mesh component, or undefined when none exist.
		/// @returns {Struct.GM3D_SkinnedMeshComponent}
		getSkinnedMeshComponent = function() /*-> any*/ {}
		/// @desc Gets world forward direction.
		getWorldForward = function() /*-> object*/ {}
		/// @desc Gets world transform matrix.
		getWorldMatrix = function() /*-> object*/ {}
		/// @desc Gets world position as a Vec3 extracted from the translation column of the world matrix.
		getWorldPosition = function() /*-> object*/ {}
		/// @desc Gets world right direction.
		getWorldRight = function() /*-> object*/ {}
		/// @desc Gets world rotation derived from world matrix quaternion cast.
		getWorldRotation = function() /*-> object*/ {}
		/// @desc Gets world scale derived from world matrix basis vector lengths.
		getWorldScale = function() /*-> object*/ {}
		/// @desc Gets world up direction.
		getWorldUp = function() /*-> object*/ {}
		/// @desc Removes all components from this node.
		removeAllComponents = function() {}
		/// @desc Removes the given attached component instance from this node when found.
		removeComponent = function(component /*: object*/) {}
		/// @desc Removes this node from its current parent.
		removeFromParent = function() {}
		/// @desc Sets local transform matrix.
		setLocalMatrix = function(matrix /*: object*/) {}
		/// @desc Sets local position.
		setLocalPosition = function(position /*: object*/) {}
		/// @desc Sets local rotation.
		setLocalRotation = function(rotation /*: object*/) {}
		/// @desc Sets local scale.
		setLocalScale = function(scale /*: object*/) {}
	}
	
	function GM3D_Shader() constructor
	{
		/// @desc Gets a global shader float uniform by name.
		static getGlobalFloat = function(name /*: string*/) /*-> real*/ {}
		/// @desc Gets a global shader float-array uniform by name.
		static getGlobalFloatArray = function(name /*: string*/) /*-> array*/ {}
		/// @desc Gets a global shader int uniform by name.
		static getGlobalInt = function(name /*: string*/) /*-> int32*/ {}
		/// @desc Gets a global shader int-array uniform by name.
		static getGlobalIntArray = function(name /*: string*/) /*-> array*/ {}
		/// @desc Gets a global shader texture binding by name.
		static getGlobalTexture = function(name /*: string*/) /*-> int32*/ {}
		/// @desc Sets a global shader float uniform by name.
		static setGlobalFloat = function(name /*: string*/, value /*: real*/) {}
		/// @desc Sets a global shader float-array uniform by name.
		static setGlobalFloatArray = function(name /*: string*/, values /*: array*/) {}
		/// @desc Sets a global shader int uniform by name.
		static setGlobalInt = function(name /*: string*/, value /*: int32*/) {}
		/// @desc Sets a global shader int-array uniform by name.
		static setGlobalIntArray = function(name /*: string*/, values /*: array*/) {}
		/// @desc Sets a global shader texture binding by name.
		static setGlobalTexture = function(name /*: string*/, texture /*: any*/) {}
	}
	
	function GM3D_SkinnedMeshComponent(mesh /*: object*/, material /*: object*/) constructor
	{
		/// @is {int32}
		/// @desc Gets number of joints referenced by this skinned component.
		jointCount = undefined;
	
		/// @desc Gets enabled state.
		/// @returns {Bool}
		getEnabled = function() /*-> bool*/ {}
		/// @desc Gets material reference.
		/// @returns {Struct.GM3D_Material}
		getMaterial = function() /*-> any*/ {}
		/// @desc Gets mesh reference.
		/// @returns {Struct.GM3D_Mesh}
		getMesh = function() /*-> any*/ {}
		/// @desc Sets enabled state.
		/// @param {Bool} enabled Enabled state
		setEnabled = function(enabled /*: bool*/) {}
		/// @desc Sets material reference.
		/// @returns {Struct.GM3D_Material} material Material reference
		setMaterial = function(material /*: object*/) {}
	}
	
	function GM3D_Texture() constructor
	{
		/// @desc Gets whether linear filtering is enabled for the texture sampler.
		static getFilter = function(texture /*: int32*/) /*-> bool*/ {}
		/// @desc Gets the sampler maximum anisotropy value.
		static getMaxAniso = function(texture /*: int32*/) /*-> int32*/ {}
		/// @desc Gets the sampler maximum mip level.
		static getMaxMip = function(texture /*: int32*/) /*-> real*/ {}
		/// @desc Gets the sampler minimum mip level.
		static getMinMip = function(texture /*: int32*/) /*-> real*/ {}
		/// @desc Gets the sampler mip bias.
		static getMipBias = function(texture /*: int32*/) /*-> real*/ {}
		/// @desc Gets the sampler mip-enable enum value.
		static getMipEnable = function(texture /*: int32*/) /*-> int32*/ {}
		/// @desc Gets the sampler min-filter enum value used for mip filtering.
		static getMipFilter = function(texture /*: int32*/) /*-> int32*/ {}
		/// @desc Gets whether texture wrap/repeat mode is enabled.
		static getRepeat = function(texture /*: int32*/) /*-> bool*/ {}
		/// @desc Sets linear or point filtering for the texture sampler.
		static setFilter = function(texture /*: int32*/, linear /*: bool*/) {}
		/// @desc Sets the sampler maximum anisotropy value.
		static setMaxAniso = function(texture /*: int32*/, maxAniso /*: int32*/) {}
		/// @desc Sets the sampler maximum mip level.
		static setMaxMip = function(texture /*: int32*/, maxMip /*: real*/) {}
		/// @desc Sets the sampler minimum mip level.
		static setMinMip = function(texture /*: int32*/, minMip /*: real*/) {}
		/// @desc Sets the sampler mip bias.
		static setMipBias = function(texture /*: int32*/, mipBias /*: real*/) {}
		/// @desc Sets the sampler mip-enable enum value.
		static setMipEnable = function(texture /*: int32*/, mipEnable /*: int32*/) {}
		/// @desc Sets the sampler min-filter enum used for mip filtering.
		static setMipFilter = function(texture /*: int32*/, mipFilter /*: int32*/) {}
		/// @param texture
		/// @param repeat
		/// @desc Sets texture wrap/repeat mode for U and V addressing.
		static setRepeat = function(texture /*: int32*/, _repeat /*: bool*/) {}
	}
	
	/// @param {real} [x] X component.
	/// @param {real} [y] Y component.
	function GM3D_Vec2(x /*: real*/ = 0, y /*: real*/ = 0) constructor
	{
		self.x = x;
		self.y = y;
	
		/// @desc Returns a new vector with absolute-valued components.
		self[$ "abs"]  = function() /*-> object*/ {}
		/// @desc Adds rhs component-wise to self and returns self.
		add = function(rhs /*: object*/) /*-> object*/ {}
		/// @desc Adds scalar s to both components of self and returns self.
		addScalar = function(s /*: real*/) /*-> object*/ {}
		/// @desc Adds rhs * s to self and returns self.
		addScaledVector = function(rhs /*: object*/, s /*: real*/) /*-> object*/ {}
		/// @desc Sets self to a + b and returns self.
		addVectors = function(a /*: object*/, b /*: object*/) /*-> object*/ {}
		/// @desc Returns the polar angle of self in radians in the [0, 2*pi) range.
		angle = function() /*-> real*/ {}
		/// @desc Returns the angle in radians between self and rhs.
		angleTo = function(rhs /*: object*/) /*-> real*/ {}
		/// @desc Applies a 3x3 affine transform to self and returns self.
		applyMatrix3 = function(matrix3 /*: object*/) /*-> object*/ {}
		/// @desc Applies component-wise ceil to self and returns self.
		self[$ "ceil"]  = function() /*-> object*/ {}
		/// @desc Clamps self component-wise between minV and maxV and returns self.
		self[$ "clamp"]  = function(minV /*: object*/, maxV /*: object*/) /*-> object*/ {}
		/// @desc Clamps vector length to [minLen, maxLen] and returns self.
		clampLength = function(minLen /*: real*/, maxLen /*: real*/) /*-> object*/ {}
		/// @desc Clamps each self component to [minVal, maxVal] and returns self.
		clampScalar = function(minVal /*: real*/, maxVal /*: real*/) /*-> object*/ {}
		/// @desc Returns a new copy of self.
		clone = function() /*-> object*/ {}
		/// @desc Copies src into self and returns self.
		copy = function(src /*: object*/) /*-> object*/ {}
		/// @desc Returns the 2D scalar cross product (x1*y2 - y1*x2).
		cross = function(rhs /*: object*/) /*-> real*/ {}
		/// @desc Returns Euclidean distance from self to rhs.
		distanceTo = function(rhs /*: object*/) /*-> real*/ {}
		/// @desc Returns squared Euclidean distance from self to rhs.
		distanceToSquared = function(rhs /*: object*/) /*-> real*/ {}
		/// @desc Divides self by rhs component-wise and returns self.
		divide = function(rhs /*: object*/) /*-> object*/ {}
		/// @desc Divides self by scalar s and returns self.
		divideScalar = function(s /*: real*/) /*-> object*/ {}
		/// @desc Returns the dot product of self and rhs.
		dot = function(rhs /*: object*/) /*-> real*/ {}
		/// @desc Returns true if self and rhs are exactly equal component-wise.
		equals = function(rhs /*: object*/) /*-> bool*/ {}
		/// @desc Returns true if absolute per-component delta is <= epsilon.
		/// @param {object} rhs Right-hand sign
		/// @param {real} [epsilon] Epsilon
		equalsEpsilon = function(rhs /*: object*/, epsilon /*: real*/ = math_get_epsilon()) /*-> bool*/ {}
		/// @desc Applies component-wise floor to self and returns self.
		self[$ "floor"]  = function() /*-> object*/ {}
		/// @desc Returns a new vector containing the fractional part of each component.
		self[$ "frac"]  = function() /*-> object*/ {}
		/// @desc Loads self from source[offset], source[offset + 1] and returns self.
		/// @param {array} source Source array
		/// @param {int32} [offset] Offset into the array
		fromArray = function(source /*: array*/, offset /*: int32*/ = 0) /*-> object*/ {}
		/// @desc Loads self from interleaved source at index * stride and returns self.
		fromBufferAttribute = function(source /*: array*/, index /*: int32*/, stride /*: int32*/ = 0) /*-> object*/ {}
		/// @desc Gets one component by index (0 = x, 1 = y).
		getComponent = function(index /*: int32*/) /*-> real*/ {}
		/// @desc Returns true if both components are finite numbers.
		isFinite = function() /*-> bool*/ {}
		/// @desc Returns Euclidean length of self.
		length = function() /*-> real*/ {}
		/// @desc Returns squared Euclidean length of self.
		lengthSq = function() /*-> real*/ {}
		/// @desc Linearly interpolates self toward rhs by t and returns self.
		self[$ "lerp"]  = function(rhs /*: object*/, t /*: real*/) /*-> object*/ {}
		/// @desc Sets self to self[$ "lerp"]  = function(a, b, t) and returns self.
		lerpVectors = function(a /*: object*/, b /*: object*/, t /*: real*/) /*-> object*/ {}
		/// @desc Returns Manhattan distance from self to rhs.
		manhattanDistanceTo = function(rhs /*: object*/) /*-> real*/ {}
		/// @desc Returns Manhattan length of self.
		manhattanLength = function() /*-> real*/ {}
		/// @desc Sets self to component-wise self[$ "max"]  = function(self, rhs) and returns self.
		self[$ "max"]  = function(rhs /*: object*/) /*-> object*/ {}
		/// @desc Returns the larger of x and y.
		maxComponent = function() /*-> real*/ {}
		/// @desc Sets self to component-wise self[$ "min"]  = function(self, rhs) and returns self.
		self[$ "min"]  = function(rhs /*: object*/) /*-> object*/ {}
		/// @desc Returns the smaller of x and y.
		minComponent = function() /*-> real*/ {}
		/// @desc Multiplies self by rhs component-wise and returns self.
		multiply = function(rhs /*: object*/) /*-> object*/ {}
		/// @desc Multiplies both components of self by scalar s and returns self.
		multiplyScalar = function(s /*: real*/) /*-> object*/ {}
		/// @desc Negates self and returns self.
		negate = function() /*-> object*/ {}
		/// @desc Normalizes self and returns self.
		normalize = function() /*-> object*/ {}
		/// @desc Normalizes self using custom epsilon and returns self.
		/// @param {real} [epsilon] Epsilon
		normalizeSafe = function(epsilon /*: real*/ = math_get_epsilon()) /*-> object*/ {}
		/// @desc Returns a new projection of self onto rhs.
		projectOnVector = function(rhs /*: object*/) /*-> object*/ {}
		/// @desc Sets self to random components in [0, 1] and returns self.
		self[$ "random"]  = function() /*-> object*/ {}
		/// @desc Reflects self around normal and returns self.
		reflect = function(normal /*: object*/) /*-> object*/ {}
		/// @desc Refracts self by normal and eta and returns self.
		refract = function(normal /*: object*/, eta /*: real*/) /*-> object*/ {}
		/// @desc Rotates self around center by angleRadians and returns self.
		rotateAself[$ "round"]  = function(center /*: object*/, angleRadians /*: real*/) /*-> object*/ {}
		/// @desc Applies component-wise round to self and returns self.
		self[$ "round"]  = function() /*-> object*/ {}
		/// @desc Rounds each component toward zero and returns self.
		roundToZero = function() /*-> object*/ {}
		/// @desc Sets both components and returns self.
		set = function(x /*: real*/, y /*: real*/) /*-> object*/ {}
		/// @desc Sets one component by index (0 = x, 1 = y) and returns self.
		setComponent = function(index /*: int32*/, value /*: real*/) /*-> object*/ {}
		/// @desc Normalizes then scales to the requested length, and returns self.
		setLength = function(length /*: real*/) /*-> object*/ {}
		/// @desc Sets both components to the same scalar and returns self.
		setScalar = function(s /*: real*/) /*-> object*/ {}
		/// @desc Sets the X component.
		setX = function(x /*: real*/) {}
		/// @desc Sets the Y component.
		setY = function(y /*: real*/) {}
		/// @desc Subtracts rhs from self component-wise and returns self.
		sub = function(rhs /*: object*/) /*-> object*/ {}
		/// @desc Subtracts scalar s from both components and returns self.
		subScalar = function(s /*: real*/) /*-> object*/ {}
		/// @desc Sets self to a - b and returns self.
		/// @param {Struct.GM3D_Vec3} a a
		/// @param {Struct.GM3D_Vec3} b b
		subVectors = function(a /*: Struct.GM3D_Vec3*/, b /*: Struct.GM3D_Vec3*/) /*-> Struct.GM3D_Vec3*/ {}
		/// @desc Writes self to array as [x, y] at offset and returns that array.
		/// @param {array} [target] Target
		/// @param {real} [offset] Offset
		toArray = function(target /*: array*/ = [], offset /*: int32*/ = 0) /*-> array*/ {}
	
		/// @desc Returns a new (1, 1) vector.
		static one = function() /*-> object*/ {}
		/// @desc Returns a new +X unit vector (1, 0).
		static right = function() /*-> object*/ {}
		/// @desc Returns a new +Y unit vector (0, 1).
		static up = function() /*-> object*/ {}
		/// @desc Returns a new (0, 0) vector.
		static zero = function() /*-> object*/ {}
	}
	
	/// @param {real} [x] X component.
	/// @param {real} [y] Y component.
	/// @param {real} [z] Z component.
	function GM3D_Vec3(x /*: real*/ = 0, y /*: real*/ = 0, z /*: real*/ = 0) constructor
	{
		/// @is {real}
		self.w = w; // W component.
		/// @is {real}
		self.x = x; // X component.
		/// @is {real}
		self.y = y; // Y component.
		/// @is {real}
		self.z = z; // Z component.
		
		/// @desc Returns a vector with absolute-valued components.
		self[$ "abs"]  = function() /*-> object*/ {}
		/// @desc Adds rhs component-wise and returns self.
		add = function(rhs /*: object*/) /*-> object*/ {}
		/// @desc Adds scalar s to all components and returns self.
		addScalar = function(s /*: real*/) /*-> object*/ {}
		/// @desc Adds rhs scaled by s and returns self.
		addScaledVector = function(rhs /*: object*/, s /*: real*/) /*-> object*/ {}
		/// @desc Sets this vector to a + b and returns self.
		addVectors = function(a /*: object*/, b /*: object*/) /*-> object*/ {}
		/// @desc Returns angle in radians between this vector and rhs.
		angleTo = function(rhs /*: object*/) /*-> real*/ {}
		/// @desc Rotates this vector around axis by angleRadians and returns self.
		applyAxisAngle = function(axis /*: object*/, angleRadians /*: real*/) /*-> object*/ {}
		/// @desc Applies an Euler rotation and returns self.
		applyEuler = function(euler /*: object*/) /*-> object*/ {}
		/// @desc Applies a 3x3 transform and returns self.
		applyMatrix3 = function(matrix3 /*: object*/) /*-> object*/ {}
		/// @desc Applies a 4x4 transform and returns self.
		applyMatrix4 = function(matrix /*: object*/) /*-> object*/ {}
		/// @desc Applies a normal matrix and returns self.
		applyNormalMatrix = function(matrix3 /*: object*/) /*-> object*/ {}
		/// @desc Applies a quaternion rotation and returns self.
		applyQuaternion = function(quaternion /*: object*/) /*-> object*/ {}
		/// @desc Computes barycentric interpolation using this vector, b, c, u, and v.
		barycentric = function(b /*: object*/, c /*: object*/, u /*: real*/, v /*: real*/) /*-> object*/ {}
		/// @desc Applies component-wise ceil and returns self.
		self[$ "ceil"]  = function() /*-> object*/ {}
		/// @desc Clamps each component between minV and maxV and returns self.
		self[$ "clamp"]  = function(minV /*: object*/, maxV /*: object*/) /*-> object*/ {}
		/// @desc Clamps vector length to [minLen, maxLen] and returns self.
		clampLength = function(minLen /*: real*/, maxLen /*: real*/) /*-> object*/ {}
		/// @desc Clamps each component to [minVal, maxVal] and returns self.
		clampScalar = function(minVal /*: real*/, maxVal /*: real*/) /*-> object*/ {}
		/// @desc Returns a copy of this vector.
		clone = function() /*-> object*/ {}
		/// @desc Copies src into this vector and returns self.
		copy = function(src /*: object*/) /*-> object*/ {}
		/// @desc Sets this vector to this x rhs and returns self.
		cross = function(rhs /*: object*/) /*-> object*/ {}
		/// @desc Sets this vector to cross product a x b and returns self.
		crossVectors = function(a /*: object*/, b /*: object*/) /*-> object*/ {}
		/// @desc Returns Euclidean distance to rhs.
		distanceTo = function(rhs /*: object*/) /*-> real*/ {}
		/// @desc Returns squared Euclidean distance to rhs.
		distanceToSquared = function(rhs /*: object*/) /*-> real*/ {}
		/// @desc Divides this vector component-wise by rhs and returns self.
		divide = function(rhs /*: object*/) /*-> object*/ {}
		/// @desc Divides this vector by scalar s and returns self.
		divideScalar = function(s /*: real*/) /*-> object*/ {}
		/// @desc Returns dot product with rhs.
		dot = function(rhs /*: object*/) /*-> real*/ {}
		/// @desc Returns true if this vector equals rhs exactly.
		equals = function(rhs /*: object*/) /*-> bool*/ {}
		/// @desc Returns true if this vector equals rhs within epsilon.
		/// @param {object} rhs Right-hand sign
		/// @param {real} [epsilon] Epsilon
		equalsEpsilon = function(rhs /*: object*/, epsilon /*: real*/ = math_get_epsilon()) /*-> bool*/ {}
		/// @desc Applies component-wise floor and returns self.
		self[$ "floor"]  = function() /*-> object*/ {}
		/// @desc Keeps only fractional component parts and returns self.
		self[$ "frac"]  = function() /*-> object*/ {}
		/// @desc Loads components from source array and returns self.
		/// @param {array} source Source array
		/// @param {int32} [offset] Offset into the array
		fromArray = function(source /*: array*/, offset /*: int32*/ = 0) /*-> object*/ {}
		/// @desc Loads components from interleaved array data and returns self.
		fromBufferAttribute = function(source /*: array*/, index /*: int32*/, stride /*: int32*/ = 0) /*-> object*/ {}
		/// @desc Gets one component by index (0 = x, 1 = y, 2 = z).
		getComponent = function(index /*: int32*/) /*-> real*/ {}
		/// @desc Returns true if all components are finite.
		isFinite = function() /*-> bool*/ {}
		/// @desc Returns Euclidean length.
		length = function() /*-> real*/ {}
		/// @desc Returns squared Euclidean length.
		lengthSq = function() /*-> real*/ {}
		/// @desc Linearly interpolates toward rhs by t and returns self.
		self[$ "lerp"]  = function(rhs /*: object*/, t /*: real*/) /*-> object*/ {}
		/// @desc Sets this vector to self[$ "lerp"]  = function(a, b, t) and returns self.
		lerpVectors = function(a /*: object*/, b /*: object*/, t /*: real*/) /*-> object*/ {}
		/// @desc Returns Manhattan distance to rhs.
		manhattanDistanceTo = function(rhs /*: object*/) /*-> real*/ {}
		/// @desc Returns Manhattan length.
		manhattanLength = function() /*-> real*/ {}
		/// @desc Sets this vector to component-wise self[$ "max"]  = function(this, rhs) and returns self.
		self[$ "max"]  = function(rhs /*: object*/) /*-> object*/ {}
		/// @desc Returns largest component value.
		maxComponent = function() /*-> real*/ {}
		/// @desc Sets this vector to component-wise self[$ "min"]  = function(this, rhs) and returns self.
		self[$ "min"]  = function(rhs /*: object*/) /*-> object*/ {}
		/// @desc Returns smallest component value.
		minComponent = function() /*-> real*/ {}
		/// @desc Multiplies this vector component-wise by rhs and returns self.
		multiply = function(rhs /*: object*/) /*-> object*/ {}
		/// @desc Multiplies all components by scalar s and returns self.
		multiplyScalar = function(s /*: real*/) /*-> object*/ {}
		/// @desc Sets this vector to component-wise product a * b and returns self.
		multiplyVectors = function(a /*: object*/, b /*: object*/) /*-> object*/ {}
		/// @desc Negates this vector and returns self.
		negate = function() /*-> object*/ {}
		/// @desc Normalizes this vector and returns self.
		normalize = function() /*-> object*/ {}
		/// @desc Normalizes with epsilon protection and returns self.
		/// @param {real} [epsilon] Epsilon
		normalizeSafe = function(epsilon /*: real*/ = math_get_epsilon()) /*-> object*/ {}
		/// @desc Orthonormalizes this vector against a reference and returns self.
		orthonormalize = function(reference /*: object*/) /*-> object*/ {}
		/// @desc Projects this vector by matrix and returns self.
		project = function(matrix /*: object*/) /*-> object*/ {}
		/// @desc Removes normal component by projecting onto plane and returns self.
		projectOnPlane = function(normal /*: object*/) /*-> object*/ {}
		/// @desc Projects this vector onto rhs and returns self.
		projectOnVector = function(rhs /*: object*/) /*-> object*/ {}
		/// @desc Sets each component to a random value in [0, 1] and returns self.
		self[$ "random"]  = function() /*-> object*/ {}
		/// @desc Sets this vector to a random unit direction and returns self.
		randomDirection = function() /*-> object*/ {}
		/// @desc Reflects this vector around normal and returns self.
		reflect = function(normal /*: object*/) /*-> object*/ {}
		/// @desc Refracts this vector by normal and eta and returns self.
		refract = function(normal /*: object*/, eta /*: real*/) /*-> object*/ {}
		/// @desc Rejects rhs component from this vector and returns self.
		reject = function(rhs /*: object*/) /*-> object*/ {}
		/// @desc Applies component-wise round and returns self.
		self[$ "round"]  = function() /*-> object*/ {}
		/// @desc Rounds each component toward zero and returns self.
		roundToZero = function() /*-> object*/ {}
		/// @desc Sets all components and returns self.
		set = function(x /*: real*/, y /*: real*/, z /*: real*/) /*-> object*/ {}
		/// @desc Sets one component by index (0 = x, 1 = y, 2 = z) and returns self.
		setComponent = function(index /*: int32*/, value /*: real*/) /*-> object*/ {}
		/// @desc Sets components from cylindrical data in an array and returns self.
		setFromCylindrical = function(cylindrical /*: array*/) /*-> object*/ {}
		/// @desc Sets components from cylindrical coordinates and returns self.
		setFromCylindricalCoords = function(radius /*: real*/, thetaRadians /*: real*/, y /*: real*/) /*-> object*/ {}
		/// @desc Sets components from Euler angles and returns self.
		setFromEuler = function(euler /*: object*/) /*-> object*/ {}
		/// @desc Sets this vector from a 3x3 matrix column and returns self.
		setFromMatrix3Column = function(matrix3 /*: object*/, index /*: int32*/) /*-> object*/ {}
		/// @desc Sets this vector from a matrix column and returns self.
		setFromMatrixColumn = function(matrix /*: object*/, index /*: int32*/) /*-> object*/ {}
		/// @desc Sets this vector from a transform matrix position and returns self.
		setFromMatrixPosition = function(matrix /*: object*/) /*-> object*/ {}
		/// @desc Sets this vector from a transform matrix scale and returns self.
		setFromMatrixScale = function(matrix /*: object*/) /*-> object*/ {}
		/// @desc Sets components from spherical data in an array and returns self.
		setFromSpherical = function(spherical /*: array*/) /*-> object*/ {}
		/// @desc Sets components from spherical coordinates and returns self.
		setFromSphericalCoords = function(radius /*: real*/, phiRadians /*: real*/, thetaRadians /*: real*/) /*-> object*/ {}
		/// @desc Normalizes then scales to the requested length and returns self.
		setLength = function(length /*: real*/) /*-> object*/ {}
		/// @desc Sets all components to the same scalar and returns self.
		setScalar = function(s /*: real*/) /*-> object*/ {}
		/// @desc Sets the X component.
		setX = function(x /*: real*/) {}
		/// @desc Sets the Y component.
		setY = function(y /*: real*/) {}
		/// @desc Sets the Z component.
		setZ = function(z /*: real*/) {}
		/// @desc Subtracts rhs component-wise and returns self.
		sub = function(rhs /*: object*/) /*-> object*/ {}
		/// @desc Subtracts scalar s from all components and returns self.
		subScalar = function(s /*: real*/) /*-> object*/ {}
		/// @desc Sets this vector to a - b and returns self.
		subVectors = function(a /*: object*/, b /*: object*/) /*-> object*/ {}
		/// @desc Writes components to array at offset and returns that array.
		/// @param {array} [target] Target
		/// @param {real} [offset] Offset
		toArray = function(target /*: array*/ = [], offset /*: int32*/ = 0) /*-> array*/ {}
		/// @desc Transforms direction by matrix and returns self.
		transformDirection = function(matrix /*: object*/) /*-> object*/ {}
		/// @desc Unprojects this vector by matrix and returns self.
		unproject = function(matrix /*: object*/) /*-> object*/ {}
		
		/// @desc Returns the canonical forward unit vector.
		static forward = function() /*-> object*/ {}
		/// @desc Returns a one vector.
		static one = function() /*-> object*/ {}
		/// @desc Returns the canonical right unit vector.
		static right = function() /*-> object*/ {}
		/// @desc Returns the canonical up unit vector.
		static up = function() /*-> object*/ {}
		/// @desc Returns a zero vector.
		static zero = function() /*-> object*/ {}
	}
	
	/// @param {real} [x] X component.
	/// @param {real} [y] Y component.
	/// @param {real} [z] Z component.
	/// @param {real} [w] W component.
	function GM3D_Vec4(x /*: real*/ = 0, y /*: real*/ = 0, z /*: real*/ = 0, w /*: real*/ = 0) constructor
	{
		/// @is {real}
		self.w = w; // W component.
		/// @is {real}
		self.x = x; // X component.
		/// @is {real}
		self.y = y; // Y component.
		/// @is {real}
		self.z = z; // Z component.
	
		/// @desc Applies component-wise absolute value to self and returns self.
		self[$ "abs"]  = function() /*-> object*/ {}
		/// @desc Adds rhs component-wise to self and returns self.
		add = function(rhs /*: object*/) /*-> object*/ {}
		/// @desc Adds scalar s to all components and returns self.
		addScalar = function(s /*: real*/) /*-> object*/ {}
		/// @desc Adds rhs * s to self and returns self.
		addScaledVector = function(rhs /*: object*/, s /*: real*/) /*-> object*/ {}
		/// @desc Sets self to a + b and returns self.
		addVectors = function(a /*: object*/, b /*: object*/) /*-> object*/ {}
		/// @desc Applies a 4x4 transform to self and returns self.
		applyMatrix4 = function(matrix /*: object*/) /*-> object*/ {}
		/// @desc Applies component-wise ceil to self and returns self.
		self[$ "ceil"]  = function() /*-> object*/ {}
		/// @desc Clamps self component-wise between minV and maxV and returns self.
		self[$ "clamp"]  = function(minV /*: object*/, maxV /*: object*/) /*-> object*/ {}
		/// @desc Clamps vector length to [minLen, maxLen] and returns self.
		clampLength = function(minLen /*: real*/, maxLen /*: real*/) /*-> object*/ {}
		/// @desc Clamps each self component to [minVal, maxVal] and returns self.
		clampScalar = function(minVal /*: real*/, maxVal /*: real*/) /*-> object*/ {}
		/// @desc Returns a new copy of self.
		clone = function() /*-> object*/ {}
		/// @desc Copies src into self and returns self.
		copy = function(src /*: object*/) /*-> object*/ {}
		/// @desc Returns Euclidean distance from self to rhs.
		distanceTo = function(rhs /*: object*/) /*-> real*/ {}
		/// @desc Returns squared Euclidean distance from self to rhs.
		distanceToSquared = function(rhs /*: object*/) /*-> real*/ {}
		/// @desc Divides self by rhs component-wise and returns self.
		divide = function(rhs /*: object*/) /*-> object*/ {}
		/// @desc Divides self by scalar s and returns self.
		divideScalar = function(s /*: real*/) /*-> object*/ {}
		/// @desc Returns the dot product of self and rhs.
		dot = function(rhs /*: object*/) /*-> real*/ {}
		/// @desc Returns true if self and rhs are exactly equal component-wise.
		equals = function(rhs /*: object*/) /*-> bool*/ {}
		/// @desc Returns true if absolute per-component delta is <= epsilon.
		/// @param {object} rhs Right-hand sign
		/// @param {real} [epsilon] Epsilon
		equalsEpsilon = function(rhs /*: object*/, epsilon /*: real*/ = math_get_epsilon()) /*-> bool*/ {}
		/// @desc Applies component-wise floor to self and returns self.
		self[$ "floor"]  = function() /*-> object*/ {}
		/// @desc Keeps only fractional component parts and returns self.
		self[$ "frac"]  = function() /*-> object*/ {}
		/// @desc Loads self from source[offset..offset+3] and returns self.
		/// @param {array} source Source array
		/// @param {int32} [offset] Offset into the array
		fromArray = function(source /*: array*/, offset /*: int32*/ = 0) /*-> object*/ {}
		/// @desc Loads self from interleaved source at index * stride and returns self.
		fromBufferAttribute = function(source /*: array*/, index /*: int32*/, stride /*: int32*/ = 0) /*-> object*/ {}
		/// @desc Gets one component by index (0 = x, 1 = y, 2 = z, 3 = w).
		getComponent = function(index /*: int32*/) /*-> real*/ {}
		/// @desc Returns true if all components are finite numbers.
		isFinite = function() /*-> bool*/ {}
		/// @desc Returns Euclidean length of self.
		length = function() /*-> real*/ {}
		/// @desc Returns squared Euclidean length of self.
		lengthSq = function() /*-> real*/ {}
		/// @desc Linearly interpolates self toward rhs by t and returns self.
		self[$ "lerp"]  = function(rhs /*: object*/, t /*: real*/) /*-> object*/ {}
		/// @desc Sets self to self[$ "lerp"]  = function(a, b, t) and returns self.
		lerpVectors = function(a /*: object*/, b /*: object*/, t /*: real*/) /*-> object*/ {}
		/// @desc Returns Manhattan length of self.
		manhattanLength = function() /*-> real*/ {}
		/// @desc Sets self to component-wise self[$ "max"]  = function(self, rhs) and returns self.
		self[$ "max"]  = function(rhs /*: object*/) /*-> object*/ {}
		/// @desc Returns the largest component value.
		maxComponent = function() /*-> real*/ {}
		/// @desc Sets self to component-wise self[$ "min"]  = function(self, rhs) and returns self.
		self[$ "min"]  = function(rhs /*: object*/) /*-> object*/ {}
		/// @desc Returns the smallest component value.
		minComponent = function() /*-> real*/ {}
		/// @desc Multiplies self by rhs component-wise and returns self.
		multiply = function(rhs /*: object*/) /*-> object*/ {}
		/// @desc Multiplies all components of self by scalar s and returns self.
		multiplyScalar = function(s /*: real*/) /*-> object*/ {}
		/// @desc Negates self and returns self.
		negate = function() /*-> object*/ {}
		/// @desc Normalizes self and returns self.
		normalize = function() /*-> object*/ {}
		/// @desc Normalizes self using custom epsilon and returns self.
		/// @param {real} [epsilon] Epsilon
		normalizeSafe = function(epsilon /*: real*/ = math_get_epsilon()) /*-> object*/ {}
		/// @desc Sets each component to a random value in [0, 1] and returns self.
		self[$ "random"]  = function() /*-> object*/ {}
		/// @desc Applies component-wise round to self and returns self.
		self[$ "round"]  = function() /*-> object*/ {}
		/// @desc Rounds each component toward zero and returns self.
		roundToZero = function() /*-> object*/ {}
		/// @desc Sets all components and returns self.
		set = function(x /*: real*/, y /*: real*/, z /*: real*/, w /*: real*/) /*-> object*/ {}
		/// @desc Sets self to axis-angle representation extracted from quaternion and returns self.
		setAxisAngleFromQuaternion = function(quaternion /*: object*/) /*-> object*/ {}
		/// @desc Sets self to axis-angle representation extracted from rotation matrix and returns self.
		setAxisAngleFromRotationMatrix = function(matrix /*: object*/) /*-> object*/ {}
		/// @desc Sets one component by index (0 = x, 1 = y, 2 = z, 3 = w) and returns self.
		setComponent = function(index /*: int32*/, value /*: real*/) /*-> object*/ {}
		/// @desc Sets self from matrix translation column (m[3]) and returns self.
		setFromMatrixPosition = function(matrix /*: object*/) /*-> object*/ {}
		/// @desc Normalizes then scales to the requested length and returns self.
		setLength = function(length /*: real*/) /*-> object*/ {}
		/// @desc Sets all components to the same scalar and returns self.
		setScalar = function(s /*: real*/) /*-> object*/ {}
		/// @desc Sets the W component.
		setW = function(w /*: real*/) {}
		/// @desc Sets the X component.
		setX = function(x /*: real*/) {}
		/// @desc Sets the Y component.
		setY = function(y /*: real*/) {}
		/// @desc Sets the Z component.
		setZ = function(z /*: real*/) {}
		/// @desc Subtracts rhs from self component-wise and returns self.
		sub = function(rhs /*: object*/) /*-> object*/ {}
		/// @desc Subtracts scalar s from all components and returns self.
		subScalar = function(s /*: real*/) /*-> object*/ {}
		/// @desc Sets self to a - b and returns self.
		subVectors = function(a /*: object*/, b /*: object*/) /*-> object*/ {}
		/// @desc Writes self to array as [x, y, z, w] at offset and returns that array.
		/// @param {array} [target] Target
		/// @param {real} [offset] Offset
		toArray = function(target /*: array*/ = [], offset /*: int32*/ = 0) /*-> array*/ {}
		/// @desc Returns a new Vec3 containing self.xyz.
		toVec3 = function() /*-> object*/ {}
	
		/// @desc Returns a new (1, 1, 1, 1) vector.
		static one = function() /*-> object*/ {}
		/// @desc Returns a new (0, 0, 0, 0) vector.
		static zero = function() /*-> object*/ {}
	}
	
	enum _GM3D_ECameraProjection
	{
		Perspective = 0, // Uses perspective projection.
		Orthographic = 1 // Uses orthographic projection.
	}
	
	enum _GM3D_ECameraRenderSizeMode
	{
		Auto = 0, // Automatically sizes render target from camera settings.
		Fixed = 1 // Uses explicitly configured render dimensions.
	}
	
	enum _GM3D_ECameraTarget
	{
		Screen = 0, // Renders directly to the GScreen.
		Texture = 1 // Renders to the configured render texture/surface.
	}
	
	enum _GM3D_ELightType
	{
		Directional = 0, // Infinite directional light with parallel rays.
		Point = 1, // Omnidirectional point light from a position.
		Spot = 2 // Cone-shaped spotlight.
	}
}