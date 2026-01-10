.class Lyuanwow/foxr/starter/ui/s$100000009;
.super Ljava/lang/Object;
.source "s.java"

# interfaces
.implements Lyuanwow/foxr/starter/ui/SeekbarDialog$OnSeekBarFloatValueListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyuanwow/foxr/starter/ui/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000009"
.end annotation


# instance fields
.field private final synthetic val$c:Landroid/app/Activity;

.field private final synthetic val$config:Lyuanwow/foxr/starter/ui/ConfigSe;


# direct methods
.method constructor <init>(Lyuanwow/foxr/starter/ui/ConfigSe;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyuanwow/foxr/starter/ui/s$100000009;->val$config:Lyuanwow/foxr/starter/ui/ConfigSe;

    iput-object p2, p0, Lyuanwow/foxr/starter/ui/s$100000009;->val$c:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public onValueSelected(F)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 491
    iget-object v0, p0, Lyuanwow/foxr/starter/ui/s$100000009;->val$config:Lyuanwow/foxr/starter/ui/ConfigSe;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lyuanwow/foxr/starter/ui/ConfigSe;->menuAlphaUserctrl:Z

    .line 492
    iget-object v0, p0, Lyuanwow/foxr/starter/ui/s$100000009;->val$config:Lyuanwow/foxr/starter/ui/ConfigSe;

    iput p1, v0, Lyuanwow/foxr/starter/ui/ConfigSe;->menuAlpha:F

    .line 493
    invoke-static {}, Lyuanwow/foxr/starter/ui/GenoukaCommonConfig;->getIns()Lyuanwow/foxr/starter/ui/GenoukaCommonConfig;

    move-result-object v0

    iget-object v1, p0, Lyuanwow/foxr/starter/ui/s$100000009;->val$config:Lyuanwow/foxr/starter/ui/ConfigSe;

    invoke-virtual {v0, v1}, Lyuanwow/foxr/starter/ui/GenoukaCommonConfig;->setConfig(Lyuanwow/foxr/starter/ui/ConfigSe;)Lyuanwow/foxr/starter/ui/GenoukaCommonConfig;

    move-result-object v0

    invoke-virtual {v0}, Lyuanwow/foxr/starter/ui/GenoukaCommonConfig;->syncConfig()Lyuanwow/foxr/starter/ui/GenoukaCommonConfig;

    .line 494
    iget-object v0, p0, Lyuanwow/foxr/starter/ui/s$100000009;->val$c:Landroid/app/Activity;

    invoke-static {v0}, Lyuanwow/foxr/starter/ui/s;->access$1000039(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v0

    .line 495
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
