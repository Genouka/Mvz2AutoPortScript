.class Lcom/genouka/fumo/mvz2/GamepadHandler_API16;
.super Lcom/genouka/fumo/mvz2/GamepadHandler_API12;
.source "Gamepad.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 290
    invoke-direct {p0}, Lcom/genouka/fumo/mvz2/GamepadHandler_API12;-><init>()V

    return-void
.end method


# virtual methods
.method public GetJoystickDescriptor(Landroid/view/InputDevice;)Ljava/lang/String;
    .locals 2
    .param p1, "_joystickDevice"    # Landroid/view/InputDevice;

    .prologue
    .line 296
    invoke-virtual {p1}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 297
    .local v0, "desc":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 301
    .end local v0    # "desc":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "desc":Ljava/lang/String;
    :cond_0
    invoke-super {p0, p1}, Lcom/genouka/fumo/mvz2/GamepadHandler_API12;->GetJoystickDescriptor(Landroid/view/InputDevice;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
