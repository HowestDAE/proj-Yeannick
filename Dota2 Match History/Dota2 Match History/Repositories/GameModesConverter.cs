﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dota2_Match_History.Models;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;

namespace Dota2_Match_History.Repositories
{

    class GameModesConverter : JsonConverter
    {
        public override bool CanConvert(Type objectType)
        {
            return objectType == typeof(List<GameMode>);
        }

        public override object ReadJson(JsonReader reader, Type objectType, object existingValue,
            JsonSerializer serializer)
        {
            var response = new List<GameMode>();
            JObject gameModes = JObject.Load(reader);
            foreach (var gameMode in gameModes)
            {
                var gm = JsonConvert.DeserializeObject<GameMode>(gameMode.Value.ToString());
                response.Add(gm);
            }

            return response;
        }

        public override void WriteJson(JsonWriter writer, object value, JsonSerializer serializer)
        {
            writer.WriteStartArray();
            foreach (var gameMode in (List<GameMode>)value)
            {
                writer.WriteRawValue(JsonConvert.SerializeObject(gameMode));
            }
            writer.WriteEndArray();
        }
    }
}
