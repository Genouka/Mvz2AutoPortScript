.class public Lcom/genouka/fumo/mvz2/Gamepad;
.super Ljava/lang/Object;
.source "Gamepad.java"


# static fields
.field protected static ms_GamepadHandler:Lcom/genouka/fumo/mvz2/GamepadHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static EnumerateDevices()V
    .locals 1

    .prologue
    .line 443
    sget-object v0, Lcom/genouka/fumo/mvz2/Gamepad;->ms_GamepadHandler:Lcom/genouka/fumo/mvz2/GamepadHandler;

    if-nez v0, :cond_0

    .line 444
    invoke-static {}, Lcom/genouka/fumo/mvz2/Gamepad;->Initialise()V

    .line 446
    :cond_0
    sget-object v0, Lcom/genouka/fumo/mvz2/Gamepad;->ms_GamepadHandler:Lcom/genouka/fumo/mvz2/GamepadHandler;

    invoke-virtual {v0}, Lcom/genouka/fumo/mvz2/GamepadHandler;->PollInputDevices()V

    .line 447
    return-void
.end method

.method public static Initialise()V
    .locals 2

    .prologue
    .line 423
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 424
    new-instance v0, Lcom/genouka/fumo/mvz2/GamepadHandler_API19;

    invoke-direct {v0}, Lcom/genouka/fumo/mvz2/GamepadHandler_API19;-><init>()V

    sput-object v0, Lcom/genouka/fumo/mvz2/Gamepad;->ms_GamepadHandler:Lcom/genouka/fumo/mvz2/GamepadHandler;

    .line 435
    :goto_0
    return-void

    .line 426
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 427
    new-instance v0, Lcom/genouka/fumo/mvz2/GamepadHandler_API16;

    invoke-direct {v0}, Lcom/genouka/fumo/mvz2/GamepadHandler_API16;-><init>()V

    sput-object v0, Lcom/genouka/fumo/mvz2/Gamepad;->ms_GamepadHandler:Lcom/genouka/fumo/mvz2/GamepadHandler;

    goto :goto_0

    .line 429
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_2

    .line 430
    new-instance v0, Lcom/genouka/fumo/mvz2/GamepadHandler_API12;

    invoke-direct {v0}, Lcom/genouka/fumo/mvz2/GamepadHandler_API12;-><init>()V

    sput-object v0, Lcom/genouka/fumo/mvz2/Gamepad;->ms_GamepadHandler:Lcom/genouka/fumo/mvz2/GamepadHandler;

    goto :goto_0

    .line 433
    :cond_2
    new-instance v0, Lcom/genouka/fumo/mvz2/GamepadHandler;

    invoke-direct {v0}, Lcom/genouka/fumo/mvz2/GamepadHandler;-><init>()V

    sput-object v0, Lcom/genouka/fumo/mvz2/Gamepad;->ms_GamepadHandler:Lcom/genouka/fumo/mvz2/GamepadHandler;

    goto :goto_0
.end method

.method public static handleKeyEvent(Landroid/view/KeyEvent;)V
    .locals 5
    .param p0, "ev"    # Landroid/view/KeyEvent;

    .prologue
    .line 455
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v1

    .line 456
    .local v1, "deviceId":I
    invoke-static {v1}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    .line 457
    .local v0, "device":Landroid/view/InputDevice;
    if-eqz v0, :cond_1

    if-ltz v1, :cond_1

    .line 458
    invoke-virtual {v0}, Landroid/view/InputDevice;->getSources()I

    move-result v2

    .line 459
    .local v2, "deviceSources":I
    and-int/lit8 v3, v2, 0x10

    const/16 v4, 0x10

    if-eq v3, v4, :cond_0

    and-int/lit16 v3, v2, 0x401

    const/16 v4, 0x401

    if-eq v3, v4, :cond_0

    and-int/lit16 v3, v2, 0x201

    const/16 v4, 0x201

    if-ne v3, v4, :cond_1

    .line 462
    :cond_0
    sget-object v3, Lcom/genouka/fumo/mvz2/Gamepad;->ms_GamepadHandler:Lcom/genouka/fumo/mvz2/GamepadHandler;

    invoke-virtual {v3, v1, p0}, Lcom/genouka/fumo/mvz2/GamepadHandler;->HandleKeyEvent(ILandroid/view/KeyEvent;)Z

    .line 466
    .end local v2    # "deviceSources":I
    :cond_1
    return-void
.end method

.method public static handleMotionEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .param p0, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 477
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 485
    :goto_0
    return-void

    .line 481
    :sswitch_0
    sget-object v0, Lcom/genouka/fumo/mvz2/Gamepad;->ms_GamepadHandler:Lcom/genouka/fumo/mvz2/GamepadHandler;

    invoke-virtual {v0, p0}, Lcom/genouka/fumo/mvz2/GamepadHandler;->HandleMotionEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 477
    :sswitch_data_0
    .sparse-switch
        0x201 -> :sswitch_0
        0x401 -> :sswitch_0
        0x1000010 -> :sswitch_0
    .end sparse-switch
.end method
