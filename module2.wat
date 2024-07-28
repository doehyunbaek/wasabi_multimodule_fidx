(module
    (type $t0 (func (param i32) (result i32)))
    (import "env" "shared_func" (func $shared_func (type $t0)))
    (table 1 funcref)
    (elem (i32.const 0) $shared_func)
    (func $call_indirect_func
        (param $0 i32) (result i32)
        local.get $0
        i32.const 0
        call_indirect (type $t0)
    )
    (export "call_indirect_func" (func $call_indirect_func))
)