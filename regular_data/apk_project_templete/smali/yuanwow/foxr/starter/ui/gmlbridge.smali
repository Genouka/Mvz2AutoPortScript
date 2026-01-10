.class public Lyuanwow/foxr/starter/ui/gmlbridge;
.super Ljava/lang/Object;
.source "gmlbridge.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static RuntimeException(Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 1

    .line 33
    const/4 p0, 0x0

    move-object v0, p0

    check-cast v0, Ljava/lang/Throwable;

    return-object p0
.end method

.method public static setfps(Landroid/content/Context;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)V"
        }
    .end annotation

    .line 8
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Not implement setfps"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
