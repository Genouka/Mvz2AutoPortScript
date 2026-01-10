.class Lcom/genouka/fumo/mvz2/RunnerKeyboardController$KeyboardInputEditText;
.super Landroid/widget/EditText;
.source "RunnerKeyboardController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genouka/fumo/mvz2/RunnerKeyboardController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyboardInputEditText"
.end annotation


# instance fields
.field protected m_keyboardController:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

.field final synthetic this$0:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;


# direct methods
.method public constructor <init>(Lcom/genouka/fumo/mvz2/RunnerKeyboardController;Landroid/content/Context;Lcom/genouka/fumo/mvz2/RunnerKeyboardController;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "controller"    # Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$KeyboardInputEditText;->this$0:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    .line 216
    invoke-direct {p0, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 212
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$KeyboardInputEditText;->m_keyboardController:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    .line 217
    iput-object p3, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$KeyboardInputEditText;->m_keyboardController:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    .line 218
    return-void
.end method


# virtual methods
.method public isSuggestionsEnabled()Z
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$KeyboardInputEditText;->m_keyboardController:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$KeyboardInputEditText;->m_keyboardController:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    invoke-virtual {v0}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->GetPredictiveTextEnabled()Z

    move-result v0

    .line 273
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/EditText;->isSuggestionsEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method public onCheckIsTextEditor()Z
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 5
    .param p1, "attrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 281
    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 282
    .local v0, "connection":Landroid/view/inputmethod/InputConnection;
    new-instance v1, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$KeyboardInputConnectionWrapper;

    iget-object v2, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$KeyboardInputEditText;->this$0:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$KeyboardInputEditText;->m_keyboardController:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$KeyboardInputConnectionWrapper;-><init>(Lcom/genouka/fumo/mvz2/RunnerKeyboardController;Landroid/view/inputmethod/InputConnection;ZLcom/genouka/fumo/mvz2/RunnerKeyboardController;)V

    .line 283
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    return-object v1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 223
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 239
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x61

    if-ne p1, v0, :cond_1

    .line 240
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getSource()I

    move-result v0

    and-int/lit16 v0, v0, 0x401

    const/16 v1, 0x401

    if-ne v0, v1, :cond_1

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$KeyboardInputEditText;->this$0:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    invoke-virtual {v0}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->VirtualKeyboardHide()V

    .line 246
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 229
    const/4 v0, 0x0

    return v0
.end method

.method protected onSelectionChanged(II)V
    .locals 2
    .param p1, "selStart"    # I
    .param p2, "selEnd"    # I

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$KeyboardInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v0

    .line 255
    .local v0, "strLen":I
    invoke-virtual {p0, v0}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$KeyboardInputEditText;->setSelection(I)V

    .line 256
    return-void
.end method
