.class public Lcom/refix/genouka/deltarune/GlobalApplication;
.super Lcom/genouka/fumo/mvz2/RunnerApplication;
.source "GlobalApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/refix/genouka/deltarune/GlobalApplication$CrashHandler;,
        Lcom/refix/genouka/deltarune/GlobalApplication$CrashActivity;
    }
.end annotation


# static fields
.field public static application:Lcom/refix/genouka/deltarune/GlobalApplication;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 307
    invoke-direct {p0}, Lcom/genouka/fumo/mvz2/RunnerApplication;-><init>()V

    return-void
.end method

.method public static varargs closeIO([Ljava/io/Closeable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/io/Closeable;",
            ")V"
        }
    .end annotation

    .line 103
    const/4 v0, 0x0

    .line 105
    :goto_0
    array-length v1, p0

    if-lt v0, v1, :cond_0

    return-void

    .line 103
    :cond_0
    aget-object v1, p0, v0

    .line 105
    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static toString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 94
    invoke-static {p0, v0}, Lcom/refix/genouka/deltarune/GlobalApplication;->write(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 96
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    :try_start_0
    const-string v4, "UTF-8"

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 98
    new-array v5, v3, [Ljava/io/Closeable;

    aput-object p0, v5, v2

    aput-object v0, v5, v1

    invoke-static {v5}, Lcom/refix/genouka/deltarune/GlobalApplication;->closeIO([Ljava/io/Closeable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v4

    :catchall_0
    move-exception v4

    new-array v3, v3, [Ljava/io/Closeable;

    aput-object p0, v3, v2

    aput-object v0, v3, v1

    invoke-static {v3}, Lcom/refix/genouka/deltarune/GlobalApplication;->closeIO([Ljava/io/Closeable;)V

    throw v4
.end method

.method public static write(Ljava/io/File;[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "[B)V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 81
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 83
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 84
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 86
    const/4 p0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    :try_start_0
    invoke-static {v0, p1}, Lcom/refix/genouka/deltarune/GlobalApplication;->write(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    new-array v2, v2, [Ljava/io/Closeable;

    aput-object v0, v2, v1

    aput-object p1, v2, p0

    invoke-static {v2}, Lcom/refix/genouka/deltarune/GlobalApplication;->closeIO([Ljava/io/Closeable;)V

    return-void

    .line 86
    :catchall_0
    move-exception v3

    .line 88
    new-array v2, v2, [Ljava/io/Closeable;

    aput-object v0, v2, v1

    aput-object p1, v2, p0

    invoke-static {v2}, Lcom/refix/genouka/deltarune/GlobalApplication;->closeIO([Ljava/io/Closeable;)V

    throw v3
.end method

.method public static write(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/io/OutputStream;",
            ")V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    const/16 v0, 0x2000

    new-array v0, v0, [B

    .line 73
    nop

    .line 74
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return-void

    .line 75
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate()V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 51
    sput-object p0, Lcom/refix/genouka/deltarune/GlobalApplication;->application:Lcom/refix/genouka/deltarune/GlobalApplication;

    .line 52
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 54
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/refix/genouka/deltarune/GlobalApplication;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const-string v3, ".genouka_test_enableHiddenApiBypass"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 55
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, ""

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lorg/lsposed/hiddenapibypass/HiddenApiBypass;->addHiddenApiExemptions([Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    goto :goto_0

    :catchall_0
    move-exception v1

    .line 59
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 62
    :goto_0
    :try_start_1
    new-instance v1, Ljava/io/File;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/refix/genouka/deltarune/GlobalApplication;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const-string v2, ".genouka_test_disableCrashHandler"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 63
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 64
    invoke-static {}, Lcom/refix/genouka/deltarune/GlobalApplication$CrashHandler;->getInstance()Lcom/refix/genouka/deltarune/GlobalApplication$CrashHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/refix/genouka/deltarune/GlobalApplication$CrashHandler;->registerGlobal(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1
    goto :goto_1

    :catchall_1
    move-exception v0

    .line 67
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method
