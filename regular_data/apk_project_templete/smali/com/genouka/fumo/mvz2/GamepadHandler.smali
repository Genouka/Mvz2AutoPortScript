.class Lcom/genouka/fumo/mvz2/GamepadHandler;
.super Ljava/lang/Object;
.source "Gamepad.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public HandleKeyEvent(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "_id"    # I
    .param p2, "_event"    # Landroid/view/KeyEvent;

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public HandleMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "_event"    # Landroid/view/MotionEvent;

    .prologue
    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public PollInputDevices()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method
