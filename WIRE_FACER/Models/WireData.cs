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
using static Google.Cloud.Vision.V1.FaceAnnotation.Types;

namespace WIRE_FACER.Models
{
    public class WireData
    {



        public static GetLandmarks()
        {

            var client = ImageAnnotatorClient.Create();
            var response = client.DetectLandmarks();
            foreach (var annotation in response)
            {
                if (annotation.Description != null)
                    Console.WriteLine(annotation.Description);
            }
        }
    }
}
