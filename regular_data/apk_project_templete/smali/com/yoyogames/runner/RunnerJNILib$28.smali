.class final Lcom/yoyogames/runner/RunnerJNILib$28;
.super Ljava/lang/Object;
.source "RunnerJNILib.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yoyogames/runner/RunnerJNILib;->MoveTaskToBack()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2108
    sget-object v0, Lcom/genouka/fumo/mvz2/RunnerActivity;->CurrentActivity:Lcom/genouka/fumo/mvz2/RunnerActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/genouka/fumo/mvz2/RunnerActivity;->moveTaskToBack(Z)Z

    .line 2109
    return-void
.end method
