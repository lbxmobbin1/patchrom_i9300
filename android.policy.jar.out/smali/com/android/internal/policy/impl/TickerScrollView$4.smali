.class Lcom/android/internal/policy/impl/TickerScrollView$4;
.super Ljava/lang/Object;
.source "TickerScrollView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/TickerScrollView;->createMessage(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;)Landroid/widget/FrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/TickerScrollView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/TickerScrollView;)V
    .locals 0
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/android/internal/policy/impl/TickerScrollView$4;->this$0:Lcom/android/internal/policy/impl/TickerScrollView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 202
    iget-object v4, p0, Lcom/android/internal/policy/impl/TickerScrollView$4;->this$0:Lcom/android/internal/policy/impl/TickerScrollView;

    #getter for: Lcom/android/internal/policy/impl/TickerScrollView;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/internal/policy/impl/TickerScrollView;->access$100(Lcom/android/internal/policy/impl/TickerScrollView;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 205
    .local v2, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isKoreaFeature()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 206
    const-string v4, "com.sec.android.daemonapp.ap.edaily.stockclock"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :goto_0
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isKoreaFeature()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 218
    const-string v3, "com.sec.android.daemonapp.ap.edaily.stockclock.MENUSETTING"

    .line 224
    .local v3, stockList:Ljava/lang/String;
    :goto_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 226
    .local v1, intent:Landroid/content/Intent;
    const/high16 v4, 0x1000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 227
    iget-object v4, p0, Lcom/android/internal/policy/impl/TickerScrollView$4;->this$0:Lcom/android/internal/policy/impl/TickerScrollView;

    #getter for: Lcom/android/internal/policy/impl/TickerScrollView;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/internal/policy/impl/TickerScrollView;->access$100(Lcom/android/internal/policy/impl/TickerScrollView;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 228
    iget-object v4, p0, Lcom/android/internal/policy/impl/TickerScrollView$4;->this$0:Lcom/android/internal/policy/impl/TickerScrollView;

    #getter for: Lcom/android/internal/policy/impl/TickerScrollView;->mTickerCallback:Lcom/android/internal/policy/impl/TickerCallback;
    invoke-static {v4}, Lcom/android/internal/policy/impl/TickerScrollView;->access$000(Lcom/android/internal/policy/impl/TickerScrollView;)Lcom/android/internal/policy/impl/TickerCallback;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/policy/impl/TickerCallback;->goToUnlockScreen()V

    .line 229
    return-void

    .line 207
    .end local v1           #intent:Landroid/content/Intent;
    .end local v3           #stockList:Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isSinaEnable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 208
    const-string v4, "com.sec.android.daemonapp.ap.sinastock.stockclock"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v4, p0, Lcom/android/internal/policy/impl/TickerScrollView$4;->this$0:Lcom/android/internal/policy/impl/TickerScrollView;

    #getter for: Lcom/android/internal/policy/impl/TickerScrollView;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/internal/policy/impl/TickerScrollView;->access$200(Lcom/android/internal/policy/impl/TickerScrollView;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.sec.android.daemonapp.ap.yahoostock.stockclock"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 210
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    :try_start_2
    const-string v4, "com.sec.android.daemonapp.ap.yahoostock.stockclock"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 219
    :cond_2
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isSinaEnable()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 220
    const-string v3, "com.sec.android.daemonapp.ap.sinastock.stockclock.MENUSETTING"

    .restart local v3       #stockList:Ljava/lang/String;
    goto :goto_1

    .line 222
    .end local v3           #stockList:Ljava/lang/String;
    :cond_3
    const-string v3, "com.sec.android.daemonapp.ap.yahoostock.stockclock.stocklist.StockList"

    .restart local v3       #stockList:Ljava/lang/String;
    goto :goto_1
.end method
