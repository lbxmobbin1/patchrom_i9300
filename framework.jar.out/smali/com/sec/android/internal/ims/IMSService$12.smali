.class Lcom/sec/android/internal/ims/IMSService$12;
.super Ljava/util/TimerTask;
.source "IMSService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/internal/ims/IMSService;->scheduleDNSRetryTimer(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/internal/ims/IMSService;


# direct methods
.method constructor <init>(Lcom/sec/android/internal/ims/IMSService;)V
    .locals 0
    .parameter

    .prologue
    .line 3034
    iput-object p1, p0, Lcom/sec/android/internal/ims/IMSService$12;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 3037
    const-string v2, "IMS/IMSService"

    const-string v3, "Retry DNS start: ...."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3039
    const/4 v0, -0x1

    .line 3040
    .local v0, minuteVal:I
    invoke-static {}, Lcom/sec/android/internal/ims/IMSService;->access$1408()I

    .line 3041
    invoke-static {}, Lcom/sec/android/internal/ims/IMSService;->access$1400()I

    move-result v2

    rem-int/lit8 v1, v2, 0x3

    .line 3042
    .local v1, retryFactor:I
    packed-switch v1, :pswitch_data_0

    .line 3055
    :goto_0
    const v2, 0xea60

    mul-int/2addr v2, v0

    invoke-static {v2}, Lcom/sec/android/internal/ims/IMSService;->access$1502(I)I

    .line 3056
    const-string v2, "IMS/IMSService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Retry Timer for next time.."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/sec/android/internal/ims/IMSService;->access$1500()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3057
    iget-object v2, p0, Lcom/sec/android/internal/ims/IMSService$12;->this$0:Lcom/sec/android/internal/ims/IMSService;

    #calls: Lcom/sec/android/internal/ims/IMSService;->doDNSQueryRetry()V
    invoke-static {v2}, Lcom/sec/android/internal/ims/IMSService;->access$1600(Lcom/sec/android/internal/ims/IMSService;)V

    .line 3058
    return-void

    .line 3044
    :pswitch_0
    const/4 v0, 0x3

    .line 3045
    goto :goto_0

    .line 3047
    :pswitch_1
    const/4 v0, 0x5

    .line 3048
    goto :goto_0

    .line 3050
    :pswitch_2
    const/16 v0, 0xa

    .line 3051
    goto :goto_0

    .line 3042
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
