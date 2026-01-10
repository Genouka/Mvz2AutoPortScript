.class Lcom/genouka/fumo/mvz2/RunnerKeyboardController$6;
.super Ljava/lang/Object;
.source "RunnerKeyboardController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->OnVirtualKeyboardVisibilityCheckResult(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

.field final synthetic val$_resultCode:I


# direct methods
.method constructor <init>(Lcom/genouka/fumo/mvz2/RunnerKeyboardController;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    .prologue
    .line 677
    iput-object p1, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$6;->this$0:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    iput p2, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$6;->val$_resultCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 682
    iget v0, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$6;->val$_resultCode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 684
    iget-object v0, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$6;->this$0:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    invoke-static {v0}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->access$900(Lcom/genouka/fumo/mvz2/RunnerKeyboardController;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$6;->this$0:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    invoke-static {v1}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->access$100(Lcom/genouka/fumo/mvz2/RunnerKeyboardController;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$6;->this$0:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    invoke-static {v2}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->access$1000(Lcom/genouka/fumo/mvz2/RunnerKeyboardController;)Lcom/genouka/fumo/mvz2/RunnerKeyboardController$KeyboardResultReceiver;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    .line 694
    :goto_0
    return-void

    .line 686
    :cond_0
    iget v0, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$6;->val$_resultCode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 688
    iget-object v0, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$6;->this$0:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    invoke-static {v0}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->access$900(Lcom/genouka/fumo/mvz2/RunnerKeyboardController;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$6;->this$0:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    invoke-static {v1}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->access$100(Lcom/genouka/fumo/mvz2/RunnerKeyboardController;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$6;->this$0:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    invoke-static {v2}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->access$1000(Lcom/genouka/fumo/mvz2/RunnerKeyboardController;)Lcom/genouka/fumo/mvz2/RunnerKeyboardController$KeyboardResultReceiver;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z

    goto :goto_0

    .line 692
    :cond_1
    iget-object v0, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$6;->this$0:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    invoke-virtual {v0}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->VirtualKeyboardReportStatus()V

    goto :goto_0
.end method
