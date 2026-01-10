.class final Lcom/yoyogames/runner/RunnerJNILib$23;
.super Ljava/lang/Object;
.source "RunnerJNILib.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yoyogames/runner/RunnerJNILib;->HttpPost(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$id:I

.field final synthetic val$post:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 1779
    iput-object p1, p0, Lcom/yoyogames/runner/RunnerJNILib$23;->val$url:Ljava/lang/String;

    iput p2, p0, Lcom/yoyogames/runner/RunnerJNILib$23;->val$id:I

    iput-object p3, p0, Lcom/yoyogames/runner/RunnerJNILib$23;->val$post:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 1785
    :try_start_0
    new-instance v6, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yoyogames/runner/RunnerJNILib$23;->val$url:Ljava/lang/String;

    invoke-direct {v6, v14}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1786
    .local v6, "connectURL":Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1796
    .end local v6    # "connectURL":Ljava/net/URL;
    .local v5, "conn":Ljava/net/HttpURLConnection;
    :goto_0
    if-eqz v5, :cond_2

    .line 1799
    const/4 v14, 0x1

    :try_start_1
    invoke-virtual {v5, v14}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 1800
    const/4 v14, 0x1

    invoke-virtual {v5, v14}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 1801
    const/4 v14, 0x0

    invoke-virtual {v5, v14}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 1802
    const-string v14, "POST"

    invoke-virtual {v5, v14}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1804
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->connect()V

    .line 1806
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yoyogames/runner/RunnerJNILib$23;->val$post:Ljava/lang/String;

    const-string v15, "UTF-8"

    invoke-virtual {v14, v15}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    .line 1807
    .local v11, "postBytes":[B
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/io/OutputStream;->write([B)V

    .line 1808
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/OutputStream;->flush()V

    .line 1809
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V

    .line 1811
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v12

    .line 1812
    .local v12, "responseCode":I
    const-string v14, "yoyo"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "HttpPost: Got response code \'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 1813
    const/4 v13, 0x0

    .line 1814
    .local v13, "result":[B
    const/4 v7, 0x0

    .line 1816
    .local v7, "finalurl":Ljava/lang/String;
    :try_start_2
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    .line 1817
    .local v8, "is":Ljava/io/InputStream;
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1818
    .local v10, "out":Ljava/io/ByteArrayOutputStream;
    const/16 v14, 0x1000

    new-array v4, v14, [B

    .line 1819
    .local v4, "buffer":[B
    const/4 v9, -0x1

    .line 1820
    .local v9, "n":I
    :goto_1
    invoke-virtual {v8, v4}, Ljava/io/InputStream;->read([B)I

    move-result v9

    const/4 v14, -0x1

    if-eq v9, v14, :cond_3

    .line 1821
    const/4 v14, 0x0

    invoke-virtual {v10, v4, v14, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    .line 1827
    .end local v4    # "buffer":[B
    .end local v8    # "is":Ljava/io/InputStream;
    .end local v9    # "n":I
    .end local v10    # "out":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v2

    .line 1829
    .local v2, "_ioe":Ljava/io/IOException;
    :try_start_3
    const-string v14, "yoyo"

    const-string v15, "HttpPost: IO exception"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1833
    .end local v2    # "_ioe":Ljava/io/IOException;
    :goto_2
    if-eqz v13, :cond_0

    array-length v14, v13

    if-nez v14, :cond_1

    .line 1834
    :cond_0
    const/4 v14, 0x1

    new-array v13, v14, [B

    .end local v13    # "result":[B
    const/4 v14, 0x0

    const/4 v15, 0x0

    aput-byte v15, v13, v14

    .line 1837
    .restart local v13    # "result":[B
    :cond_1
    move-object/from16 v0, p0

    iget v14, v0, Lcom/yoyogames/runner/RunnerJNILib$23;->val$id:I

    invoke-static {v5}, Lcom/yoyogames/runner/RunnerJNILib;->access$000(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v12, v14, v7, v15}, Lcom/yoyogames/runner/RunnerJNILib;->HttpResult([BIILjava/lang/String;Ljava/lang/String;)V

    .line 1839
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 1840
    const/4 v5, 0x0

    .line 1847
    .end local v7    # "finalurl":Ljava/lang/String;
    .end local v11    # "postBytes":[B
    .end local v12    # "responseCode":I
    .end local v13    # "result":[B
    :cond_2
    :goto_3
    return-void

    .line 1788
    .end local v5    # "conn":Ljava/net/HttpURLConnection;
    :catch_1
    move-exception v3

    .line 1789
    .local v3, "_mue":Ljava/net/MalformedURLException;
    const-string v14, "MalformedURLException"

    const/16 v15, 0x194

    move-object/from16 v0, p0

    iget v0, v0, Lcom/yoyogames/runner/RunnerJNILib$23;->val$id:I

    move/from16 v16, v0

    invoke-static/range {v14 .. v16}, Lcom/yoyogames/runner/RunnerJNILib;->HttpResultString(Ljava/lang/String;II)V

    .line 1790
    const/4 v5, 0x0

    .line 1795
    .restart local v5    # "conn":Ljava/net/HttpURLConnection;
    goto/16 :goto_0

    .line 1792
    .end local v3    # "_mue":Ljava/net/MalformedURLException;
    .end local v5    # "conn":Ljava/net/HttpURLConnection;
    :catch_2
    move-exception v2

    .line 1793
    .restart local v2    # "_ioe":Ljava/io/IOException;
    const-string v14, "IOException"

    const/16 v15, 0x194

    move-object/from16 v0, p0

    iget v0, v0, Lcom/yoyogames/runner/RunnerJNILib$23;->val$id:I

    move/from16 v16, v0

    invoke-static/range {v14 .. v16}, Lcom/yoyogames/runner/RunnerJNILib;->HttpResultString(Ljava/lang/String;II)V

    .line 1794
    const/4 v5, 0x0

    .restart local v5    # "conn":Ljava/net/HttpURLConnection;
    goto/16 :goto_0

    .line 1823
    .end local v2    # "_ioe":Ljava/io/IOException;
    .restart local v4    # "buffer":[B
    .restart local v7    # "finalurl":Ljava/lang/String;
    .restart local v8    # "is":Ljava/io/InputStream;
    .restart local v9    # "n":I
    .restart local v10    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v11    # "postBytes":[B
    .restart local v12    # "responseCode":I
    .restart local v13    # "result":[B
    :cond_3
    :try_start_4
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    .line 1824
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1825
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v14

    invoke-virtual {v14}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v7

    goto :goto_2

    .line 1842
    .end local v4    # "buffer":[B
    .end local v7    # "finalurl":Ljava/lang/String;
    .end local v8    # "is":Ljava/io/InputStream;
    .end local v9    # "n":I
    .end local v10    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v11    # "postBytes":[B
    .end local v12    # "responseCode":I
    .end local v13    # "result":[B
    :catch_3
    move-exception v1

    .line 1843
    .local v1, "_e":Ljava/lang/Exception;
    const-string v14, "IOException"

    const/16 v15, 0x194

    move-object/from16 v0, p0

    iget v0, v0, Lcom/yoyogames/runner/RunnerJNILib$23;->val$id:I

    move/from16 v16, v0

    invoke-static/range {v14 .. v16}, Lcom/yoyogames/runner/RunnerJNILib;->HttpResultString(Ljava/lang/String;II)V

    .line 1844
    const/4 v5, 0x0

    goto :goto_3
.end method
