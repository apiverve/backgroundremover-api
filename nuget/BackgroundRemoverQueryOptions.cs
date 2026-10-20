using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.BackgroundRemover
{
    /// <summary>
    /// Query options for the Background Remover API
    /// </summary>
    public class BackgroundRemoverQueryOptions
    {
        /// <summary>
        /// Image file upload (JPG, PNG, GIF, WebP, BMP supported, max 10MB)
        /// </summary>
        [JsonProperty("image")]
        public string Image { get; set; }

        /// <summary>
        /// Optional hex color to fill the background with (e.g. #ffffff). Omit for a transparent background.
        /// </summary>
        [JsonProperty("bgColor")]
        public string BgColor { get; set; }
    }
}
