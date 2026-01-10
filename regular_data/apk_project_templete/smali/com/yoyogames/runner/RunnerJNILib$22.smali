.class final Lcom/yoyogames/runner/RunnerJNILib$22;
.super Ljava/lang/Object;
.source "RunnerJNILib.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yoyogames/runner/RunnerJNILib;->HttpGet(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$id:I

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 1700
    iput-object p1, p0, Lcom/yoyogames/runner/RunnerJNILib$22;->val$url:Ljava/lang/String;

    iput p2, p0, Lcom/yoyogames/runner/RunnerJNILib$22;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/16 v14, 0x194

    .line 1706
    :try_start_0
    new-instance v10, Ljava/net/URL;

    iget-object v2, p0, Lcom/yoyogames/runner/RunnerJNILib$22;->val$url:Ljava/lang/String;

    invoke-direct {v10, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1707
    .local v10, "connectURL":Ljava/net/URL;
    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    check-cast v9, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1717
    .end local v10    # "connectURL":Ljava/net/URL;
    .local v9, "conn":Ljava/net/HttpURLConnection;
    :goto_0
    if-eqz v9, :cond_0

    .line 1720
    :try_start_1
    const-string v2, "Accept-Encoding"

    const-string v4, "identity"

    invoke-virtual {v9, v2, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1721
    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 1722
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 1723
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 1724
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->connect()V

    .line 1726
    const/4 v3, 0x0

    .line 1727
    .local v3, "finalurl":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v12

    .line 1728
    .local v12, "responseCode":I
    const/4 v13, 0x0

    .line 1729
    .local v13, "result":[B
    const/16 v2, 0xc8

    if-ne v12, v2, :cond_1

    .line 1731
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    .line 1732
    .local v11, "is":Ljava/io/InputStream;
    const/16 v2, 0x1000

    new-array v0, v2, [B

    .line 1733
    .local v0, "buffer":[B
    const/4 v1, -0x1

    .line 1734
    .local v1, "n":I
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1735
    :goto_1
    invoke-virtual {v11, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 1739
    iget v2, p0, Lcom/yoyogames/runner/RunnerJNILib$22;->val$id:I

    const-string v4, ""

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/yoyogames/runner/RunnerJNILib;->HttpProgress([BIILjava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1763
    .end local v0    # "buffer":[B
    .end local v1    # "n":I
    .end local v3    # "finalurl":Ljava/lang/String;
    .end local v11    # "is":Ljava/io/InputStream;
    .end local v12    # "responseCode":I
    .end local v13    # "result":[B
    :catch_0
    move-exception v6

    .line 1764
    .local v6, "_e":Ljava/lang/Exception;
    const-string v2, "yoyo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1765
    const-string v2, "IOException"

    iget v4, p0, Lcom/yoyogames/runner/RunnerJNILib$22;->val$id:I

    invoke-static {v2, v14, v4}, Lcom/yoyogames/runner/RunnerJNILib;->HttpResultString(Ljava/lang/String;II)V

    .line 1766
    const/4 v9, 0x0

    .line 1769
    .end local v6    # "_e":Ljava/lang/Exception;
    :cond_0
    :goto_2
    return-void

    .line 1709
    .end local v9    # "conn":Ljava/net/HttpURLConnection;
    :catch_1
    move-exception v8

    .line 1710
    .local v8, "_mue":Ljava/net/MalformedURLException;
    const-string v2, "MalformedURLException"

    iget v4, p0, Lcom/yoyogames/runner/RunnerJNILib$22;->val$id:I

    invoke-static {v2, v14, v4}, Lcom/yoyogames/runner/RunnerJNILib;->HttpResultString(Ljava/lang/String;II)V

    .line 1711
    const/4 v9, 0x0

    .line 1716
    .restart local v9    # "conn":Ljava/net/HttpURLConnection;
    goto :goto_0

    .line 1713
    .end local v8    # "_mue":Ljava/net/MalformedURLException;
    .end local v9    # "conn":Ljava/net/HttpURLConnection;
    :catch_2
    move-exception v7

    .line 1714
    .local v7, "_ioe":Ljava/io/IOException;
    const-string v2, "IOException"

    iget v4, p0, Lcom/yoyogames/runner/RunnerJNILib$22;->val$id:I

    invoke-static {v2, v14, v4}, Lcom/yoyogames/runner/RunnerJNILib;->HttpResultString(Ljava/lang/String;II)V

    .line 1715
    const/4 v9, 0x0

    .restart local v9    # "conn":Ljava/net/HttpURLConnection;
    goto :goto_0

    .line 1749
    .end local v7    # "_ioe":Ljava/io/IOException;
    .restart local v3    # "finalurl":Ljava/lang/String;
    .restart local v12    # "responseCode":I
    .restart local v13    # "result":[B
    :cond_1
    :try_start_2
    const-string v2, "yoyo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received responseCode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1757
    :cond_2
    const-string v2, "yoyo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http_get responseCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/yoyogames/runner/RunnerJNILib$22;->val$id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", finalurl="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " headers="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v9}, Lcom/yoyogames/runner/RunnerJNILib;->access$000(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1758
    const/4 v2, 0x0

    iget v4, p0, Lcom/yoyogames/runner/RunnerJNILib$22;->val$id:I

    invoke-static {v9}, Lcom/yoyogames/runner/RunnerJNILib;->access$000(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v12, v4, v3, v5}, Lcom/yoyogames/runner/RunnerJNILib;->HttpResult([BIILjava/lang/String;Ljava/lang/String;)V

    .line 1760
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1761
    const/4 v9, 0x0

    goto :goto_2
.end method
