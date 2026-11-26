from decimal import Decimal, localcontext

from talon import Module

mod = Module()


@mod.action_class
class Actions:
    def calculate_minus(value: str, take_off: str) -> str:
        """Calculate the difference between two spoken integers."""
        return str(int(value) - int(take_off))

    def calculate_plus(value: str, add: str) -> str:
        """Add two spoken integers."""
        return str(int(value) + int(add))

    def calculate_multiply(value: str, multiply: str) -> str:
        """Multiply two spoken integers."""
        return str(int(value) * int(multiply))

    def calculate_divide(value: str, divide: str) -> str:
        """Divide two spoken integers without losing large-integer precision."""
        number = int(value)
        divisor = int(divide)

        if divisor == 0:
            print("Division by zero attempted")
            return "0"

        # Decimal avoids the precision loss caused by converting large integers
        # to binary floating point. Allow enough precision for the full input
        # integer plus a useful fractional result.
        with localcontext() as context:
            context.prec = max(28, len(str(abs(number))) + 28)
            result = Decimal(number) / Decimal(divisor)

        return str(result)
