.class Lyuanwow/foxr/starter/ui/SeekbarDialog$100000002;
.super Ljava/lang/Object;
.source "SeekbarDialog.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyuanwow/foxr/starter/ui/SeekbarDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000002"
.end annotation


# instance fields
.field private final synthetic val$max:F

.field private final synthetic val$min:F

.field private final synthetic val$steps:I

.field private final synthetic val$tvProgress:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;FIF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyuanwow/foxr/starter/ui/SeekbarDialog$100000002;->val$tvProgress:Landroid/widget/TextView;

    iput p2, p0, Lyuanwow/foxr/starter/ui/SeekbarDialog$100000002;->val$min:F

    iput p3, p0, Lyuanwow/foxr/starter/ui/SeekbarDialog$100000002;->val$steps:I

    iput p4, p0, Lyuanwow/foxr/starter/ui/SeekbarDialog$100000002;->val$max:F

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/SeekBar;",
            "IZ)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 92
    iget-object p1, p0, Lyuanwow/foxr/starter/ui/SeekbarDialog$100000002;->val$tvProgress:Landroid/widget/TextView;

    iget p3, p0, Lyuanwow/foxr/starter/ui/SeekbarDialog$100000002;->val$min:F

    int-to-float p2, p2

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float p2, p2, v0

    iget v0, p0, Lyuanwow/foxr/starter/ui/SeekbarDialog$100000002;->val$steps:I

    int-to-float v0, v0

    div-float/2addr p2, v0

    iget v0, p0, Lyuanwow/foxr/starter/ui/SeekbarDialog$100000002;->val$max:F

    sub-float/2addr v0, p3

    mul-float p2, p2, v0

    add-float/2addr p3, p2

    invoke-static {p3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/SeekBar;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/SeekBar;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    return-void
.end method
