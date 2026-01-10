.class public Lcom/genouka/fumo/mvz2/DemoRendererGL2;
.super Lcom/genouka/fumo/mvz2/DemoRenderer;
.source "DemoRendererGL2.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "_context"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/genouka/fumo/mvz2/DemoRenderer;-><init>(Landroid/content/Context;)V

    .line 65
    return-void
.end method


# virtual methods
.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 4
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 69
    sget-object v1, Lcom/genouka/fumo/mvz2/DemoRendererGL2;->m_state:Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

    sget-object v2, Lcom/genouka/fumo/mvz2/DemoRenderer$eState;->Startup:Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

    if-eq v1, v2, :cond_0

    sget-object v1, Lcom/genouka/fumo/mvz2/DemoRendererGL2;->m_state:Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

    sget-object v2, Lcom/genouka/fumo/mvz2/DemoRenderer$eState;->DownloadGameDroidWait:Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

    if-eq v1, v2, :cond_0

    .line 70
    const-string v1, "yoyo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSurfaceCreated() aborted on re-create 1, state is currently "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/genouka/fumo/mvz2/DemoRendererGL2;->m_state:Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :goto_0
    return-void

    .line 75
    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    .line 76
    .local v0, "intBuffer":Ljava/nio/IntBuffer;
    const v1, 0x8ca6

    invoke-interface {p1, v1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    .line 78
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v1

    sput v1, Lcom/genouka/fumo/mvz2/DemoRendererGL2;->m_defaultFrameBuffer:I

    .line 79
    const-string v1, "yoyo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Renderer instance is gl2.0, framebuffer object is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/genouka/fumo/mvz2/DemoRendererGL2;->m_defaultFrameBuffer:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-super {p0, p1, p2}, Lcom/genouka/fumo/mvz2/DemoRenderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    goto :goto_0
.end method
