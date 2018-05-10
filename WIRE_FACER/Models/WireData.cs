using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using RestSharp;
using RestSharp.Authenticators;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using Google.Cloud.Vision.V1;
using System.Web;

namespace WIRE_FACER.Models
{
    public class WireData
    {
        public int LEFT_EYE_X { get; set; }
        public int LEFT_EYE_Y { get; set; }
        public int RIGHT_EYE_X { get; set; }
        public int RIGHT_EYE_Y { get; set; }
        //public int LEFT_OF_LEFT_EYEBROW_X { get; set; }
        //public int LEFT_OF_LEFT_EYEBROW_Y { get; set; }
        //public int RIGHT_OF_LEFT_EYEBROW_X { get; set; }
        //public int RIGHT_OF_LEFT_EYEBROW_Y { get; set; }
        //public int LEFT_OF_RIGHT_EYEBROW_X { get; set; }
        //public int LEFT_OF_RIGHT_EYEBROW_Y { get; set; }
        //public int RIGHT_OF_RIGHT_EYEBROW_X { get; set; }
        //public int RIGHT_OF_RIGHT_EYEBROW_Y { get; set; }
        //public int MIDPOINT_BETWEEN_EYES_X { get; set; }
        //public int MIDPOINT_BETWEEN_EYES_Y { get; set; }
        //public int NOSE_TIP_X { get; set; }
        //public int NOSE_TIP_Y { get; set; }
        //public int UPPER_LIP_X { get; set; }
        //public int UPPER_LIP_Y { get; set; }
        //public int LOWER_LIP_X { get; set; }
        //public int LOWER_LIP_Y { get; set; }
        //public int MOUTH_LEFT_X { get; set; }
        //public int MOUTH_LEFT_Y { get; set; }
        //public int MOUTH_RIGHT_X { get; set; }
        //public int MOUTH_RIGHT_Y { get; set; }
        //public int MOUTH_CENTER_X { get; set; }
        //public int MOUTH_CENTER_Y { get; set; }

        public void Send()
        {
            var image = Image.FromUri("https://imgur.com/a/v55wmW4");
            var client = ImageAnnotatorClient.Create();
            var response = client.DetectFaces(image);
            int count = 1;
        }
    }
}
