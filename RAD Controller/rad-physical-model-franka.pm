import physmod::joints::Revolute
import physmod::actuators::*
import physmod::math::*


pmodel pmfranka {
	const PI: real = 3.1415	
	const ARM_RADIUS: real = 0.055
	const GRIP_RADIUS: real = 0.02
	const GRIP_LENGTH: real = 0.08
	const Z_BASE: real = 0
	const X_BASE: real = 0
	const LEN1: real = 0.3330
	const LEN2: real = 0.3160
	const LEN3: real = 0.3840
	const LEN4: real = 0.0825
	const LEN5: real = 0.0880
	const LEN6: real = 0.1070
	const theta0: real = PI/2
	const alpha0: real = PI/2
	
	
	local link Li0 {
		def {
		}
		local body Cy0 {
			def {
				cylinder ( radius = ARM_RADIUS , length = LEN1 )
			}
			pose {
				x = 0.0
				y = 0.0
				z = LEN1/2
				roll = 0.0
				pitch = 0.0
				yaw = 0.0
			}
		}
		pose {
			x = X_BASE
			y = 0.0
			z = Z_BASE
			roll = 0.0
			pitch = 0.0
			yaw = 0.0
		}
	}
	local link Li1 {
		def {
		}
		local body Cy1 {
			def {
				cylinder ( radius = ARM_RADIUS , length = 2*ARM_RADIUS )
			}
			pose {
				x = 0.0
				y = 0.0
				z = 0.0
				roll = 0.0
				pitch = 0.0
				yaw = 0.0
			}
		}
		local body Sp1a {
			def {
				sphere ( radius = ARM_RADIUS)
			}
			pose {
				x = 0.0
				y = 0.0
				z = ARM_RADIUS
				roll = 0.0
				pitch = 0.0
				yaw = 0.0
			}
		}
		local body Sp1b {
			def {
				sphere ( radius = ARM_RADIUS)
			}
			pose {
				x = 0.0
				y = 0.0
				z = -ARM_RADIUS
				roll = 0.0
				pitch = 0.0
				yaw = 0.0
			}
		}
		pose {
			x = 0.0
			y = 0.0
			z = 0.333
			roll = PI/2
			pitch = 0.0
			yaw = 0.0
		}
	}
	local link Li2 {
		def {
		}
		local body Cy2 {
			def {
				cylinder ( radius = ARM_RADIUS , length = LEN2 )
			}
			pose {
				x = 0.0
				y = 0.0
				z = LEN2/2
				roll = 0.0
				pitch = 0.0
				yaw = 0.0
			}
		}
		pose {
			x = 0.0
			y = 0.0
			z = 0.333
			roll = 0.0
			pitch = 0.0
			yaw = 0.0
		}
	}
	local link Li3 {
		def {
		}
		local body Cy3 {
			def {
				cylinder ( radius = ARM_RADIUS , length = 2*ARM_RADIUS )
			}
			pose {
				x = 0.0
				y = 0.0
				z = 0.0
				roll = 0.0
				pitch = 0.0
				yaw = 0.0
			}
		}
		local body Sp3a {
			def {
				sphere ( radius = ARM_RADIUS)
			}
			pose {
				x = 0.0
				y = 0.0
				z = ARM_RADIUS
				roll = 0.0
				pitch = 0.0
				yaw = 0.0
			}
		}
		local body Sp3b {
			def {
				sphere ( radius = ARM_RADIUS)
			}
			pose {
				x = 0.0
				y = 0.0
				z = -ARM_RADIUS
				roll = 0.0
				pitch = 0.0
				yaw = 0.0
			}
		}
		pose {
			x = LEN4
			y = 0.0
			z = 0.649
			roll = PI/2
			pitch = 0.0
			yaw = 0.0
		}
	}
	local link Li4 {
		def {
		}
		local body Cy4 {
			def {
				cylinder ( radius = ARM_RADIUS , length = LEN3 )
			}
			pose {
				x = 0.0
				y = 0.0
				z = LEN3/2
				roll = 0.0
				pitch = 0.0
				yaw = 0.0
			}
		}
		pose {
			x = 0.0
			y = 0.0
			z = 0.649
			roll = 0.0
			pitch = 0.0
			yaw = 0.0
		}
	}
	local link Li5 {
		def {
		}
		local body Cy5 {
			def {
				cylinder ( radius = ARM_RADIUS , length = 2*ARM_RADIUS )
			}
			pose {
				x = 0.0
				y = 0.0
				z = 0.0
				roll = 0.0
				pitch = 0.0
				yaw = 0.0
			}
		}
		pose {
			x = 0.0
			y = 0.0
			z = LEN1 + LEN2 + LEN3 
			roll = PI/2
			pitch = 0.0
			yaw = 0.0
		}
	}
	local link Li6 {
		def {
		}
		local body Cy6 {
			def {
				cylinder ( radius = ARM_RADIUS , length = LEN5 )
			}
			pose {
				x = 0.0
				y = 0.0
				z = LEN5/2
				roll = 0.0
				pitch = 0.0
				yaw = 0.0
			}
		}
		pose {
			x = 0.0
			y = 0.0
			z = LEN1 + LEN2 + LEN3
			roll = PI/2
			pitch = 0.0
			yaw = PI/2
		}
	}
	local link Li7 {
		def {
		}
		local body Sp7 {
			def {
				sphere ( radius = ARM_RADIUS )
			}
			pose {
				x = 0.0
				y = 0.0
				z = 0.0
				roll = 0.0
				pitch = 0.0
				yaw = 0.0
			}
		}
		local body Cy7 {
			def {
				cylinder ( radius = ARM_RADIUS , length = LEN6 )
			}
			pose {
				x = 0.0
				y = 0.0
				z = LEN6/2
				roll = 0.0
				pitch = 0.0
				yaw = 0.0
			}
		}
		pose {
			x = LEN5
			y = 0.0
			z = LEN1 + LEN2 + LEN3
			roll = 0.0
			pitch = -PI
			yaw = 0.0
		}
	}
	local link LiF {
		def {
		}
		local body CyF {
			def {
				cylinder ( radius = GRIP_RADIUS , length = GRIP_LENGTH )
			}
			pose {
				x = 0.0
				y = 0.0
				z = GRIP_LENGTH/2
				roll = 0.0
				pitch = 0.0
				yaw = 0.0
			}
		}
		pose {
			x = LEN5
			y = 0.0
			z = LEN1 + LEN2 + LEN3 - LEN6
			roll = 0.0
			pitch = -PI
			yaw = 0.0
		}
	}
}
