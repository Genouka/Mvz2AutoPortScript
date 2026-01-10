.class Lcom/genouka/fumo/mvz2/RunnerActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "RunnerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genouka/fumo/mvz2/RunnerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genouka/fumo/mvz2/RunnerActivity;


# direct methods
.method constructor <init>(Lcom/genouka/fumo/mvz2/RunnerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/genouka/fumo/mvz2/RunnerActivity;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/genouka/fumo/mvz2/RunnerActivity$2;->this$0:Lcom/genouka/fumo/mvz2/RunnerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 256
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 257
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 261
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    const-string v2, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 264
    invoke-static {}, Lcom/yoyogames/runner/RunnerJNILib;->onGamepadChange()V

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    const-string v2, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 271
    invoke-static {}, Lcom/yoyogames/runner/RunnerJNILib;->onGamepadChange()V

    goto :goto_0
.end method
