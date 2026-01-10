.class Lcom/genouka/fumo/mvz2/GamepadHandler_API12;
.super Lcom/genouka/fumo/mvz2/GamepadHandler;
.source "Gamepad.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genouka/fumo/mvz2/GamepadHandler_API12$RangeComparator;,
        Lcom/genouka/fumo/mvz2/GamepadHandler_API12$GamepadInstance;
    }
.end annotation


# instance fields
.field private m_Gamepads:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/genouka/fumo/mvz2/GamepadHandler_API12$GamepadInstance;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/genouka/fumo/mvz2/GamepadHandler;-><init>()V

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/genouka/fumo/mvz2/GamepadHandler_API12;->m_Gamepads:Ljava/util/ArrayList;

    .line 88
    return-void
.end method


# virtual methods
.method public GetButtonMask(Landroid/view/InputDevice;)I
    .locals 1
    .param p1, "_joystickDevice"    # Landroid/view/InputDevice;

    .prologue
    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public GetGamepad(I)Lcom/genouka/fumo/mvz2/GamepadHandler_API12$GamepadInstance;
    .locals 3
    .param p1, "_id"    # I

    .prologue
    .line 118
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/genouka/fumo/mvz2/GamepadHandler_API12;->m_Gamepads:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 119
    iget-object v2, p0, Lcom/genouka/fumo/mvz2/GamepadHandler_API12;->m_Gamepads:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genouka/fumo/mvz2/GamepadHandler_API12$GamepadInstance;

    .line 120
    .local v0, "gi":Lcom/genouka/fumo/mvz2/GamepadHandler_API12$GamepadInstance;
    iget v2, v0, Lcom/genouka/fumo/mvz2/GamepadHandler_API12$GamepadInstance;->idDevice:I

    if-ne v2, p1, :cond_0

    .line 125
    .end local v0    # "gi":Lcom/genouka/fumo/mvz2/GamepadHandler_API12$GamepadInstance;
    :goto_1
    return-object v0

    .line 118
    .restart local v0    # "gi":Lcom/genouka/fumo/mvz2/GamepadHandler_API12$GamepadInstance;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 125
    .end local v0    # "gi":Lcom/genouka/fumo/mvz2/GamepadHandler_API12$GamepadInstance;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public GetJoystickDescriptor(Landroid/view/InputDevice;)Ljava/lang/String;
    .locals 1
    .param p1, "_joystickDevice"    # Landroid/view/InputDevice;

    .prologue
    .line 93
    invoke-virtual {p1}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetProductId(Landroid/view/InputDevice;)I
    .locals 1
    .param p1, "_joystickDevice"    # Landroid/view/InputDevice;

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public GetVendorId(Landroid/view/InputDevice;)I
    .locals 1
    .param p1, "_joystickDevice"    # Landroid/view/InputDevice;

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public HandleKeyEvent(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "_id"    # I
    .param p2, "_event"    # Landroid/view/KeyEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .prologue
    .line 270
    const/4 v2, 0x0

    .line 271
    .local v2, "ret":Z
    invoke-virtual {p0, p1}, Lcom/genouka/fumo/mvz2/GamepadHandler_API12;->GetGamepad(I)Lcom/genouka/fumo/mvz2/GamepadHandler_API12$GamepadInstance;

    move-result-object v1

    .line 272
    .local v1, "gi":Lcom/genouka/fumo/mvz2/GamepadHandler_API12$GamepadInstance;
    if-eqz v1, :cond_0

    .line 273
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 274
    .local v0, "action":I
    if-nez v0, :cond_1

    .line 275
    iget v3, v1, Lcom/genouka/fumo/mvz2/GamepadHandler_API12$GamepadInstance;->idDevice:I

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-static {v3, v4}, Lcom/yoyogames/runner/RunnerJNILib;->onGPKeyDown(II)V

    .line 276
    const/4 v2, 0x1

    .line 283
    .end local v0    # "action":I
    :cond_0
    :goto_0
    return v2

    .line 278
    .restart local v0    # "action":I
    :cond_1
    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 279
    iget v3, v1, Lcom/genouka/fumo/mvz2/GamepadHandler_API12$GamepadInstance;->idDevice:I

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-static {v3, v4}, Lcom/yoyogames/runner/RunnerJNILib;->onGPKeyUp(II)V

    .line 280
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public HandleMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "_event"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .prologue
    .line 234
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v10

    const v11, 0x1000010

    and-int/2addr v10, v11

    if-eqz v10, :cond_0

    .line 235
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 236
    .local v1, "actionPointerIndex":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 237
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 262
    .end local v0    # "action":I
    .end local v1    # "actionPointerIndex":I
    :cond_0
    const/4 v10, 0x1

    return v10

    .line 239
    .restart local v0    # "action":I
    .restart local v1    # "actionPointerIndex":I
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/genouka/fumo/mvz2/GamepadHandler_API12;->GetGamepad(I)Lcom/genouka/fumo/mvz2/GamepadHandler_API12$GamepadInstance;

    move-result-object v2

    .line 240
    .local v2, "gi":Lcom/genouka/fumo/mvz2/GamepadHandler_API12$GamepadInstance;
    if-eqz v2, :cond_0

    .line 241
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget-object v10, v2, Lcom/genouka/fumo/mvz2/GamepadHandler_API12$GamepadInstance;->axes:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v7, v10, :cond_1

    .line 242
    iget-object v10, v2, Lcom/genouka/fumo/mvz2/GamepadHandler_API12$GamepadInstance;->axes:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/InputDevice$MotionRange;

    .line 243
    .local v8, "range":Landroid/view/InputDevice$MotionRange;
    const/high16 v10, 0x40000000    # 2.0f

    invoke-virtual {v8}, Landroid/view/InputDevice$MotionRange;->getAxis()I

    move-result v11

    invoke-virtual {p1, v11, v1}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v11

    invoke-virtual {v8}, Landroid/view/InputDevice$MotionRange;->getMin()F

    move-result v12

    sub-float/2addr v11, v12

    invoke-virtual {v8}, Landroid/view/InputDevice$MotionRange;->getRange()F

    move-result v12

    div-float/2addr v11, v12

    mul-float/2addr v10, v11

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float v9, v10, v11

    .line 245
    .local v9, "value":F
    iget v10, v2, Lcom/genouka/fumo/mvz2/GamepadHandler_API12$GamepadInstance;->idDevice:I

    invoke-static {v10, v7, v9}, Lcom/yoyogames/runner/RunnerJNILib;->onGPNativeAxis(IIF)V

    .line 241
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 248
    .end local v8    # "range":Landroid/view/InputDevice$MotionRange;
    .end local v9    # "value":F
    :cond_1
    const/4 v7, 0x0

    :goto_1
    iget-object v10, v2, Lcom/genouka/fumo/mvz2/GamepadHandler_API12$GamepadInstance;->hats:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v7, v10, :cond_0

    .line 249
    iget-object v10, v2, Lcom/genouka/fumo/mvz2/GamepadHandler_API12$GamepadInstance;->hats:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InputDevice$MotionRange;

    .line 250
    .local v3, "hat1":Landroid/view/InputDevice$MotionRange;
    iget-object v10, v2, Lcom/genouka/fumo/mvz2/GamepadHandler_API12$GamepadInstance;->hats:Ljava/util/ArrayList;

    add-int/lit8 v11, v7, 0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/InputDevice$MotionRange;

    .line 251
    .local v4, "hat2":Landroid/view/InputDevice$MotionRange;
    invoke-virtual {v3}, Landroid/view/InputDevice$MotionRange;->getAxis()I

    move-result v10

    invoke-virtual {p1, v10, v1}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v10

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 252
    .local v5, "hatX":I
    invoke-virtual {v4}, Landroid/view/InputDevice$MotionRange;->getAxis()I

    move-result v10

    invoke-virtual {p1, v10, v1}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v10

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 254
    .local v6, "hatY":I
    iget v10, v2, Lcom/genouka/fumo/mvz2/GamepadHandler_API12$GamepadInstance;->idDevice:I

    div-int/lit8 v11, v7, 0x2

    int-to-float v12, v5

    int-to-float v13, v6

    invoke-static {v10, v11, v12, v13}, Lcom/yoyogames/runner/RunnerJNILib;->onGPNativeHat(IIFF)V

    .line 248
    add-int/lit8 v7, v7, 0x2

    goto :goto_1

    .line 237
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public PollInputDevices()V
    .locals 19
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .prologue
    .line 134
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v9

    .line 135
    .local v9, "deviceIds":[I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    array-length v1, v9

    if-ge v12, v1, :cond_7

    .line 136
    aget v13, v9, v12

    .line 137
    .local v13, "id":I
    if-gez v13, :cond_1

    .line 135
    :cond_0
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 140
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/genouka/fumo/mvz2/GamepadHandler_API12;->GetGamepad(I)Lcom/genouka/fumo/mvz2/GamepadHandler_API12$GamepadInstance;

    move-result-object v11

    .line 141
    .local v11, "gi":Lcom/genouka/fumo/mvz2/GamepadHandler_API12$GamepadInstance;
    if-nez v11, :cond_0

    .line 143
    invoke-static {v13}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v15

    .line 144
    .local v15, "joystickDevice":Landroid/view/InputDevice;
    invoke-virtual {v15}, Landroid/view/InputDevice;->getSources()I

    move-result v10

    .line 145
    .local v10, "deviceSources":I
    and-int/lit8 v1, v10, 0x10

    const/16 v2, 0x10

    if-eq v1, v2, :cond_2

    and-int/lit16 v1, v10, 0x401

    const/16 v2, 0x401

    if-eq v1, v2, :cond_2

    and-int/lit16 v1, v10, 0x201

    const/16 v2, 0x201

    if-ne v1, v2, :cond_0

    .line 149
    :cond_2
    new-instance v11, Lcom/genouka/fumo/mvz2/GamepadHandler_API12$GamepadInstance;

    .end local v11    # "gi":Lcom/genouka/fumo/mvz2/GamepadHandler_API12$GamepadInstance;
    invoke-direct {v11}, Lcom/genouka/fumo/mvz2/GamepadHandler_API12$GamepadInstance;-><init>()V

    .line 150
    .restart local v11    # "gi":Lcom/genouka/fumo/mvz2/GamepadHandler_API12$GamepadInstance;
    invoke-virtual {v15}, Landroid/view/InputDevice;->getMotionRanges()Ljava/util/List;

    move-result-object v17

    .line 151
    .local v17, "ranges":Ljava/util/List;, "Ljava/util/List<Landroid/view/InputDevice$MotionRange;>;"
    new-instance v1, Lcom/genouka/fumo/mvz2/GamepadHandler_API12$RangeComparator;

    invoke-direct {v1}, Lcom/genouka/fumo/mvz2/GamepadHandler_API12$RangeComparator;-><init>()V

    move-object/from16 v0, v17

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 152
    iput v13, v11, Lcom/genouka/fumo/mvz2/GamepadHandler_API12$GamepadInstance;->idDevice:I

    .line 153
    invoke-virtual {v15}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v11, Lcom/genouka/fumo/mvz2/GamepadHandler_API12$GamepadInstance;->name:Ljava/lang/String;

    .line 154
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/genouka/fumo/mvz2/GamepadHandler_API12;->GetJoystickDescriptor(Landroid/view/InputDevice;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v11, Lcom/genouka/fumo/mvz2/GamepadHandler_API12$GamepadInstance;->desc:Ljava/lang/String;

    .line 155
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v11, Lcom/genouka/fumo/mvz2/GamepadHandler_API12$GamepadInstance;->axes:Ljava/util/ArrayList;

    .line 156
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v11, Lcom/genouka/fumo/mvz2/GamepadHandler_API12$GamepadInstance;->hats:Ljava/util/ArrayList;

    .line 157
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/genouka/fumo/mvz2/GamepadHandler_API12;->GetVendorId(Landroid/view/InputDevice;)I

    move-result v1

    iput v1, v11, Lcom/genouka/fumo/mvz2/GamepadHandler_API12$GamepadInstance;->vendorId:I

    .line 158
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/genouka/fumo/mvz2/GamepadHandler_API12;->GetProductId(Landroid/view/InputDevice;)I

    move-result v1

    iput v1, v11, Lcom/genouka/fumo/mvz2/GamepadHandler_API12$GamepadInstance;->productId:I

    .line 159
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/genouka/fumo/mvz2/GamepadHandler_API12;->GetButtonMask(Landroid/view/InputDevice;)I

    move-result v1

    iput v1, v11, Lcom/genouka/fumo/mvz2/GamepadHandler_API12$GamepadInstance;->buttonMask:I

    .line 161
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/InputDevice$MotionRange;

    .line 162
    .local v16, "range":Landroid/view/InputDevice$MotionRange;
    invoke-virtual/range {v16 .. v16}, Landroid/view/InputDevice$MotionRange;->getSource()I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_3

    .line 163
    invoke-virtual/range {v16 .. v16}, Landroid/view/InputDevice$MotionRange;->getAxis()I

    move-result v2

    const/16 v3, 0xf

    if-eq v2, v3, :cond_4

    .line 164
    invoke-virtual/range {v16 .. v16}, Landroid/view/InputDevice$MotionRange;->getAxis()I

    move-result v2

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 165
    :cond_4
    iget-object v2, v11, Lcom/genouka/fumo/mvz2/GamepadHandler_API12$GamepadInstance;->hats:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 168
    :cond_5
    iget-object v2, v11, Lcom/genouka/fumo/mvz2/GamepadHandler_API12$GamepadInstance;->axes:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 173
    .end local v16    # "range":Landroid/view/InputDevice$MotionRange;
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/genouka/fumo/mvz2/GamepadHandler_API12;->m_Gamepads:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    iget v1, v11, Lcom/genouka/fumo/mvz2/GamepadHandler_API12$GamepadInstance;->idDevice:I

    iget-object v2, v11, Lcom/genouka/fumo/mvz2/GamepadHandler_API12$GamepadInstance;->name:Ljava/lang/String;

    iget-object v3, v11, Lcom/genouka/fumo/mvz2/GamepadHandler_API12$GamepadInstance;->desc:Ljava/lang/String;

    iget v4, v11, Lcom/genouka/fumo/mvz2/GamepadHandler_API12$GamepadInstance;->productId:I

    iget v5, v11, Lcom/genouka/fumo/mvz2/GamepadHandler_API12$GamepadInstance;->vendorId:I

    iget-object v6, v11, Lcom/genouka/fumo/mvz2/GamepadHandler_API12$GamepadInstance;->axes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget-object v7, v11, Lcom/genouka/fumo/mvz2/GamepadHandler_API12$GamepadInstance;->hats:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    iget v8, v11, Lcom/genouka/fumo/mvz2/GamepadHandler_API12$GamepadInstance;->buttonMask:I

    invoke-static/range {v1 .. v8}, Lcom/yoyogames/runner/RunnerJNILib;->onGPDeviceAdded(ILjava/lang/String;Ljava/lang/String;IIIII)V

    .line 176
    const-string v1, "yoyo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GAMEPAD :: found device id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v9, v12

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v11, Lcom/genouka/fumo/mvz2/GamepadHandler_API12$GamepadInstance;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " desc:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v11, Lcom/genouka/fumo/mvz2/GamepadHandler_API12$GamepadInstance;->desc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " productId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v11, Lcom/genouka/fumo/mvz2/GamepadHandler_API12$GamepadInstance;->productId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " vendorId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v11, Lcom/genouka/fumo/mvz2/GamepadHandler_API12$GamepadInstance;->vendorId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " maskButtons:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v11, Lcom/genouka/fumo/mvz2/GamepadHandler_API12$GamepadInstance;->buttonMask:I

    .line 181
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " numHats:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v11, Lcom/genouka/fumo/mvz2/GamepadHandler_API12$GamepadInstance;->hats:Ljava/util/ArrayList;

    .line 182
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " numAxes:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v11, Lcom/genouka/fumo/mvz2/GamepadHandler_API12$GamepadInstance;->axes:Ljava/util/ArrayList;

    .line 183
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 176
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 189
    .end local v10    # "deviceSources":I
    .end local v11    # "gi":Lcom/genouka/fumo/mvz2/GamepadHandler_API12$GamepadInstance;
    .end local v13    # "id":I
    .end local v15    # "joystickDevice":Landroid/view/InputDevice;
    .end local v17    # "ranges":Ljava/util/List;, "Ljava/util/List<Landroid/view/InputDevice$MotionRange;>;"
    :cond_7
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 190
    .local v18, "removedDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v12, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/genouka/fumo/mvz2/GamepadHandler_API12;->m_Gamepads:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v12, v1, :cond_b

    .line 191
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/genouka/fumo/mvz2/GamepadHandler_API12;->m_Gamepads:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/genouka/fumo/mvz2/GamepadHandler_API12$GamepadInstance;

    .line 193
    .restart local v11    # "gi":Lcom/genouka/fumo/mvz2/GamepadHandler_API12$GamepadInstance;
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_4
    array-length v1, v9

    if-ge v14, v1, :cond_8

    .line 194
    iget v1, v11, Lcom/genouka/fumo/mvz2/GamepadHandler_API12$GamepadInstance;->idDevice:I

    aget v2, v9, v14

    if-ne v1, v2, :cond_a

    .line 197
    :cond_8
    array-length v1, v9

    if-ne v14, v1, :cond_9

    .line 198
    iget v1, v11, Lcom/genouka/fumo/mvz2/GamepadHandler_API12$GamepadInstance;->idDevice:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    const-string v1, "yoyo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GAMEPAD :: removed device id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v11, Lcom/genouka/fumo/mvz2/GamepadHandler_API12$GamepadInstance;->idDevice:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v11, Lcom/genouka/fumo/mvz2/GamepadHandler_API12$GamepadInstance;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " desc:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v11, Lcom/genouka/fumo/mvz2/GamepadHandler_API12$GamepadInstance;->desc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " productId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v11, Lcom/genouka/fumo/mvz2/GamepadHandler_API12$GamepadInstance;->productId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " vendorId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v11, Lcom/genouka/fumo/mvz2/GamepadHandler_API12$GamepadInstance;->vendorId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " maskButtons:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v11, Lcom/genouka/fumo/mvz2/GamepadHandler_API12$GamepadInstance;->buttonMask:I

    .line 204
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " numHats:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v11, Lcom/genouka/fumo/mvz2/GamepadHandler_API12$GamepadInstance;->hats:Ljava/util/ArrayList;

    .line 205
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " numAxes:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v11, Lcom/genouka/fumo/mvz2/GamepadHandler_API12$GamepadInstance;->axes:Ljava/util/ArrayList;

    .line 206
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 199
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_9
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_3

    .line 193
    :cond_a
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_4

    .line 212
    .end local v11    # "gi":Lcom/genouka/fumo/mvz2/GamepadHandler_API12$GamepadInstance;
    .end local v14    # "j":I
    :cond_b
    const/4 v12, 0x0

    :goto_5
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v12, v1, :cond_e

    .line 213
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 215
    .restart local v13    # "id":I
    invoke-static {v13}, Lcom/yoyogames/runner/RunnerJNILib;->onGPDeviceRemoved(I)V

    .line 218
    const/4 v14, 0x0

    .restart local v14    # "j":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/genouka/fumo/mvz2/GamepadHandler_API12;->m_Gamepads:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v14, v1, :cond_c

    .line 219
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/genouka/fumo/mvz2/GamepadHandler_API12;->m_Gamepads:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/genouka/fumo/mvz2/GamepadHandler_API12$GamepadInstance;

    iget v1, v1, Lcom/genouka/fumo/mvz2/GamepadHandler_API12$GamepadInstance;->idDevice:I

    if-ne v1, v13, :cond_d

    .line 220
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/genouka/fumo/mvz2/GamepadHandler_API12;->m_Gamepads:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 212
    :cond_c
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 218
    :cond_d
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 226
    .end local v13    # "id":I
    .end local v14    # "j":I
    :cond_e
    const-string v1, "yoyo"

    const-string v2, "GAMEPAD: Enumeration complete"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    return-void
.end method
