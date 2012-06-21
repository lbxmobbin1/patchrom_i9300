.class Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenShotForEffect;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenShotForEffect"
.end annotation


# instance fields
.field private mShotEvent:I

.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;I)V
    .locals 1
    .parameter
    .parameter "shotEvent"

    .prologue
    .line 1075
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenShotForEffect;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1073
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenShotForEffect;->mShotEvent:I

    .line 1076
    iput p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenShotForEffect;->mShotEvent:I

    .line 1077
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1081
    const/4 v1, 0x1

    .line 1083
    .local v1, isScreenCaptureEnabled:Z
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenShotForEffect;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v2, :cond_0

    .line 1084
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenShotForEffect;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const-string v3, "statusbar"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 1087
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenShotForEffect;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-eqz v2, :cond_1

    .line 1089
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenShotForEffect;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v2}, Lcom/android/internal/statusbar/IStatusBarService;->isScreenCaptureEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1096
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 1098
    const-string v2, "WindowManager"

    const-string v3, "take screen shot with effect"

    invoke-static {v2, v3}, Landroid/util/safelog/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenShotForEffect;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenShotForEffect;->mShotEvent:I

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManager;->takeScreenshot(I)V
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$500(Lcom/android/internal/policy/impl/PhoneWindowManager;I)V

    .line 1104
    :goto_1
    return-void

    .line 1090
    :catch_0
    move-exception v0

    .line 1091
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "WindowManager"

    const-string v3, "StatusBarService RemoteException"

    invoke-static {v2, v3}, Landroid/util/safelog/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenShotForEffect;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 1093
    const/4 v1, 0x1

    goto :goto_0

    .line 1102
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    const-string v2, "WindowManager"

    const-string v3, "not captured (effect)"

    invoke-static {v2, v3}, Landroid/util/safelog/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
