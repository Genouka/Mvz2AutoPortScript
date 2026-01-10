.class public Lcom/genouka/fumo/mvz2/RunnerKeyboardController;
.super Ljava/lang/Object;
.source "RunnerKeyboardController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genouka/fumo/mvz2/RunnerKeyboardController$KeyboardInputEditText;,
        Lcom/genouka/fumo/mvz2/RunnerKeyboardController$KeyboardInputConnectionWrapper;,
        Lcom/genouka/fumo/mvz2/RunnerKeyboardController$KeyboardLayoutListener;,
        Lcom/genouka/fumo/mvz2/RunnerKeyboardController$KeyboardResultReceiver;
    }
.end annotation


# static fields
.field public static final DEBUG_SHOW_HIDDEN_TEXT_FIELD:Z = false

.field public static final KEYBOARD_EVENT_SOURCE_DEFAULT:I = 0x1103

.field public static final KEYBOARD_STATUS_HIDDEN:Ljava/lang/String; = "hidden"

.field public static final KEYBOARD_STATUS_HIDING:Ljava/lang/String; = "hiding"

.field public static final KEYBOARD_STATUS_SHOWING:Ljava/lang/String; = "showing"

.field public static final KEYBOARD_STATUS_VISIBLE:Ljava/lang/String; = "visible"

.field private static ms_estimatedKeyboardHeight:I


# instance fields
.field private m_activityView:Landroid/view/View;

.field private m_context:Landroid/content/Context;

.field private m_currentAutocapitalizationType:I

.field private m_currentKeyboardHeight:I

.field private m_currentKeyboardType:I

.field private m_currentPredictiveTextEnabled:Z

.field private m_currentReturnKeyType:I

.field private m_editText:Landroid/widget/EditText;

.field private m_inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private m_keyboardStatus:Ljava/lang/String;

.field private m_physicalKeyboardConnected:Z

.field private m_setTextHandlerEnabled:Z

.field private m_viewActiveRect:Landroid/graphics/Rect;

.field private m_viewHandler:Landroid/os/Handler;

.field private m_virtualKeyboardActive:Z

.field private m_virtualKeyboardStatusRequested:Z

.field private m_virtualKeyboardToggleResultReceiver:Lcom/genouka/fumo/mvz2/RunnerKeyboardController$KeyboardResultReceiver;

.field private m_virtualKeyboardVisibilityCheckAdjustReceiver:Lcom/genouka/fumo/mvz2/RunnerKeyboardController$KeyboardResultReceiver;

.field private m_virtualKeyboardVisibilityCheckResultReceiver:Lcom/genouka/fumo/mvz2/RunnerKeyboardController$KeyboardResultReceiver;

.field private m_virtualKeyboardVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 309
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/16 v0, 0x30

    :goto_0
    add-int/lit8 v0, v0, 0x64

    sput v0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->ms_estimatedKeyboardHeight:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;Landroid/os/Handler;)V
    .locals 3
    .param p1, "_context"    # Landroid/content/Context;
    .param p2, "_imm"    # Landroid/view/inputmethod/InputMethodManager;
    .param p3, "_activityView"    # Landroid/view/View;
    .param p4, "_viewHandler"    # Landroid/os/Handler;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    iput-object v2, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->m_context:Landroid/content/Context;

    .line 292
    iput-object v2, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->m_inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 293
    iput-object v2, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->m_activityView:Landroid/view/View;

    .line 294
    iput-object v2, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->m_viewHandler:Landroid/os/Handler;

    .line 296
    const-string v0, "hidden"

    iput-object v0, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->m_keyboardStatus:Ljava/lang/String;

    .line 297
    iput-boolean v1, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->m_virtualKeyboardActive:Z

    .line 298
    iput-boolean v1, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->m_virtualKeyboardVisible:Z

    .line 299
    iput-boolean v1, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->m_virtualKeyboardStatusRequested:Z

    .line 300
    iput-boolean v1, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->m_physicalKeyboardConnected:Z

    .line 302
    iput-object v2, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->m_virtualKeyboardToggleResultReceiver:Lcom/genouka/fumo/mvz2/RunnerKeyboardController$KeyboardResultReceiver;

    .line 303
    iput-object v2, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->m_virtualKeyboardVisibilityCheckAdjustReceiver:Lcom/genouka/fumo/mvz2/RunnerKeyboardController$KeyboardResultReceiver;

    .line 304
    iput-object v2, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->m_virtualKeyboardVisibilityCheckResultReceiver:Lcom/genouka/fumo/mvz2/RunnerKeyboardController$KeyboardResultReceiver;

    .line 306
    iput-object v2, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->m_editText:Landroid/widget/EditText;

    .line 308
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->m_viewActiveRect:Landroid/graphics/Rect;

    .line 311
    iput v1, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->m_currentKeyboardType:I

    .line 312
    iput v1, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->m_currentReturnKeyType:I

    .line 313
    iput v1, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->m_currentAutocapitalizationType:I

    .line 314
    iput v1, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->m_currentKeyboardHeight:I

    .line 315
    iput-boolean v1, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->m_currentPredictiveTextEnabled:Z

    .line 317
    iput-boolean v1, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->m_setTextHandlerEnabled:Z

    .line 325
    iput-object p1, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->m_context:Landroid/content/Context;

    .line 326
    iput-object p2, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->m_inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 327
    iput-object p3, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->m_activityView:Landroid/view/View;

    .line 328
    iput-object p4, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->m_viewHandler:Landroid/os/Handler;

    .line 329
    return-void
.end method

.method public static Create(Landroid/content/Context;Landroid/view/View;Landroid/os/Handler;)Lcom/genouka/fumo/mvz2/RunnerKeyboardController;
    .locals 3
    .param p0, "_context"    # Landroid/content/Context;
    .param p1, "_activityView"    # Landroid/view/View;
    .param p2, "_viewHandler"    # Landroid/os/Handler;

    .prologue
    .line 334
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 335
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-nez v0, :cond_0

    .line 338
    const/4 v1, 0x0

    .line 345
    :goto_0
    return-object v1

    .line 341
    :cond_0
    new-instance v1, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;-><init>(Landroid/content/Context;Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;Landroid/os/Handler;)V

    .line 342
    .local v1, "newController":Lcom/genouka/fumo/mvz2/RunnerKeyboardController;
    invoke-direct {v1}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->Init()V

    goto :goto_0
.end method

.method private Init()V
    .locals 0

    .prologue
    .line 351
    invoke-direct {p0}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->InitTextField()V

    .line 352
    invoke-direct {p0}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->InitReceivers()V

    .line 353
    return-void
.end method

.method private InitReceivers()V
    .locals 2

    .prologue
    .line 479
    new-instance v0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$2;

    invoke-direct {v0, p0, p0}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$2;-><init>(Lcom/genouka/fumo/mvz2/RunnerKeyboardController;Lcom/genouka/fumo/mvz2/RunnerKeyboardController;)V

    iput-object v0, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->m_virtualKeyboardToggleResultReceiver:Lcom/genouka/fumo/mvz2/RunnerKeyboardController$KeyboardResultReceiver;

    .line 506
    new-instance v0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$3;

    invoke-direct {v0, p0, p0}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$3;-><init>(Lcom/genouka/fumo/mvz2/RunnerKeyboardController;Lcom/genouka/fumo/mvz2/RunnerKeyboardController;)V

    iput-object v0, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->m_virtualKeyboardVisibilityCheckAdjustReceiver:Lcom/genouka/fumo/mvz2/RunnerKeyboardController$KeyboardResultReceiver;

    .line 517
    new-instance v0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$4;

    invoke-direct {v0, p0, p0}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$4;-><init>(Lcom/genouka/fumo/mvz2/RunnerKeyboardController;Lcom/genouka/fumo/mvz2/RunnerKeyboardController;)V

    iput-object v0, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->m_virtualKeyboardVisibilityCheckResultReceiver:Lcom/genouka/fumo/mvz2/RunnerKeyboardController$KeyboardResultReceiver;

    .line 527
    iget-object v0, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->m_activityView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$KeyboardLayoutListener;

    invoke-direct {v1, p0, p0}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$KeyboardLayoutListener;-><init>(Lcom/genouka/fumo/mvz2/RunnerKeyboardController;Lcom/genouka/fumo/mvz2/RunnerKeyboardController;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 528
    return-void
.end method

.method private InitTextField()V
    .locals 3

    .prologue
    .line 358
    move-object v0, p0

    .line 360
    .local v0, "keyboardController":Lcom/genouka/fumo/mvz2/RunnerKeyboardController;
    iget-object v1, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->m_viewHandler:Landroid/os/Handler;

    new-instance v2, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$1;

    invoke-direct {v2, p0, v0}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$1;-><init>(Lcom/genouka/fumo/mvz2/RunnerKeyboardController;Lcom/genouka/fumo/mvz2/RunnerKeyboardController;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 473
    return-void
.end method

.method static synthetic access$000(Lcom/genouka/fumo/mvz2/RunnerKeyboardController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->m_currentPredictiveTextEnabled:Z

    return v0
.end method

.method static synthetic access$002(Lcom/genouka/fumo/mvz2/RunnerKeyboardController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/genouka/fumo/mvz2/RunnerKeyboardController;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->m_currentPredictiveTextEnabled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/genouka/fumo/mvz2/RunnerKeyboardController;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->m_editText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/genouka/fumo/mvz2/RunnerKeyboardController;)Lcom/genouka/fumo/mvz2/RunnerKeyboardController$KeyboardResultReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->m_virtualKeyboardVisibilityCheckAdjustReceiver:Lcom/genouka/fumo/mvz2/RunnerKeyboardController$KeyboardResultReceiver;

    return-object v0
.end method

.method static synthetic access$102(Lcom/genouka/fumo/mvz2/RunnerKeyboardController;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0
    .param p0, "x0"    # Lcom/genouka/fumo/mvz2/RunnerKeyboardController;
    .param p1, "x1"    # Landroid/widget/EditText;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->m_editText:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic access$200(Lcom/genouka/fumo/mvz2/RunnerKeyboardController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->m_context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/genouka/fumo/mvz2/RunnerKeyboardController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->m_setTextHandlerEnabled:Z

    return v0
.end method

.method static synthetic access$400(Lcom/genouka/fumo/mvz2/RunnerKeyboardController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->m_activityView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$502(Lcom/genouka/fumo/mvz2/RunnerKeyboardController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/genouka/fumo/mvz2/RunnerKeyboardController;
    .param p1, "x1"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->m_currentKeyboardType:I

    return p1
.end method

.method static synthetic access$602(Lcom/genouka/fumo/mvz2/RunnerKeyboardController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/genouka/fumo/mvz2/RunnerKeyboardController;
    .param p1, "x1"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->m_currentReturnKeyType:I

    return p1
.end method

.method static synthetic access$702(Lcom/genouka/fumo/mvz2/RunnerKeyboardController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/genouka/fumo/mvz2/RunnerKeyboardController;
    .param p1, "x1"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->m_currentAutocapitalizationType:I

    return p1
.end method

.method static synthetic access$800(Lcom/genouka/fumo/mvz2/RunnerKeyboardController;)Lcom/genouka/fumo/mvz2/RunnerKeyboardController$KeyboardResultReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->m_virtualKeyboardToggleResultReceiver:Lcom/genouka/fumo/mvz2/RunnerKeyboardController$KeyboardResultReceiver;

    return-object v0
.end method

.method static synthetic access$900(Lcom/genouka/fumo/mvz2/RunnerKeyboardController;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .param p0, "x0"    # Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->m_inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method


# virtual methods
.method public GetInputString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 819
    iget-object v0, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->m_editText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 821
    iget-object v0, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->m_editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 824
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public GetPhysicalKeyboardConnected()Z
    .locals 1

    .prologue
    .line 786
    iget-boolean v0, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->m_physicalKeyboardConnected:Z

    return v0
.end method

.method public GetPredictiveTextEnabled()Z
    .locals 1

    .prologue
    .line 796
    iget-boolean v0, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->m_currentPredictiveTextEnabled:Z

    return v0
.end method

.method public GetVirtualKeyboardActive()Z
    .locals 1

    .prologue
    .line 764
    iget-boolean v0, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->m_virtualKeyboardActive:Z

    return v0
.end method

.method public GetVirtualKeyboardHeightCached()I
    .locals 1

    .prologue
    .line 791
    iget v0, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->m_currentKeyboardHeight:I

    return v0
.end method

.method public GetVirtualKeyboardVisible()Z
    .locals 1

    .prologue
    .line 775
    iget-boolean v0, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->m_virtualKeyboardVisible:Z

    return v0
.end method

.method public OnActivityLayoutChanged()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 727
    invoke-virtual {p0}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->VirtualKeyboardGetHeight()I

    move-result v1

    .line 728
    .local v1, "keyboardHeight":I
    sget v3, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->ms_estimatedKeyboardHeight:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->m_activityView:Landroid/view/View;

    .line 730
    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 728
    invoke-static {v2, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v0, v3

    .line 731
    .local v0, "estimatedKeyboardHeightTransformed":I
    if-lt v1, v0, :cond_0

    .line 732
    .local v2, "keyboardVisible":Z
    :goto_0
    iget-boolean v3, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->m_virtualKeyboardVisible:Z

    if-ne v2, v3, :cond_1

    .line 743
    :goto_1
    return-void

    .line 731
    .end local v2    # "keyboardVisible":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 735
    .restart local v2    # "keyboardVisible":Z
    :cond_1
    invoke-virtual {p0, v2}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->SetVirtualKeyboardVisible(Z)V

    .line 737
    if-eqz v2, :cond_2

    .line 738
    const-string v3, "visible"

    iput-object v3, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->m_keyboardStatus:Ljava/lang/String;

    .line 742
    :goto_2
    invoke-virtual {p0}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->VirtualKeyboardReportStatus()V

    goto :goto_1

    .line 740
    :cond_2
    const-string v3, "hidden"

    iput-object v3, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->m_keyboardStatus:Ljava/lang/String;

    goto :goto_2
.end method

.method public OnPhysicalKeyboardKeyEvent(ILandroid/view/KeyEvent;)V
    .locals 0
    .param p1, "_keyCode"    # I
    .param p2, "_event"    # Landroid/view/KeyEvent;

    .prologue
    .line 721
    return-void
.end method

.method public OnVirtualKeyboardVisibilityCheckResult(I)V
    .locals 2
    .param p1, "_resultCode"    # I

    .prologue
    .line 661
    packed-switch p1, :pswitch_data_0

    .line 676
    :goto_0
    iget-object v0, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->m_viewHandler:Landroid/os/Handler;

    new-instance v1, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$6;

    invoke-direct {v1, p0, p1}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$6;-><init>(Lcom/genouka/fumo/mvz2/RunnerKeyboardController;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 696
    return-void

    .line 666
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->SetVirtualKeyboardActive(Z)V

    .line 667
    const-string v0, "hidden"

    iput-object v0, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->m_keyboardStatus:Ljava/lang/String;

    goto :goto_0

    .line 671
    :pswitch_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->SetVirtualKeyboardActive(Z)V

    .line 672
    const-string v0, "visible"

    iput-object v0, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->m_keyboardStatus:Ljava/lang/String;

    goto :goto_0

    .line 661
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public SetInputString(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "_newString"    # Ljava/lang/String;
    .param p2, "_silent"    # Z

    .prologue
    .line 802
    iget-object v0, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->m_editText:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 806
    if-eqz p2, :cond_0

    .line 807
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->m_setTextHandlerEnabled:Z

    .line 809
    :cond_0
    iget-object v0, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->m_editText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 810
    iget-object v0, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->m_editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 812
    if-eqz p2, :cond_1

    .line 813
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->m_setTextHandlerEnabled:Z

    .line 815
    :cond_1
    return-void
.end method

.method public SetPhysicalKeyboardConnected(Z)V
    .locals 0
    .param p1, "_connected"    # Z

    .prologue
    .line 781
    iput-boolean p1, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->m_physicalKeyboardConnected:Z

    .line 782
    return-void
.end method

.method public SetVirtualKeyboardActive(Z)V
    .locals 0
    .param p1, "_active"    # Z

    .prologue
    .line 759
    iput-boolean p1, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->m_virtualKeyboardActive:Z

    .line 760
    return-void
.end method

.method public SetVirtualKeyboardVisible(Z)V
    .locals 0
    .param p1, "_visible"    # Z

    .prologue
    .line 770
    iput-boolean p1, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->m_virtualKeyboardVisible:Z

    .line 771
    return-void
.end method

.method public UpdateKeyboardStatusFromIMMResult(I)V
    .locals 1
    .param p1, "_resultCode"    # I

    .prologue
    .line 747
    packed-switch p1, :pswitch_data_0

    .line 754
    :goto_0
    return-void

    .line 749
    :pswitch_0
    const-string v0, "hiding"

    iput-object v0, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->m_keyboardStatus:Ljava/lang/String;

    goto :goto_0

    .line 750
    :pswitch_1
    const-string v0, "hidden"

    iput-object v0, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->m_keyboardStatus:Ljava/lang/String;

    goto :goto_0

    .line 751
    :pswitch_2
    const-string v0, "showing"

    iput-object v0, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->m_keyboardStatus:Ljava/lang/String;

    goto :goto_0

    .line 752
    :pswitch_3
    const-string v0, "visible"

    iput-object v0, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->m_keyboardStatus:Ljava/lang/String;

    goto :goto_0

    .line 747
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public VirtualKeyboardGetHeight()I
    .locals 4

    .prologue
    .line 701
    iget-object v1, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->m_activityView:Landroid/view/View;

    iget-object v2, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->m_viewActiveRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 702
    iget-object v1, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->m_activityView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->m_viewActiveRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->m_viewActiveRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    sub-int v0, v1, v2

    .line 703
    .local v0, "keyboardHeight":I
    return v0
.end method

.method public VirtualKeyboardGetStatus()Z
    .locals 1

    .prologue
    .line 639
    iget-boolean v0, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->m_virtualKeyboardActive:Z

    return v0
.end method

.method public VirtualKeyboardHide()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 632
    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->GetInputString()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->VirtualKeyboardToggle(ZIIIZLjava/lang/String;)V

    .line 633
    return-void
.end method

.method public VirtualKeyboardReportStatus()V
    .locals 2

    .prologue
    .line 646
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->m_virtualKeyboardStatusRequested:Z

    .line 647
    invoke-virtual {p0}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->VirtualKeyboardGetHeight()I

    move-result v0

    iput v0, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->m_currentKeyboardHeight:I

    .line 648
    iget-object v0, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->m_keyboardStatus:Ljava/lang/String;

    iget v1, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->m_currentKeyboardHeight:I

    invoke-static {v0, v1}, Lcom/yoyogames/runner/RunnerJNILib;->OnVirtualKeyboardStatus(Ljava/lang/String;I)V

    .line 649
    return-void
.end method

.method public VirtualKeyboardToggle(ZIIIZLjava/lang/String;)V
    .locals 9
    .param p1, "_toggleOn"    # Z
    .param p2, "_keyboardType"    # I
    .param p3, "_returnKeyType"    # I
    .param p4, "_autoCapitalizationType"    # I
    .param p5, "_predictiveTextEnabled"    # Z
    .param p6, "_inputString"    # Ljava/lang/String;

    .prologue
    .line 534
    iget-object v8, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->m_viewHandler:Landroid/os/Handler;

    new-instance v0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$5;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p4

    move v5, p5

    move v6, p3

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$5;-><init>(Lcom/genouka/fumo/mvz2/RunnerKeyboardController;ZIIZILjava/lang/String;)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 627
    return-void
.end method
