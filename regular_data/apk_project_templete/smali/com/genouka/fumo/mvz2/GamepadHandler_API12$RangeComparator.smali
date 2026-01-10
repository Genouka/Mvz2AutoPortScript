.class Lcom/genouka/fumo/mvz2/GamepadHandler_API12$RangeComparator;
.super Ljava/lang/Object;
.source "Gamepad.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genouka/fumo/mvz2/GamepadHandler_API12;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RangeComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/view/InputDevice$MotionRange;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/view/InputDevice$MotionRange;Landroid/view/InputDevice$MotionRange;)I
    .locals 4
    .param p1, "arg0"    # Landroid/view/InputDevice$MotionRange;
    .param p2, "arg1"    # Landroid/view/InputDevice$MotionRange;

    .prologue
    const/16 v3, 0x17

    const/16 v2, 0x16

    .line 65
    invoke-virtual {p1}, Landroid/view/InputDevice$MotionRange;->getAxis()I

    move-result v0

    .line 66
    .local v0, "arg0Axis":I
    invoke-virtual {p2}, Landroid/view/InputDevice$MotionRange;->getAxis()I

    move-result v1

    .line 67
    .local v1, "arg1Axis":I
    if-ne v0, v2, :cond_2

    .line 68
    const/16 v0, 0x17

    .line 72
    :cond_0
    :goto_0
    if-ne v1, v2, :cond_3

    .line 73
    const/16 v1, 0x17

    .line 78
    :cond_1
    :goto_1
    sub-int v2, v0, v1

    return v2

    .line 69
    :cond_2
    if-ne v0, v3, :cond_0

    .line 70
    const/16 v0, 0x16

    goto :goto_0

    .line 74
    :cond_3
    if-ne v1, v3, :cond_1

    .line 75
    const/16 v1, 0x16

    goto :goto_1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 61
    check-cast p1, Landroid/view/InputDevice$MotionRange;

    check-cast p2, Landroid/view/InputDevice$MotionRange;

    invoke-virtual {p0, p1, p2}, Lcom/genouka/fumo/mvz2/GamepadHandler_API12$RangeComparator;->compare(Landroid/view/InputDevice$MotionRange;Landroid/view/InputDevice$MotionRange;)I

    move-result v0

    return v0
.end method
