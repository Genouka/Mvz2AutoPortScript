.class public Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;
.super Landroid/opengl/GLSurfaceView;
.source "DemoGLSurfaceView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLConfigChooser;


# static fields
.field public static m_usingGL2:I


# instance fields
.field public mRenderer:Lcom/genouka/fumo/mvz2/DemoRenderer;

.field private m_context:Landroid/content/Context;

.field private m_fpsTime:I

.field m_prev:I

.field private m_refreshHandler:Landroid/os/Handler;

.field private m_refreshTick:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput v0, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->m_usingGL2:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v7, 0x10

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 471
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->m_refreshHandler:Landroid/os/Handler;

    .line 37
    new-instance v0, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView$1;

    invoke-direct {v0, p0}, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView$1;-><init>(Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;)V

    iput-object v0, p0, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->m_refreshTick:Ljava/lang/Runnable;

    .line 473
    sget-object v0, Lcom/genouka/fumo/mvz2/RunnerActivity;->CurrentActivity:Lcom/genouka/fumo/mvz2/RunnerActivity;

    invoke-virtual {v0}, Lcom/genouka/fumo/mvz2/RunnerActivity;->setupIniFile()V

    .line 476
    sget-object v0, Lcom/genouka/fumo/mvz2/RunnerActivity;->CurrentActivity:Lcom/genouka/fumo/mvz2/RunnerActivity;

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Lcom/genouka/fumo/mvz2/RunnerActivity;->RestrictOrientation(ZZZZZ)V

    .line 478
    const/4 v6, 0x1

    .line 481
    .local v6, "useGL2":I
    iget-object v0, p0, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->m_context:Landroid/content/Context;

    check-cast v0, Lcom/genouka/fumo/mvz2/RunnerActivity;

    sget-object v0, Lcom/genouka/fumo/mvz2/RunnerActivity;->mYYPrefs:Lcom/genouka/fumo/mvz2/IniBundle;

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->m_context:Landroid/content/Context;

    check-cast v0, Lcom/genouka/fumo/mvz2/RunnerActivity;

    sget-object v0, Lcom/genouka/fumo/mvz2/RunnerActivity;->mYYPrefs:Lcom/genouka/fumo/mvz2/IniBundle;

    const-string v2, "UseShaders"

    invoke-virtual {v0, v2}, Lcom/genouka/fumo/mvz2/IniBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v6, v5

    .line 486
    :goto_0
    const-string v0, "yoyo"

    const-string v2, "Reading GL config option..."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    :cond_0
    if-lez v6, :cond_1

    .line 491
    const-string v0, "yoyo"

    const-string v2, "Trying GL2 config..."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    invoke-direct {p0, p1}, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->checkGL20Support(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 493
    const/4 v6, 0x0

    .line 496
    :cond_1
    sget-boolean v0, Lcom/yoyogames/runner/RunnerJNILib;->ms_loadLibraryFailed:Z

    if-nez v0, :cond_2

    .line 497
    if-lez v6, :cond_4

    .line 499
    invoke-static {v5}, Lcom/yoyogames/runner/RunnerJNILib;->initGLFuncs(I)I

    move-result v6

    .line 507
    :cond_2
    :goto_1
    if-nez v6, :cond_5

    .line 509
    sput v1, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->m_usingGL2:I

    .line 512
    const-string v0, "yoyo"

    const-string v2, "Using OpenGL ES 1 renderer"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    const-string v0, "yoyo"

    const-string v2, "DemoGLSurfaceView: CREATED"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    iput-object p1, p0, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->m_context:Landroid/content/Context;

    .line 515
    iput v1, p0, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->m_prev:I

    .line 516
    iput v7, p0, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->m_fpsTime:I

    .line 517
    new-instance v0, Lcom/genouka/fumo/mvz2/DemoRenderer;

    invoke-direct {v0, p1}, Lcom/genouka/fumo/mvz2/DemoRenderer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->mRenderer:Lcom/genouka/fumo/mvz2/DemoRenderer;

    .line 519
    invoke-virtual {p0, p0}, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    .line 521
    iget-object v0, p0, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->mRenderer:Lcom/genouka/fumo/mvz2/DemoRenderer;

    invoke-virtual {p0, v0}, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 549
    :goto_2
    return-void

    :cond_3
    move v6, v1

    .line 485
    goto :goto_0

    .line 503
    :cond_4
    invoke-static {v1}, Lcom/yoyogames/runner/RunnerJNILib;->initGLFuncs(I)I

    move-result v6

    goto :goto_1

    .line 529
    :cond_5
    sput v5, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->m_usingGL2:I

    .line 531
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->setEGLContextClientVersion(I)V

    .line 534
    const-string v0, "yoyo"

    const-string v2, "Using OpenGL ES 2 renderer"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    const-string v0, "yoyo"

    const-string v2, "DemoGLSurfaceView: CREATED"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    iput-object p1, p0, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->m_context:Landroid/content/Context;

    .line 537
    iput v1, p0, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->m_prev:I

    .line 538
    iput v7, p0, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->m_fpsTime:I

    .line 539
    new-instance v0, Lcom/genouka/fumo/mvz2/DemoRendererGL2;

    invoke-direct {v0, p1}, Lcom/genouka/fumo/mvz2/DemoRendererGL2;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->mRenderer:Lcom/genouka/fumo/mvz2/DemoRenderer;

    .line 541
    invoke-virtual {p0, p0}, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    .line 543
    iget-object v0, p0, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->mRenderer:Lcom/genouka/fumo/mvz2/DemoRenderer;

    invoke-virtual {p0, v0}, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;)I
    .locals 1
    .param p0, "x0"    # Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;

    .prologue
    .line 26
    iget v0, p0, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->m_fpsTime:I

    return v0
.end method

.method static synthetic access$100(Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->m_refreshHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private checkGL20Support(Landroid/content/Context;)Z
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v12, 0x8

    const/4 v11, 0x2

    const/4 v8, 0x1

    const/4 v10, 0x4

    const/4 v9, 0x0

    .line 440
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v4, v12, :cond_0

    .line 442
    const-string v4, "yoyo"

    const-string v8, "Android OS version below minimum required for GL2..."

    invoke-static {v4, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :goto_0
    return v9

    .line 446
    :cond_0
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    .line 447
    .local v0, "egl":Ljavax/microedition/khronos/egl/EGL10;
    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    .line 449
    .local v1, "display":Ljavax/microedition/khronos/egl/EGLDisplay;
    new-array v7, v11, [I

    .line 450
    .local v7, "version":[I
    invoke-interface {v0, v1, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    .line 452
    const/4 v6, 0x4

    .line 453
    .local v6, "EGL_OPENGL_ES2_BIT":I
    const/16 v4, 0x9

    new-array v2, v4, [I

    const/16 v4, 0x3024

    aput v4, v2, v9

    aput v10, v2, v8

    const/16 v4, 0x3023

    aput v4, v2, v11

    const/4 v4, 0x3

    aput v10, v2, v4

    const/16 v4, 0x3022

    aput v4, v2, v10

    const/4 v4, 0x5

    aput v10, v2, v4

    const/4 v4, 0x6

    const/16 v10, 0x3040

    aput v10, v2, v4

    const/4 v4, 0x7

    aput v6, v2, v4

    const/16 v4, 0x3038

    aput v4, v2, v12

    .line 462
    .local v2, "configAttribs":[I
    const/16 v4, 0xa

    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 463
    .local v3, "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    new-array v5, v8, [I

    .line 464
    .local v5, "num_config":[I
    const/16 v4, 0xa

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 465
    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 466
    aget v4, v5, v9

    if-lez v4, :cond_1

    move v4, v8

    :goto_1
    move v9, v4

    goto :goto_0

    :cond_1
    move v4, v9

    goto :goto_1
.end method

.method private dumpEvent(Landroid/view/MotionEvent;)V
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x5

    .line 553
    const/16 v5, 0xa

    new-array v3, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "DOWN"

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const-string v6, "UP"

    aput-object v6, v3, v5

    const/4 v5, 0x2

    const-string v6, "MOVE"

    aput-object v6, v3, v5

    const/4 v5, 0x3

    const-string v6, "CANCEL"

    aput-object v6, v3, v5

    const/4 v5, 0x4

    const-string v6, "OUTSIDE"

    aput-object v6, v3, v5

    const-string v5, "POINTER_DOWN"

    aput-object v5, v3, v7

    const-string v5, "POINTER_UP"

    aput-object v5, v3, v8

    const/4 v5, 0x7

    const-string v6, "7?"

    aput-object v6, v3, v5

    const/16 v5, 0x8

    const-string v6, "8?"

    aput-object v6, v3, v5

    const/16 v5, 0x9

    const-string v6, "9?"

    aput-object v6, v3, v5

    .line 555
    .local v3, "names":[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 556
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 557
    .local v0, "action":I
    and-int/lit16 v1, v0, 0xff

    .line 558
    .local v1, "actionCode":I
    const-string v5, "event ACTION_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    if-eq v1, v7, :cond_0

    if-ne v1, v8, :cond_1

    .line 561
    :cond_0
    const-string v5, "(pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    shr-int/lit8 v6, v0, 0x8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 563
    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    :cond_1
    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 567
    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 568
    const-string v5, "(pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 569
    const-string v5, ")="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 570
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 571
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 572
    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 574
    :cond_3
    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    const-string v5, "yoyo"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    return-void
.end method

.method private findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I
    .locals 2
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;
    .param p4, "attribute"    # I
    .param p5, "defaultValue"    # I

    .prologue
    .line 399
    const/4 v1, 0x1

    new-array v0, v1, [I

    .line 400
    .local v0, "mValue":[I
    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 401
    const/4 v1, 0x0

    aget p5, v0, v1

    .line 403
    .end local p5    # "defaultValue":I
    :cond_0
    return p5
.end method

.method private generateConfigSortKey(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Z)I
    .locals 14
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;
    .param p4, "only16Bit"    # Z

    .prologue
    .line 408
    const/16 v5, 0x3020

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v9

    .line 409
    .local v9, "colourSize":I
    const/16 v5, 0x3025

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v10

    .line 410
    .local v10, "depthSize":I
    const/16 v5, 0x3026

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v13

    .line 411
    .local v13, "stencilSize":I
    const/16 v5, 0x3027

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v7

    .line 412
    .local v7, "caveat":I
    const/16 v5, 0x3032

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v11

    .line 414
    .local v11, "numSampleBuffers":I
    const/4 v8, 0x0

    .line 415
    .local v8, "caveatValue":I
    sparse-switch v7, :sswitch_data_0

    .line 420
    const/4 v8, 0x0

    .line 425
    :goto_0
    shl-int/lit8 v1, v8, 0x18

    rsub-int/lit8 v2, v11, 0x20

    shl-int/lit8 v2, v2, 0x12

    or-int/2addr v1, v2

    shl-int/lit8 v2, v9, 0xc

    or-int/2addr v1, v2

    shl-int/lit8 v2, v10, 0x6

    or-int/2addr v1, v2

    or-int v12, v1, v13

    .line 427
    .local v12, "sortKey":I
    const/4 v1, 0x1

    move/from16 v0, p4

    if-ne v0, v1, :cond_0

    .line 429
    const/16 v1, 0x10

    if-le v9, v1, :cond_0

    .line 431
    const/4 v12, -0x1

    .line 435
    :cond_0
    return v12

    .line 417
    .end local v12    # "sortKey":I
    :sswitch_0
    const/4 v8, 0x2

    goto :goto_0

    .line 418
    :sswitch_1
    const/4 v8, 0x1

    goto :goto_0

    .line 419
    :sswitch_2
    const/4 v8, 0x0

    goto :goto_0

    .line 415
    :sswitch_data_0
    .sparse-switch
        0x3038 -> :sswitch_0
        0x3050 -> :sswitch_1
        0x3051 -> :sswitch_2
    .end sparse-switch
.end method

.method private printConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljava/lang/String;
    .locals 19
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 349
    const/16 v5, 0x3028

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v11

    .line 350
    .local v11, "id":I
    const/16 v5, 0x3024

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v12

    .line 351
    .local v12, "r":I
    const/16 v5, 0x3023

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v10

    .line 352
    .local v10, "g":I
    const/16 v5, 0x3022

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v8

    .line 353
    .local v8, "b":I
    const/16 v5, 0x3021

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v7

    .line 354
    .local v7, "a":I
    const/16 v5, 0x3025

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v9

    .line 355
    .local v9, "d":I
    const/16 v5, 0x3026

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v13

    .line 366
    .local v13, "s":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "EGLConfig %d: rgba=%d%d%d%d depth=%d stencil=%d"

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " EGL_ALPHA_MASK_SIZE="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v5, 0x303e

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    .line 367
    invoke-direct/range {v1 .. v6}, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " EGL_BUFFER_SIZE="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v5, 0x3020

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    .line 370
    invoke-direct/range {v1 .. v6}, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " EGL_COLOR_BUFFER_TYPE="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v5, 0x303f

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    .line 371
    invoke-direct/range {v1 .. v6}, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v16, " EGL_CONFIG_CAVEAT=0x%04x"

    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v5, 0x3027

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    .line 372
    invoke-direct/range {v1 .. v6}, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v17, v18

    invoke-static/range {v15 .. v17}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " EGL_LEVEL="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v5, 0x3029

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    .line 374
    invoke-direct/range {v1 .. v6}, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " EGL_LUMINANCE_SIZE="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v5, 0x303d

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    .line 375
    invoke-direct/range {v1 .. v6}, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " EGL_MAX_PBUFFER_WIDTH="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v5, 0x302c

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    .line 376
    invoke-direct/range {v1 .. v6}, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " EGL_MAX_PBUFFER_HEIGHT="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v5, 0x302a

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    .line 377
    invoke-direct/range {v1 .. v6}, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " EGL_MAX_PBUFFER_PIXELS="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v5, 0x302b

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    .line 378
    invoke-direct/range {v1 .. v6}, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " EGL_MAX_PBUFFER_HEIGHT="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v5, 0x302a

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    .line 381
    invoke-direct/range {v1 .. v6}, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " EGL_MAX_PBUFFER_HEIGHT="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v5, 0x302a

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    .line 382
    invoke-direct/range {v1 .. v6}, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " EGL_NATIVE_RENDERABLE="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v5, 0x302d

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    .line 383
    invoke-direct/range {v1 .. v6}, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " EGL_NATIVE_VISUAL_TYPE="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v5, 0x302f

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    .line 384
    invoke-direct/range {v1 .. v6}, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " EGL_RENDERABLE_TYPE="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v5, 0x3040

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    .line 385
    invoke-direct/range {v1 .. v6}, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " EGL_SAMPLE_BUFFERS="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v5, 0x3032

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    .line 386
    invoke-direct/range {v1 .. v6}, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " EGL_SAMPLES="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v5, 0x3031

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    .line 387
    invoke-direct/range {v1 .. v6}, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " EGL_SURFACE_TYPE="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v5, 0x3033

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    .line 388
    invoke-direct/range {v1 .. v6}, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " EGL_TRANSPARENT_TYPE="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v5, 0x3034

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    .line 389
    invoke-direct/range {v1 .. v6}, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " EGL_TRANSPARENT_RED_VALUE="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v5, 0x3037

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    .line 390
    invoke-direct/range {v1 .. v6}, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " EGL_TRANSPARENT_GREEN_VALUE="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v5, 0x3036

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    .line 391
    invoke-direct/range {v1 .. v6}, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " EGL_TRANSPARENT_BLUE_VALUE="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v5, 0x3035

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    .line 392
    invoke-direct/range {v1 .. v6}, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 366
    return-object v1
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 38
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;

    .prologue
    .line 49
    const-string v5, "yoyo"

    const-string v6, "chooseConfig"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const/16 v18, 0x4

    .line 63
    .local v18, "EGL_OPENGL_ES2_BIT":I
    const/16 v19, 0x1

    .line 64
    .local v19, "EGL_OPENGL_ES_BIT":I
    const/16 v20, 0x400

    .line 66
    .local v20, "EGL_SWAP_BEHAVIOR_PRESERVED_BIT":I
    const/4 v5, 0x1

    new-array v10, v5, [I

    .line 67
    .local v10, "num_config":[I
    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v10, v5

    .line 68
    const/16 v5, 0xb

    new-array v7, v5, [I

    const/4 v5, 0x0

    const/16 v6, 0x3024

    aput v6, v7, v5

    const/4 v5, 0x1

    const/4 v6, 0x5

    aput v6, v7, v5

    const/4 v5, 0x2

    const/16 v6, 0x3023

    aput v6, v7, v5

    const/4 v5, 0x3

    const/4 v6, 0x6

    aput v6, v7, v5

    const/4 v5, 0x4

    const/16 v6, 0x3022

    aput v6, v7, v5

    const/4 v5, 0x5

    const/4 v6, 0x5

    aput v6, v7, v5

    const/4 v5, 0x6

    const/16 v6, 0x3025

    aput v6, v7, v5

    const/4 v5, 0x7

    const/16 v6, 0x10

    aput v6, v7, v5

    const/16 v5, 0x8

    const/16 v6, 0x3040

    aput v6, v7, v5

    const/16 v5, 0x9

    sget v6, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->m_usingGL2:I

    if-eqz v6, :cond_0

    .end local v18    # "EGL_OPENGL_ES2_BIT":I
    :goto_0
    aput v18, v7, v5

    const/16 v5, 0xa

    const/16 v6, 0x3038

    aput v6, v7, v5

    .line 82
    .local v7, "mMinConfigSpec":[I
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-interface/range {v5 .. v10}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 83
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v24

    .line 84
    .local v24, "eglError":I
    const/16 v5, 0x3000

    move/from16 v0, v24

    if-eq v5, v0, :cond_2

    .line 85
    const-string v5, "yoyo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error choosing original minspec EGL config : "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const/16 v5, 0x9

    new-array v13, v5, [I

    fill-array-data v13, :array_0

    .line 94
    .local v13, "lowMinConfigSpec":[I
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v16, v10

    invoke-interface/range {v11 .. v16}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 95
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v24

    .line 96
    const/16 v5, 0x3000

    move/from16 v0, v24

    if-eq v5, v0, :cond_1

    .line 97
    const-string v5, "yoyo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Still an error choosing cutdown minspec EGL config : "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "No EGL configs match our minimum required spec"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v7    # "mMinConfigSpec":[I
    .end local v13    # "lowMinConfigSpec":[I
    .end local v24    # "eglError":I
    .restart local v18    # "EGL_OPENGL_ES2_BIT":I
    :cond_0
    move/from16 v18, v19

    .line 68
    goto :goto_0

    .line 100
    .end local v18    # "EGL_OPENGL_ES2_BIT":I
    .restart local v7    # "mMinConfigSpec":[I
    .restart local v13    # "lowMinConfigSpec":[I
    .restart local v24    # "eglError":I
    :cond_1
    move-object v7, v13

    .line 103
    .end local v13    # "lowMinConfigSpec":[I
    :cond_2
    const/4 v5, 0x0

    aget v5, v10, v5

    if-gtz v5, :cond_3

    .line 105
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "No EGL configs match our minimum required spec"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 109
    :cond_3
    const/4 v5, 0x0

    aget v9, v10, v5

    .line 110
    .local v9, "numConfigs":I
    new-array v8, v9, [Ljavax/microedition/khronos/egl/EGLConfig;

    .local v8, "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    move-object/from16 v5, p1

    move-object/from16 v6, p2

    .line 111
    invoke-interface/range {v5 .. v10}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 112
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v24

    .line 113
    const/16 v5, 0x3000

    move/from16 v0, v24

    if-eq v5, v0, :cond_4

    .line 114
    const-string v5, "yoyo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error fetching EGL configs : "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_4
    const/16 v17, 0x3098

    .line 118
    .local v17, "EGL_CONTEXT_CLIENT_VERSION":I
    const/4 v5, 0x3

    new-array v0, v5, [I

    move-object/from16 v22, v0

    const/4 v5, 0x0

    aput v17, v22, v5

    const/4 v6, 0x1

    sget v5, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->m_usingGL2:I

    if-eqz v5, :cond_9

    const/4 v5, 0x2

    :goto_1
    aput v5, v22, v6

    const/4 v5, 0x2

    const/16 v6, 0x3038

    aput v6, v22, v5

    .line 124
    .local v22, "attrib_list":[I
    const/16 v30, 0x1

    .line 125
    .local v30, "only16Bit":Z
    const/4 v5, 0x0

    aget-object v5, v8, v5

    sget-object v6, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v5, v6, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v36

    .line 126
    .local v36, "testContext":Ljavax/microedition/khronos/egl/EGLContext;
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v24

    .line 127
    const/16 v5, 0x3004

    move/from16 v0, v24

    if-ne v5, v0, :cond_5

    .line 129
    const-string v5, "yoyo"

    const-string v6, "Bad Attrib on eglCreateContext... using empty attrib_list"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/16 v22, 0x0

    .line 131
    const/4 v5, 0x0

    aget-object v5, v8, v5

    sget-object v6, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v5, v6, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v36

    .line 132
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v24

    .line 135
    :cond_5
    const/16 v5, 0x3000

    move/from16 v0, v24

    if-ne v0, v5, :cond_d

    if-eqz v36, :cond_d

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    move-object/from16 v0, v36

    if-eq v0, v5, :cond_d

    .line 137
    const/4 v5, 0x0

    aget-object v5, v8, v5

    invoke-virtual/range {p0 .. p0}, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v6

    const/4 v11, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v0, v1, v5, v6, v11}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v32

    .line 139
    .local v32, "surf":Ljavax/microedition/khronos/egl/EGLSurface;
    if-eqz v32, :cond_6

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    move-object/from16 v0, v32

    if-ne v0, v5, :cond_a

    .line 140
    :cond_6
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v25

    .line 141
    .local v25, "error":I
    const/16 v5, 0x3000

    move/from16 v0, v25

    if-eq v0, v5, :cond_7

    .line 143
    const-string v5, "yoyo"

    const-string v6, "window surface can\'t be created"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    .end local v25    # "error":I
    :cond_7
    :goto_2
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 197
    .end local v32    # "surf":Ljavax/microedition/khronos/egl/EGLSurface;
    :goto_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->m_context:Landroid/content/Context;

    if-eqz v5, :cond_10

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->m_context:Landroid/content/Context;

    instance-of v5, v5, Lcom/genouka/fumo/mvz2/RunnerActivity;

    if-eqz v5, :cond_10

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->m_context:Landroid/content/Context;

    check-cast v5, Lcom/genouka/fumo/mvz2/RunnerActivity;

    sget-object v5, Lcom/genouka/fumo/mvz2/RunnerActivity;->mYYPrefs:Lcom/genouka/fumo/mvz2/IniBundle;

    if-eqz v5, :cond_10

    .line 199
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->m_context:Landroid/content/Context;

    check-cast v5, Lcom/genouka/fumo/mvz2/RunnerActivity;

    sget-object v5, Lcom/genouka/fumo/mvz2/RunnerActivity;->mYYPrefs:Lcom/genouka/fumo/mvz2/IniBundle;

    const-string v6, "YYUse24Bit"

    invoke-virtual {v5, v6}, Lcom/genouka/fumo/mvz2/IniBundle;->getInt(Ljava/lang/String;)I

    move-result v21

    .line 200
    .local v21, "allow24BitModes":I
    const/4 v5, 0x1

    move/from16 v0, v21

    if-ne v0, v5, :cond_f

    .line 202
    const-string v5, "yoyo"

    const-string v6, "24 bit colour depth allowed"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    .end local v21    # "allow24BitModes":I
    :cond_8
    :goto_4
    new-array v0, v9, [I

    move-object/from16 v23, v0

    .line 233
    .local v23, "configSortKeys":[I
    const/16 v29, 0x0

    .local v29, "i":I
    :goto_5
    move/from16 v0, v29

    if-ge v0, v9, :cond_13

    .line 235
    aget-object v5, v8, v29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v30

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->generateConfigSortKey(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Z)I

    move-result v5

    aput v5, v23, v29

    .line 233
    add-int/lit8 v29, v29, 0x1

    goto :goto_5

    .line 118
    .end local v22    # "attrib_list":[I
    .end local v23    # "configSortKeys":[I
    .end local v29    # "i":I
    .end local v30    # "only16Bit":Z
    .end local v36    # "testContext":Ljavax/microedition/khronos/egl/EGLContext;
    :cond_9
    const/4 v5, 0x1

    goto/16 :goto_1

    .line 152
    .restart local v22    # "attrib_list":[I
    .restart local v30    # "only16Bit":Z
    .restart local v32    # "surf":Ljavax/microedition/khronos/egl/EGLSurface;
    .restart local v36    # "testContext":Ljavax/microedition/khronos/egl/EGLContext;
    :cond_a
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v32

    move-object/from16 v3, v32

    move-object/from16 v4, v36

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 157
    const-string v5, "EGLHelper"

    const-string v6, "eglMakeCurrent broke"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :goto_6
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    goto :goto_2

    .line 162
    :cond_b
    invoke-virtual/range {v36 .. v36}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v27

    .line 163
    .local v27, "gl":Ljavax/microedition/khronos/opengles/GL;
    move-object/from16 v0, v27

    instance-of v5, v0, Ljavax/microedition/khronos/opengles/GL10;

    if-eqz v5, :cond_c

    move-object/from16 v28, v27

    .line 165
    check-cast v28, Ljavax/microedition/khronos/opengles/GL10;

    .line 167
    .local v28, "glInterface":Ljavax/microedition/khronos/opengles/GL10;
    const/16 v5, 0x1f03

    move-object/from16 v0, v28

    invoke-interface {v0, v5}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v26

    .line 168
    .local v26, "extString":Ljava/lang/String;
    const-string v5, "yoyo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "OpenGL ES Extensions : "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const-string v5, "GL_OES_rgb8_rgba8"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_c

    .line 174
    const-string v5, "yoyo"

    const-string v6, "Device supports 32bit display formats"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const/16 v30, 0x0

    .line 180
    .end local v26    # "extString":Ljava/lang/String;
    .end local v28    # "glInterface":Ljavax/microedition/khronos/opengles/GL10;
    :cond_c
    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v6, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v11, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v0, v1, v5, v6, v11}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    goto :goto_6

    .line 193
    .end local v27    # "gl":Ljavax/microedition/khronos/opengles/GL;
    .end local v32    # "surf":Ljavax/microedition/khronos/egl/EGLSurface;
    :cond_d
    const-string v6, "yoyo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not create test "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v5, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->m_usingGL2:I

    if-eqz v5, :cond_e

    const-string v5, "GL2"

    :goto_7
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, "context. EGLError: "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_e
    const-string v5, "GL1"

    goto :goto_7

    .line 207
    .restart local v21    # "allow24BitModes":I
    :cond_f
    const-string v5, "yoyo"

    const-string v6, "16 bit colour depth forced"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const/16 v30, 0x1

    goto/16 :goto_4

    .line 213
    .end local v21    # "allow24BitModes":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->m_context:Landroid/content/Context;

    if-nez v5, :cond_11

    .line 215
    const-string v5, "yoyo"

    const-string v6, "Context NULL"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_11
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->m_context:Landroid/content/Context;

    instance-of v5, v5, Lcom/genouka/fumo/mvz2/RunnerActivity;

    if-nez v5, :cond_12

    .line 220
    const-string v5, "yoyo"

    const-string v6, "Context not RunnerActivity"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_12
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->m_context:Landroid/content/Context;

    check-cast v5, Lcom/genouka/fumo/mvz2/RunnerActivity;

    sget-object v5, Lcom/genouka/fumo/mvz2/RunnerActivity;->mYYPrefs:Lcom/genouka/fumo/mvz2/IniBundle;

    if-nez v5, :cond_8

    .line 225
    const-string v5, "yoyo"

    const-string v6, "mYYPrefs null"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 242
    .restart local v23    # "configSortKeys":[I
    .restart local v29    # "i":I
    :cond_13
    const/16 v31, 0x0

    .line 243
    .local v31, "sorted":Z
    :cond_14
    if-nez v31, :cond_16

    .line 245
    const/16 v31, 0x1

    .line 246
    const/16 v29, 0x0

    :goto_8
    add-int/lit8 v5, v9, -0x1

    move/from16 v0, v29

    if-ge v0, v5, :cond_14

    .line 248
    aget v5, v23, v29

    add-int/lit8 v6, v29, 0x1

    aget v6, v23, v6

    if-ge v5, v6, :cond_15

    .line 251
    const/16 v31, 0x0

    .line 253
    aget-object v33, v8, v29

    .line 254
    .local v33, "tempConfig":Ljavax/microedition/khronos/egl/EGLConfig;
    add-int/lit8 v5, v29, 0x1

    aget-object v5, v8, v5

    aput-object v5, v8, v29

    .line 255
    add-int/lit8 v5, v29, 0x1

    aput-object v33, v8, v5

    .line 257
    aget v35, v23, v29

    .line 258
    .local v35, "tempSortKey":I
    add-int/lit8 v5, v29, 0x1

    aget v5, v23, v5

    aput v5, v23, v29

    .line 259
    add-int/lit8 v5, v29, 0x1

    aput v35, v23, v5

    .line 246
    .end local v33    # "tempConfig":Ljavax/microedition/khronos/egl/EGLConfig;
    .end local v35    # "tempSortKey":I
    :cond_15
    add-int/lit8 v29, v29, 0x1

    goto :goto_8

    .line 275
    :cond_16
    const/16 v37, -0x1

    .line 276
    .local v37, "validConfig":I
    const/16 v29, 0x0

    :goto_9
    move/from16 v0, v29

    if-ge v0, v9, :cond_19

    .line 278
    const-string v5, "yoyo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Trying EGL config : "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v11, v8, v29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v11}, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->printConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    aget-object v5, v8, v29

    sget-object v6, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v5, v6, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v34

    .line 281
    .local v34, "tempContext":Ljavax/microedition/khronos/egl/EGLContext;
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v24

    .line 282
    const/16 v5, 0x3000

    move/from16 v0, v24

    if-ne v0, v5, :cond_1c

    if-eqz v34, :cond_1c

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    move-object/from16 v0, v34

    if-eq v0, v5, :cond_1c

    .line 287
    aget-object v5, v8, v29

    invoke-virtual/range {p0 .. p0}, Lcom/genouka/fumo/mvz2/DemoGLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v6

    const/4 v11, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v0, v1, v5, v6, v11}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v32

    .line 289
    .restart local v32    # "surf":Ljavax/microedition/khronos/egl/EGLSurface;
    if-eqz v32, :cond_17

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    move-object/from16 v0, v32

    if-ne v0, v5, :cond_1a

    .line 290
    :cond_17
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v25

    .line 291
    .restart local v25    # "error":I
    const/16 v5, 0x3000

    move/from16 v0, v25

    if-eq v0, v5, :cond_18

    .line 293
    const-string v5, "yoyo"

    const-string v6, "Surface can\'t be created - can\'t use this mode"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    .end local v25    # "error":I
    :cond_18
    :goto_a
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 333
    .end local v32    # "surf":Ljavax/microedition/khronos/egl/EGLSurface;
    :goto_b
    const/4 v5, -0x1

    move/from16 v0, v37

    if-eq v0, v5, :cond_1d

    .line 339
    .end local v34    # "tempContext":Ljavax/microedition/khronos/egl/EGLContext;
    :cond_19
    const/4 v5, -0x1

    move/from16 v0, v37

    if-eq v0, v5, :cond_1e

    .line 340
    aget-object v5, v8, v37

    return-object v5

    .line 304
    .restart local v32    # "surf":Ljavax/microedition/khronos/egl/EGLSurface;
    .restart local v34    # "tempContext":Ljavax/microedition/khronos/egl/EGLContext;
    :cond_1a
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v32

    move-object/from16 v3, v32

    move-object/from16 v4, v34

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v5

    if-nez v5, :cond_1b

    .line 306
    const-string v5, "yoyo"

    const-string v6, "eglMakeCurrent failed - can\'t use this mode"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :goto_c
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    goto :goto_a

    .line 311
    :cond_1b
    const-string v5, "yoyo"

    const-string v6, "Selected EGL config working"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v6, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v11, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v0, v1, v5, v6, v11}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 318
    move/from16 v37, v29

    goto :goto_c

    .line 330
    .end local v32    # "surf":Ljavax/microedition/khronos/egl/EGLSurface;
    :cond_1c
    const-string v5, "yoyo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Selected EGL config failed: "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 276
    :cond_1d
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_9

    .line 343
    .end local v34    # "tempContext":Ljavax/microedition/khronos/egl/EGLContext;
    :cond_1e
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "No valid EGL configs match our minimum required spec"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 87
    nop

    :array_0
    .array-data 4
        0x3024
        0x5
        0x3023
        0x6
        0x3022
        0x5
        0x3025
        0x10
        0x3038
    .end array-data
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 580
    sget-object v2, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 582
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 584
    sget-object v2, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    aget-object v2, v2, v1

    instance-of v2, v2, Lcom/genouka/fumo/mvz2/IExtensionBase;

    if-eqz v2, :cond_0

    .line 586
    sget-object v2, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    aget-object v2, v2, v1

    check-cast v2, Lcom/genouka/fumo/mvz2/IExtensionBase;

    invoke-interface {v2, p1}, Lcom/genouka/fumo/mvz2/IExtensionBase;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 587
    .local v0, "consumed":Z
    if-eqz v0, :cond_0

    .line 593
    .end local v0    # "consumed":Z
    .end local v1    # "i":I
    :goto_1
    return v0

    .line 582
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 593
    .end local v1    # "i":I
    :cond_1
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x1

    .line 598
    sget-object v7, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    if-eqz v7, :cond_1

    .line 600
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    sget-object v7, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    array-length v7, v7

    if-ge v4, v7, :cond_1

    .line 602
    sget-object v7, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    aget-object v7, v7, v4

    instance-of v7, v7, Lcom/genouka/fumo/mvz2/IExtensionBase;

    if-eqz v7, :cond_0

    .line 604
    sget-object v7, Lcom/genouka/fumo/mvz2/RunnerActivity;->mExtension:[Ljava/lang/Object;

    aget-object v7, v7, v4

    check-cast v7, Lcom/genouka/fumo/mvz2/IExtensionBase;

    invoke-interface {v7, p1}, Lcom/genouka/fumo/mvz2/IExtensionBase;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 605
    .local v2, "consumed":Z
    if-eqz v2, :cond_0

    .line 655
    .end local v2    # "consumed":Z
    .end local v4    # "i":I
    :goto_1
    return v2

    .line 600
    .restart local v4    # "i":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 611
    .end local v4    # "i":I
    :cond_1
    sget-boolean v7, Lcom/yoyogames/runner/RunnerJNILib;->ms_loadLibraryFailed:Z

    if-eqz v7, :cond_2

    move v2, v8

    .line 612
    goto :goto_1

    .line 619
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 620
    .local v0, "action":I
    and-int/lit16 v1, v0, 0xff

    .line 621
    .local v1, "actionCode":I
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    if-ge v4, v7, :cond_6

    .line 623
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 624
    .local v5, "id":I
    const/4 v7, 0x5

    if-eq v1, v7, :cond_3

    const/4 v7, 0x6

    if-ne v1, v7, :cond_5

    .line 626
    :cond_3
    const v7, 0xff00

    and-int/2addr v7, v0

    shr-int/lit8 v6, v7, 0x8

    .line 629
    .local v6, "index":I
    if-ne v6, v4, :cond_4

    .line 631
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    invoke-static {v1, v5, v7, v9}, Lcom/yoyogames/runner/RunnerJNILib;->TouchEvent(IIFF)V

    .line 621
    .end local v6    # "index":I
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 635
    .restart local v6    # "index":I
    :cond_4
    const/4 v7, 0x2

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    invoke-static {v7, v5, v9, v10}, Lcom/yoyogames/runner/RunnerJNILib;->TouchEvent(IIFF)V

    goto :goto_3

    .line 639
    .end local v6    # "index":I
    :cond_5
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    invoke-static {v1, v5, v7, v9}, Lcom/yoyogames/runner/RunnerJNILib;->TouchEvent(IIFF)V

    goto :goto_3

    .line 643
    .end local v5    # "id":I
    :cond_6
    sget-object v7, Lcom/genouka/fumo/mvz2/RunnerActivity;->CurrentActivity:Lcom/genouka/fumo/mvz2/RunnerActivity;

    iget-object v7, v7, Lcom/genouka/fumo/mvz2/RunnerActivity;->vsyncHandler:Ljava/lang/Object;

    if-nez v7, :cond_7

    .line 647
    const-wide/16 v10, 0x10

    :try_start_0
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    :goto_4
    move v2, v8

    .line 655
    goto :goto_1

    .line 649
    :catch_0
    move-exception v3

    .line 651
    .local v3, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_4
.end method
