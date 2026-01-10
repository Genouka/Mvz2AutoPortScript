.class Lcom/genouka/fumo/mvz2/RunnerKeyboardController$1$1;
.super Ljava/lang/Object;
.source "RunnerKeyboardController.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 370
    iput-object p1, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$1$1;->this$1:Lcom/genouka/fumo/mvz2/RunnerKeyboardController$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "text"    # Landroid/text/Editable;

    .prologue
    .line 426
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "lengthReplaced"    # I
    .param p4, "lengthNew"    # I

    .prologue
    .line 374
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 8
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "lengthReplaced"    # I
    .param p4, "lengthNew"    # I

    .prologue
    const/16 v7, 0x1103

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 379
    iget-object v4, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$1$1;->this$1:Lcom/genouka/fumo/mvz2/RunnerKeyboardController$1;

    iget-object v4, v4, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$1;->this$0:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    invoke-static {v4}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->access$300(Lcom/genouka/fumo/mvz2/RunnerKeyboardController;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 421
    :cond_0
    :goto_0
    return-void

    .line 388
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 389
    .local v3, "textInserted":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 391
    iget-object v4, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$1$1;->this$1:Lcom/genouka/fumo/mvz2/RunnerKeyboardController$1;

    iget-object v4, v4, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$1;->this$0:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    invoke-static {v4}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->access$000(Lcom/genouka/fumo/mvz2/RunnerKeyboardController;)Z

    move-result v4

    if-ne v4, v6, :cond_0

    .line 394
    new-array v0, v6, [C

    aput-char v5, v0, v5

    .line 395
    .local v0, "emptyStringChars":[C
    invoke-static {v0, v5}, Lcom/yoyogames/runner/RunnerJNILib;->OnVirtualKeyboardTextInserted([CI)V

    goto :goto_0

    .line 401
    .end local v0    # "emptyStringChars":[C
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 404
    .local v1, "lastCharInserted":I
    iget-object v4, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$1$1;->this$1:Lcom/genouka/fumo/mvz2/RunnerKeyboardController$1;

    iget-object v4, v4, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$1;->this$0:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    invoke-static {v4}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->access$000(Lcom/genouka/fumo/mvz2/RunnerKeyboardController;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 408
    invoke-static {v5, v5, v1, v7}, Lcom/yoyogames/runner/RunnerJNILib;->KeyEvent(IIII)V

    .line 409
    invoke-static {v6, v5, v1, v7}, Lcom/yoyogames/runner/RunnerJNILib;->KeyEvent(IIII)V

    goto :goto_0

    .line 417
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    new-array v2, v4, [C

    .line 418
    .local v2, "textChars":[C
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v5, v4, v2, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 419
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v2, v4}, Lcom/yoyogames/runner/RunnerJNILib;->OnVirtualKeyboardTextInserted([CI)V

    goto :goto_0
.end method
