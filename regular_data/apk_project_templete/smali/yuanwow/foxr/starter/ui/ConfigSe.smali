.class public Lyuanwow/foxr/starter/ui/ConfigSe;
.super Ljava/lang/Object;
.source "ConfigSe.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final defaultMenuAlpha:F = 0.8f

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public menuAlpha:F

.field public menuAlphaUserctrl:Z

.field public savepath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lyuanwow/foxr/starter/ui/ConfigSe;->clone()Lyuanwow/foxr/starter/ui/ConfigSe;

    move-result-object v0

    return-object v0
.end method

.method protected clone()Lyuanwow/foxr/starter/ui/ConfigSe;
    .locals 1
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 13
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyuanwow/foxr/starter/ui/ConfigSe;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 15
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public getRealMenuAlpha()F
    .locals 1

    .line 21
    iget-boolean v0, p0, Lyuanwow/foxr/starter/ui/ConfigSe;->menuAlphaUserctrl:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lyuanwow/foxr/starter/ui/ConfigSe;->menuAlpha:F

    goto :goto_0

    :cond_0
    const v0, 0x3f4ccccd    # 0.8f

    :goto_0
    return v0
.end method
