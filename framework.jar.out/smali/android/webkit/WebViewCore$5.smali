.class Landroid/webkit/WebViewCore$5;
.super Ljava/lang/Object;
.source "WebViewCore.java"

# interfaces
.implements Landroid/webkit/NotificationPermissions$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebViewCore;->notificationPermissionsShowPrompt(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebViewCore;


# direct methods
.method constructor <init>(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter

    .prologue
    .line 473
    iput-object p1, p0, Landroid/webkit/WebViewCore$5;->this$0:Landroid/webkit/WebViewCore;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/String;Z)V
    .locals 3
    .parameter "origin"
    .parameter "allow"

    .prologue
    .line 475
    new-instance v0, Landroid/webkit/WebViewCore$NotificationPermissionsData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$NotificationPermissionsData;-><init>()V

    .line 476
    .local v0, data:Landroid/webkit/WebViewCore$NotificationPermissionsData;
    iput-object p1, v0, Landroid/webkit/WebViewCore$NotificationPermissionsData;->mOrigin:Ljava/lang/String;

    .line 477
    iput-boolean p2, v0, Landroid/webkit/WebViewCore$NotificationPermissionsData;->mAllow:Z

    .line 479
    iget-object v1, p0, Landroid/webkit/WebViewCore$5;->this$0:Landroid/webkit/WebViewCore;

    const/16 v2, 0xc5

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 480
    return-void
.end method

.method public invokeEvent(Ljava/lang/String;I)V
    .locals 0
    .parameter "eventName"
    .parameter "pointer"

    .prologue
    .line 481
    return-void
.end method

.method public invokeNotificationID(II)V
    .locals 0
    .parameter "notificationID"
    .parameter "counter"

    .prologue
    .line 482
    return-void
.end method
