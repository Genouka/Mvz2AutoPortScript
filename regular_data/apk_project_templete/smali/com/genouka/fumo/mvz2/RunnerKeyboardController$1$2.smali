.class Lcom/genouka/fumo/mvz2/RunnerKeyboardController$1$2;
.super Ljava/lang/Object;
.source "RunnerKeyboardController.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genouka/fumo/mvz2/RunnerKeyboardController$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/genouka/fumo/mvz2/RunnerKeyboardController$1;


# direct methods
.method constructor <init>(Lcom/genouka/fumo/mvz2/RunnerKeyboardController$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/genouka/fumo/mvz2/RunnerKeyboardController$1;

    .prologue
    .line 431
    iput-object p1, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$1$2;->this$1:Lcom/genouka/fumo/mvz2/RunnerKeyboardController$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v3, 0x1103

    const/4 v2, 0x1

    const/16 v1, 0xd

    .line 436
    const/4 v0, 0x0

    invoke-static {v0, v1, v1, v3}, Lcom/yoyogames/runner/RunnerJNILib;->KeyEvent(IIII)V

    .line 437
    invoke-static {v2, v1, v1, v3}, Lcom/yoyogames/runner/RunnerJNILib;->KeyEvent(IIII)V

    .line 438
    return v2
.end method
