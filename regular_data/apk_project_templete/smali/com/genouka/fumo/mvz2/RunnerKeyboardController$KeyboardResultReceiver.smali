.class Lcom/genouka/fumo/mvz2/RunnerKeyboardController$KeyboardResultReceiver;
.super Landroid/os/ResultReceiver;
.source "RunnerKeyboardController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genouka/fumo/mvz2/RunnerKeyboardController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyboardResultReceiver"
.end annotation


# instance fields
.field protected m_keyboardController:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

.field final synthetic this$0:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;


# direct methods
.method constructor <init>(Lcom/genouka/fumo/mvz2/RunnerKeyboardController;Lcom/genouka/fumo/mvz2/RunnerKeyboardController;)V
    .locals 1
    .param p2, "controller"    # Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    .prologue
    const/4 v0, 0x0

    .line 69
    iput-object p1, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$KeyboardResultReceiver;->this$0:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    .line 70
    invoke-direct {p0, v0}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 66
    iput-object v0, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$KeyboardResultReceiver;->m_keyboardController:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    .line 71
    iput-object p2, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$KeyboardResultReceiver;->m_keyboardController:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    .line 72
    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 78
    return-void
.end method
