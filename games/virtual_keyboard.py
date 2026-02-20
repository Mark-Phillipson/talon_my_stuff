from talon import actions, app, Module

KEYBOARD_NAME = "number_label"

mod = Module()


@mod.action_class
class Actions:
    def number_labels_register(
        start_x: int,
        start_y: int,
        step: int,
        direction: str,
        orientation: str,
    ):
        """Register number labels with custom configuration"""
        register_default_number_label(
            start_x=start_x,
            start_y=start_y,
            step=step,
            direction=direction,
            orientation=orientation,
        )


def _noop():
    # Optional callback if you ever call hud_activate_virtual_key()
    pass


def set_number_label(number: int, x: int, y: int, width: int = 90, height: int = 70,
                     bg_colour: str = "000000", text_colour: str = "FFFF00",
                     keyboard_name: str = KEYBOARD_NAME, on_trigger=None):
    if on_trigger is None:
        on_trigger = _noop

    label = actions.user.hud_create_virtual_key(
        on_trigger,
        text=str(number),
        colour=bg_colour,
        text_colour=text_colour,
        x=x,
        y=y,
        width=width,
        height=height,
    )

    # Re-registering the same keyboard name updates the displayed label
    actions.user.hud_register_virtual_keyboard(
        keyboard_name,
        [label],
    )


def register_default_number_label(
    start_x: int = 1630,
    start_y: int = -20,
    step: int = 50,
    direction: str = "right_to_left",
    orientation: str = "horizontal",
):
    # Values 1..10 laid out using the requested axis and direction.
    is_forward = direction.lower() == "left_to_right"
    orientation_normalized = orientation.lower()
    delta = step if is_forward else -step
    labels = []

    def _make_key_noop(index: int):
        def _key_noop():
            return None

        _key_noop.__name__ = f"number_label_noop_{index}"
        return _key_noop

    for number in range(1, 11):
        offset = (number - 1) * delta
        x = start_x + offset if orientation_normalized == "horizontal" else start_x
        y = start_y if orientation_normalized == "horizontal" else start_y + offset

        label = actions.user.hud_create_virtual_key(
            _make_key_noop(number),
            text=str(number),
            colour="000000",
            text_colour="FFFF00",
            x=x,
            y=y,
            width=45,
            height=90,
        )
        labels.append(label)

    horizontal_key_amount = len(labels) if orientation_normalized == "horizontal" else 1
    vertical_key_amount = 1 if orientation_normalized == "horizontal" else len(labels)

    actions.user.hud_register_virtual_keyboard(
        KEYBOARD_NAME,
        labels,
        layout_style="full",
        alignment="top",
        horizontal_key_amount=horizontal_key_amount,
        vertical_key_amount=vertical_key_amount,
    )
    actions.user.hud_set_virtual_keyboard(KEYBOARD_NAME)
