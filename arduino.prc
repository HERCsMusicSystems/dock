
import studio
import control

program arduino [ard ard_setup arduino read_system_exclusive]

[[ard *ard *callback]
	[create_atom *cb]
	[addcl [[*cb *x] [and *x 0xf0 *command] [and *x 0xf *channel] [arduino *ard *callback *command *channel]]]
	[serial *ard *cb "COM5" 9600 8 0 0 1]
]

[[ard_setup *ard *channel]
	[*ard 240 73 7 72 1 0xb *channel 247]
	[*ard 240 73 7 72 1 0xb *channel 14 16 247]
	[*ard 240 73 7 72 1 0xb *channel 15 17 247]
	[*ard 240 73 7 72 1 0xb *channel 0 73 247]
	[*ard 240 73 7 72 1 0xb *channel 1 75 247]
	[*ard 240 73 7 72 1 0xb *channel 2 76 247]
	[*ard 240 73 7 72 1 0xb *channel 3 72 247]
	[*ard 240 73 7 72 1 0xb *channel 4 10 247]
	[*ard 240 73 7 72 1 0xb *channel 5 77 247]
	[*ard 240 73 7 72 1 0xb *channel 8 74 247]
	[*ard 240 73 7 72 1 0xb *channel 9 71 247]
]

[[arduino *com *callback 192 *channel] [*com *program] [*callback programchange *channel *program] /]
[[arduino *com *callback 176 *channel] [*com *ctrl] [*com *value] [*callback control *channel *ctrl *value] /]
[[arduino *com *callback 0x90 *channel] [*com *key] [*com *velocity] [*callback keyon *channel *key *velocity] /]
[[arduino *com *callback 240 *channel] [read_system_exclusive 240 *com *tail] [*callback sysex : *tail]]
[[arduino : *command] [show *command]]

[[read_system_exclusive 247 *com []]]
[[read_system_exclusive * *com [*byte : *bytes]] [*com *byte] / [read_system_exclusive *byte *com *bytes]]

end .
