.class final Lcom/yoyogames/runner/RunnerJNILib$26;
.super Ljava/lang/Object;
.source "RunnerJNILib.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yoyogames/runner/RunnerJNILib;->setSystemUIVisibilityFlags(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$flags:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 2076
    iput p1, p0, Lcom/yoyogames/runner/RunnerJNILib$26;->val$flags:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2079
    iget v0, p0, Lcom/yoyogames/runner/RunnerJNILib$26;->val$flags:I

    sput v0, Lcom/genouka/fumo/mvz2/RunnerActivity;->UIVisibilityFlags:I

    .line 2080
    sget-object v0, Lcom/genouka/fumo/mvz2/RunnerActivity;->CurrentActivity:Lcom/genouka/fumo/mvz2/RunnerActivity;

    invoke-virtual {v0}, Lcom/genouka/fumo/mvz2/RunnerActivity;->setupUiVisibility()V

    .line 2081
    sget-object v0, Lcom/genouka/fumo/mvz2/RunnerActivity;->CurrentActivity:Lcom/genouka/fumo/mvz2/RunnerActivity;

    invoke-virtual {v0}, Lcom/genouka/fumo/mvz2/RunnerActivity;->setupUiVisibilityDelayed()V

    .line 2082
    return-void
.end method
