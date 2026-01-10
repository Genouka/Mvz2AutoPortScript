.class public Lyuanwow/foxr/starter/ui/FileSynchronizer$FileRecord;
.super Ljava/lang/Object;
.source "FileSynchronizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyuanwow/foxr/starter/ui/FileSynchronizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x29
    name = "FileRecord"
.end annotation


# instance fields
.field final file:Ljava/io/File;

.field final lastModified:J


# direct methods
.method constructor <init>(Ljava/io/File;J)V
    .locals 0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-object p1, p0, Lyuanwow/foxr/starter/ui/FileSynchronizer$FileRecord;->file:Ljava/io/File;

    .line 161
    iput-wide p2, p0, Lyuanwow/foxr/starter/ui/FileSynchronizer$FileRecord;->lastModified:J

    return-void
.end method
