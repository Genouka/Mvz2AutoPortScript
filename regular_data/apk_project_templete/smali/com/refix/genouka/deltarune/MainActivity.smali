.class public Lcom/refix/genouka/deltarune/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/refix/genouka/deltarune/MainActivity$100000000;,
        Lcom/refix/genouka/deltarune/MainActivity$100000001;,
        Lcom/refix/genouka/deltarune/MainActivity$100000002;,
        Lcom/refix/genouka/deltarune/MainActivity$100000003;,
        Lcom/refix/genouka/deltarune/MainActivity$100000004;,
        Lcom/refix/genouka/deltarune/MainActivity$and;,
        Lcom/refix/genouka/deltarune/MainActivity$100000006;,
        Lcom/refix/genouka/deltarune/MainActivity$CopyFilesTask;
    }
.end annotation


# static fields
.field private static DATE_FORMAT:Ljava/text/DateFormat; = null

.field private static final REQUEST_CODE_OPEN_DIR:I = 0x1


# instance fields
.field private volatile isReadme:Z

.field private path:Ljava/lang/String;

.field private volatile tenDelay:Z

.field private webView:Landroid/webkit/WebView;


# direct methods
.method static final constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy_MM_dd-HH_mm_ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/refix/genouka/deltarune/MainActivity;->DATE_FORMAT:Ljava/text/DateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 507
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/refix/genouka/deltarune/MainActivity;->path:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/refix/genouka/deltarune/MainActivity;->isReadme:Z

    iput-boolean v0, p0, Lcom/refix/genouka/deltarune/MainActivity;->tenDelay:Z

    return-void
.end method

.method static synthetic access$L1000000(Lcom/refix/genouka/deltarune/MainActivity;)Landroid/webkit/WebView;
    .locals 0

    iget-object p0, p0, Lcom/refix/genouka/deltarune/MainActivity;->webView:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$L1000002(Lcom/refix/genouka/deltarune/MainActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/refix/genouka/deltarune/MainActivity;->path:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$L1000003(Lcom/refix/genouka/deltarune/MainActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/refix/genouka/deltarune/MainActivity;->isReadme:Z

    return p0
.end method

.method static synthetic access$L1000004(Lcom/refix/genouka/deltarune/MainActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/refix/genouka/deltarune/MainActivity;->tenDelay:Z

    return p0
.end method

.method static synthetic access$L1000005()Ljava/text/DateFormat;
    .locals 1

    sget-object v0, Lcom/refix/genouka/deltarune/MainActivity;->DATE_FORMAT:Ljava/text/DateFormat;

    return-object v0
.end method

.method static synthetic access$S1000000(Lcom/refix/genouka/deltarune/MainActivity;Landroid/webkit/WebView;)V
    .locals 0

    iput-object p1, p0, Lcom/refix/genouka/deltarune/MainActivity;->webView:Landroid/webkit/WebView;

    return-void
.end method

.method static synthetic access$S1000002(Lcom/refix/genouka/deltarune/MainActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/refix/genouka/deltarune/MainActivity;->path:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$S1000003(Lcom/refix/genouka/deltarune/MainActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/refix/genouka/deltarune/MainActivity;->isReadme:Z

    return-void
.end method

.method static synthetic access$S1000004(Lcom/refix/genouka/deltarune/MainActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/refix/genouka/deltarune/MainActivity;->tenDelay:Z

    return-void
.end method

.method static synthetic access$S1000005(Ljava/text/DateFormat;)V
    .locals 0

    sput-object p0, Lcom/refix/genouka/deltarune/MainActivity;->DATE_FORMAT:Ljava/text/DateFormat;

    return-void
.end method

.method private openFolderPicker()V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 60
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT_TREE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 61
    const/16 v1, 0x43

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 64
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/refix/genouka/deltarune/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static readFileAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 477
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 478
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 480
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 481
    nop

    .line 482
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 486
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 483
    :cond_0
    :try_start_2
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 482
    :catchall_0
    move-exception p0

    move-object v1, p0

    :try_start_3
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    if-eqz v1, :cond_2

    if-eq v1, p0, :cond_1

    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    move-object p0, v1

    :cond_2
    throw p0
.end method

.method public static writeStringToFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 489
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 492
    const/4 p0, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 493
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 494
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    nop

    .line 497
    const/4 v1, 0x0

    :try_start_1
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 498
    :try_start_2
    invoke-virtual {v2, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 500
    const/4 p1, 0x1

    :try_start_3
    invoke-virtual {v0, p1, p0}, Ljava/io/File;->setReadable(ZZ)Z

    .line 501
    invoke-virtual {v0, p1, p0}, Ljava/io/File;->setWritable(ZZ)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 502
    return p1

    .line 498
    :catchall_0
    move-exception p1

    move-object v1, p1

    :try_start_4
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    if-eqz v1, :cond_2

    if-eq v1, p1, :cond_1

    :try_start_5
    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    move-object p1, v1

    :cond_2
    throw p1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 502
    :catch_0
    move-exception p1

    .line 504
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 505
    return p0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 393
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 394
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 395
    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    if-eqz p3, :cond_0

    .line 396
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 398
    invoke-virtual {p0}, Lcom/refix/genouka/deltarune/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const/4 p3, 0x3

    invoke-virtual {p2, p1, p3}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V

    .line 403
    new-instance p2, Lcom/refix/genouka/deltarune/MainActivity$CopyFilesTask;

    invoke-direct {p2, p0}, Lcom/refix/genouka/deltarune/MainActivity$CopyFilesTask;-><init>(Lcom/refix/genouka/deltarune/MainActivity;)V

    new-array p3, v0, [Landroid/net/Uri;

    const/4 v0, 0x0

    aput-object p1, p3, v0

    invoke-virtual {p2, p3}, Lcom/refix/genouka/deltarune/MainActivity$CopyFilesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 405
    :cond_0
    const-string p1, "\u6ca1\u6709\u9009\u62e9\u4efb\u4f55\u6587\u4ef6\u5939"

    const/16 p2, 0x3e8

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 406
    invoke-virtual {p0}, Lcom/refix/genouka/deltarune/MainActivity;->finish()V

    :goto_0
    goto :goto_1

    .line 408
    :cond_1
    const/16 p2, 0xf9f

    if-ne p1, p2, :cond_2

    .line 409
    invoke-virtual {p0}, Lcom/refix/genouka/deltarune/MainActivity;->finish()V

    :cond_2
    :goto_1
    return-void
.end method

.method public onBackPressed()V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 304
    iget-object v0, p0, Lcom/refix/genouka/deltarune/MainActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/refix/genouka/deltarune/MainActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 307
    :cond_0
    iget-boolean v0, p0, Lcom/refix/genouka/deltarune/MainActivity;->isReadme:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/refix/genouka/deltarune/MainActivity;->isReadme:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/refix/genouka/deltarune/MainActivity;->tenDelay:Z

    if-eqz v0, :cond_2

    .line 308
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 69
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/refix/genouka/deltarune/MainActivity;->setRequestedOrientation(I)V

    .line 70
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0}, Lcom/refix/genouka/deltarune/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "genouka"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 72
    const/high16 v1, -0x1000000

    const/4 v2, -0x1

    if-eqz p1, :cond_0

    const-string v3, "importsave"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 75
    new-instance p1, Landroid/widget/LinearLayout;

    invoke-direct {p1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 76
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 82
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 83
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    const-string v1, "\u5b8c\u6210\u6216\u53d6\u6d88\u64cd\u4f5c\u540e\u8bf7\u70b9\u51fb\u8fd4\u56de\u6309\u952e\u3002"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 92
    invoke-virtual {p0, p1}, Lcom/refix/genouka/deltarune/MainActivity;->setContentView(Landroid/view/View;)V

    .line 93
    invoke-direct {p0}, Lcom/refix/genouka/deltarune/MainActivity;->openFolderPicker()V

    .line 94
    return-void

    .line 96
    :cond_0
    const/16 v3, 0x3e8

    const-string v4, "\u5b8c\u6210\u6216\u53d6\u6d88\u64cd\u4f5c\u540e\u8bf7\u70b9\u51fb\u7cfb\u7edf\u7684\u8fd4\u56de\u6309\u952e\u6216\u8005\u70b9\u51fb\u5c4f\u5e55\u8fd4\u56de\u3002"

    if-eqz p1, :cond_1

    const-string v5, "reqmike"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 97
    new-instance p1, Landroid/widget/LinearLayout;

    invoke-direct {p1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 98
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 104
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 105
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    new-instance v1, Lcom/refix/genouka/deltarune/MainActivity$100000000;

    invoke-direct {v1, p0}, Lcom/refix/genouka/deltarune/MainActivity$100000000;-><init>(Lcom/refix/genouka/deltarune/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 118
    invoke-virtual {p0, p1}, Lcom/refix/genouka/deltarune/MainActivity;->setContentView(Landroid/view/View;)V

    .line 119
    new-instance v0, Lcom/refix/genouka/deltarune/MainActivity$100000001;

    invoke-direct {v0, p0}, Lcom/refix/genouka/deltarune/MainActivity$100000001;-><init>(Lcom/refix/genouka/deltarune/MainActivity;)V

    int-to-long v1, v3

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 127
    return-void

    .line 129
    :cond_1
    if-eqz p1, :cond_2

    const-string v5, "reqstorage"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 130
    new-instance p1, Landroid/widget/LinearLayout;

    invoke-direct {p1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 131
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 137
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 138
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    new-instance v1, Lcom/refix/genouka/deltarune/MainActivity$100000002;

    invoke-direct {v1, p0}, Lcom/refix/genouka/deltarune/MainActivity$100000002;-><init>(Lcom/refix/genouka/deltarune/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 151
    invoke-virtual {p0, p1}, Lcom/refix/genouka/deltarune/MainActivity;->setContentView(Landroid/view/View;)V

    .line 152
    new-instance v0, Lcom/refix/genouka/deltarune/MainActivity$100000003;

    invoke-direct {v0, p0}, Lcom/refix/genouka/deltarune/MainActivity$100000003;-><init>(Lcom/refix/genouka/deltarune/MainActivity;)V

    int-to-long v1, v3

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 160
    return-void

    .line 163
    :cond_2
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 164
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    :try_start_0
    new-instance v3, Landroid/webkit/WebView;

    invoke-direct {v3, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/refix/genouka/deltarune/MainActivity;->webView:Landroid/webkit/WebView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 181
    iget-object v2, p0, Lcom/refix/genouka/deltarune/MainActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    iget-object v2, p0, Lcom/refix/genouka/deltarune/MainActivity;->webView:Landroid/webkit/WebView;

    new-instance v3, Landroid/webkit/WebViewClient;

    invoke-direct {v3}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 185
    iget-object v2, p0, Lcom/refix/genouka/deltarune/MainActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    .line 186
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 187
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 189
    iget-object v2, p0, Lcom/refix/genouka/deltarune/MainActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 192
    invoke-virtual {p0, v1}, Lcom/refix/genouka/deltarune/MainActivity;->setContentView(Landroid/view/View;)V

    .line 194
    iget-object v1, p0, Lcom/refix/genouka/deltarune/MainActivity;->webView:Landroid/webkit/WebView;

    new-instance v2, Lcom/refix/genouka/deltarune/MainActivity$100000004;

    invoke-direct {v2, p0}, Lcom/refix/genouka/deltarune/MainActivity$100000004;-><init>(Lcom/refix/genouka/deltarune/MainActivity;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 230
    iget-object v1, p0, Lcom/refix/genouka/deltarune/MainActivity;->webView:Landroid/webkit/WebView;

    new-instance v2, Landroid/webkit/WebChromeClient;

    invoke-direct {v2}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 232
    iget-object v1, p0, Lcom/refix/genouka/deltarune/MainActivity;->webView:Landroid/webkit/WebView;

    new-instance v2, Lcom/refix/genouka/deltarune/MainActivity$and;

    invoke-direct {v2, p0}, Lcom/refix/genouka/deltarune/MainActivity$and;-><init>(Lcom/refix/genouka/deltarune/MainActivity;)V

    const-string v4, "Android"

    invoke-virtual {v1, v2, v4}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    if-eqz p1, :cond_7

    const-string v1, "editsave"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 236
    invoke-virtual {p0}, Lcom/refix/genouka/deltarune/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "path"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/refix/genouka/deltarune/MainActivity;->path:Ljava/lang/String;

    .line 237
    new-instance p1, Ljava/io/File;

    iget-object v1, p0, Lcom/refix/genouka/deltarune/MainActivity;->path:Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    .line 238
    const/4 v1, 0x6

    const/4 v2, 0x7

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 239
    nop

    .line 240
    const-string v1, "1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "deltarune4"

    if-eqz v1, :cond_3

    .line 241
    const-string v1, "deltarune1"

    goto :goto_0

    .line 240
    :cond_3
    move-object v1, v2

    .line 243
    :goto_0
    const-string v3, "2"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 244
    const-string v1, "deltarune2"

    .line 246
    :cond_4
    const-string v3, "3"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 247
    const-string v1, "deltarune3"

    .line 249
    :cond_5
    const-string v3, "4"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 250
    goto :goto_1

    .line 249
    :cond_6
    move-object v2, v1

    .line 253
    :goto_1
    iget-object p1, p0, Lcom/refix/genouka/deltarune/MainActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "https://dreditorcn.genouka.top/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "/savefile/editor.html?nocache="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const v4, 0x57e40

    int-to-long v4, v4

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 254
    iput-boolean v0, p0, Lcom/refix/genouka/deltarune/MainActivity;->isReadme:Z

    goto :goto_4

    .line 258
    :cond_7
    new-instance p1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/refix/genouka/deltarune/MainActivity;->getExternalMediaDirs()[Ljava/io/File;

    move-result-object v1

    aget-object v1, v1, v0

    const-string v2, ".genouka_testflag_forceSuspectInstalled"

    invoke-direct {p1, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 259
    const-string v1, "com.lion.market"

    invoke-static {p0, v1}, Lyuanwow/foxr/starter/ui/s;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "com.upgadata.up7723"

    invoke-static {p0, v1}, Lyuanwow/foxr/starter/ui/s;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_2

    .line 261
    :cond_8
    iget-object p1, p0, Lcom/refix/genouka/deltarune/MainActivity;->webView:Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/deltarune4/about.html"

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_3

    .line 260
    :cond_9
    :goto_2
    iget-object p1, p0, Lcom/refix/genouka/deltarune/MainActivity;->webView:Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/deltarune4/aboutc.html"

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 262
    :goto_3
    iput-boolean v3, p0, Lcom/refix/genouka/deltarune/MainActivity;->isReadme:Z

    .line 263
    iput-boolean v0, p0, Lcom/refix/genouka/deltarune/MainActivity;->tenDelay:Z

    .line 265
    new-instance p1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/refix/genouka/deltarune/MainActivity;->getCacheDir()Ljava/io/File;

    move-result-object v0

    const-string v1, ".genoukareadmerelay2025-8-1"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 267
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_a

    .line 268
    new-instance v0, Lcom/refix/genouka/deltarune/MainActivity$100000006;

    invoke-direct {v0, p0, p1}, Lcom/refix/genouka/deltarune/MainActivity$100000006;-><init>(Lcom/refix/genouka/deltarune/MainActivity;Ljava/io/File;)V

    invoke-virtual {v0}, Lcom/refix/genouka/deltarune/MainActivity$100000006;->start()V

    goto :goto_4

    .line 286
    :cond_a
    iput-boolean v3, p0, Lcom/refix/genouka/deltarune/MainActivity;->tenDelay:Z

    :goto_4
    return-void

    .line 171
    :catch_0
    move-exception p1

    .line 173
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "\u4f60\u7684\u624b\u673a\u4e0d\u652f\u6301WebView\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 174
    invoke-virtual {p0}, Lcom/refix/genouka/deltarune/MainActivity;->finish()V

    .line 175
    return-void
.end method

.method protected onDestroy()V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 294
    iget-object v0, p0, Lcom/refix/genouka/deltarune/MainActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 296
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/refix/genouka/deltarune/MainActivity;->webView:Landroid/webkit/WebView;

    .line 298
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method
