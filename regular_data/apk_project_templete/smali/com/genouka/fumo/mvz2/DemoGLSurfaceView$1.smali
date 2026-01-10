.class Lcom/genouka/fumo/mvz2/DemoGLSurfaceView$1;
.super Ljava/lang/Object;
.source "DemoGLSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;


# direct methods
.method constructor <init>(Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView$1;->this$0:Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 39
    iget-object v0, p0, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView$1;->this$0:Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;

    invoke-static {v0}, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->access$100(Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView$1;->this$0:Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;

    invoke-static {v1}, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->access$000(Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 40
    iget-object v0, p0, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView$1;->this$0:Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;

    iget-object v0, v0, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->mRenderer:Lcom/genouka/fumo/mvz2/DemoRenderer;

    iget v0, v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_renderCount:I

    if-gtz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView$1;->this$0:Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;

    iget-object v0, v0, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->mRenderer:Lcom/genouka/fumo/mvz2/DemoRenderer;

    iget v1, v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_renderCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_renderCount:I

    .line 42
    iget-object v0, p0, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView$1;->this$0:Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;

    invoke-virtual {v0}, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->requestRender()V

    .line 44
    :cond_0
    return-void
.end method
