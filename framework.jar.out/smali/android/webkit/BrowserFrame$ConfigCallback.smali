.class Landroid/webkit/BrowserFrame$ConfigCallback;
.super Ljava/lang/Object;
.source "BrowserFrame.java"

# interfaces
.implements Landroid/content/ComponentCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/BrowserFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConfigCallback"
.end annotation


# instance fields
.field private final mHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method constructor <init>(Landroid/view/WindowManager;)V
    .locals 1
    .parameter "wm"

    .prologue
    .line 155
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/webkit/BrowserFrame$ConfigCallback;->mHandlers:Ljava/util/ArrayList;

    .line 156
    iput-object p1, p0, Landroid/webkit/BrowserFrame$ConfigCallback;->mWindowManager:Landroid/view/WindowManager;

    .line 157
    return-void
.end method


# virtual methods
.method public declared-synchronized addHandler(Landroid/os/Handler;)V
    .locals 2
    .parameter "h"

    .prologue
    .line 164
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/BrowserFrame$ConfigCallback;->mHandlers:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    monitor-exit p0

    return-void

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8
    .parameter "newConfig"

    .prologue
    .line 168
    iget-object v6, p0, Landroid/webkit/BrowserFrame$ConfigCallback;->mHandlers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 208
    :goto_0
    return-void

    .line 171
    :cond_0
    iget-object v6, p0, Landroid/webkit/BrowserFrame$ConfigCallback;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getOrientation()I

    move-result v3

    .line 173
    .local v3, orientation:I
    packed-switch v3, :pswitch_data_0

    .line 189
    :goto_1
    monitor-enter p0

    .line 192
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v6, p0, Landroid/webkit/BrowserFrame$ConfigCallback;->mHandlers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 194
    .local v1, handlersToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/ref/WeakReference;>;"
    iget-object v6, p0, Landroid/webkit/BrowserFrame$ConfigCallback;->mHandlers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    .line 195
    .local v5, wh:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 196
    .local v0, h:Landroid/os/Handler;
    if-eqz v0, :cond_1

    .line 197
    const/16 v6, 0x3ea

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v3, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 207
    .end local v0           #h:Landroid/os/Handler;
    .end local v1           #handlersToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/ref/WeakReference;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v5           #wh:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 175
    :pswitch_0
    const/16 v3, 0x5a

    .line 176
    goto :goto_1

    .line 178
    :pswitch_1
    const/16 v3, 0xb4

    .line 179
    goto :goto_1

    .line 181
    :pswitch_2
    const/16 v3, -0x5a

    .line 182
    goto :goto_1

    .line 184
    :pswitch_3
    const/4 v3, 0x0

    .line 185
    goto :goto_1

    .line 200
    .restart local v0       #h:Landroid/os/Handler;
    .restart local v1       #handlersToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/ref/WeakReference;>;"
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v5       #wh:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    :cond_1
    :try_start_1
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 204
    .end local v0           #h:Landroid/os/Handler;
    .end local v5           #wh:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 205
    .local v4, weak:Ljava/lang/ref/WeakReference;
    iget-object v6, p0, Landroid/webkit/BrowserFrame$ConfigCallback;->mHandlers:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    .line 207
    .end local v4           #weak:Ljava/lang/ref/WeakReference;
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 173
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 210
    return-void
.end method