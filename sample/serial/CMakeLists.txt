add_executable(serial
        serial.c
        )

# pull in common dependencies
target_link_libraries(serial pico_stdlib)

# create map/bin/hex/uf2 file etc.
pico_add_extra_outputs(serial)

# add url via pico_set_program_url
example_auto_set_url(serial)
