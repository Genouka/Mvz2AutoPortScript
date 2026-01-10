.class public Lcom/refix/genouka/deltarune/MainActivity$and;
.super Ljava/lang/Object;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/refix/genouka/deltarune/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x21
    name = "and"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/refix/genouka/deltarune/MainActivity$and$100000007;
    }
.end annotation


# instance fields
.field private final this$0:Lcom/refix/genouka/deltarune/MainActivity;


# direct methods
.method public constructor <init>(Lcom/refix/genouka/deltarune/MainActivity;)V
    .locals 0

    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/refix/genouka/deltarune/MainActivity$and;->this$0:Lcom/refix/genouka/deltarune/MainActivity;

    return-void
.end method

.method static access$0(Lcom/refix/genouka/deltarune/MainActivity$and;)Lcom/refix/genouka/deltarune/MainActivity;
    .locals 0

    iget-object p0, p0, Lcom/refix/genouka/deltarune/MainActivity$and;->this$0:Lcom/refix/genouka/deltarune/MainActivity;

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 315
    iget-object v0, p0, Lcom/refix/genouka/deltarune/MainActivity$and;->this$0:Lcom/refix/genouka/deltarune/MainActivity;

    invoke-static {v0}, Lcom/refix/genouka/deltarune/MainActivity;->access$L1000003(Lcom/refix/genouka/deltarune/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/refix/genouka/deltarune/MainActivity$and;->this$0:Lcom/refix/genouka/deltarune/MainActivity;

    invoke-static {v0}, Lcom/refix/genouka/deltarune/MainActivity;->access$L1000004(Lcom/refix/genouka/deltarune/MainActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/refix/genouka/deltarune/MainActivity$and;->this$0:Lcom/refix/genouka/deltarune/MainActivity;

    const-string v1, "\u8bf7\u8ba4\u771f\u9605\u8bfb30\u79d2\u4ee5\u4e0a\u540e\u53ef\u8fdb\u5165\u6e38\u620f\uff01"

    const/16 v2, 0x3e8

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 318
    return-void

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/refix/genouka/deltarune/MainActivity$and;->this$0:Lcom/refix/genouka/deltarune/MainActivity;

    invoke-virtual {v0}, Lcom/refix/genouka/deltarune/MainActivity;->finish()V

    return-void
.end method

.method public closeDialog()V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 327
    invoke-virtual {p0}, Lcom/refix/genouka/deltarune/MainActivity$and;->close()V

    return-void
.end method

.method public closeDialogT()V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 333
    invoke-virtual {p0}, Lcom/refix/genouka/deltarune/MainActivity$and;->close()V

    return-void
.end method

.method public nextpage()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 383
    iget-object v0, p0, Lcom/refix/genouka/deltarune/MainActivity$and;->this$0:Lcom/refix/genouka/deltarune/MainActivity;

    invoke-static {v0}, Lcom/refix/genouka/deltarune/MainActivity;->access$L1000000(Lcom/refix/genouka/deltarune/MainActivity;)Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Lcom/refix/genouka/deltarune/MainActivity$and$100000007;

    invoke-direct {v1, p0}, Lcom/refix/genouka/deltarune/MainActivity$and$100000007;-><init>(Lcom/refix/genouka/deltarune/MainActivity$and;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public readFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 340
    nop

    .line 342
    :try_start_0
    invoke-static {p1}, Lcom/refix/genouka/deltarune/MainActivity;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p1, ""

    .line 344
    :goto_0
    return-object p1
.end method

.method public readFile11()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 352
    nop

    .line 354
    :try_start_0
    iget-object v0, p0, Lcom/refix/genouka/deltarune/MainActivity$and;->this$0:Lcom/refix/genouka/deltarune/MainActivity;

    invoke-static {v0}, Lcom/refix/genouka/deltarune/MainActivity;->access$L1000002(Lcom/refix/genouka/deltarune/MainActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/refix/genouka/deltarune/MainActivity;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, ""

    .line 356
    :goto_0
    return-object v0
.end method

.method public writeFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 362
    invoke-static {p1, p2}, Lcom/refix/genouka/deltarune/MainActivity;->writeStringToFile(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public writeSyncT(Ljava/lang/String;)V
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 367
    iget-object v0, p0, Lcom/refix/genouka/deltarune/MainActivity$and;->this$0:Lcom/refix/genouka/deltarune/MainActivity;

    .line 368
    const-string v1, "undefined"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 372
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CurrentTime"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/refix/genouka/deltarune/MainActivity$and;->this$0:Lcom/refix/genouka/deltarune/MainActivity;

    invoke-virtual {v1}, Lcom/refix/genouka/deltarune/MainActivity;->getExternalMediaDirs()[Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "\u5b58\u6863\u5907\u4efd_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ".zip"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 374
    invoke-static {}, Lyuanwow/foxr/starter/ui/s;->getSavePathFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v0}, Lyuanwow/foxr/starter/ui/ZipShareUtil;->ZipFolder(Ljava/io/File;Ljava/io/File;)Z

    .line 376
    iget-object v0, p0, Lcom/refix/genouka/deltarune/MainActivity$and;->this$0:Lcom/refix/genouka/deltarune/MainActivity;

    invoke-static {v0}, Lcom/refix/genouka/deltarune/MainActivity;->access$L1000002(Lcom/refix/genouka/deltarune/MainActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/refix/genouka/deltarune/MainActivity;->writeStringToFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 378
    iget-object p1, p0, Lcom/refix/genouka/deltarune/MainActivity$and;->this$0:Lcom/refix/genouka/deltarune/MainActivity;

    const-string v0, "\u5b58\u6863\u4fee\u6539\u6210\u529f\uff0c\u91cd\u542f\u6216\u5207\u6362\u5b58\u6863\u751f\u6548\u3002\n\u5982\u679c\u574f\u6863\u53ef\u4ee5\u5728Android/media\u76ee\u5f55\u4e0b\u627e\u5230\u5b58\u6863\u5907\u4efd\u538b\u7f29\u6587\u4ef6"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 369
    :cond_1
    :goto_0
    const-string p1, "\u5b58\u6863\u4fee\u6539\u5931\u8d25\uff0c\u5df2\u81ea\u52a8\u963b\u6b62\u574f\u6863"

    const/16 v1, 0x3e8

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 370
    return-void
.end method
