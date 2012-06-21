.class public Landroid/os/PowerManager$DVFSLock;
.super Ljava/lang/Object;
.source "PowerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DVFSLock"
.end annotation


# instance fields
.field mFrequency:I

.field mHeld:Z

.field mReleaser:Ljava/lang/Runnable;

.field mTag:Ljava/lang/String;

.field mTimeoutMs:I

.field mToken:Landroid/os/IBinder;

.field mType:I

.field final synthetic this$0:Landroid/os/PowerManager;


# direct methods
.method constructor <init>(Landroid/os/PowerManager;IILjava/lang/String;)V
    .locals 5
    .parameter
    .parameter "type"
    .parameter "frequency"
    .parameter "tag"

    .prologue
    .line 634
    iput-object p1, p0, Landroid/os/PowerManager$DVFSLock;->this$0:Landroid/os/PowerManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 621
    new-instance v3, Landroid/os/PowerManager$DVFSLock$1;

    invoke-direct {v3, p0}, Landroid/os/PowerManager$DVFSLock$1;-><init>(Landroid/os/PowerManager$DVFSLock;)V

    iput-object v3, p0, Landroid/os/PowerManager$DVFSLock;->mReleaser:Ljava/lang/Runnable;

    .line 632
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/os/PowerManager$DVFSLock;->mHeld:Z

    .line 635
    packed-switch p2, :pswitch_data_0

    .line 640
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "PowerManager : DVFSLock : invalid type"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 643
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/PowerManager;->getSupportedFrequency()[I

    move-result-object v2

    .line 644
    .local v2, supportedFrequency:[I
    if-nez v2, :cond_0

    .line 645
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v4, "PowerManager : DVFSLock : getSupportedFrequency : null"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 648
    :cond_0
    const/4 v0, 0x0

    .line 649
    .local v0, bFound:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 650
    aget v3, v2, v1

    if-ne p3, v3, :cond_1

    .line 651
    const/4 v0, 0x1

    .line 649
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 654
    :cond_2
    if-nez v0, :cond_3

    .line 655
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "PowerManager : DVFSLock : invalid frequency"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 658
    :cond_3
    iput p2, p0, Landroid/os/PowerManager$DVFSLock;->mType:I

    .line 659
    iput p3, p0, Landroid/os/PowerManager$DVFSLock;->mFrequency:I

    .line 660
    iput-object p4, p0, Landroid/os/PowerManager$DVFSLock;->mTag:Ljava/lang/String;

    .line 661
    new-instance v3, Landroid/os/Binder;

    invoke-direct {v3}, Landroid/os/Binder;-><init>()V

    iput-object v3, p0, Landroid/os/PowerManager$DVFSLock;->mToken:Landroid/os/IBinder;

    .line 662
    return-void

    .line 635
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public acquire()V
    .locals 6

    .prologue
    .line 666
    iget-object v1, p0, Landroid/os/PowerManager$DVFSLock;->mToken:Landroid/os/IBinder;

    monitor-enter v1

    .line 668
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager$DVFSLock;->this$0:Landroid/os/PowerManager;

    iget-object v0, v0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    iget v2, p0, Landroid/os/PowerManager$DVFSLock;->mType:I

    iget v3, p0, Landroid/os/PowerManager$DVFSLock;->mFrequency:I

    iget-object v4, p0, Landroid/os/PowerManager$DVFSLock;->mToken:Landroid/os/IBinder;

    iget-object v5, p0, Landroid/os/PowerManager$DVFSLock;->mTag:Ljava/lang/String;

    invoke-interface {v0, v2, v3, v4, v5}, Landroid/os/IPowerManager;->acquireDVFSLock(IILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 671
    :goto_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Landroid/os/PowerManager$DVFSLock;->mHeld:Z

    .line 672
    monitor-exit v1

    .line 673
    return-void

    .line 672
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 669
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public acquire(J)V
    .locals 3
    .parameter "timeout"

    .prologue
    .line 676
    const-string v0, "PowerManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DVFSLock :  acquire : timeout : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    invoke-virtual {p0}, Landroid/os/PowerManager$DVFSLock;->acquire()V

    .line 678
    iget-object v0, p0, Landroid/os/PowerManager$DVFSLock;->this$0:Landroid/os/PowerManager;

    iget-object v0, v0, Landroid/os/PowerManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/os/PowerManager$DVFSLock;->mReleaser:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 679
    return-void
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 703
    iget-object v1, p0, Landroid/os/PowerManager$DVFSLock;->mToken:Landroid/os/IBinder;

    monitor-enter v1

    .line 704
    :try_start_0
    iget-boolean v0, p0, Landroid/os/PowerManager$DVFSLock;->mHeld:Z

    if-eqz v0, :cond_0

    .line 705
    const-string v0, "PowerManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DVFSLock finalized while still held: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/os/PowerManager$DVFSLock;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 707
    :try_start_1
    iget-object v0, p0, Landroid/os/PowerManager$DVFSLock;->this$0:Landroid/os/PowerManager;

    iget-object v0, v0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    iget-object v2, p0, Landroid/os/PowerManager$DVFSLock;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v2}, Landroid/os/IPowerManager;->releaseDVFSLock(Landroid/os/IBinder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 711
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    .line 712
    return-void

    .line 711
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 708
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public isHeld()Z
    .locals 2

    .prologue
    .line 695
    iget-object v1, p0, Landroid/os/PowerManager$DVFSLock;->mToken:Landroid/os/IBinder;

    monitor-enter v1

    .line 696
    :try_start_0
    iget-boolean v0, p0, Landroid/os/PowerManager$DVFSLock;->mHeld:Z

    monitor-exit v1

    return v0

    .line 697
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public release()V
    .locals 3

    .prologue
    .line 683
    iget-object v1, p0, Landroid/os/PowerManager$DVFSLock;->mToken:Landroid/os/IBinder;

    monitor-enter v1

    .line 685
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager$DVFSLock;->this$0:Landroid/os/PowerManager;

    iget-object v0, v0, Landroid/os/PowerManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/os/PowerManager$DVFSLock;->mReleaser:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 686
    iget-object v0, p0, Landroid/os/PowerManager$DVFSLock;->this$0:Landroid/os/PowerManager;

    iget-object v0, v0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    iget-object v2, p0, Landroid/os/PowerManager$DVFSLock;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v2}, Landroid/os/IPowerManager;->releaseDVFSLock(Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 689
    :goto_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Landroid/os/PowerManager$DVFSLock;->mHeld:Z

    .line 690
    monitor-exit v1

    .line 691
    return-void

    .line 690
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 687
    :catch_0
    move-exception v0

    goto :goto_0
.end method
