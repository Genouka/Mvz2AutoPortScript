.class Lcom/refix/genouka/deltarune/MainActivity$CopyFilesTask;
.super Landroid/os/AsyncTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/refix/genouka/deltarune/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x22
    name = "CopyFilesTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/net/Uri;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final this$0:Lcom/refix/genouka/deltarune/MainActivity;


# direct methods
.method public constructor <init>(Lcom/refix/genouka/deltarune/MainActivity;)V
    .locals 0

    .line 474
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/refix/genouka/deltarune/MainActivity$CopyFilesTask;->this$0:Lcom/refix/genouka/deltarune/MainActivity;

    return-void
.end method

.method static access$0(Lcom/refix/genouka/deltarune/MainActivity$CopyFilesTask;)Lcom/refix/genouka/deltarune/MainActivity;
    .locals 0

    iget-object p0, p0, Lcom/refix/genouka/deltarune/MainActivity$CopyFilesTask;->this$0:Lcom/refix/genouka/deltarune/MainActivity;

    return-object p0
.end method

.method private copyDirectoryContents(Landroid/support/v4/provider/DocumentFile;Ljava/io/File;)Z
    .locals 5

    .line 428
    invoke-virtual {p1}, Landroid/support/v4/provider/DocumentFile;->listFiles()[Landroid/support/v4/provider/DocumentFile;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 441
    :goto_0
    array-length v2, p1

    if-lt v1, v2, :cond_0

    .line 445
    const/4 p1, 0x1

    return p1

    .line 428
    :cond_0
    aget-object v2, p1, v1

    .line 429
    invoke-virtual {v2}, Landroid/support/v4/provider/DocumentFile;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 431
    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Landroid/support/v4/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 432
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_1

    .line 433
    return v0

    .line 435
    :cond_1
    invoke-direct {p0, v2, v3}, Lcom/refix/genouka/deltarune/MainActivity$CopyFilesTask;->copyDirectoryContents(Landroid/support/v4/provider/DocumentFile;Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 436
    return v0

    :cond_2
    goto :goto_1

    .line 440
    :cond_3
    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Landroid/support/v4/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v2, v3}, Lcom/refix/genouka/deltarune/MainActivity$CopyFilesTask;->copyFile(Landroid/support/v4/provider/DocumentFile;Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 441
    return v0

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private copyFile(Landroid/support/v4/provider/DocumentFile;Ljava/io/File;)Z
    .locals 5

    .line 451
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/refix/genouka/deltarune/MainActivity$CopyFilesTask;->this$0:Lcom/refix/genouka/deltarune/MainActivity;

    invoke-virtual {v1}, Lcom/refix/genouka/deltarune/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/v4/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 452
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 453
    const/16 p2, 0x1000

    new-array p2, p2, [B

    .line 454
    nop

    .line 455
    :goto_0
    invoke-virtual {v1, p2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 458
    const/4 p1, 0x1

    return p1

    .line 456
    :cond_0
    invoke-virtual {v2, p2, v0, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 458
    :catch_0
    move-exception p2

    .line 460
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Failed to copy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/v4/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "CopyError"

    invoke-static {v1, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 461
    return v0
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/net/Uri;)Ljava/lang/Boolean;
    .locals 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 416
    const/4 v0, 0x0

    aget-object p1, p1, v0

    .line 417
    iget-object v1, p0, Lcom/refix/genouka/deltarune/MainActivity$CopyFilesTask;->this$0:Lcom/refix/genouka/deltarune/MainActivity;

    invoke-static {v1, p1}, Landroid/support/v4/provider/DocumentFile;->fromTreeUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/support/v4/provider/DocumentFile;

    move-result-object p1

    .line 418
    invoke-static {}, Lyuanwow/foxr/starter/ui/s;->getSavePathFile()Ljava/io/File;

    move-result-object v1

    .line 420
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/provider/DocumentFile;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 421
    invoke-direct {p0, p1, v1}, Lcom/refix/genouka/deltarune/MainActivity$CopyFilesTask;->copyDirectoryContents(Landroid/support/v4/provider/DocumentFile;Ljava/io/File;)Z

    move-result p1

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p1}, Ljava/lang/Boolean;-><init>(Z)V

    return-object v0

    .line 423
    :cond_0
    new-instance p1, Ljava/lang/Boolean;

    invoke-direct {p1, v0}, Ljava/lang/Boolean;-><init>(Z)V

    return-object p1
.end method

.method protected bridge doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/refix/genouka/deltarune/MainActivity$CopyFilesTask;->doInBackground([Landroid/net/Uri;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 467
    move-object v0, p1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 468
    iget-object p1, p0, Lcom/refix/genouka/deltarune/MainActivity$CopyFilesTask;->this$0:Lcom/refix/genouka/deltarune/MainActivity;

    const-string v1, "\u5bfc\u5165\u5b8c\u6210!"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 471
    :cond_0
    iget-object p1, p0, Lcom/refix/genouka/deltarune/MainActivity$CopyFilesTask;->this$0:Lcom/refix/genouka/deltarune/MainActivity;

    const-string v1, "\u5bfc\u5165\u5931\u8d25!"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 473
    :goto_0
    iget-object p1, p0, Lcom/refix/genouka/deltarune/MainActivity$CopyFilesTask;->this$0:Lcom/refix/genouka/deltarune/MainActivity;

    invoke-virtual {p1}, Lcom/refix/genouka/deltarune/MainActivity;->finish()V

    return-void
.end method

.method protected bridge onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/refix/genouka/deltarune/MainActivity$CopyFilesTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
