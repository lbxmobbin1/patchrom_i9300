.class Lcom/android/internal/policy/impl/TickerScrollView$3;
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
    .line 165
    iput-object p1, p0, Lcom/android/internal/policy/impl/TickerScrollView$3;->this$0:Lcom/android/internal/policy/impl/TickerScrollView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 171
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 172
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    iget-object v4, p0, Lcom/android/internal/policy/impl/TickerScrollView$3;->this$0:Lcom/android/internal/policy/impl/TickerScrollView;

    #getter for: Lcom/android/internal/policy/impl/TickerScrollView;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/internal/policy/impl/TickerScrollView;->access$100(Lcom/android/internal/policy/impl/TickerScrollView;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 176
    .local v3, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isKoreaFeature()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 177
    const-string v4, "com.sec.android.daemonapp.ap.yonhapnews"

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 178
    new-instance v0, Landroid/content/ComponentName;

    const-string v4, "com.sec.android.daemonapp.ap.yonhapnews"

    const-string v5, "com.sec.android.daemonapp.ap.yahoonews.activity.SettingsNews"

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .local v0, cn:Landroid/content/ComponentName;
    :goto_0
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    .end local v0           #cn:Landroid/content/ComponentName;
    :goto_1
    const/high16 v4, 0x1000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 191
    iget-object v4, p0, Lcom/android/internal/policy/impl/TickerScrollView$3;->this$0:Lcom/android/internal/policy/impl/TickerScrollView;

    #getter for: Lcom/android/internal/policy/impl/TickerScrollView;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/internal/policy/impl/TickerScrollView;->access$100(Lcom/android/internal/policy/impl/TickerScrollView;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 192
    iget-object v4, p0, Lcom/android/internal/policy/impl/TickerScrollView$3;->this$0:Lcom/android/internal/policy/impl/TickerScrollView;

    #getter for: Lcom/android/internal/policy/impl/TickerScrollView;->mTickerCallback:Lcom/android/internal/policy/impl/TickerCallback;
    invoke-static {v4}, Lcom/android/internal/policy/impl/TickerScrollView;->access$000(Lcom/android/internal/policy/impl/TickerScrollView;)Lcom/android/internal/policy/impl/TickerCallback;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/policy/impl/TickerCallback;->goToUnlockScreen()V

    .line 193
    return-void

    .line 181
    :cond_0
    :try_start_1
    const-string v4, "com.sec.android.daemonapp.ap.yahoonews"

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 182
    new-instance v0, Landroid/content/ComponentName;

    const-string v4, "com.sec.android.daemonapp.ap.yahoonews"

    const-string v5, "com.sec.android.daemonapp.ap.yahoonews.activity.SelectCountry"

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v0       #cn:Landroid/content/ComponentName;
    goto :goto_0

    .line 186
    .end local v0           #cn:Landroid/content/ComponentName;
    :catch_0
    move-exception v1

    .line 187
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v4, p0, Lcom/android/internal/policy/impl/TickerScrollView$3;->this$0:Lcom/android/internal/policy/impl/TickerScrollView;

    #getter for: Lcom/android/internal/policy/impl/TickerScrollView;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/internal/policy/impl/TickerScrollView;->access$200(Lcom/android/internal/policy/impl/TickerScrollView;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.sec.android.daemonapp.ap.yahoonews not found!!!! error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1
.end method
