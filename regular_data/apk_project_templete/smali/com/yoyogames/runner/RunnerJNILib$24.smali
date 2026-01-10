.class final Lcom/yoyogames/runner/RunnerJNILib$24;
.super Ljava/lang/Object;
.source "RunnerJNILib.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yoyogames/runner/RunnerJNILib;->HttpRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$headers:Ljava/lang/String;

.field final synthetic val$id:I

.field final synthetic val$method:Ljava/lang/String;

.field final synthetic val$post:[B

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[B)V
    .locals 0

    .prologue
    .line 1863
    iput-object p1, p0, Lcom/yoyogames/runner/RunnerJNILib$24;->val$url:Ljava/lang/String;

    iput p2, p0, Lcom/yoyogames/runner/RunnerJNILib$24;->val$id:I

    iput-object p3, p0, Lcom/yoyogames/runner/RunnerJNILib$24;->val$method:Ljava/lang/String;

    iput-object p4, p0, Lcom/yoyogames/runner/RunnerJNILib$24;->val$headers:Ljava/lang/String;

    iput-object p5, p0, Lcom/yoyogames/runner/RunnerJNILib$24;->val$post:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 25

    .prologue
    .line 1868
    :try_start_0
    new-instance v10, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yoyogames/runner/RunnerJNILib$24;->val$url:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-direct {v10, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1869
    .local v10, "connectURL":Ljava/net/URL;
    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    check-cast v9, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1879
    .end local v10    # "connectURL":Ljava/net/URL;
    .local v9, "conn":Ljava/net/HttpURLConnection;
    :goto_0
    if-eqz v9, :cond_2

    .line 1882
    const/16 v20, 0x1

    :try_start_1
    move/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 1884
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yoyogames/runner/RunnerJNILib$24;->val$method:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "GET"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yoyogames/runner/RunnerJNILib$24;->val$method:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "HEAD"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 1887
    :cond_0
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 1888
    const-string v20, "yoyo"

    const-string v21, "Setting do output to false"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1896
    :goto_1
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 1897
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yoyogames/runner/RunnerJNILib$24;->val$method:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1900
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yoyogames/runner/RunnerJNILib$24;->val$headers:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "\r\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 1901
    .local v14, "kvps":[Ljava/lang/String;
    array-length v0, v14

    move/from16 v21, v0

    const/16 v20, 0x0

    :goto_2
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_4

    aget-object v19, v14, v20

    .line 1902
    .local v19, "s":Ljava/lang/String;
    const-string v22, ": "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 1903
    .local v13, "kvp":[Ljava/lang/String;
    array-length v0, v13

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_3

    .line 1904
    const-string v22, "yoyo"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "HttpRequest: Found header "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x0

    aget-object v24, v13, v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ": "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x1

    aget-object v24, v13, v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1905
    const/16 v22, 0x0

    aget-object v22, v13, v22

    const/16 v23, 0x1

    aget-object v23, v13, v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 1901
    :goto_3
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    .line 1871
    .end local v9    # "conn":Ljava/net/HttpURLConnection;
    .end local v13    # "kvp":[Ljava/lang/String;
    .end local v14    # "kvps":[Ljava/lang/String;
    .end local v19    # "s":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 1872
    .local v6, "_mue":Ljava/net/MalformedURLException;
    const-string v20, "MalformedURLException"

    const/16 v21, 0x194

    move-object/from16 v0, p0

    iget v0, v0, Lcom/yoyogames/runner/RunnerJNILib$24;->val$id:I

    move/from16 v22, v0

    invoke-static/range {v20 .. v22}, Lcom/yoyogames/runner/RunnerJNILib;->HttpResultString(Ljava/lang/String;II)V

    .line 1873
    const/4 v9, 0x0

    .line 1878
    .restart local v9    # "conn":Ljava/net/HttpURLConnection;
    goto/16 :goto_0

    .line 1875
    .end local v6    # "_mue":Ljava/net/MalformedURLException;
    .end local v9    # "conn":Ljava/net/HttpURLConnection;
    :catch_1
    move-exception v5

    .line 1876
    .local v5, "_ioe":Ljava/io/IOException;
    const-string v20, "IOException"

    const/16 v21, 0x194

    move-object/from16 v0, p0

    iget v0, v0, Lcom/yoyogames/runner/RunnerJNILib$24;->val$id:I

    move/from16 v22, v0

    invoke-static/range {v20 .. v22}, Lcom/yoyogames/runner/RunnerJNILib;->HttpResultString(Ljava/lang/String;II)V

    .line 1877
    const/4 v9, 0x0

    .restart local v9    # "conn":Ljava/net/HttpURLConnection;
    goto/16 :goto_0

    .line 1893
    .end local v5    # "_ioe":Ljava/io/IOException;
    :cond_1
    :try_start_2
    const-string v20, "yoyo"

    const-string v21, "Setting do output to true"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1894
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_1

    .line 1966
    :catch_2
    move-exception v7

    .line 1967
    .local v7, "_se":Ljava/net/SocketTimeoutException;
    const-string v20, "yoyo"

    const-string v21, "HttpRequest: request timed out"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1968
    const-string v20, "HTTP request timed out"

    const/16 v21, 0x194

    move-object/from16 v0, p0

    iget v0, v0, Lcom/yoyogames/runner/RunnerJNILib$24;->val$id:I

    move/from16 v22, v0

    invoke-static/range {v20 .. v22}, Lcom/yoyogames/runner/RunnerJNILib;->HttpResultString(Ljava/lang/String;II)V

    .line 1969
    const/4 v9, 0x0

    .line 1977
    .end local v7    # "_se":Ljava/net/SocketTimeoutException;
    :cond_2
    :goto_4
    return-void

    .line 1908
    .restart local v13    # "kvp":[Ljava/lang/String;
    .restart local v14    # "kvps":[Ljava/lang/String;
    .restart local v19    # "s":Ljava/lang/String;
    :cond_3
    :try_start_3
    const-string v22, "yoyo"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "HttpRequest: Malformed header "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    .line 1971
    .end local v13    # "kvp":[Ljava/lang/String;
    .end local v14    # "kvps":[Ljava/lang/String;
    .end local v19    # "s":Ljava/lang/String;
    :catch_3
    move-exception v4

    .line 1972
    .local v4, "_e":Ljava/lang/Exception;
    const-string v20, "yoyo"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "HttpRequest: exception:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1973
    const-string v20, "HTTP request exception"

    const/16 v21, 0x194

    move-object/from16 v0, p0

    iget v0, v0, Lcom/yoyogames/runner/RunnerJNILib$24;->val$id:I

    move/from16 v22, v0

    invoke-static/range {v20 .. v22}, Lcom/yoyogames/runner/RunnerJNILib;->HttpResultString(Ljava/lang/String;II)V

    .line 1974
    const/4 v9, 0x0

    goto :goto_4

    .line 1913
    .end local v4    # "_e":Ljava/lang/Exception;
    .restart local v14    # "kvps":[Ljava/lang/String;
    :cond_4
    :try_start_4
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->connect()V

    .line 1916
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yoyogames/runner/RunnerJNILib$24;->val$post:[B

    move-object/from16 v20, v0

    if-eqz v20, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yoyogames/runner/RunnerJNILib$24;->val$method:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "GET"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_5

    .line 1918
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yoyogames/runner/RunnerJNILib$24;->val$post:[B

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/io/OutputStream;->write([B)V

    .line 1919
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/io/OutputStream;->flush()V

    .line 1920
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/io/OutputStream;->close()V

    .line 1924
    :cond_5
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v17

    .line 1925
    .local v17, "responseCode":I
    const-string v20, "yoyo"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "HttpRequest: Got response code \'"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\'"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 1928
    const/16 v18, 0x0

    .line 1929
    .local v18, "result":[B
    const/4 v12, 0x0

    .line 1931
    .local v12, "is":Ljava/io/InputStream;
    :try_start_5
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    move-result-object v12

    .line 1936
    :goto_5
    if-nez v12, :cond_6

    .line 1937
    :try_start_6
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v12

    .line 1938
    :cond_6
    if-eqz v12, :cond_7

    .line 1940
    new-instance v16, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1941
    .local v16, "out":Ljava/io/ByteArrayOutputStream;
    const/16 v20, 0x1000

    move/from16 v0, v20

    new-array v8, v0, [B

    .line 1942
    .local v8, "buffer":[B
    const/4 v15, -0x1

    .line 1943
    .local v15, "n":I
    :goto_6
    invoke-virtual {v12, v8}, Ljava/io/InputStream;->read([B)I

    move-result v15

    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v15, v0, :cond_a

    .line 1944
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v8, v1, v15}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_6

    .line 1950
    .end local v8    # "buffer":[B
    .end local v15    # "n":I
    .end local v16    # "out":Ljava/io/ByteArrayOutputStream;
    :catch_4
    move-exception v5

    .line 1952
    .restart local v5    # "_ioe":Ljava/io/IOException;
    :try_start_7
    const-string v20, "yoyo"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "HttpRequest: IO exception:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1956
    .end local v5    # "_ioe":Ljava/io/IOException;
    :cond_7
    :goto_7
    if-eqz v18, :cond_8

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v20, v0

    if-nez v20, :cond_9

    .line 1957
    :cond_8
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [B

    move-object/from16 v18, v0

    .end local v18    # "result":[B
    const/16 v20, 0x0

    const/16 v21, 0x0

    aput-byte v21, v18, v20

    .line 1960
    .restart local v18    # "result":[B
    :cond_9
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1961
    .local v11, "finalurl":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/yoyogames/runner/RunnerJNILib$24;->val$id:I

    move/from16 v20, v0

    invoke-static {v9}, Lcom/yoyogames/runner/RunnerJNILib;->access$000(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move/from16 v1, v17

    move/from16 v2, v20

    move-object/from16 v3, v21

    invoke-static {v0, v1, v2, v11, v3}, Lcom/yoyogames/runner/RunnerJNILib;->HttpResult([BIILjava/lang/String;Ljava/lang/String;)V

    .line 1963
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 1964
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 1946
    .end local v11    # "finalurl":Ljava/lang/String;
    .restart local v8    # "buffer":[B
    .restart local v15    # "n":I
    .restart local v16    # "out":Ljava/io/ByteArrayOutputStream;
    :cond_a
    :try_start_8
    invoke-virtual/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v18

    .line 1947
    invoke-virtual/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_7

    .line 1932
    .end local v8    # "buffer":[B
    .end local v15    # "n":I
    .end local v16    # "out":Ljava/io/ByteArrayOutputStream;
    :catch_5
    move-exception v20

    goto/16 :goto_5
.end method
