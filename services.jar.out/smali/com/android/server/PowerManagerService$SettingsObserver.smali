.class Lcom/android/server/PowerManagerService$SettingsObserver;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 522
    iput-object p1, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 522
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService$SettingsObserver;-><init>(Lcom/android/server/PowerManagerService;)V

    return-void
.end method

.method private getFloat(Ljava/lang/String;F)F
    .locals 3
    .parameter "name"
    .parameter "defValue"

    .prologue
    .line 530
    iget-object v2, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mSettings:Landroid/content/ContentQueryMap;
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$1400(Lcom/android/server/PowerManagerService;)Landroid/content/ContentQueryMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentQueryMap;->getValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    .line 531
    .local v1, values:Landroid/content/ContentValues;
    if-eqz v1, :cond_1

    const-string v2, "value"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    .line 532
    .local v0, fVal:Ljava/lang/Float;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p2

    .end local p2
    :cond_0
    return p2

    .line 531
    .end local v0           #fVal:Ljava/lang/Float;
    .restart local p2
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getInt(Ljava/lang/String;I)I
    .locals 3
    .parameter "name"
    .parameter "defValue"

    .prologue
    .line 524
    iget-object v2, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mSettings:Landroid/content/ContentQueryMap;
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$1400(Lcom/android/server/PowerManagerService;)Landroid/content/ContentQueryMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentQueryMap;->getValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    .line 525
    .local v1, values:Landroid/content/ContentValues;
    if-eqz v1, :cond_1

    const-string v2, "value"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 526
    .local v0, iVal:Ljava/lang/Integer;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .end local p2
    :cond_0
    return p2

    .line 525
    .end local v0           #iVal:Ljava/lang/Integer;
    .restart local p2
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 14
    .parameter "o"
    .parameter "arg"

    .prologue
    .line 536
    iget-object v0, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$700(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v13

    monitor-enter v13

    .line 538
    :try_start_0
    iget-object v0, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    const-string v1, "stay_on_while_plugged_in"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/server/PowerManagerService$SettingsObserver;->getInt(Ljava/lang/String;I)I

    move-result v1

    #setter for: Lcom/android/server/PowerManagerService;->mStayOnConditions:I
    invoke-static {v0, v1}, Lcom/android/server/PowerManagerService;->access$1502(Lcom/android/server/PowerManagerService;I)I

    .line 540
    iget-object v0, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->updateWakeLockLocked()V
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$1000(Lcom/android/server/PowerManagerService;)V

    .line 542
    iget-object v0, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenOffTimeoutSetting:I
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$1600(Lcom/android/server/PowerManagerService;)I

    move-result v10

    .line 544
    .local v10, prevScreenOffTimeoutSetting:I
    iget-object v0, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    const-string v1, "screen_off_timeout"

    const/16 v2, 0x3a98

    invoke-direct {p0, v1, v2}, Lcom/android/server/PowerManagerService$SettingsObserver;->getInt(Ljava/lang/String;I)I

    move-result v1

    #setter for: Lcom/android/server/PowerManagerService;->mScreenOffTimeoutSetting:I
    invoke-static {v0, v1}, Lcom/android/server/PowerManagerService;->access$1602(Lcom/android/server/PowerManagerService;I)I

    .line 547
    const/4 v8, 0x0

    .line 548
    .local v8, bButtonSettingChanged:Z
    const-string v0, "button_key_light"

    const/16 v1, 0x5dc

    invoke-direct {p0, v0, v1}, Lcom/android/server/PowerManagerService$SettingsObserver;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 549
    .local v9, newButtonOffTimeoutSetting:I
    iget-object v0, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mButtonOffTimeoutSetting:I
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$1700(Lcom/android/server/PowerManagerService;)I

    move-result v0

    if-eq v0, v9, :cond_0

    .line 550
    iget-object v0, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    #setter for: Lcom/android/server/PowerManagerService;->mButtonOffTimeoutSetting:I
    invoke-static {v0, v9}, Lcom/android/server/PowerManagerService;->access$1702(Lcom/android/server/PowerManagerService;I)I

    .line 551
    const/4 v8, 0x1

    .line 555
    :cond_0
    iget-object v1, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    iget-object v0, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$1900(Lcom/android/server/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "intelligent_sleep_mode"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$1900(Lcom/android/server/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "intelligent_screen_mode"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :goto_0
    #setter for: Lcom/android/server/PowerManagerService;->mSmartSleepEnabled:Z
    invoke-static {v1, v0}, Lcom/android/server/PowerManagerService;->access$1802(Lcom/android/server/PowerManagerService;Z)Z

    .line 561
    iget-object v0, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    const-string v1, "screen_brightness_mode"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/PowerManagerService$SettingsObserver;->getInt(Ljava/lang/String;I)I

    move-result v1

    #calls: Lcom/android/server/PowerManagerService;->setScreenBrightnessMode(I)V
    invoke-static {v0, v1}, Lcom/android/server/PowerManagerService;->access$2000(Lcom/android/server/PowerManagerService;I)V

    .line 565
    iget-object v0, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->setScreenOffTimeoutsLocked()V
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$2100(Lcom/android/server/PowerManagerService;)V

    .line 569
    iget-object v0, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenOffTimeoutSetting:I
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$1600(Lcom/android/server/PowerManagerService;)I

    move-result v0

    if-eq v10, v0, :cond_1

    .line 570
    iget-object v0, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mTimeoutTask:Lcom/android/server/PowerManagerService$TimeoutTask;
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$2200(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$TimeoutTask;

    move-result-object v3

    iget v3, v3, Lcom/android/server/PowerManagerService$TimeoutTask;->nextState:I

    #calls: Lcom/android/server/PowerManagerService;->setTimeoutLocked(JI)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/PowerManagerService;->access$2300(Lcom/android/server/PowerManagerService;JI)V

    .line 574
    :cond_1
    const/4 v0, 0x1

    if-ne v8, v0, :cond_2

    .line 575
    iget-object v0, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 576
    const-string v0, "PowerManagerService"

    const-string v1, "SettingsObserver : update : userActivity()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    iget-object v0, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    #calls: Lcom/android/server/PowerManagerService;->userActivity(JJZIZ)V
    invoke-static/range {v0 .. v7}, Lcom/android/server/PowerManagerService;->access$2400(Lcom/android/server/PowerManagerService;JJZIZ)V

    .line 578
    iget-object v0, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    #calls: Lcom/android/server/PowerManagerService;->userActivity(JJZIZ)V
    invoke-static/range {v0 .. v7}, Lcom/android/server/PowerManagerService;->access$2400(Lcom/android/server/PowerManagerService;JJZIZ)V

    .line 582
    :cond_2
    const-string v0, "window_animation_scale"

    const/high16 v1, 0x3f80

    invoke-direct {p0, v0, v1}, Lcom/android/server/PowerManagerService$SettingsObserver;->getFloat(Ljava/lang/String;F)F

    move-result v12

    .line 583
    .local v12, windowScale:F
    const-string v0, "transition_animation_scale"

    const/high16 v1, 0x3f80

    invoke-direct {p0, v0, v1}, Lcom/android/server/PowerManagerService$SettingsObserver;->getFloat(Ljava/lang/String;F)F

    move-result v11

    .line 584
    .local v11, transitionScale:F
    iget-object v0, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v1, 0x0

    #setter for: Lcom/android/server/PowerManagerService;->mAnimationSetting:I
    invoke-static {v0, v1}, Lcom/android/server/PowerManagerService;->access$2502(Lcom/android/server/PowerManagerService;I)I

    .line 585
    const/high16 v0, 0x3f00

    cmpl-float v0, v12, v0

    if-lez v0, :cond_3

    .line 586
    iget-object v0, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/android/server/PowerManagerService;->access$2576(Lcom/android/server/PowerManagerService;I)I

    .line 588
    :cond_3
    const/high16 v0, 0x3f00

    cmpl-float v0, v11, v0

    if-lez v0, :cond_4

    .line 592
    :cond_4
    monitor-exit v13

    .line 593
    return-void

    .line 555
    .end local v11           #transitionScale:F
    .end local v12           #windowScale:F
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 592
    .end local v8           #bButtonSettingChanged:Z
    .end local v9           #newButtonOffTimeoutSetting:I
    .end local v10           #prevScreenOffTimeoutSetting:I
    :catchall_0
    move-exception v0

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
