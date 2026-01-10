.class public Lcom/genouka/fumo/mvz2/RunnerVsyncHandler;
.super Ljava/lang/Object;
.source "RunnerVsyncHandler.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genouka/fumo/mvz2/RunnerVsyncHandler$Accessor;
    }
.end annotation


# static fields
.field private static final accessor:Lcom/genouka/fumo/mvz2/RunnerVsyncHandler$Accessor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 81
    new-instance v0, Lcom/genouka/fumo/mvz2/RunnerVsyncHandler$Accessor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/genouka/fumo/mvz2/RunnerVsyncHandler$Accessor;-><init>(Lcom/genouka/fumo/mvz2/RunnerVsyncHandler$1;)V

    sput-object v0, Lcom/genouka/fumo/mvz2/RunnerVsyncHandler;->accessor:Lcom/genouka/fumo/mvz2/RunnerVsyncHandler$Accessor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public PostFrameCallback()V
    .locals 1

    .prologue
    .line 109
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 110
    return-void
.end method

.method public RemoveFrameCallback()V
    .locals 1

    .prologue
    .line 114
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 115
    return-void
.end method

.method public doFrame(J)V
    .locals 3
    .param p1, "frameTimeNanos"    # J

    .prologue
    .line 88
    sget-object v1, Lcom/genouka/fumo/mvz2/RunnerActivity;->CurrentActivity:Lcom/genouka/fumo/mvz2/RunnerActivity;

    sget-object v2, Lcom/genouka/fumo/mvz2/RunnerVsyncHandler;->accessor:Lcom/genouka/fumo/mvz2/RunnerVsyncHandler$Accessor;

    invoke-virtual {v1, v2}, Lcom/genouka/fumo/mvz2/RunnerActivity;->GetGLView(Lcom/genouka/fumo/mvz2/RunnerVsyncHandler$Accessor;)Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;

    move-result-object v0

    .line 90
    .local v0, "mGLView":Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->mRenderer:Lcom/genouka/fumo/mvz2/DemoRenderer;

    if-eqz v1, :cond_0

    .line 92
    sget v1, Lcom/genouka/fumo/mvz2/DemoRenderer;->elapsedVsyncs:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/genouka/fumo/mvz2/DemoRenderer;->elapsedVsyncs:I

    .line 104
    :cond_0
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 105
    return-void
.end method
