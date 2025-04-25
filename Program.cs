using Lua;

namespace LuaCSharpBug {

    public class Program {

        public static async Task Main(string[] args) {
			string lua = await File.ReadAllTextAsync("./mapinfo.lua");

			LuaState state = LuaState.Create();
            LuaValue[] mapInfo = await state.DoStringAsync(lua);

            Console.WriteLine("Hello, World!");
        }
    }
}
