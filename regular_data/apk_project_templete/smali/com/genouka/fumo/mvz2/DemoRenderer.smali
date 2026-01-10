.class public Lcom/genouka/fumo/mvz2/DemoRenderer;
.super Ljava/lang/Object;
.source "DemoRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genouka/fumo/mvz2/DemoRenderer$eState;
    }
.end annotation


# static fields
.field public static final RUNNER_STORAGE_PERMISSION_REQUEST:I = 0x55

.field public static volatile elapsedVsyncs:I = 0x0

.field public static final kGameAssetsDROID:Ljava/lang/String; = "GameAssetsDROID.zip"

.field public static m_apkFilePath:Ljava/lang/String;

.field public static m_defaultFrameBuffer:I

.field public static m_saveFilesDir:Ljava/lang/String;

.field public static m_state:Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

.field public static ms_displayedLoadLibraryFailed:Z

.field public static volatile waiterObject:Ljava/lang/Object;


# instance fields
.field private localeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field

.field public m_RequestedPermissions:Z

.field private m_context:Landroid/content/Context;

.field private m_height:I

.field private m_packageName:Ljava/lang/String;

.field public m_pauseRunner:Z

.field public m_pausecountdown:I

.field public m_refreshRate:F

.field public m_renderCount:I

.field private m_splashFilePath:Ljava/lang/String;

.field private m_texHeight:I

.field private m_texRawHeight:I

.field private m_texRawWidth:I

.field private m_texWidth:I

.field private m_width:I

.field private splashEndTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 110
    sput v1, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_defaultFrameBuffer:I

    .line 111
    const/4 v0, 0x0

    sput-boolean v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->ms_displayedLoadLibraryFailed:Z

    .line 120
    const/4 v0, 0x0

    sput-object v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->waiterObject:Ljava/lang/Object;

    .line 121
    sput v1, Lcom/genouka/fumo/mvz2/DemoRenderer;->elapsedVsyncs:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "_context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const-string v0, "assets/splash.png"

    iput-object v0, p0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_splashFilePath:Ljava/lang/String;

    .line 107
    iput-boolean v2, p0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_RequestedPermissions:Z

    .line 113
    const/4 v0, -0x1

    iput v0, p0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_pausecountdown:I

    .line 114
    iput-boolean v2, p0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_pauseRunner:Z

    .line 117
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/genouka/fumo/mvz2/DemoRenderer;->splashEndTime:J

    .line 119
    const/high16 v0, 0x42700000    # 60.0f

    iput v0, p0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_refreshRate:F

    .line 149
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->waiterObject:Ljava/lang/Object;

    .line 150
    iput-object p1, p0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_context:Landroid/content/Context;

    .line 151
    sget-object v0, Lcom/genouka/fumo/mvz2/DemoRenderer$eState;->Startup:Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

    sput-object v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_state:Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

    .line 152
    iput v2, p0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_renderCount:I

    .line 153
    iget-object v0, p0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_packageName:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public static WaitForVsync()V
    .locals 10

    .prologue
    .line 378
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 379
    .local v4, "starttime":J
    sget v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->elapsedVsyncs:I

    .line 380
    .local v0, "currVsync":I
    :cond_0
    sget v1, Lcom/genouka/fumo/mvz2/DemoRenderer;->elapsedVsyncs:I

    const/4 v6, -0x1

    if-eq v1, v6, :cond_1

    sget v1, Lcom/genouka/fumo/mvz2/DemoRenderer;->elapsedVsyncs:I

    if-ne v0, v1, :cond_1

    .line 382
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 384
    .local v2, "currtime":J
    sub-long v6, v2, v4

    const-wide/32 v8, 0x5f5e100

    cmp-long v1, v6, v8

    if-lez v1, :cond_0

    .line 386
    const-string v1, "yoyo"

    const-string v6, "vsync timeout..."

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    .end local v2    # "currtime":J
    :cond_1
    return-void
.end method

.method private getNextPow2(I)I
    .locals 1
    .param p1, "_val"    # I

    .prologue
    .line 173
    add-int/lit8 p1, p1, -0x1

    .line 176
    shr-int/lit8 v0, p1, 0x1

    or-int/2addr p1, v0

    .line 177
    shr-int/lit8 v0, p1, 0x2

    or-int/2addr p1, v0

    .line 178
    shr-int/lit8 v0, p1, 0x4

    or-int/2addr p1, v0

    .line 179
    shr-int/lit8 v0, p1, 0x8

    or-int/2addr p1, v0

    .line 180
    shr-int/lit8 v0, p1, 0x10

    or-int/2addr p1, v0

    .line 183
    add-int/lit8 p1, p1, 0x1

    .line 186
    if-nez p1, :cond_0

    .line 187
    add-int/lit8 p1, p1, 0x1

    .line 189
    :cond_0
    return p1
.end method

.method private initCountryCodeMapping()V
    .locals 8

    .prologue
    .line 124
    invoke-static {}, Ljava/util/Locale;->getISOCountries()[Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "countries":[Ljava/lang/String;
    new-instance v3, Ljava/util/HashMap;

    array-length v4, v0

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    iput-object v3, p0, Lcom/genouka/fumo/mvz2/DemoRenderer;->localeMap:Ljava/util/Map;

    .line 126
    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 127
    .local v1, "country":Ljava/lang/String;
    new-instance v2, Ljava/util/Locale;

    const-string v5, ""

    invoke-direct {v2, v5, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .local v2, "locale":Ljava/util/Locale;
    iget-object v5, p0, Lcom/genouka/fumo/mvz2/DemoRenderer;->localeMap:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 130
    .end local v1    # "country":Ljava/lang/String;
    .end local v2    # "locale":Ljava/util/Locale;
    :cond_0
    return-void
.end method

.method private iso3CountryCodeToIso2CountryCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "iso3CountryCode"    # Ljava/lang/String;

    .prologue
    .line 133
    iget-object v1, p0, Lcom/genouka/fumo/mvz2/DemoRenderer;->localeMap:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 134
    iget-object v1, p0, Lcom/genouka/fumo/mvz2/DemoRenderer;->localeMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    .line 135
    .local v0, "locale":Ljava/util/Locale;
    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p1

    .line 143
    .end local v0    # "locale":Ljava/util/Locale;
    .end local p1    # "iso3CountryCode":Ljava/lang/String;
    :cond_0
    return-object p1
.end method


# virtual methods
.method public getResourceAsReader(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 158
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 160
    :try_start_0
    iget-object v2, p0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 161
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 166
    .end local v0    # "assetManager":Landroid/content/res/AssetManager;
    :goto_0
    return-object v2

    .line 163
    :catch_0
    move-exception v1

    .line 165
    .local v1, "ee":Ljava/lang/Exception;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Exception while getting Resource"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 166
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getScreenOrientation()I
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    return v0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 27
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 413
    sget-boolean v2, Lcom/yoyogames/runner/RunnerJNILib;->ms_loadLibraryFailed:Z

    if-eqz v2, :cond_1

    .line 414
    sget-boolean v2, Lcom/genouka/fumo/mvz2/DemoRenderer;->ms_displayedLoadLibraryFailed:Z

    if-nez v2, :cond_0

    .line 415
    const/4 v2, 0x1

    sput-boolean v2, Lcom/genouka/fumo/mvz2/DemoRenderer;->ms_displayedLoadLibraryFailed:Z

    .line 416
    sget-object v2, Lcom/genouka/fumo/mvz2/RunnerActivity;->ViewHandler:Landroid/os/Handler;

    new-instance v3, Lcom/genouka/fumo/mvz2/DemoRenderer$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/genouka/fumo/mvz2/DemoRenderer$1;-><init>(Lcom/genouka/fumo/mvz2/DemoRenderer;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 704
    :cond_0
    :goto_0
    return-void

    .line 434
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_pausecountdown:I

    if-lez v2, :cond_2

    .line 436
    move-object/from16 v0, p0

    iget v2, v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_pausecountdown:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_pausecountdown:I

    .line 437
    move-object/from16 v0, p0

    iget v2, v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_pausecountdown:I

    if-gtz v2, :cond_2

    .line 439
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_pauseRunner:Z

    .line 445
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_pauseRunner:Z

    if-eqz v2, :cond_3

    .line 447
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 448
    :catch_0
    move-exception v14

    .line 449
    .local v14, "e":Ljava/lang/InterruptedException;
    const-string v2, "yoyo"

    const-string v3, "Paused runner has thrown an exception!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    invoke-virtual {v14}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 455
    .end local v14    # "e":Ljava/lang/InterruptedException;
    :cond_3
    sget-object v2, Lcom/genouka/fumo/mvz2/DemoRenderer$4;->$SwitchMap$com$genouka$fumo$mvz2$DemoRenderer$eState:[I

    sget-object v3, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_state:Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

    invoke-virtual {v3}, Lcom/genouka/fumo/mvz2/DemoRenderer$eState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 703
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_renderCount:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_renderCount:I

    goto :goto_0

    .line 457
    :pswitch_0
    sget-object v2, Lcom/genouka/fumo/mvz2/DemoRenderer$eState;->Splash:Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

    sput-object v2, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_state:Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

    .line 458
    const-string v2, "yoyo"

    const-string v3, "State->Splash"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    .line 460
    const/16 v2, 0x4000

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    goto :goto_1

    .line 463
    :pswitch_1
    sget-object v2, Lcom/genouka/fumo/mvz2/RunnerActivity;->mYYPrefs:Lcom/genouka/fumo/mvz2/IniBundle;

    if-nez v2, :cond_5

    .line 465
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->splashEndTime:J

    .line 471
    :goto_2
    const-string v2, "yoyo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "State->Splash    time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    const-string v2, "yoyo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "State->Splash endTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->splashEndTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    sget-boolean v2, Lcom/genouka/fumo/mvz2/RunnerActivity;->YoYoRunner:Z

    if-eqz v2, :cond_6

    .line 474
    sget-object v2, Lcom/genouka/fumo/mvz2/DemoRenderer$eState;->Splash2:Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

    sput-object v2, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_state:Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

    .line 475
    const-string v2, "yoyo"

    const-string v3, "State->Splash2"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :goto_3
    sget-object v2, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_apkFilePath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_splashFilePath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_width:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_height:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_texRawWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_texRawHeight:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_texWidth:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_texHeight:I

    invoke-static/range {v2 .. v9}, Lcom/yoyogames/runner/RunnerJNILib;->RenderSplash(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    goto/16 :goto_1

    .line 469
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v4, Lcom/genouka/fumo/mvz2/RunnerActivity;->mYYPrefs:Lcom/genouka/fumo/mvz2/IniBundle;

    const-string v5, "SplashscreenTime"

    invoke-virtual {v4, v5}, Lcom/genouka/fumo/mvz2/IniBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    add-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->splashEndTime:J

    goto :goto_2

    .line 477
    :cond_6
    sget-boolean v2, Lcom/genouka/fumo/mvz2/RunnerActivity;->UseAPKExpansionFile:Z

    if-eqz v2, :cond_7

    .line 478
    sget-object v2, Lcom/genouka/fumo/mvz2/DemoRenderer$eState;->APKExpansionDownload:Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

    sput-object v2, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_state:Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

    .line 479
    const-string v2, "yoyo"

    const-string v3, "State->APKExpansionDownload"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 481
    :cond_7
    const-string v2, "yoyo"

    const-string v3, "State->InitRunner"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    sget-object v2, Lcom/genouka/fumo/mvz2/DemoRenderer$eState;->InitRunner:Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

    sput-object v2, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_state:Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

    goto :goto_3

    .line 488
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_RequestedPermissions:Z

    if-nez v2, :cond_4

    .line 490
    sget-object v2, Lcom/genouka/fumo/mvz2/DemoRenderer$eState;->DownloadGameDroidInit:Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

    sput-object v2, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_state:Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

    .line 491
    sget-object v2, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_apkFilePath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_splashFilePath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_width:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_height:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_texRawWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_texRawHeight:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_texWidth:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_texHeight:I

    invoke-static/range {v2 .. v9}, Lcom/yoyogames/runner/RunnerJNILib;->RenderSplash(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    goto/16 :goto_1

    .line 496
    :pswitch_3
    sget-object v2, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_apkFilePath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_splashFilePath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_width:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_height:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_texRawWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_texRawHeight:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_texWidth:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_texHeight:I

    invoke-static/range {v2 .. v9}, Lcom/yoyogames/runner/RunnerJNILib;->RenderSplash(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 497
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_saveFilesDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "GameAssetsDROID.zip"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_apkFilePath:Ljava/lang/String;

    .line 498
    new-instance v15, Ljava/io/File;

    sget-object v2, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_apkFilePath:Ljava/lang/String;

    invoke-direct {v15, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 499
    .local v15, "fAssets":Ljava/io/File;
    const-string v2, "yoyo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!!! Asset file - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_apkFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " l="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v15}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    new-instance v16, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_saveFilesDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "GameDownload.lock"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 501
    .local v16, "fLock":Ljava/io/File;
    const-string v2, "yoyo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!!! Lock file - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " l="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    sget-object v2, Lcom/genouka/fumo/mvz2/RunnerActivity;->CurrentActivity:Lcom/genouka/fumo/mvz2/RunnerActivity;

    sget-boolean v2, Lcom/genouka/fumo/mvz2/RunnerActivity;->HasRestarted:Z

    if-eqz v2, :cond_8

    .line 505
    sget-object v2, Lcom/genouka/fumo/mvz2/DemoRenderer$eState;->InitRunner:Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

    sput-object v2, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_state:Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

    goto/16 :goto_1

    .line 507
    :cond_8
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-virtual {v15}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_f

    .line 509
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_saveFilesDir:Ljava/lang/String;

    .line 510
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_saveFilesDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "GameAssetsDROID.zip"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_apkFilePath:Ljava/lang/String;

    .line 512
    const-string v2, "yoyo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "APK File Path DGDI:: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_apkFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_context:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v21

    .line 515
    .local v21, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "hostIpAddress"

    const-string v3, "none"

    move-object/from16 v0, v21

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 516
    .local v17, "ipAddress":Ljava/lang/String;
    const-string v2, "hostPortNumber"

    const-string v3, "none"

    move-object/from16 v0, v21

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 519
    .local v20, "portNumber":Ljava/lang/String;
    const-string v2, "yoyo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found ipAddress "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in prefs"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    const-string v2, "yoyo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found portNumber "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in prefs"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    const-string v2, "none"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "none"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 525
    :cond_a
    const-string v2, "yoyo"

    const-string v3, "Checking for ipaddress in inifile"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    const/4 v13, 0x0

    .line 529
    .local v13, "bundle":Landroid/os/Bundle;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    sget-object v3, Lcom/genouka/fumo/mvz2/RunnerActivity;->CurrentActivity:Lcom/genouka/fumo/mvz2/RunnerActivity;

    invoke-virtual {v3}, Lcom/genouka/fumo/mvz2/RunnerActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    .line 530
    .local v11, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v13, v11, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 536
    .end local v11    # "ai":Landroid/content/pm/ApplicationInfo;
    :goto_4
    if-eqz v13, :cond_e

    .line 538
    new-instance v19, Lcom/genouka/fumo/mvz2/IniBundle;

    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-direct {v0, v13, v2}, Lcom/genouka/fumo/mvz2/IniBundle;-><init>(Landroid/os/Bundle;Ljava/io/InputStream;)V

    .line 540
    .local v19, "lPrefs":Lcom/genouka/fumo/mvz2/IniBundle;
    const-string v2, "YYHostIP"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/genouka/fumo/mvz2/IniBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 542
    if-nez v17, :cond_b

    .line 543
    const-string v17, "none"

    .line 546
    :cond_b
    const-string v2, "YYHostPort"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/genouka/fumo/mvz2/IniBundle;->getInt(Ljava/lang/String;)I

    move-result v18

    .line 547
    .local v18, "iportNumber":I
    if-eqz v18, :cond_d

    .line 548
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    .line 551
    :goto_5
    const-string v2, "yoyo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found ipAddress "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in our manifest"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    const-string v2, "yoyo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found portNumber "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in our manifest"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    .end local v13    # "bundle":Landroid/os/Bundle;
    .end local v18    # "iportNumber":I
    .end local v19    # "lPrefs":Lcom/genouka/fumo/mvz2/IniBundle;
    :cond_c
    :goto_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "GameAssetsDROID.zip"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 561
    .local v26, "url":Ljava/lang/String;
    sget-object v2, Lcom/genouka/fumo/mvz2/DownloadStatus;->NotConnected:Lcom/genouka/fumo/mvz2/DownloadStatus;

    sput-object v2, Lcom/genouka/fumo/mvz2/RunnerActivity;->DownloadTaskStatus:Lcom/genouka/fumo/mvz2/DownloadStatus;

    .line 562
    sget-object v2, Lcom/genouka/fumo/mvz2/DemoRenderer$eState;->DownloadGameDroidWait:Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

    sput-object v2, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_state:Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

    .line 563
    sget-object v2, Lcom/genouka/fumo/mvz2/RunnerActivity;->ViewHandler:Landroid/os/Handler;

    new-instance v3, Lcom/genouka/fumo/mvz2/DemoRenderer$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v3, v0, v1}, Lcom/genouka/fumo/mvz2/DemoRenderer$2;-><init>(Lcom/genouka/fumo/mvz2/DemoRenderer;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 532
    .end local v26    # "url":Ljava/lang/String;
    .restart local v13    # "bundle":Landroid/os/Bundle;
    :catch_1
    move-exception v10

    .line 533
    .local v10, "_e":Ljava/lang/Exception;
    const-string v2, "yoyo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception while setting up Ini"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 550
    .end local v10    # "_e":Ljava/lang/Exception;
    .restart local v18    # "iportNumber":I
    .restart local v19    # "lPrefs":Lcom/genouka/fumo/mvz2/IniBundle;
    :cond_d
    const-string v20, "none"

    goto/16 :goto_5

    .line 555
    .end local v18    # "iportNumber":I
    .end local v19    # "lPrefs":Lcom/genouka/fumo/mvz2/IniBundle;
    :cond_e
    const-string v2, "yoyo"

    const-string v3, "Bundle not found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 594
    .end local v13    # "bundle":Landroid/os/Bundle;
    .end local v17    # "ipAddress":Ljava/lang/String;
    .end local v20    # "portNumber":Ljava/lang/String;
    .end local v21    # "prefs":Landroid/content/SharedPreferences;
    :cond_f
    const-string v2, "yoyo"

    const-string v3, "GameDownload.lock exists, about to delete..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    .line 597
    const-string v2, "yoyo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "After delete flock.exists() returns "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    sget-object v2, Lcom/genouka/fumo/mvz2/DemoRenderer$eState;->InitRunner:Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

    sput-object v2, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_state:Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

    goto/16 :goto_1

    .line 602
    .end local v15    # "fAssets":Ljava/io/File;
    .end local v16    # "fLock":Ljava/io/File;
    :pswitch_4
    sget-object v2, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_apkFilePath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_splashFilePath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_width:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_height:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_texRawWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_texRawHeight:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_texWidth:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_texHeight:I

    invoke-static/range {v2 .. v9}, Lcom/yoyogames/runner/RunnerJNILib;->RenderSplash(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 605
    sget-object v2, Lcom/genouka/fumo/mvz2/DemoRenderer$4;->$SwitchMap$com$genouka$fumo$mvz2$DownloadStatus:[I

    sget-object v3, Lcom/genouka/fumo/mvz2/RunnerActivity;->DownloadTaskStatus:Lcom/genouka/fumo/mvz2/DownloadStatus;

    invoke-virtual {v3}, Lcom/genouka/fumo/mvz2/DownloadStatus;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_1

    .line 608
    :pswitch_5
    sget-object v2, Lcom/genouka/fumo/mvz2/DemoRenderer$eState;->DownloadGameDroidInit:Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

    sput-object v2, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_state:Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

    .line 609
    const-string v2, "yoyo"

    const-string v3, "In state DownloadGameDroidWait going to DownloadGameDroidInit"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 612
    :pswitch_6
    sget-object v2, Lcom/genouka/fumo/mvz2/DemoRenderer$eState;->InitRunner:Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

    sput-object v2, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_state:Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

    .line 613
    const-string v2, "yoyo"

    const-string v3, "In state DownloadGameDroidWait going to InitRunner"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 622
    :pswitch_7
    sget-object v2, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_apkFilePath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_splashFilePath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_width:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_height:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_texRawWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_texRawHeight:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_texWidth:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_texHeight:I

    invoke-static/range {v2 .. v9}, Lcom/yoyogames/runner/RunnerJNILib;->RenderSplash(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 623
    sget-boolean v2, Lcom/genouka/fumo/mvz2/RunnerActivity;->APKExpansionFileReady:Z

    if-eqz v2, :cond_4

    .line 628
    const-string v2, "PlayAPKExpansionExtension"

    const-string v3, "GetExpansionAPKFilename"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/yoyogames/runner/RunnerJNILib;->CallExtensionFunction(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 629
    .local v12, "apkFilePath":Ljava/lang/Object;
    check-cast v12, Ljava/lang/String;

    .end local v12    # "apkFilePath":Ljava/lang/Object;
    sput-object v12, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_apkFilePath:Ljava/lang/String;

    .line 631
    const-string v2, "yoyo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Download complete- path is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_apkFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    sget-object v2, Lcom/genouka/fumo/mvz2/DemoRenderer$eState;->InitRunner:Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

    sput-object v2, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_state:Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

    goto/16 :goto_1

    .line 637
    :pswitch_8
    sget-object v2, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_apkFilePath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_splashFilePath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_width:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_height:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_texRawWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_texRawHeight:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_texWidth:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_texHeight:I

    invoke-static/range {v2 .. v9}, Lcom/yoyogames/runner/RunnerJNILib;->RenderSplash(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 638
    sget-object v2, Lcom/genouka/fumo/mvz2/DemoRenderer$eState;->WaitForDoStartup:Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

    sput-object v2, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_state:Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

    .line 639
    sget-object v2, Lcom/genouka/fumo/mvz2/RunnerActivity;->ViewHandler:Landroid/os/Handler;

    new-instance v3, Lcom/genouka/fumo/mvz2/DemoRenderer$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/genouka/fumo/mvz2/DemoRenderer$3;-><init>(Lcom/genouka/fumo/mvz2/DemoRenderer;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 647
    :pswitch_9
    sget-object v2, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_apkFilePath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_splashFilePath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_width:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_height:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_texRawWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_texRawHeight:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_texWidth:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_texHeight:I

    invoke-static/range {v2 .. v9}, Lcom/yoyogames/runner/RunnerJNILib;->RenderSplash(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    goto/16 :goto_1

    .line 651
    :pswitch_a
    sget-object v2, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_apkFilePath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_splashFilePath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_width:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_height:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_texRawWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_texRawHeight:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_texWidth:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_texHeight:I

    invoke-static/range {v2 .. v9}, Lcom/yoyogames/runner/RunnerJNILib;->RenderSplash(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 652
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    .line 653
    .local v24, "time":J
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->splashEndTime:J

    cmp-long v2, v24, v2

    if-ltz v2, :cond_4

    .line 654
    sget-object v2, Lcom/genouka/fumo/mvz2/DemoRenderer$eState;->DoStartup:Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

    sput-object v2, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_state:Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

    goto/16 :goto_1

    .line 659
    .end local v24    # "time":J
    :pswitch_b
    const/4 v2, 0x1

    new-array v0, v2, [I

    move-object/from16 v23, v0

    .line 660
    .local v23, "textures":[I
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v0, v2, v1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(I[II)V

    .line 661
    sget-object v2, Lcom/genouka/fumo/mvz2/RunnerActivity;->mYYPrefs:Lcom/genouka/fumo/mvz2/IniBundle;

    if-nez v2, :cond_10

    .line 662
    sget-object v2, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_apkFilePath:Ljava/lang/String;

    sget-object v3, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_saveFilesDir:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/yoyogames/runner/RunnerJNILib;->Startup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 668
    :goto_7
    sget-object v2, Lcom/genouka/fumo/mvz2/DemoRenderer$eState;->Process:Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

    sput-object v2, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_state:Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

    goto/16 :goto_1

    .line 665
    :cond_10
    const-string v2, "yoyo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sleepmargin: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/genouka/fumo/mvz2/RunnerActivity;->mYYPrefs:Lcom/genouka/fumo/mvz2/IniBundle;

    const-string v5, "SleepMargin"

    invoke-virtual {v4, v5}, Lcom/genouka/fumo/mvz2/IniBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    sget-object v2, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_apkFilePath:Ljava/lang/String;

    sget-object v3, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_saveFilesDir:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_packageName:Ljava/lang/String;

    sget-object v5, Lcom/genouka/fumo/mvz2/RunnerActivity;->mYYPrefs:Lcom/genouka/fumo/mvz2/IniBundle;

    const-string v6, "SleepMargin"

    invoke-virtual {v5, v6}, Lcom/genouka/fumo/mvz2/IniBundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Lcom/yoyogames/runner/RunnerJNILib;->Startup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_7

    .line 674
    .end local v23    # "textures":[I
    :pswitch_c
    sget-boolean v2, Lcom/yoyogames/runner/RunnerJNILib;->ms_exitcalled:Z

    if-nez v2, :cond_4

    .line 676
    const/4 v7, 0x0

    .line 677
    .local v7, "keypadStatus":I
    sget-boolean v2, Lcom/genouka/fumo/mvz2/RunnerActivity;->XPeriaPlay:Z

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->navigation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_context:Landroid/content/Context;

    .line 678
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->navigationHidden:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_11

    .line 679
    const/4 v7, 0x1

    .line 683
    :cond_11
    sget-object v2, Lcom/genouka/fumo/mvz2/RunnerActivity;->CurrentActivity:Lcom/genouka/fumo/mvz2/RunnerActivity;

    invoke-virtual {v2}, Lcom/genouka/fumo/mvz2/RunnerActivity;->getRefreshRate()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_refreshRate:F

    .line 686
    move-object/from16 v0, p0

    iget v2, v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_width:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_height:I

    sget v4, Lcom/genouka/fumo/mvz2/RunnerActivity;->AccelX:F

    sget v5, Lcom/genouka/fumo/mvz2/RunnerActivity;->AccelY:F

    sget v6, Lcom/genouka/fumo/mvz2/RunnerActivity;->AccelZ:F

    sget v8, Lcom/genouka/fumo/mvz2/RunnerActivity;->Orientation:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_refreshRate:F

    invoke-static/range {v2 .. v9}, Lcom/yoyogames/runner/RunnerJNILib;->Process(IIFFFIIF)I

    move-result v22

    .line 687
    .local v22, "ret":I
    if-nez v22, :cond_13

    .line 689
    const-string v2, "yoyo"

    const-string v3, "RunnerJNILib.Process returned 0"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    invoke-static {}, Lcom/yoyogames/runner/RunnerJNILib;->ExitApplication()V

    .line 699
    :cond_12
    :goto_8
    invoke-static {}, Lcom/yoyogames/runner/RunnerJNILib;->canFlip()Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_state:Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

    sget-object v3, Lcom/genouka/fumo/mvz2/DemoRenderer$eState;->Process:Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

    if-eq v2, v3, :cond_11

    goto/16 :goto_1

    .line 692
    :cond_13
    const/4 v2, 0x2

    move/from16 v0, v22

    if-ne v0, v2, :cond_12

    .line 694
    const-string v2, "yoyo"

    const-string v3, "RunnerJNILib.Process has returned that it is due to restart"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    sget-object v2, Lcom/genouka/fumo/mvz2/DemoRenderer$eState;->Startup:Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

    sput-object v2, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_state:Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

    .line 696
    sget-object v2, Lcom/genouka/fumo/mvz2/RunnerActivity;->CurrentActivity:Lcom/genouka/fumo/mvz2/RunnerActivity;

    const/4 v2, 0x1

    sput-boolean v2, Lcom/genouka/fumo/mvz2/RunnerActivity;->HasRestarted:Z

    goto :goto_8

    .line 455
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch

    .line 605
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 3
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    const/4 v0, 0x0

    .line 370
    iput p2, p0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_width:I

    .line 371
    iput p3, p0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_height:I

    .line 372
    invoke-interface {p1, v0, v0, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 373
    const-string v0, "yoyo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfaceChanged :: width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 22
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 202
    sget-object v18, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_state:Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

    sget-object v19, Lcom/genouka/fumo/mvz2/DemoRenderer$eState;->Startup:Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_1

    sget-object v18, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_state:Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

    sget-object v19, Lcom/genouka/fumo/mvz2/DemoRenderer$eState;->DownloadGameDroidWait:Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_1

    .line 203
    const-string v18, "yoyo"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "onSurfaceCreated() aborted on re-create, state is currently "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_state:Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    sget v18, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_defaultFrameBuffer:I

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 210
    move-object/from16 v0, p1

    instance-of v0, v0, Ljavax/microedition/khronos/opengles/GL11;

    move/from16 v18, v0

    if-eqz v18, :cond_2

    .line 211
    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v9

    .line 212
    .local v9, "intBuffer":Ljava/nio/IntBuffer;
    const v18, 0x8ca6

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1, v9}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    .line 214
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v18

    sput v18, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_defaultFrameBuffer:I

    .line 215
    const-string v18, "yoyo"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Renderer instance is gl1.1, framebuffer object is: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget v20, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_defaultFrameBuffer:I

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    .end local v9    # "intBuffer":Ljava/nio/IntBuffer;
    :cond_2
    sget-boolean v18, Lcom/genouka/fumo/mvz2/RunnerActivity;->YoYoRunner:Z

    if-eqz v18, :cond_6

    .line 221
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 224
    .local v13, "permissionstoreq":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget v18, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v19, 0x10

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_4

    .line 226
    sget-object v18, Lcom/genouka/fumo/mvz2/RunnerActivity;->CurrentActivity:Lcom/genouka/fumo/mvz2/RunnerActivity;

    const-string v19, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static/range {v18 .. v19}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v18

    if-eqz v18, :cond_3

    .line 228
    const-string v18, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v18

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    :cond_3
    sget-object v18, Lcom/genouka/fumo/mvz2/RunnerActivity;->CurrentActivity:Lcom/genouka/fumo/mvz2/RunnerActivity;

    const-string v19, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static/range {v18 .. v19}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v18

    if-eqz v18, :cond_4

    .line 233
    const-string v18, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v0, v18

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    :cond_4
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v18

    if-lez v18, :cond_5

    .line 240
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    new-array v14, v0, [Ljava/lang/String;

    .line 241
    .local v14, "perms":[Ljava/lang/String;
    invoke-interface {v13, v14}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 242
    sget-object v18, Lcom/genouka/fumo/mvz2/RunnerActivity;->CurrentActivity:Lcom/genouka/fumo/mvz2/RunnerActivity;

    const/16 v19, 0x55

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v0, v14, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 243
    const-string v18, ""

    sput-object v18, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_saveFilesDir:Ljava/lang/String;

    .line 244
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_RequestedPermissions:Z

    .line 260
    .end local v13    # "permissionstoreq":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "perms":[Ljava/lang/String;
    :goto_1
    const/16 v18, 0x0

    sput-object v18, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_apkFilePath:Ljava/lang/String;

    .line 261
    const/4 v5, 0x0

    .line 262
    .local v5, "appInfo":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_context:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 264
    .local v12, "packMgmr":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v18, "com.genouka.travel.mvz2"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 270
    iget-object v0, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v18, v0

    sput-object v18, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_apkFilePath:Ljava/lang/String;

    .line 272
    const-string v18, "yoyo"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "APK File Path :: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_apkFilePath:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .line 276
    .local v17, "textures":[I
    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move-object/from16 v2, v17

    move/from16 v3, v19

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 279
    const/16 v18, 0xde1

    const/16 v19, 0x0

    aget v19, v17, v19

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 281
    const/16 v18, 0xde1

    const/16 v19, 0x2801

    const/high16 v20, 0x46180000    # 9728.0f

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 282
    const/16 v18, 0xde1

    const/16 v19, 0x2800

    const v20, 0x46180400    # 9729.0f

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_context:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "activity"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    .line 290
    .local v4, "activityMgmr":Landroid/app/ActivityManager;
    invoke-virtual {v4}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v8

    .line 291
    .local v8, "info":Landroid/content/pm/ConfigurationInfo;
    iget v0, v8, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    move/from16 v18, v0

    const/high16 v19, 0x20000

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_7

    .line 292
    const-string v18, "yoyo"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "OpenGL ES-2.0 is supported: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v8, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/genouka/fumo/mvz2/DemoRenderer;->getScreenOrientation()I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    .line 301
    const-string v18, "splash.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/genouka/fumo/mvz2/DemoRenderer;->getResourceAsReader(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v10

    .line 306
    .local v10, "is":Ljava/io/InputStream;
    :goto_3
    const/4 v6, 0x0

    .line 308
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    :try_start_1
    new-instance v11, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v11}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 309
    .local v11, "opt":Landroid/graphics/BitmapFactory$Options;
    const/16 v18, 0x0

    move/from16 v0, v18

    iput-boolean v0, v11, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 310
    sget-object v18, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v18

    iput-object v0, v11, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 311
    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-static {v10, v0, v11}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 312
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_texWidth:I

    .line 313
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_texHeight:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 318
    :try_start_2
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 326
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_texWidth:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/genouka/fumo/mvz2/DemoRenderer;->getNextPow2(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_texRawWidth:I

    .line 327
    move-object/from16 v0, p0

    iget v0, v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_texHeight:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/genouka/fumo/mvz2/DemoRenderer;->getNextPow2(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_texRawHeight:I

    .line 330
    move-object/from16 v0, p0

    iget v0, v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_texRawWidth:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_texRawHeight:I

    move/from16 v19, v0

    sget-object v20, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v18 .. v20}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 331
    .local v15, "pow2Bitmap":Landroid/graphics/Bitmap;
    const/16 v18, 0xde1

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v15, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 332
    const/16 v18, 0xde1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-static {v0, v1, v2, v3, v6}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;)V

    .line 333
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 350
    invoke-direct/range {p0 .. p0}, Lcom/genouka/fumo/mvz2/DemoRenderer;->initCountryCodeMapping()V

    .line 351
    sget-boolean v18, Lcom/yoyogames/runner/RunnerJNILib;->ms_loadLibraryFailed:Z

    if-nez v18, :cond_0

    .line 354
    const/16 v19, 0x0

    sget-object v18, Lcom/genouka/fumo/mvz2/RunnerActivity;->CurrentActivity:Lcom/genouka/fumo/mvz2/RunnerActivity;

    invoke-virtual/range {v18 .. v18}, Lcom/genouka/fumo/mvz2/RunnerActivity;->isTablet()Z

    move-result v18

    if-eqz v18, :cond_9

    const/16 v18, 0x1

    :goto_5
    const-string v20, ""

    move/from16 v0, v19

    move/from16 v1, v18

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/yoyogames/runner/RunnerJNILib;->SetKeyValue(IILjava/lang/String;)V

    .line 355
    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_context:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v18 .. v20}, Lcom/yoyogames/runner/RunnerJNILib;->SetKeyValue(IILjava/lang/String;)V

    .line 356
    const/16 v18, 0x2

    const/16 v19, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v18 .. v20}, Lcom/yoyogames/runner/RunnerJNILib;->SetKeyValue(IILjava/lang/String;)V

    .line 357
    const/16 v18, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_context:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    move/from16 v19, v0

    const-string v20, ""

    invoke-static/range {v18 .. v20}, Lcom/yoyogames/runner/RunnerJNILib;->SetKeyValue(IILjava/lang/String;)V

    .line 358
    const/16 v18, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_context:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    move/from16 v19, v0

    const-string v20, ""

    invoke-static/range {v18 .. v20}, Lcom/yoyogames/runner/RunnerJNILib;->SetKeyValue(IILjava/lang/String;)V

    .line 359
    const/16 v18, 0x5

    sget v19, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v20, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static/range {v18 .. v20}, Lcom/yoyogames/runner/RunnerJNILib;->SetKeyValue(IILjava/lang/String;)V

    .line 361
    const/16 v18, 0x8

    const/16 v19, 0x0

    :try_start_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/genouka/fumo/mvz2/DemoRenderer;->iso3CountryCodeToIso2CountryCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v18 .. v20}, Lcom/yoyogames/runner/RunnerJNILib;->SetKeyValue(IILjava/lang/String;)V
    :try_end_3
    .catch Ljava/util/MissingResourceException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 363
    :catch_0
    move-exception v7

    .line 364
    .local v7, "e":Ljava/util/MissingResourceException;
    const/16 v18, 0x8

    const/16 v19, 0x0

    const-string v20, "zz"

    invoke-static/range {v18 .. v20}, Lcom/yoyogames/runner/RunnerJNILib;->SetKeyValue(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 249
    .end local v4    # "activityMgmr":Landroid/app/ActivityManager;
    .end local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .end local v7    # "e":Ljava/util/MissingResourceException;
    .end local v8    # "info":Landroid/content/pm/ConfigurationInfo;
    .end local v10    # "is":Ljava/io/InputStream;
    .end local v11    # "opt":Landroid/graphics/BitmapFactory$Options;
    .end local v12    # "packMgmr":Landroid/content/pm/PackageManager;
    .end local v15    # "pow2Bitmap":Landroid/graphics/Bitmap;
    .end local v17    # "textures":[I
    .restart local v13    # "permissionstoreq":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/GMstudio"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    sput-object v18, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_saveFilesDir:Ljava/lang/String;

    .line 250
    new-instance v16, Ljava/io/File;

    sget-object v18, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_saveFilesDir:Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 251
    .local v16, "studioDir":Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->mkdir()Z

    .line 252
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v19, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_saveFilesDir:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x2f

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    sput-object v18, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_saveFilesDir:Ljava/lang/String;

    goto/16 :goto_1

    .line 257
    .end local v13    # "permissionstoreq":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "studioDir":Ljava/io/File;
    :cond_6
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_context:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    sput-object v18, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_saveFilesDir:Ljava/lang/String;

    goto/16 :goto_1

    .line 266
    .restart local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v12    # "packMgmr":Landroid/content/pm/PackageManager;
    :catch_1
    move-exception v7

    .line 267
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v7}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 268
    new-instance v18, Ljava/lang/RuntimeException;

    const-string v19, "Unable to locate assets, aborting..."

    invoke-direct/range {v18 .. v19}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 295
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v4    # "activityMgmr":Landroid/app/ActivityManager;
    .restart local v8    # "info":Landroid/content/pm/ConfigurationInfo;
    .restart local v17    # "textures":[I
    :cond_7
    const-string v18, "yoyo"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "OpenGL ES-CM 1.1 is supported: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v8, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 303
    :cond_8
    const-string v18, "assets/portrait_splash.png"

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/genouka/fumo/mvz2/DemoRenderer;->m_splashFilePath:Ljava/lang/String;

    .line 304
    const-string v18, "portrait_splash.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/genouka/fumo/mvz2/DemoRenderer;->getResourceAsReader(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v10

    .restart local v10    # "is":Ljava/io/InputStream;
    goto/16 :goto_3

    .line 317
    .restart local v6    # "bitmap":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v18

    .line 318
    :try_start_4
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 324
    :goto_6
    throw v18

    .line 354
    .restart local v11    # "opt":Landroid/graphics/BitmapFactory$Options;
    .restart local v15    # "pow2Bitmap":Landroid/graphics/Bitmap;
    :cond_9
    const/16 v18, 0x0

    goto/16 :goto_5

    .line 320
    .end local v15    # "pow2Bitmap":Landroid/graphics/Bitmap;
    :catch_2
    move-exception v18

    goto/16 :goto_4

    .end local v11    # "opt":Landroid/graphics/BitmapFactory$Options;
    :catch_3
    move-exception v19

    goto :goto_6
.end method
