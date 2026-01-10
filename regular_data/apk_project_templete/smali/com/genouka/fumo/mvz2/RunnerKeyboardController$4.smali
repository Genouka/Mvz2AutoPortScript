.class Lcom/genouka/fumo/mvz2/RunnerKeyboardController$4;
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
    .line 517
    iput-object p1, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$4;->this$0:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    invoke-direct {p0, p1, p2}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$KeyboardResultReceiver;-><init>(Lcom/genouka/fumo/mvz2/RunnerKeyboardController;Lcom/genouka/fumo/mvz2/RunnerKeyboardController;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 521
    invoke-super {p0, p1, p2}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$KeyboardResultReceiver;->onReceiveResult(ILandroid/os/Bundle;)V

    .line 522
    iget-object v0, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$4;->m_keyboardController:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    invoke-virtual {v0, p1}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->OnVirtualKeyboardVisibilityCheckResult(I)V

    .line 523
    return-void
.end method
