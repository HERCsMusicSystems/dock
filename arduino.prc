
import studio
import control
import lunar

program arduino [ard ard_setup arduino read_system_exclusive
					hctrl hrcs_ctrl variant channels volumes callbacks transmit_volume v radio_light
					]

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

auto := [
				[parameter_block variant]
				[ARRAY channels 6]
				[ARRAY volumes 6]
				[ARRAY callbacks 6]
				[FOR *i 0 5 1 [channels *i 0] [volumes *i 100] [callbacks *i midi_monitor]]
				]
[[v *p] [*p *v] [show *v]]

[[hrcs_ctrl programchange *channel *program] [< *program 6] /
	[channels *program : *v] [xor *v 1 *v2] [channels *program *v2]
	[radio_light *program *v2]
	[transmit_volume *program *v2]
]
[[hrcs_ctrl programchange *channel *program] [<= 6 *program 11] / [mac *program 128 -768 *v] [variant *v] [radio_light *program]]
[[hrcs_ctrl *command *channel : *parameters] [show "HERCs: " [*command : *parameters]]]

[[radio_light *program *v] [operating_system "windows"] / [times *v 100 *light] [hctrl 176 *program *light]]
[[radio_light *program *v] / [times *v 100 *light] [hctrl control 0 *program *light]]
[[radio_light *program] [operating_system "windows"] / [FOR *i 6 11 1 [SELECT [[eq *i *program] [hctrl 176 *i 100]] [[hctrl 176 *i 0]]]]]
[[radio_light *program] [FOR *i 6 11 1 [SELECT [[eq *i *program] [hctrl control 0 *i 100]] [[hctrl control 0 *i 0]]]]]

[[transmit_volume *program *v] [volumes *program : *volume] [times *v *volume *vv] [callbacks *program : *cb] [*cb volume *vv]]

[[arduino *com *callback 192 *channel] [*com *program] [*callback programchange *channel *program] /]
[[arduino *com *callback 176 *channel] [*com *ctrl] [*com *value] [*callback control *channel *ctrl *value] /]
[[arduino *com *callback 0x90 *channel] [*com *key] [*com *velocity] [*callback keyon *channel *key *velocity] /]
[[arduino *com *callback 240 *channel] [read_system_exclusive 240 *com *tail] [*callback sysex : *tail]]
[[arduino : *command] [show *command]]

[[read_system_exclusive 247 *com []]]
[[read_system_exclusive * *com [*byte : *bytes]] [*com *byte] / [read_system_exclusive *byte *com *bytes]]

end .
