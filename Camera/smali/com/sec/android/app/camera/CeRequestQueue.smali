.class public Lcom/sec/android/app/camera/CeRequestQueue;
.super Ljava/lang/Object;
.source "CeRequestQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/CeRequestQueue$1;,
        Lcom/sec/android/app/camera/CeRequestQueue$MainHandler;
    }
.end annotation


# static fields
.field private static final ORIENTATION_CHANGE_DURATION:I = 0xc8

.field private static final START_FIRST_REQUEST:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CeRequestQueue"

.field private static final WINDOW_FOCUS_CHANGE_DURATION:I = 0xc8


# instance fields
.field private mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

.field private mLogBuilder:Ljava/lang/StringBuilder;

.field private mMainHandler:Lcom/sec/android/app/camera/CeRequestQueue$MainHandler;

.field private mRequestQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/sec/android/app/camera/CeRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/CameraEngine;)V
    .locals 2
    .parameter "cameraEngine"

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/CeRequestQueue;->mRequestQueue:Ljava/util/Queue;

    .line 41
    iput-object v1, p0, Lcom/sec/android/app/camera/CeRequestQueue;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/CeRequestQueue;->mLogBuilder:Ljava/lang/StringBuilder;

    .line 69
    new-instance v0, Lcom/sec/android/app/camera/CeRequestQueue$MainHandler;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/CeRequestQueue$MainHandler;-><init>(Lcom/sec/android/app/camera/CeRequestQueue;Lcom/sec/android/app/camera/CeRequestQueue$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CeRequestQueue;->mMainHandler:Lcom/sec/android/app/camera/CeRequestQueue$MainHandler;

    .line 73
    iput-object p1, p0, Lcom/sec/android/app/camera/CeRequestQueue;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/CeRequestQueue;)Lcom/sec/android/app/camera/CameraEngine;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sec/android/app/camera/CeRequestQueue;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/CeRequestQueue;)Lcom/sec/android/app/camera/CeRequestQueue$MainHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sec/android/app/camera/CeRequestQueue;->mMainHandler:Lcom/sec/android/app/camera/CeRequestQueue$MainHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/CeRequestQueue;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/sec/android/app/camera/CeRequestQueue;->startFirstRequest()V

    return-void
.end method

.method private startFirstRequest()V
    .locals 2

    .prologue
    .line 119
    const-string v0, "CeRequestQueue"

    const-string v1, "startFirstRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v0, p0, Lcom/sec/android/app/camera/CeRequestQueue;->mMainHandler:Lcom/sec/android/app/camera/CeRequestQueue$MainHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue$MainHandler;->removeMessages(I)V

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CeRequestQueue;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getCurrentStateHandler()Lcom/sec/android/app/camera/AbstractCeState;

    move-result-object v0

    if-nez v0, :cond_0

    .line 132
    :goto_0
    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CeRequestQueue;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getCurrentStateHandler()Lcom/sec/android/app/camera/AbstractCeState;

    move-result-object v1

    iget-object v0, p0, Lcom/sec/android/app/camera/CeRequestQueue;->mRequestQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->element()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CeRequest;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/AbstractCeState;->handleRequest(Lcom/sec/android/app/camera/CeRequest;)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 127
    :catch_0
    move-exception v0

    goto :goto_0

    .line 129
    :catch_1
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public addRequest(Lcom/sec/android/app/camera/CeRequest;)V
    .locals 3
    .parameter "request"

    .prologue
    const/4 v2, 0x1

    .line 100
    const-string v0, "CeRequestQueue"

    const-string v1, "addRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v0, p0, Lcom/sec/android/app/camera/CeRequestQueue;->mRequestQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 104
    const-string v0, "CeRequestQueue"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeRequestQueue;->dumpQueue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v0, p0, Lcom/sec/android/app/camera/CeRequestQueue;->mRequestQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 107
    const-string v0, "CeRequestQueue"

    const-string v1, "sending START_FIRST_REQUEST"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-virtual {p1}, Lcom/sec/android/app/camera/CeRequest;->getRequest()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 110
    invoke-direct {p0}, Lcom/sec/android/app/camera/CeRequestQueue;->startFirstRequest()V

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CeRequestQueue;->mMainHandler:Lcom/sec/android/app/camera/CeRequestQueue$MainHandler;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CeRequestQueue$MainHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 199
    iget-object v1, p0, Lcom/sec/android/app/camera/CeRequestQueue;->mRequestQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 201
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/camera/CeRequest;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/CeRequest;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sec/android/app/camera/CeRequest;->mReserved:Z

    goto :goto_0

    .line 204
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CeRequestQueue;->mRequestQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 205
    return-void
.end method

.method public completeRequest()V
    .locals 6

    .prologue
    .line 135
    const-string v2, "CeRequestQueue"

    const-string v3, "completeRequest"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v2, p0, Lcom/sec/android/app/camera/CeRequestQueue;->mRequestQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 140
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/camera/CeRequest;>;"
    :try_start_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CeRequest;

    .line 142
    .local v0, firstItem:Lcom/sec/android/app/camera/CeRequest;
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/sec/android/app/camera/CeRequest;->mReserved:Z

    .line 143
    iget-object v2, p0, Lcom/sec/android/app/camera/CeRequestQueue;->mRequestQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->remove()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .end local v0           #firstItem:Lcom/sec/android/app/camera/CeRequest;
    :cond_0
    :goto_0
    const-string v2, "CeRequestQueue"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeRequestQueue;->dumpQueue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v2, p0, Lcom/sec/android/app/camera/CeRequestQueue;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->getLandscapeActive()Z

    move-result v2

    if-nez v2, :cond_2

    .line 153
    iget-object v2, p0, Lcom/sec/android/app/camera/CeRequestQueue;->mMainHandler:Lcom/sec/android/app/camera/CeRequestQueue$MainHandler;

    const/4 v3, 0x1

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/app/camera/CeRequestQueue$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 160
    :cond_1
    :goto_1
    return-void

    .line 157
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/CeRequestQueue;->mRequestQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 158
    invoke-direct {p0}, Lcom/sec/android/app/camera/CeRequestQueue;->startFirstRequest()V

    goto :goto_1

    .line 146
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public dumpQueue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 86
    iget-object v1, p0, Lcom/sec/android/app/camera/CeRequestQueue;->mLogBuilder:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 87
    iget-object v1, p0, Lcom/sec/android/app/camera/CeRequestQueue;->mLogBuilder:Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    iget-object v1, p0, Lcom/sec/android/app/camera/CeRequestQueue;->mRequestQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 91
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/camera/CeRequest;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    iget-object v2, p0, Lcom/sec/android/app/camera/CeRequestQueue;->mLogBuilder:Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/CeRequest;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CeRequest;->getRequest()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    iget-object v1, p0, Lcom/sec/android/app/camera/CeRequestQueue;->mLogBuilder:Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 95
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CeRequestQueue;->mLogBuilder:Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    iget-object v1, p0, Lcom/sec/android/app/camera/CeRequestQueue;->mLogBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public firstElement()Lcom/sec/android/app/camera/CeRequest;
    .locals 2

    .prologue
    .line 78
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CeRequestQueue;->mRequestQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->element()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/CeRequest;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    return-object v1

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, e:Ljava/util/NoSuchElementException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isFirstRequest(I)Z
    .locals 4
    .parameter "requestId"

    .prologue
    const/4 v2, 0x0

    .line 266
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/camera/CeRequestQueue;->mRequestQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->element()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/CeRequest;

    .line 267
    .local v1, firstItem:Lcom/sec/android/app/camera/CeRequest;
    invoke-virtual {v1}, Lcom/sec/android/app/camera/CeRequest;->getRequest()I
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, p1, :cond_0

    .line 268
    const/4 v2, 0x1

    .line 272
    .end local v1           #firstItem:Lcom/sec/android/app/camera/CeRequest;
    :cond_0
    :goto_0
    return v2

    .line 271
    :catch_0
    move-exception v0

    .line 272
    .local v0, e:Ljava/util/NoSuchElementException;
    goto :goto_0
.end method

.method public removeRequest(I)V
    .locals 1
    .parameter "request"

    .prologue
    .line 208
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/camera/CeRequestQueue;->removeRequest(IZ)V

    .line 209
    return-void
.end method

.method public removeRequest(IZ)V
    .locals 10
    .parameter "request"
    .parameter "deleteFirst"

    .prologue
    const/4 v9, 0x1

    .line 212
    const-string v6, "CeRequestQueue"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "removeRequest - deleteFirst:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " deleteFirst:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v6, p0, Lcom/sec/android/app/camera/CeRequestQueue;->mRequestQueue:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->size()I

    move-result v6

    if-ge v6, v9, :cond_1

    .line 215
    const-string v6, "CeRequestQueue"

    const-string v7, "removeRequest queue empty"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    const/4 v1, 0x0

    .line 220
    .local v1, firstItemRemoved:Z
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 223
    .local v3, itemsToRemove:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/camera/CeRequest;>;"
    :try_start_0
    iget-object v6, p0, Lcom/sec/android/app/camera/CeRequestQueue;->mRequestQueue:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 224
    .local v4, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/camera/CeRequest;>;"
    const/4 v0, 0x0

    .line 226
    .local v0, firstItem:Lcom/sec/android/app/camera/CeRequest;
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 227
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #firstItem:Lcom/sec/android/app/camera/CeRequest;
    check-cast v0, Lcom/sec/android/app/camera/CeRequest;

    .line 228
    .restart local v0       #firstItem:Lcom/sec/android/app/camera/CeRequest;
    if-eqz p2, :cond_2

    .line 229
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequest;->getRequest()I

    move-result v6

    if-ne v6, p1, :cond_2

    .line 230
    const/4 v6, 0x0

    iput-boolean v6, v0, Lcom/sec/android/app/camera/CeRequest;->mReserved:Z

    .line 231
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    const/4 v1, 0x1

    .line 237
    :cond_2
    const/4 v2, 0x0

    .line 238
    .local v2, item:Lcom/sec/android/app/camera/CeRequest;
    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 239
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #item:Lcom/sec/android/app/camera/CeRequest;
    check-cast v2, Lcom/sec/android/app/camera/CeRequest;

    .line 240
    .restart local v2       #item:Lcom/sec/android/app/camera/CeRequest;
    invoke-virtual {v2}, Lcom/sec/android/app/camera/CeRequest;->getRequest()I

    move-result v6

    if-eqz v6, :cond_3

    .line 245
    invoke-virtual {v2}, Lcom/sec/android/app/camera/CeRequest;->getRequest()I

    move-result v6

    if-ne v6, p1, :cond_3

    .line 246
    const/4 v6, 0x0

    iput-boolean v6, v2, Lcom/sec/android/app/camera/CeRequest;->mReserved:Z

    .line 247
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 255
    .end local v0           #firstItem:Lcom/sec/android/app/camera/CeRequest;
    .end local v2           #item:Lcom/sec/android/app/camera/CeRequest;
    .end local v4           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/camera/CeRequest;>;"
    :catch_0
    move-exception v6

    .line 259
    :cond_4
    if-eqz v1, :cond_0

    .line 260
    iget-object v6, p0, Lcom/sec/android/app/camera/CeRequestQueue;->mMainHandler:Lcom/sec/android/app/camera/CeRequestQueue$MainHandler;

    invoke-virtual {v6, v9}, Lcom/sec/android/app/camera/CeRequestQueue$MainHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 251
    .restart local v0       #firstItem:Lcom/sec/android/app/camera/CeRequest;
    .restart local v2       #item:Lcom/sec/android/app/camera/CeRequest;
    .restart local v4       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/camera/CeRequest;>;"
    :cond_5
    :try_start_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 252
    .local v5, iter2:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/camera/CeRequest;>;"
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 253
    iget-object v6, p0, Lcom/sec/android/app/camera/CeRequestQueue;->mRequestQueue:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public searchDuplicateRequest(I)Z
    .locals 5
    .parameter "requestId"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 178
    iget-object v2, p0, Lcom/sec/android/app/camera/CeRequestQueue;->mRequestQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 180
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/camera/CeRequest;>;"
    const/4 v1, 0x0

    .line 183
    .local v1, mCount:I
    iget-object v2, p0, Lcom/sec/android/app/camera/CeRequestQueue;->mRequestQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    if-gt v2, v4, :cond_0

    move v2, v3

    .line 194
    :goto_0
    return v2

    .line 187
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 188
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/CeRequest;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CeRequest;->getRequest()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 189
    add-int/lit8 v1, v1, 0x1

    .line 190
    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    move v2, v4

    .line 191
    goto :goto_0

    :cond_1
    move v2, v3

    .line 194
    goto :goto_0
.end method

.method public searchRequest(I)Z
    .locals 4
    .parameter "requestId"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 163
    iget-object v1, p0, Lcom/sec/android/app/camera/CeRequestQueue;->mRequestQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 165
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/camera/CeRequest;>;"
    iget-object v1, p0, Lcom/sec/android/app/camera/CeRequestQueue;->mRequestQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    if-ge v1, v3, :cond_0

    move v1, v2

    .line 174
    :goto_0
    return v1

    .line 169
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 170
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/CeRequest;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CeRequest;->getRequest()I

    move-result v1

    if-ne v1, p1, :cond_0

    move v1, v3

    .line 171
    goto :goto_0

    :cond_1
    move v1, v2

    .line 174
    goto :goto_0
.end method
