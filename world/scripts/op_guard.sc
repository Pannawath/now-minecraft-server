// op_guard.sc - Enforces OP privilege isolation:
// Only 'Prach' can retain OP in any world.
// Any other player outside 'multiworld:creative' is automatically deoped.

global_admin = 'Prach';
global_creative_dim = 'multiworld:creative';

check_player_op(p) -> (
    name = p ~ 'name';
    if (name == global_admin, return());
    
    dim = p ~ 'dimension';
    perm = p ~ 'permission_level';
    
    if (dim != global_creative_dim && perm > 0,
        run('deop ' + name);
    );
);

__on_player_changes_dimension(player, from_pos, from_dim, to_pos, to_dim) -> (
    check_player_op(player);
);

__on_player_connects(player) -> (
    check_player_op(player);
);

__on_tick() -> (
    for (player('all'),
        check_player_op(_);
    );
);
