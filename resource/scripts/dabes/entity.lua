-- Entity
--
-- This BoundObject represents an Entity (entity.h)

require 'dabes.bound_object'

Entity = BoundObject:extend({
    lib = dab_entity,

-- Default Configuration

-- Hook Overloads

    realize = function(class)
        return class.lib.new()
    end,

-- Function Bindings
   _getters = {
       controller = BoundObject.fwd_func('get_controller'),
       auto_control = BoundObject.fwd_func('get_auto_control'),
       force_keyframe = BoundObject.fwd_func('get_force_keyframe'),
       scene = BoundObject.fwd_func('get_scene'),
       sprite = BoundObject.fwd_func('get_sprite'),
       body = BoundObject.fwd_func('get_body'),
       alpha = BoundObject.fwd_func('get_alpha'),
       z_index = BoundObject.fwd_func('get_z_index'),
       center = BoundObject.fwd_func('get_center'),
       size = BoundObject.fwd_func('get_size')
   },

   _setters = {
       controller = BoundObject.fwd_func('set_controller'),
       auto_control = BoundObject.fwd_func('set_auto_control'),
       force_keyframe = BoundObject.fwd_func('set_force_keyframe'),
       scene = BoundObject.readonly,
       sprite = BoundObject.fwd_func('set_sprite'),
       body = BoundObject.fwd_func('set_body'),
       alpha = BoundObject.fwd_func('set_alpha'),
       z_index = BoundObject.fwd_func('set_z_index'),
       center = BoundObject.fwd_func('set_center'),
       size = BoundObject.fwd_func('set_size')
   },

-- Hooks

    -- spawn
    --
    -- Hook called when the entity is first added to a Scene.
    -- The Scene is not guaranteed to be started.
    spawn = function(self) end,

    -- main
    --
    -- Hook called once every frame.
    --
    -- If Entity is in a physics Scene, main is called after the engine's
    -- solve step.
    main = function(self) end,

    -- presolve
    --
    -- Hook called before the physics solve step.
    --
    -- If Entity is not in a physics Scene, presolve is not called.
    presolve = function(self) end

})
