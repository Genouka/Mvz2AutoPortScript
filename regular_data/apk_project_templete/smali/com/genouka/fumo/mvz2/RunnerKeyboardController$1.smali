.class Lcom/genouka/fumo/mvz2/RunnerKeyboardController$1;
.super Ljava/lang/Object;
.source "RunnerKeyboardController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->InitTextField()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

.field final synthetic val$keyboardController:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;


# direct methods
.method constructor <init>(Lcom/genouka/fumo/mvz2/RunnerKeyboardController;Lcom/genouka/fumo/mvz2/RunnerKeyboardController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    .prologue
    .line 361
    iput-object p1, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$1;->this$0:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    iput-object p2, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$1;->val$keyboardController:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 366
    iget-object v2, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$1;->this$0:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    new-instance v3, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$KeyboardInputEditText;

    iget-object v4, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$1;->this$0:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    iget-object v5, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$1;->this$0:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    invoke-static {v5}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->access$200(Lcom/genouka/fumo/mvz2/RunnerKeyboardController;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$1;->val$keyboardController:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    invoke-direct {v3, v4, v5, v6}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$KeyboardInputEditText;-><init>(Lcom/genouka/fumo/mvz2/RunnerKeyboardController;Landroid/content/Context;Lcom/genouka/fumo/mvz2/RunnerKeyboardController;)V

    invoke-static {v2, v3}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->access$102(Lcom/genouka/fumo/mvz2/RunnerKeyboardController;Landroid/widget/EditText;)Landroid/widget/EditText;

    .line 369
    iget-object v2, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$1;->this$0:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    invoke-static {v2}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->access$100(Lcom/genouka/fumo/mvz2/RunnerKeyboardController;)Landroid/widget/EditText;

    move-result-object v2

    new-instance v3, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$1$1;

    invoke-direct {v3, p0}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$1$1;-><init>(Lcom/genouka/fumo/mvz2/RunnerKeyboardController$1;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 430
    iget-object v2, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$1;->this$0:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    invoke-static {v2}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->access$100(Lcom/genouka/fumo/mvz2/RunnerKeyboardController;)Landroid/widget/EditText;

    move-result-object v2

    new-instance v3, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$1$2;

    invoke-direct {v3, p0}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$1$2;-><init>(Lcom/genouka/fumo/mvz2/RunnerKeyboardController$1;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 443
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 444
    .local v0, "layout":Landroid/widget/RelativeLayout$LayoutParams;
    iput v9, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 445
    iput v9, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 446
    iget-object v2, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$1;->this$0:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    invoke-static {v2}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->access$100(Lcom/genouka/fumo/mvz2/RunnerKeyboardController;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 448
    iget-object v2, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$1;->this$0:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    invoke-static {v2}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->access$100(Lcom/genouka/fumo/mvz2/RunnerKeyboardController;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 449
    iget-object v2, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$1;->this$0:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    invoke-static {v2}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->access$100(Lcom/genouka/fumo/mvz2/RunnerKeyboardController;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 450
    iget-object v2, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$1;->this$0:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    invoke-static {v2}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->access$100(Lcom/genouka/fumo/mvz2/RunnerKeyboardController;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 454
    iget-object v2, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$1;->this$0:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    invoke-static {v2}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->access$100(Lcom/genouka/fumo/mvz2/RunnerKeyboardController;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 455
    iget-object v2, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$1;->this$0:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    invoke-static {v2}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->access$100(Lcom/genouka/fumo/mvz2/RunnerKeyboardController;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/widget/EditText;->setTextColor(I)V

    .line 456
    iget-object v2, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$1;->this$0:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    invoke-static {v2}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->access$100(Lcom/genouka/fumo/mvz2/RunnerKeyboardController;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 464
    iget-object v2, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$1;->this$0:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    invoke-static {v2}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->access$400(Lcom/genouka/fumo/mvz2/RunnerKeyboardController;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 465
    .local v1, "parentView":Landroid/view/ViewGroup;
    const/high16 v2, 0x20000

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 466
    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 467
    iget-object v2, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$1;->this$0:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    invoke-static {v2}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->access$100(Lcom/genouka/fumo/mvz2/RunnerKeyboardController;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 470
    iget-object v2, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$1;->this$0:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    const-string v3, ""

    invoke-virtual {v2, v3, v7}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->SetInputString(Ljava/lang/String;Z)V

    .line 471
    return-void
.end method
