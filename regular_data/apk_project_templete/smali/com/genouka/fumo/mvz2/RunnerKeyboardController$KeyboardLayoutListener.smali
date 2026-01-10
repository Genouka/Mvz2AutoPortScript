.class Lcom/genouka/fumo/mvz2/RunnerKeyboardController$KeyboardLayoutListener;
.super Ljava/lang/Object;
.source "RunnerKeyboardController.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genouka/fumo/mvz2/RunnerKeyboardController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyboardLayoutListener"
.end annotation


# instance fields
.field protected m_keyboardController:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

.field final synthetic this$0:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;


# direct methods
.method constructor <init>(Lcom/genouka/fumo/mvz2/RunnerKeyboardController;Lcom/genouka/fumo/mvz2/RunnerKeyboardController;)V
    .locals 1
    .param p2, "controller"    # Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$KeyboardLayoutListener;->this$0:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$KeyboardLayoutListener;->m_keyboardController:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    .line 88
    iput-object p2, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$KeyboardLayoutListener;->m_keyboardController:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    .line 89
    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/genouka/fumo/mvz2/RunnerKeyboardController$KeyboardLayoutListener;->m_keyboardController:Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    invoke-virtual {v0}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->OnActivityLayoutChanged()V

    .line 95
    return-void
.end method
