.class final Lcom/yoyogames/runner/RunnerJNILib$29;
.super Ljava/lang/Object;
.source "RunnerJNILib.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yoyogames/runner/RunnerJNILib;->OnKeyboardStringSet(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$_newString:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2358
    iput-object p1, p0, Lcom/yoyogames/runner/RunnerJNILib$29;->val$_newString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2361
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->CurrentActivity:Lcom/genouka/fumo/mvz2/RunnerActivity;

    invoke-virtual {v1}, Lcom/genouka/fumo/mvz2/RunnerActivity;->GetKeyboardController()Lcom/genouka/fumo/mvz2/RunnerKeyboardController;

    move-result-object v0

    .line 2362
    .local v0, "controller":Lcom/genouka/fumo/mvz2/RunnerKeyboardController;
    if-eqz v0, :cond_0

    .line 2364
    iget-object v1, p0, Lcom/yoyogames/runner/RunnerJNILib$29;->val$_newString:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/genouka/fumo/mvz2/RunnerKeyboardController;->SetInputString(Ljava/lang/String;Z)V

    .line 2366
    :cond_0
    return-void
.end method
