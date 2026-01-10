.class Lyuanwow/foxr/starter/ui/SeekbarDialog$100000003;
.super Ljava/lang/Object;
.source "SeekbarDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyuanwow/foxr/starter/ui/SeekbarDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000003"
.end annotation


# instance fields
.field private final synthetic val$listener:Lyuanwow/foxr/starter/ui/SeekbarDialog$OnSeekBarFloatValueListener;

.field private final synthetic val$max:F

.field private final synthetic val$min:F

.field private final synthetic val$seekBar:Landroid/widget/SeekBar;

.field private final synthetic val$steps:I


# direct methods
.method constructor <init>(Lyuanwow/foxr/starter/ui/SeekbarDialog$OnSeekBarFloatValueListener;FLandroid/widget/SeekBar;IF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyuanwow/foxr/starter/ui/SeekbarDialog$100000003;->val$listener:Lyuanwow/foxr/starter/ui/SeekbarDialog$OnSeekBarFloatValueListener;

    iput p2, p0, Lyuanwow/foxr/starter/ui/SeekbarDialog$100000003;->val$min:F

    iput-object p3, p0, Lyuanwow/foxr/starter/ui/SeekbarDialog$100000003;->val$seekBar:Landroid/widget/SeekBar;

    iput p4, p0, Lyuanwow/foxr/starter/ui/SeekbarDialog$100000003;->val$steps:I

    iput p5, p0, Lyuanwow/foxr/starter/ui/SeekbarDialog$100000003;->val$max:F

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/DialogInterface;",
            "I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 111
    iget-object p1, p0, Lyuanwow/foxr/starter/ui/SeekbarDialog$100000003;->val$listener:Lyuanwow/foxr/starter/ui/SeekbarDialog$OnSeekBarFloatValueListener;

    if-eqz p1, :cond_0

    .line 112
    iget p2, p0, Lyuanwow/foxr/starter/ui/SeekbarDialog$100000003;->val$min:F

    iget-object v0, p0, Lyuanwow/foxr/starter/ui/SeekbarDialog$100000003;->val$seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    iget v1, p0, Lyuanwow/foxr/starter/ui/SeekbarDialog$100000003;->val$steps:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lyuanwow/foxr/starter/ui/SeekbarDialog$100000003;->val$max:F

    iget v2, p0, Lyuanwow/foxr/starter/ui/SeekbarDialog$100000003;->val$min:F

    sub-float/2addr v1, v2

    mul-float v0, v0, v1

    add-float/2addr p2, v0

    invoke-interface {p1, p2}, Lyuanwow/foxr/starter/ui/SeekbarDialog$OnSeekBarFloatValueListener;->onValueSelected(F)V

    :cond_0
    return-void
.end method
