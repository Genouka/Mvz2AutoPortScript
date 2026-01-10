.class Lcom/genouka/fumo/mvz2/RunnerKeyboardController$KeyboardInputConnectionWrapper;
.super Landroid/view/inputmethod/InputConnectionWrapper;
.source "RunnerKeyboardController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genouka/fumo/mvz2/RunnerKeyboardController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyboardInputConnectionWrapper"
.end annotation


# instance fields
.field protected m_inputConnection:Landroid/view/inputmethod/InputConnection;

.field protected m_keyboardController:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

.field final synthetic this$0:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;


# direct methods
.method public constructor <init>(Lcom/genouka/fumo/mvz2/RunnerKeyboardController;Landroid/view/inputmethod/InputConnection;ZLcom/genouka/fumo/mvz2/RunnerKeyboardController;)V
    .locals 1
    .param p2, "target"    # Landroid/view/inputmethod/InputConnection;
    .param p3, "mutable"    # Z
    .param p4, "controller"    # Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    .prologue
    const/4 v0, 0x0

    .line 105
    iput-object p1, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$KeyboardInputConnectionWrapper;->this$0:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    .line 106
    invoke-direct {p0, p2, p3}, Landroid/view/inputmethod/InputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;Z)V

    .line 101
    iput-object v0, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$KeyboardInputConnectionWrapper;->m_keyboardController:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    .line 102
    iput-object v0, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$KeyboardInputConnectionWrapper;->m_inputConnection:Landroid/view/inputmethod/InputConnection;

    .line 107
    iput-object p4, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$KeyboardInputConnectionWrapper;->m_keyboardController:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    .line 108
    iput-object p2, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$KeyboardInputConnectionWrapper;->m_inputConnection:Landroid/view/inputmethod/InputConnection;

    .line 109
    return-void
.end method

.method private handleBackspaceEvent()Z
    .locals 5

    .prologue
    const/16 v4, 0x1103

    const/16 v2, 0x43

    const/4 v3, 0x0

    .line 122
    iget-object v1, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$KeyboardInputConnectionWrapper;->this$0:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    invoke-static {v1}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->access$000(Lcom/genouka/fumo/mvz2/RunnerKeyboardController;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 124
    invoke-static {v3, v2, v3, v4}, Lcom/yoyogames/runner/RunnerJNILib;->KeyEvent(IIII)V

    .line 125
    const/4 v1, 0x1

    invoke-static {v1, v2, v3, v4}, Lcom/yoyogames/runner/RunnerJNILib;->KeyEvent(IIII)V

    .line 133
    :goto_0
    return v3

    .line 129
    :cond_0
    iget-object v1, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$KeyboardInputConnectionWrapper;->this$0:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    invoke-static {v1}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->access$100(Lcom/genouka/fumo/mvz2/RunnerKeyboardController;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "currentText":Ljava/lang/String;
    iget-object v1, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$KeyboardInputConnectionWrapper;->m_keyboardController:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->SetInputString(Ljava/lang/String;Z)V

    goto :goto_0
.end method


# virtual methods
.method public deleteSurroundingText(II)Z
    .locals 1
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I

    .prologue
    .line 153
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    if-nez p2, :cond_0

    .line 156
    invoke-direct {p0}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$KeyboardInputConnectionWrapper;->handleBackspaceEvent()Z

    move-result v0

    .line 159
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->deleteSurroundingText(II)Z

    move-result v0

    goto :goto_0
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 140
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x43

    if-ne v0, v1, :cond_0

    .line 143
    invoke-direct {p0}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$KeyboardInputConnectionWrapper;->handleBackspaceEvent()Z

    move-result v0

    .line 146
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/inputmethod/InputConnectionWrapper;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setComposingRegion(II)Z
    .locals 9
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const/4 v8, 0x1

    .line 167
    move v5, p1

    .line 168
    .local v5, "newStartingIndex":I
    if-lez v5, :cond_1

    .line 170
    const-string v3, ""

    .line 171
    .local v3, "currentText":Ljava/lang/String;
    new-instance v6, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v6}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$KeyboardInputConnectionWrapper;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v2

    .line 172
    .local v2, "currentExtractedText":Landroid/view/inputmethod/ExtractedText;
    if-eqz v2, :cond_0

    iget-object v6, v2, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz v6, :cond_0

    .line 173
    iget-object v6, v2, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 177
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 178
    .local v4, "currentTextLength":I
    if-lez v4, :cond_1

    .line 181
    add-int/lit8 v6, v4, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 184
    :goto_0
    if-lez v5, :cond_1

    .line 188
    add-int/lit8 v6, v5, -0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 189
    .local v0, "currentChar":C
    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    .line 193
    .local v1, "currentCharAsStr":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-eq v6, v8, :cond_1

    const-string v6, "\\p{Punct}"

    invoke-static {v6, v1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v6

    if-ne v6, v8, :cond_2

    .line 205
    .end local v0    # "currentChar":C
    .end local v1    # "currentCharAsStr":Ljava/lang/String;
    .end local v2    # "currentExtractedText":Landroid/view/inputmethod/ExtractedText;
    .end local v3    # "currentText":Ljava/lang/String;
    .end local v4    # "currentTextLength":I
    :cond_1
    invoke-super {p0, v5, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->setComposingRegion(II)Z

    move-result v6

    return v6

    .line 199
    .restart local v0    # "currentChar":C
    .restart local v1    # "currentCharAsStr":Ljava/lang/String;
    .restart local v2    # "currentExtractedText":Landroid/view/inputmethod/ExtractedText;
    .restart local v3    # "currentText":Ljava/lang/String;
    .restart local v4    # "currentTextLength":I
    :cond_2
    add-int/lit8 v5, v5, -0x1

    .line 200
    goto :goto_0
.end method

.method public setTarget(Landroid/view/inputmethod/InputConnection;)V
    .locals 0
    .param p1, "target"    # Landroid/view/inputmethod/InputConnection;

    .prologue
    .line 116
    invoke-super {p0, p1}, Landroid/view/inputmethod/InputConnectionWrapper;->setTarget(Landroid/view/inputmethod/InputConnection;)V

    .line 117
    iput-object p1, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$KeyboardInputConnectionWrapper;->m_inputConnection:Landroid/view/inputmethod/InputConnection;

    .line 118
    return-void
.end method
