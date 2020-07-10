/* This work is licensed under a Creative Commons CCZero 1.0 Universal License.
 * See http://creativecommons.org/publicdomain/zero/1.0/ for more information. */

//#define UA_ENABLE_HISTORIZING
//#define UA_ENABLE_EXPERIMENTAL_HISTORIZING

#include <open62541/client_config_default.h>
#include <open62541/client_highlevel.h>

#include <stdio.h>
#include <stdlib.h>
#include <iostream>
#include <string>

static void
printTimestamp(char *name, UA_DateTime date) {
    UA_DateTimeStruct dts = UA_DateTime_toStruct(date);
    if (name)
        printf("%s: %02u-%02u-%04u %02u:%02u:%02u.%03u, ", name,
               dts.day, dts.month, dts.year, dts.hour, dts.min, dts.sec, dts.milliSec);
    else
        printf("%02u-%02u-%04u %02u:%02u:%02u.%03u, ",
               dts.day, dts.month, dts.year, dts.hour, dts.min, dts.sec, dts.milliSec);
}

static void
printDataValue(UA_DataValue *value) {
    /* Print status and timestamps */
    if (value->hasServerTimestamp)
        printTimestamp("ServerTime", value->serverTimestamp);

    if (value->hasSourceTimestamp)
        printTimestamp("SourceTime", value->sourceTimestamp);

    if (value->hasStatus)
        printf("Status 0x%08x, ", value->status);

    if (value->value.type == &UA_TYPES[UA_TYPES_UINT32]) {
        UA_UInt32 hrValue = *(UA_UInt32 *)value->value.data;
        printf("Uint32Value %u\n", hrValue);
    }

    if (value->value.type == &UA_TYPES[UA_TYPES_DOUBLE]) {
        UA_Double hrValue = *(UA_Double *)value->value.data;
        printf("DoubleValue %f\n", hrValue);
    }
}

static UA_Boolean
readRaw(const UA_HistoryData *data) {
    printf("readRaw Value count: %lu\n", (long unsigned)data->dataValuesSize);

    /* Iterate over all values */
    for (UA_UInt32 i = 0; i < data->dataValuesSize; ++i)
    {
        printDataValue(&data->dataValues[i]);
    }

    /* We want more data! */
    return true;
}

static UA_Boolean
readHist(UA_Client *client, const UA_NodeId *nodeId,
         UA_Boolean moreDataAvailable,
         const UA_ExtensionObject *data, void *unused) {
    printf("\nRead historical callback:\n");
    printf("\tHas more data:\t%d\n\n", moreDataAvailable);
    if (data->content.decoded.type == &UA_TYPES[UA_TYPES_HISTORYDATA]) {
        return readRaw((UA_HistoryData*)data->content.decoded.data);
    }
    return true;
}

int main(int argc, char *argv[]) {

    const char* url = "opc.tcp://localhost:53530/OPCUA/SimulationServer";

    if (argc < 3)
    {
        std::cout << "Using default URL: opc.tcp://localhost:53530/OPCUA/SimulationServer" << std::endl;

    }else{

        url = argv[2];

    }

    std::cout << url << std::endl;

    UA_Client *client = UA_Client_new();
    UA_ClientConfig_setDefault(UA_Client_getConfig(client));

    UA_StatusCode retval;

    retval = UA_Client_connect(client, url); 


#ifdef UA_ENABLE_HISTORIZING

    UA_Int64 start = 1593071405;

    if (argc < 2)
    {
        std::cout << "Using default date time: June 14th 2020, 16:17:47" << std::endl;

    }else{
        start = atoi(argv[1]);
    }

    UA_DateTime now = UA_DateTime_now();
    /* Read historical values (uint32) */
    printf("\nStart historical read (3, \"h1\"):\n");
    UA_NodeId node = UA_NODEID_STRING(3, "h1");
    retval = UA_Client_HistoryRead_raw(client, &node, readHist,
                                       UA_DateTime_fromUnixTime(start), now, UA_STRING_NULL, false, 10, UA_TIMESTAMPSTORETURN_BOTH, (void *)UA_FALSE);

    if (retval != UA_STATUSCODE_GOOD) {
        printf("Failed. %s\n", UA_StatusCode_name(retval));
    }

#endif
    UA_Client_disconnect(client);
    UA_Client_delete(client);
    return retval == UA_STATUSCODE_GOOD ? EXIT_SUCCESS : EXIT_FAILURE;
}
