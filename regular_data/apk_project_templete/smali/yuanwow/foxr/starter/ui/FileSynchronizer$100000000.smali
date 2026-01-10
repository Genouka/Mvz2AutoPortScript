.class Lyuanwow/foxr/starter/ui/FileSynchronizer$100000000;
.super Ljava/lang/Object;
.source "FileSynchronizer.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyuanwow/foxr/starter/ui/FileSynchronizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000000"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lyuanwow/foxr/starter/ui/FileSynchronizer$FileRecord;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lyuanwow/foxr/starter/ui/FileSynchronizer$FileRecord;

    check-cast p2, Lyuanwow/foxr/starter/ui/FileSynchronizer$FileRecord;

    invoke-virtual {p0, p1, p2}, Lyuanwow/foxr/starter/ui/FileSynchronizer$100000000;->compare(Lyuanwow/foxr/starter/ui/FileSynchronizer$FileRecord;Lyuanwow/foxr/starter/ui/FileSynchronizer$FileRecord;)I

    move-result p1

    return p1
.end method

.method public compare(Lyuanwow/foxr/starter/ui/FileSynchronizer$FileRecord;Lyuanwow/foxr/starter/ui/FileSynchronizer$FileRecord;)I
    .locals 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 56
    iget-wide v0, p1, Lyuanwow/foxr/starter/ui/FileSynchronizer$FileRecord;->lastModified:J

    iget-wide p1, p2, Lyuanwow/foxr/starter/ui/FileSynchronizer$FileRecord;->lastModified:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1
.end method
