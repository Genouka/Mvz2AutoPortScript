.class Lcom/genouka/fumo/mvz2/RunnerKeyboardController$5;
.super Ljava/lang/Object;
.source "RunnerKeyboardController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->VirtualKeyboardToggle(ZIIIZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

.field final synthetic val$_autoCapitalizationType:I

.field final synthetic val$_inputString:Ljava/lang/String;

.field final synthetic val$_keyboardType:I

.field final synthetic val$_predictiveTextEnabled:Z

.field final synthetic val$_returnKeyType:I

.field final synthetic val$_toggleOn:Z


# direct methods
.method constructor <init>(Lcom/genouka/fumo/mvz2/RunnerKeyboardController;ZIIZILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    .prologue
    .line 535
    iput-object p1, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$5;->this$0:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    iput-boolean p2, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$5;->val$_toggleOn:Z

    iput p3, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$5;->val$_keyboardType:I

    iput p4, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$5;->val$_autoCapitalizationType:I

    iput-boolean p5, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$5;->val$_predictiveTextEnabled:Z

    iput p6, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$5;->val$_returnKeyType:I

    iput-object p7, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$5;->val$_inputString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 540
    iget-boolean v3, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$5;->val$_toggleOn:Z

    if-ne v3, v5, :cond_2

    .line 543
    const/4 v1, 0x0

    .line 544
    .local v1, "inputType":I
    const/4 v2, 0x0

    .line 547
    .local v2, "returnText":Ljava/lang/String;
    const/high16 v0, 0x32000000

    .line 552
    .local v0, "imeType":I
    iget v3, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$5;->val$_keyboardType:I

    packed-switch v3, :pswitch_data_0

    .line 564
    :goto_0
    iget v3, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$5;->val$_autoCapitalizationType:I

    packed-switch v3, :pswitch_data_1

    .line 572
    :goto_1
    iget-boolean v3, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$5;->val$_predictiveTextEnabled:Z

    if-nez v3, :cond_0

    .line 575
    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v4, "HTC"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 576
    const/high16 v3, 0x80000

    or-int/2addr v1, v3

    .line 582
    :cond_0
    :goto_2
    iget v3, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$5;->val$_returnKeyType:I

    packed-switch v3, :pswitch_data_2

    .line 595
    or-int/lit8 v0, v0, 0x0

    .line 599
    :goto_3
    const v3, -0x10001

    and-int/2addr v0, v3

    .line 600
    const v3, -0x8001

    and-int/2addr v0, v3

    .line 603
    iget-object v3, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$5;->this$0:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    iget v4, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$5;->val$_keyboardType:I

    invoke-static {v3, v4}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->access$502(Lcom/genouka/fumo/mvz2/RunnerKeyboardController;I)I

    .line 604
    iget-object v3, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$5;->this$0:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    iget v4, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$5;->val$_returnKeyType:I

    invoke-static {v3, v4}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->access$602(Lcom/genouka/fumo/mvz2/RunnerKeyboardController;I)I

    .line 605
    iget-object v3, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$5;->this$0:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    iget v4, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$5;->val$_autoCapitalizationType:I

    invoke-static {v3, v4}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->access$702(Lcom/genouka/fumo/mvz2/RunnerKeyboardController;I)I

    .line 606
    iget-object v3, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$5;->this$0:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    iget-boolean v4, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$5;->val$_predictiveTextEnabled:Z

    invoke-static {v3, v4}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->access$002(Lcom/genouka/fumo/mvz2/RunnerKeyboardController;Z)Z

    .line 609
    iget-object v3, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$5;->this$0:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    invoke-static {v3}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->access$100(Lcom/genouka/fumo/mvz2/RunnerKeyboardController;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 610
    iget-object v3, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$5;->this$0:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    invoke-static {v3}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->access$100(Lcom/genouka/fumo/mvz2/RunnerKeyboardController;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Landroid/widget/EditText;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    .line 611
    iget-object v3, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$5;->this$0:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    invoke-static {v3}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->access$100(Lcom/genouka/fumo/mvz2/RunnerKeyboardController;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 612
    iget-object v3, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$5;->this$0:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    invoke-static {v3}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->access$100(Lcom/genouka/fumo/mvz2/RunnerKeyboardController;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 614
    iget-object v3, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$5;->this$0:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    iget-object v4, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$5;->val$_inputString:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->SetInputString(Ljava/lang/String;Z)V

    .line 617
    iget-object v3, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$5;->this$0:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    invoke-static {v3}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->access$900(Lcom/genouka/fumo/mvz2/RunnerKeyboardController;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    iget-object v4, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$5;->this$0:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    invoke-static {v4}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->access$100(Lcom/genouka/fumo/mvz2/RunnerKeyboardController;)Landroid/widget/EditText;

    move-result-object v4

    iget-object v5, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$5;->this$0:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    invoke-static {v5}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->access$800(Lcom/genouka/fumo/mvz2/RunnerKeyboardController;)Lcom/genouka/fumo/mvz2/RunnerKeyboardController$KeyboardResultReceiver;

    move-result-object v5

    invoke-virtual {v3, v4, v6, v5}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    .line 625
    .end local v0    # "imeType":I
    .end local v1    # "inputType":I
    .end local v2    # "returnText":Ljava/lang/String;
    :goto_4
    return-void

    .line 554
    .restart local v0    # "imeType":I
    .restart local v1    # "inputType":I
    .restart local v2    # "returnText":Ljava/lang/String;
    :pswitch_0
    or-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 555
    :pswitch_1
    or-int/lit8 v1, v1, 0x0

    goto/16 :goto_0

    .line 556
    :pswitch_2
    or-int/lit8 v1, v1, 0x10

    goto/16 :goto_0

    .line 557
    :pswitch_3
    or-int/lit8 v1, v1, 0x20

    goto/16 :goto_0

    .line 558
    :pswitch_4
    or-int/lit8 v1, v1, 0x2

    goto/16 :goto_0

    .line 559
    :pswitch_5
    or-int/lit8 v1, v1, 0x3

    goto/16 :goto_0

    .line 560
    :pswitch_6
    or-int/lit8 v1, v1, 0x60

    goto/16 :goto_0

    .line 566
    :pswitch_7
    or-int/lit16 v1, v1, 0x2000

    goto/16 :goto_1

    .line 567
    :pswitch_8
    or-int/lit16 v1, v1, 0x4000

    goto/16 :goto_1

    .line 568
    :pswitch_9
    or-int/lit16 v1, v1, 0x1000

    goto/16 :goto_1

    .line 578
    :cond_1
    const v3, 0x80090

    or-int/2addr v1, v3

    goto/16 :goto_2

    .line 584
    :pswitch_a
    or-int/lit8 v0, v0, 0x2

    const-string v2, "Go"

    goto/16 :goto_3

    .line 585
    :pswitch_b
    or-int/lit8 v0, v0, 0x3

    const-string v2, "Google"

    goto/16 :goto_3

    .line 586
    :pswitch_c
    or-int/lit8 v0, v0, 0x2

    const-string v2, "Join"

    goto/16 :goto_3

    .line 587
    :pswitch_d
    or-int/lit8 v0, v0, 0x5

    const-string v2, "Next"

    goto/16 :goto_3

    .line 588
    :pswitch_e
    or-int/lit8 v0, v0, 0x2

    const-string v2, "Route"

    goto/16 :goto_3

    .line 589
    :pswitch_f
    or-int/lit8 v0, v0, 0x3

    goto/16 :goto_3

    .line 590
    :pswitch_10
    or-int/lit8 v0, v0, 0x4

    goto/16 :goto_3

    .line 591
    :pswitch_11
    or-int/lit8 v0, v0, 0x3

    const-string v2, "Yahoo"

    goto/16 :goto_3

    .line 592
    :pswitch_12
    or-int/lit8 v0, v0, 0x6

    goto/16 :goto_3

    .line 593
    :pswitch_13
    or-int/lit8 v0, v0, 0x5

    const-string v2, "Continue"

    goto/16 :goto_3

    .line 594
    :pswitch_14
    or-int/lit8 v0, v0, 0x2

    const-string v2, "Emergency Call"

    goto/16 :goto_3

    .line 622
    .end local v0    # "imeType":I
    .end local v1    # "inputType":I
    .end local v2    # "returnText":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$5;->this$0:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    invoke-static {v3}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->access$100(Lcom/genouka/fumo/mvz2/RunnerKeyboardController;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->clearFocus()V

    .line 623
    iget-object v3, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$5;->this$0:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    invoke-static {v3}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->access$900(Lcom/genouka/fumo/mvz2/RunnerKeyboardController;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    iget-object v4, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$5;->this$0:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    invoke-static {v4}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->access$100(Lcom/genouka/fumo/mvz2/RunnerKeyboardController;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    iget-object v5, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$5;->this$0:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    invoke-static {v5}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->access$800(Lcom/genouka/fumo/mvz2/RunnerKeyboardController;)Lcom/genouka/fumo/mvz2/RunnerKeyboardController$KeyboardResultReceiver;

    move-result-object v5

    invoke-virtual {v3, v4, v6, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z

    goto/16 :goto_4

    .line 552
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 564
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 582
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch
.end method
