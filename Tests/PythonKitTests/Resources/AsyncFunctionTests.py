import asyncio
from typing import Awaitable, Any, Callable, Optional

class AsyncFunctionTests:
    def __init__(self) -> None:
        self.function: Optional[Callable[[int], Awaitable[int]]] = None

    async def set_function(self, function: Callable[[int], Awaitable[int]]) -> None:
        # Store the async function
        self.function = function

    async def invoke_function_async(self, arg: int) -> int:
        # Invoke the stored function asynchronously
        if self.function:
            return await self.function(arg)
        else:
            raise Exception("function not set!")

    def invoke_function_sync(self, arg: int) -> int:
        # Invoke the function synchronously using asyncio.run
        if self.function:
            return asyncio.run(self.invoke_function_async(arg))
        else:
            raise Exception("function not set!")
