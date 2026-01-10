.class Lcom/genouka/fumo/mvz2/RunnerKeyboardController$2;
.super Lcom/genouka/fumo/mvz2/RunnerKeyboardController$KeyboardResultReceiver;
.source "RunnerKeyboardController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->InitReceivers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;


# direct methods
.method constructor <init>(Lcom/genouka/fumo/mvz2/RunnerKeyboardController;Lcom/genouka/fumo/mvz2/RunnerKeyboardController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/genouka/fumo/mvz2/RunnerKeyboardController;
    .param p2, "controller"    # Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    .prologue
    .line 479
    iput-object p1, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$2;->this$0:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    invoke-direct {p0, p1, p2}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$KeyboardResultReceiver;-><init>(Lcom/genouka/fumo/mvz2/RunnerKeyboardController;Lcom/genouka/fumo/mvz2/RunnerKeyboardController;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 483
    invoke-super {p0, p1, p2}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$KeyboardResultReceiver;->onReceiveResult(ILandroid/os/Bundle;)V

    .line 487
    packed-switch p1, :pswitch_data_0

    .line 500
    :goto_0
    iget-object v0, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$2;->m_keyboardController:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    invoke-virtual {v0, p1}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->UpdateKeyboardStatusFromIMMResult(I)V

    .line 501
    iget-object v0, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$2;->m_keyboardController:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    invoke-virtual {v0}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->VirtualKeyboardReportStatus()V

    .line 502
    return-void

    .line 491
    :pswitch_0
    iget-object v0, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$2;->m_keyboardController:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->SetVirtualKeyboardActive(Z)V

    goto :goto_0

    .line 496
    :pswitch_1
    iget-object v0, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$2;->m_keyboardController:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->SetVirtualKeyboardActive(Z)V

    goto :goto_0

    .line 487
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
