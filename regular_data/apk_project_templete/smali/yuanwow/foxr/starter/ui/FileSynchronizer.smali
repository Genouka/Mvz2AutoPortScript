.class public Lyuanwow/foxr/starter/ui/FileSynchronizer;
.super Ljava/lang/Object;
.source "FileSynchronizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyuanwow/foxr/starter/ui/FileSynchronizer$FileRecord;,
        Lyuanwow/foxr/starter/ui/FileSynchronizer$100000000;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static final constructor <clinit>()V
    .locals 1

    const-string v0, "GENOUKA"

    sput-object v0, Lyuanwow/foxr/starter/ui/FileSynchronizer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collectFiles(Ljava/io/File;Ljava/io/File;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lyuanwow/foxr/starter/ui/FileSynchronizer$FileRecord;",
            ">;>;)V"
        }
    .end annotation

    .line 127
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    .line 128
    if-nez p1, :cond_0

    return-void

    .line 130
    :cond_0
    const/4 v0, 0x0

    .line 138
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_1

    return-void

    .line 130
    :cond_1
    aget-object v1, p1, v0

    .line 131
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 132
    invoke-static {p0, v1, p2}, Lyuanwow/foxr/starter/ui/FileSynchronizer;->collectFiles(Ljava/io/File;Ljava/io/File;Ljava/util/Map;)V

    goto :goto_1

    .line 134
    :cond_2
    invoke-static {p0, v1}, Lyuanwow/foxr/starter/ui/FileSynchronizer;->getRelativePath(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 135
    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 136
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    :cond_3
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    new-instance v3, Lyuanwow/foxr/starter/ui/FileSynchronizer$FileRecord;

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-direct {v3, v1, v4, v5}, Lyuanwow/foxr/starter/ui/FileSynchronizer$FileRecord;-><init>(Ljava/io/File;J)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getRelativePath(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;
    .locals 1

    .line 145
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 146
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 148
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 151
    :cond_0
    return-object p1
.end method

.method public static varargs declared-synchronized synchronizeFolders(Landroid/app/Activity;[Ljava/lang/String;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "[",
            "Ljava/lang/String;",
            ")V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-class p0, Lyuanwow/foxr/starter/ui/FileSynchronizer;

    monitor-enter p0

    .line 18
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 20
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 26
    :goto_0
    array-length v3, p1

    if-lt v2, v3, :cond_9

    .line 33
    nop

    .line 34
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 35
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 59
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_8

    .line 64
    const/4 v0, 0x0

    .line 119
    :goto_2
    array-length v3, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, v3, :cond_0

    monitor-exit p0

    return-void

    .line 64
    :cond_0
    :try_start_1
    aget-object v3, p1, v0

    .line 65
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 119
    :cond_1
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 65
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 66
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 67
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lyuanwow/foxr/starter/ui/FileSynchronizer$FileRecord;

    .line 68
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    iget-object v8, v5, Lyuanwow/foxr/starter/ui/FileSynchronizer$FileRecord;->file:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 72
    goto :goto_3

    .line 76
    :cond_3
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v6

    const/4 v8, 0x1

    if-eqz v6, :cond_4

    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v9

    iget-wide v11, v5, Lyuanwow/foxr/starter/ui/FileSynchronizer$FileRecord;->lastModified:J

    cmp-long v6, v9, v11

    if-ltz v6, :cond_4

    const/4 v6, 0x0

    goto :goto_4

    :cond_4
    const/4 v6, 0x1

    .line 79
    :goto_4
    if-eqz v6, :cond_1

    .line 81
    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    .line 82
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_5

    .line 83
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 87
    :cond_5
    iget-object v6, v5, Lyuanwow/foxr/starter/ui/FileSynchronizer$FileRecord;->file:Ljava/io/File;

    invoke-virtual {v6, v8, v1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 88
    iget-object v6, v5, Lyuanwow/foxr/starter/ui/FileSynchronizer$FileRecord;->file:Ljava/io/File;

    invoke-virtual {v6, v8, v1}, Ljava/io/File;->setWritable(ZZ)Z

    .line 94
    iget-object v6, v5, Lyuanwow/foxr/starter/ui/FileSynchronizer$FileRecord;->file:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lyuanwow/foxr/starter/ui/s;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 95
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v9, 0x1a

    if-lt v6, v9, :cond_6

    .line 97
    :try_start_2
    iget-object v6, v5, Lyuanwow/foxr/starter/ui/FileSynchronizer$FileRecord;->file:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v6

    invoke-virtual {v7}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v9

    new-array v10, v8, [Ljava/nio/file/CopyOption;

    sget-object v11, Ljava/nio/file/StandardCopyOption;->COPY_ATTRIBUTES:Ljava/nio/file/StandardCopyOption;

    aput-object v11, v10, v1

    invoke-static {v6, v9, v10}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :catch_0
    move-exception v6

    .line 103
    :try_start_3
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 104
    sget-object v6, Lyuanwow/foxr/starter/ui/FileSynchronizer;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "\u65e0\u6cd5\u590d\u5236\u8fd9\u4e2a\u6587\u4ef6\uff1a"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    iget-object v10, v5, Lyuanwow/foxr/starter/ui/FileSynchronizer$FileRecord;->file:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_5
    goto :goto_6

    .line 108
    :cond_6
    :try_start_4
    iget-object v6, v5, Lyuanwow/foxr/starter/ui/FileSynchronizer$FileRecord;->file:Ljava/io/File;

    invoke-static {v6, v7}, Lyuanwow/foxr/starter/ui/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_6

    :catch_1
    move-exception v6

    .line 110
    :try_start_5
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 111
    sget-object v6, Lyuanwow/foxr/starter/ui/FileSynchronizer;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "\u65e0\u6cd5\u590d\u5236\u8fd9\u4e2a\u6587\u4ef6\uff1a"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    iget-object v10, v5, Lyuanwow/foxr/starter/ui/FileSynchronizer$FileRecord;->file:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_7
    :goto_6
    invoke-virtual {v7, v8, v1}, Ljava/io/File;->setWritable(ZZ)Z

    .line 116
    invoke-virtual {v7, v8, v1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 118
    iget-wide v5, v5, Lyuanwow/foxr/starter/ui/FileSynchronizer$FileRecord;->lastModified:J

    invoke-virtual {v7, v5, v6}, Ljava/io/File;->setLastModified(J)Z

    .line 119
    sget-object v5, Lyuanwow/foxr/starter/ui/FileSynchronizer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Updated: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 35
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 52
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    new-instance v5, Lyuanwow/foxr/starter/ui/FileSynchronizer$100000000;

    invoke-direct {v5}, Lyuanwow/foxr/starter/ui/FileSynchronizer$100000000;-><init>()V

    invoke-static {v4, v5}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyuanwow/foxr/starter/ui/FileSynchronizer$FileRecord;

    .line 59
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 20
    :cond_9
    aget-object v3, p1, v2

    .line 21
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_a

    goto :goto_7

    .line 26
    :cond_a
    invoke-static {v4, v4, v0}, Lyuanwow/foxr/starter/ui/FileSynchronizer;->collectFiles(Ljava/io/File;Ljava/io/File;Ljava/util/Map;)V

    goto :goto_8

    .line 23
    :cond_b
    :goto_7
    sget-object v4, Lyuanwow/foxr/starter/ui/FileSynchronizer;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Warning: Folder does not exist or is not a directory - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 24
    nop

    .line 26
    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 17
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
