.class public Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;
.super Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol;
.source "SensorHubParserProvider.java"


# static fields
.field private static final PACKET_MAX_SIZE:I = 0xbb8

.field private static instance:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;


# instance fields
.field private final mParserMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;",
            ">;"
        }
    .end annotation
.end field

.field private final mSensorHubListener:Landroid/hardware/sensorhub/SensorHubEventListener;

.field private mSensorHubManager:Landroid/hardware/sensorhub/SensorHubManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol;-><init>()V

    .line 38
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mParserMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 82
    new-instance v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider$1;

    invoke-direct {v0, p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider$1;-><init>(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;)V

    iput-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mSensorHubListener:Landroid/hardware/sensorhub/SensorHubEventListener;

    return-void
.end method

.method static synthetic access$000(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mParserMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$100(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;[B)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->parse([B)Z

    move-result v0

    return v0
.end method

.method private checkInstruction(B)Z
    .locals 5
    .parameter "inst"

    .prologue
    .line 250
    invoke-static {}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;->values()[Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;

    move-result-object v0

    .local v0, arr$:[Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 251
    .local v1, i:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;
    iget-byte v4, v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;->value:B

    if-ne v4, p1, :cond_0

    .line 252
    const/4 v4, 0x1

    .line 256
    .end local v1           #i:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;
    :goto_1
    return v4

    .line 250
    .restart local v1       #i:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 256
    .end local v1           #i:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private checkLibType(B)Z
    .locals 5
    .parameter "type"

    .prologue
    .line 267
    invoke-static {}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->values()[Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;

    move-result-object v0

    .local v0, arr$:[Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 268
    .local v1, i:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;
    iget-byte v4, v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->value:B

    if-ne v4, p1, :cond_0

    .line 269
    const/4 v4, 0x1

    .line 273
    .end local v1           #i:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;
    :goto_1
    return v4

    .line 267
    .restart local v1       #i:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 273
    .end local v1           #i:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private checkPacketSize([B)Z
    .locals 3
    .parameter "packet"

    .prologue
    const/4 v0, 0x0

    .line 195
    array-length v1, p1

    if-gtz v1, :cond_0

    .line 196
    const-string v1, "Packet array length is zero"

    invoke-static {v1}, Landroid/hardware/contextaware/utilbundle/CALogger;->error(Ljava/lang/String;)V

    .line 202
    :goto_0
    return v0

    .line 198
    :cond_0
    array-length v1, p1

    const/16 v2, 0xbb8

    if-le v1, v2, :cond_1

    .line 199
    const-string v1, "Packet size overflow"

    invoke-static {v1}, Landroid/hardware/contextaware/utilbundle/CALogger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 202
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getInstance()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;
    .locals 2

    .prologue
    .line 72
    const-class v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;

    monitor-enter v1

    .line 73
    :try_start_0
    sget-object v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->instance:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;

    invoke-direct {v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;-><init>()V

    sput-object v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->instance:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;

    .line 76
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    sget-object v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->instance:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;

    return-object v0

    .line 76
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private parse([B)Z
    .locals 10
    .parameter "packet"

    .prologue
    const/4 v7, 0x0

    .line 137
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "buffer size = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, p1

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/hardware/contextaware/utilbundle/CALogger;->info(Ljava/lang/String;)V

    .line 139
    invoke-direct {p0, p1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->checkPacketSize([B)Z

    move-result v8

    if-nez v8, :cond_0

    .line 140
    const-string v8, "Packet length error"

    invoke-static {v8}, Landroid/hardware/contextaware/utilbundle/CALogger;->error(Ljava/lang/String;)V

    .line 173
    :goto_0
    return v7

    .line 144
    :cond_0
    move-object v0, p1

    .local v0, arr$:[B
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v5, :cond_1

    aget-byte v4, v0, v2

    .line 145
    .local v4, k:B
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "input : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/hardware/contextaware/utilbundle/CALogger;->info(Ljava/lang/String;)V

    .line 144
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 148
    .end local v4           #k:B
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :cond_2
    array-length v8, p1

    if-ge v1, v8, :cond_6

    .line 149
    array-length v8, p1

    sub-int/2addr v8, v1

    add-int/lit8 v8, v8, -0x2

    if-gez v8, :cond_3

    .line 150
    const-string v8, "Header length error"

    invoke-static {v8}, Landroid/hardware/contextaware/utilbundle/CALogger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 154
    :cond_3
    aget-byte v8, p1, v1

    invoke-direct {p0, v8}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->checkInstruction(B)Z

    move-result v8

    if-nez v8, :cond_4

    .line 155
    const-string v8, "Instuction parsing error"

    invoke-static {v8}, Landroid/hardware/contextaware/utilbundle/CALogger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 158
    :cond_4
    aget-byte v3, p1, v1

    .line 160
    .local v3, inst:B
    add-int/lit8 v1, v1, 0x1

    aget-byte v8, p1, v1

    invoke-direct {p0, v8}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->checkLibType(B)Z

    move-result v8

    if-nez v8, :cond_5

    .line 161
    const-string v8, "Type parsing error"

    invoke-static {v8}, Landroid/hardware/contextaware/utilbundle/CALogger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 164
    :cond_5
    aget-byte v6, p1, v1

    .line 166
    .local v6, type:B
    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v3, v6, p1, v1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->parseData(BB[BI)I

    move-result v1

    .line 167
    if-gez v1, :cond_2

    .line 168
    const-string v8, "Data parsing error"

    invoke-static {v8}, Landroid/hardware/contextaware/utilbundle/CALogger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 173
    .end local v3           #inst:B
    .end local v6           #type:B
    :cond_6
    const/4 v7, 0x1

    goto :goto_0
.end method

.method private parseData(BB[BI)I
    .locals 8
    .parameter "inst"
    .parameter "type"
    .parameter "packet"
    .parameter "next"

    .prologue
    const/4 v5, -0x1

    .line 219
    move v4, p4

    .line 221
    .local v4, tmpNext:I
    sget-object v6, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;->INST_NOTI:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;

    iget-byte v6, v6, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;->value:B

    if-ne p1, v6, :cond_1

    sget-object v6, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->TYPE_NOTI_POWER:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;

    iget-byte v6, v6, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->value:B

    if-ne p2, v6, :cond_1

    iget-object v6, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mParserMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v7, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->TYPE_NOTI_POWER:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;

    invoke-virtual {v7}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 224
    iget-object v5, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mParserMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v6, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->TYPE_NOTI_POWER:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;

    invoke-virtual {v6}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;

    invoke-interface {v5, p3, v4}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;->parse([BI)I

    move-result v5

    .line 239
    :cond_0
    :goto_0
    return v5

    .line 228
    :cond_1
    sget-object v6, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;->INST_LIBRARY:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;

    iget-byte v6, v6, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;->value:B

    if-ne p1, v6, :cond_0

    .line 232
    invoke-static {}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->values()[Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;

    move-result-object v0

    .local v0, arr$:[Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 233
    .local v1, i:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;
    aget-byte v6, p3, v4

    iget-byte v7, v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->value:B

    if-ne v6, v7, :cond_2

    iget-object v6, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mParserMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 235
    iget-object v5, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mParserMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;

    add-int/lit8 v4, v4, 0x1

    invoke-interface {v5, p3, v4}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;->parse([BI)I

    move-result v5

    goto :goto_0

    .line 232
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public initialize(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 108
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mSensorHubManager:Landroid/hardware/sensorhub/SensorHubManager;

    if-nez v0, :cond_0

    .line 109
    const-string v0, "sensorhub"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/sensorhub/SensorHubManager;

    iput-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mSensorHubManager:Landroid/hardware/sensorhub/SensorHubManager;

    .line 111
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mSensorHubManager:Landroid/hardware/sensorhub/SensorHubManager;

    iget-object v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mSensorHubListener:Landroid/hardware/sensorhub/SensorHubEventListener;

    iget-object v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mSensorHubManager:Landroid/hardware/sensorhub/SensorHubManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/hardware/sensorhub/SensorHubManager;->getDefaultSensorHub(I)Landroid/hardware/sensorhub/SensorHub;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/sensorhub/SensorHubManager;->registerListener(Landroid/hardware/sensorhub/SensorHubEventListener;Landroid/hardware/sensorhub/SensorHub;I)Z

    .line 115
    :cond_0
    return-void
.end method

.method public parseForScenarioTesting([B)Z
    .locals 1
    .parameter "packet"

    .prologue
    .line 184
    invoke-direct {p0, p1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->parse([B)Z

    move-result v0

    return v0
.end method

.method public registerParser(Ljava/lang/String;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;)V
    .locals 1
    .parameter "key"
    .parameter "parser"

    .prologue
    .line 51
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mParserMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mParserMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mParserMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public terminate()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mSensorHubManager:Landroid/hardware/sensorhub/SensorHubManager;

    if-nez v0, :cond_0

    .line 127
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mSensorHubManager:Landroid/hardware/sensorhub/SensorHubManager;

    iget-object v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mSensorHubListener:Landroid/hardware/sensorhub/SensorHubEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/sensorhub/SensorHubManager;->unregisterListener(Landroid/hardware/sensorhub/SensorHubEventListener;)V

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mSensorHubManager:Landroid/hardware/sensorhub/SensorHubManager;

    goto :goto_0
.end method

.method public unregisterParser(Ljava/lang/String;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 65
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mParserMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mParserMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mParserMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method