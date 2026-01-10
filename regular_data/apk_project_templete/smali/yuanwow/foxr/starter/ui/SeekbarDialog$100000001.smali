.class Lyuanwow/foxr/starter/ui/SeekbarDialog$100000001;
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
    name = "100000001"
.end annotation


# instance fields
.field private final synthetic val$listener:Lyuanwow/foxr/starter/ui/SeekbarDialog$OnSeekBarValueListener;

.field private final synthetic val$seekBar:Landroid/widget/SeekBar;


# direct methods
.method constructor <init>(Lyuanwow/foxr/starter/ui/SeekbarDialog$OnSeekBarValueListener;Landroid/widget/SeekBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyuanwow/foxr/starter/ui/SeekbarDialog$100000001;->val$listener:Lyuanwow/foxr/starter/ui/SeekbarDialog$OnSeekBarValueListener;

    iput-object p2, p0, Lyuanwow/foxr/starter/ui/SeekbarDialog$100000001;->val$seekBar:Landroid/widget/SeekBar;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/DialogInterface;",
            "I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 64
    iget-object p1, p0, Lyuanwow/foxr/starter/ui/SeekbarDialog$100000001;->val$listener:Lyuanwow/foxr/starter/ui/SeekbarDialog$OnSeekBarValueListener;

    if-eqz p1, :cond_0

    .line 65
    iget-object p2, p0, Lyuanwow/foxr/starter/ui/SeekbarDialog$100000001;->val$seekBar:Landroid/widget/SeekBar;

    invoke-virtual {p2}, Landroid/widget/SeekBar;->getProgress()I

    move-result p2

    invoke-interface {p1, p2}, Lyuanwow/foxr/starter/ui/SeekbarDialog$OnSeekBarValueListener;->onValueSelected(I)V

    :cond_0
    return-void
.end method
