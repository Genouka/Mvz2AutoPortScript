.class public Lcom/genouka/fumo/mvz2/RunnerDownloadTask;
.super Landroid/os/AsyncTask;
.source "RunnerDownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public DestPath:Ljava/lang/String;

.field public Progress:I

.field public Status:Lcom/genouka/fumo/mvz2/DownloadStatus;

.field public TargetURL:Ljava/lang/String;

.field private progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/genouka/fumo/mvz2/RunnerDownloadTask;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/genouka/fumo/mvz2/RunnerDownloadTask;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/genouka/fumo/mvz2/RunnerDownloadTask;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/genouka/fumo/mvz2/RunnerDownloadTask;Lcom/genouka/fumo/mvz2/DownloadStatus;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/genouka/fumo/mvz2/RunnerDownloadTask;
    .param p1, "x1"    # Lcom/genouka/fumo/mvz2/DownloadStatus;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/genouka/fumo/mvz2/RunnerDownloadTask;->setStatus(Lcom/genouka/fumo/mvz2/DownloadStatus;Ljava/lang/String;)V

    return-void
.end method

.method private setStatus(Lcom/genouka/fumo/mvz2/DownloadStatus;Ljava/lang/String;)V
    .locals 5
    .param p1, "_status"    # Lcom/genouka/fumo/mvz2/DownloadStatus;
    .param p2, "_msg"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/genouka/fumo/mvz2/RunnerDownloadTask;->Status:Lcom/genouka/fumo/mvz2/DownloadStatus;

    .line 46
    const-string v1, ""

    .line 47
    .local v1, "msg":Ljava/lang/String;
    sget-object v2, Lcom/genouka/fumo/mvz2/RunnerDownloadTask$4;->$SwitchMap$com$genouka$fumo$mvz2$DownloadStatus:[I

    invoke-virtual {p1}, Lcom/genouka/fumo/mvz2/DownloadStatus;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 62
    :goto_0
    sput-object p1, Lcom/genouka/fumo/mvz2/RunnerActivity;->DownloadTaskStatus:Lcom/genouka/fumo/mvz2/DownloadStatus;

    .line 64
    const-string v2, "yoyo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DownloadTaskStatus set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    move-object v0, v1

    .line 67
    .local v0, "f":Ljava/lang/String;
    sget-object v2, Lcom/genouka/fumo/mvz2/RunnerActivity;->ViewHandler:Landroid/os/Handler;

    new-instance v3, Lcom/genouka/fumo/mvz2/RunnerDownloadTask$1;

    invoke-direct {v3, p0, v0}, Lcom/genouka/fumo/mvz2/RunnerDownloadTask$1;-><init>(Lcom/genouka/fumo/mvz2/RunnerDownloadTask;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 73
    return-void

    .line 49
    .end local v0    # "f":Ljava/lang/String;
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connecting to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "..... ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/genouka/fumo/mvz2/RunnerDownloadTask;->TargetURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 50
    goto :goto_0

    .line 52
    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connected to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ... ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/genouka/fumo/mvz2/RunnerDownloadTask;->TargetURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 53
    goto :goto_0

    .line 55
    :pswitch_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", retrying... ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/genouka/fumo/mvz2/RunnerDownloadTask;->TargetURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 56
    goto/16 :goto_0

    .line 58
    :pswitch_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Complete...("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/genouka/fumo/mvz2/RunnerDownloadTask;->TargetURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 47
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 15
    .param p1, "urls"    # [Ljava/lang/String;

    .prologue
    .line 96
    const/4 v9, 0x0

    .line 98
    .local v9, "ret":Z
    :goto_0
    iget-object v12, p0, Lcom/genouka/fumo/mvz2/RunnerDownloadTask;->Status:Lcom/genouka/fumo/mvz2/DownloadStatus;

    sget-object v13, Lcom/genouka/fumo/mvz2/DownloadStatus;->Complete:Lcom/genouka/fumo/mvz2/DownloadStatus;

    if-eq v12, v13, :cond_5

    .line 101
    iget-object v12, p0, Lcom/genouka/fumo/mvz2/RunnerDownloadTask;->Status:Lcom/genouka/fumo/mvz2/DownloadStatus;

    sget-object v13, Lcom/genouka/fumo/mvz2/DownloadStatus;->Error:Lcom/genouka/fumo/mvz2/DownloadStatus;

    if-ne v12, v13, :cond_0

    .line 103
    const-wide/16 v12, 0x3e8

    :try_start_0
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 110
    :cond_0
    :goto_1
    :try_start_1
    const-string v12, "yoyo"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "DownloadFileTo( "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/genouka/fumo/mvz2/RunnerDownloadTask;->TargetURL:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " , "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/genouka/fumo/mvz2/RunnerDownloadTask;->DestPath:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " )"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    new-instance v11, Ljava/net/URL;

    iget-object v12, p0, Lcom/genouka/fumo/mvz2/RunnerDownloadTask;->TargetURL:Ljava/lang/String;

    invoke-direct {v11, v12}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 112
    .local v11, "url":Ljava/net/URL;
    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 113
    .local v2, "connection":Ljava/net/HttpURLConnection;
    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 115
    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 117
    sget-object v12, Lcom/genouka/fumo/mvz2/RunnerActivity;->ViewHandler:Landroid/os/Handler;

    new-instance v13, Lcom/genouka/fumo/mvz2/RunnerDownloadTask$3;

    invoke-direct {v13, p0}, Lcom/genouka/fumo/mvz2/RunnerDownloadTask$3;-><init>(Lcom/genouka/fumo/mvz2/RunnerDownloadTask;)V

    invoke-virtual {v12, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 124
    const-string v12, "yoyo"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "about to connect to "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/genouka/fumo/mvz2/RunnerDownloadTask;->TargetURL:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    sget-object v12, Lcom/genouka/fumo/mvz2/DownloadStatus;->Connecting:Lcom/genouka/fumo/mvz2/DownloadStatus;

    invoke-virtual {v11}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v12, v13}, Lcom/genouka/fumo/mvz2/RunnerDownloadTask;->setStatus(Lcom/genouka/fumo/mvz2/DownloadStatus;Ljava/lang/String;)V

    .line 126
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 127
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    .line 128
    .local v8, "responseCode":I
    const/16 v12, 0xc8

    if-ne v8, v12, :cond_4

    .line 130
    const-string v12, "yoyo"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "connected to "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/genouka/fumo/mvz2/RunnerDownloadTask;->TargetURL:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    sget-object v12, Lcom/genouka/fumo/mvz2/DownloadStatus;->Connected:Lcom/genouka/fumo/mvz2/DownloadStatus;

    invoke-virtual {v11}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v12, v13}, Lcom/genouka/fumo/mvz2/RunnerDownloadTask;->setStatus(Lcom/genouka/fumo/mvz2/DownloadStatus;Ljava/lang/String;)V

    .line 135
    const-string v12, "yoyo"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "opening file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/genouka/fumo/mvz2/RunnerDownloadTask;->DestPath:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v12, p0, Lcom/genouka/fumo/mvz2/RunnerDownloadTask;->DestPath:Ljava/lang/String;

    invoke-direct {v4, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 137
    .local v4, "fs":Ljava/io/FileOutputStream;
    const-string v12, "yoyo"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getting the input stream - writing to "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/genouka/fumo/mvz2/RunnerDownloadTask;->DestPath:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 139
    .local v5, "in":Ljava/io/InputStream;
    const/16 v12, 0x2000

    new-array v1, v12, [B

    .line 140
    .local v1, "buffer":[B
    const/4 v6, 0x0

    .line 141
    .local v6, "len1":I
    const/4 v3, 0x0

    .line 142
    .local v3, "curr":I
    const-string v12, "yoyo"

    const-string v13, "get content length "

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v10

    .line 144
    .local v10, "totalSize":I
    const-string v12, "yoyo"

    const-string v13, "starting loop "

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :goto_2
    invoke-virtual {v5, v1}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-lez v6, :cond_3

    .line 146
    sget-object v12, Lcom/genouka/fumo/mvz2/DownloadStatus;->Downloading:Lcom/genouka/fumo/mvz2/DownloadStatus;

    iput-object v12, p0, Lcom/genouka/fumo/mvz2/RunnerDownloadTask;->Status:Lcom/genouka/fumo/mvz2/DownloadStatus;

    .line 147
    const-string v12, "yoyo"

    const-string v13, "write buffer "

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const/4 v12, 0x0

    invoke-virtual {v4, v1, v12, v6}, Ljava/io/FileOutputStream;->write([BII)V

    .line 149
    const-string v12, "yoyo"

    const-string v13, "written buffer "

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    add-int/2addr v3, v6

    .line 151
    mul-int/lit8 v12, v3, 0x64

    div-int v7, v12, v10

    .line 152
    .local v7, "percentage":I
    const/16 v12, 0x64

    if-le v7, v12, :cond_1

    const/16 v7, 0x64

    .line 153
    :cond_1
    if-gez v7, :cond_2

    const/4 v7, 0x0

    .line 154
    :cond_2
    const-string v12, "yoyo"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "downloaded "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " bytes - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "% complete"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Integer;

    const/4 v13, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {p0, v12}, Lcom/genouka/fumo/mvz2/RunnerDownloadTask;->publishProgress([Ljava/lang/Object;)V

    .line 156
    const-string v12, "yoyo"

    const-string v13, "looping "

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_2

    .line 166
    .end local v1    # "buffer":[B
    .end local v2    # "connection":Ljava/net/HttpURLConnection;
    .end local v3    # "curr":I
    .end local v4    # "fs":Ljava/io/FileOutputStream;
    .end local v5    # "in":Ljava/io/InputStream;
    .end local v6    # "len1":I
    .end local v7    # "percentage":I
    .end local v8    # "responseCode":I
    .end local v10    # "totalSize":I
    .end local v11    # "url":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 167
    .local v0, "_e":Ljava/net/MalformedURLException;
    const-string v12, "yoyo"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Exception on DownloadFileTo "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    sget-object v12, Lcom/genouka/fumo/mvz2/DownloadStatus;->Error:Lcom/genouka/fumo/mvz2/DownloadStatus;

    const-string v13, "malformed URL"

    invoke-direct {p0, v12, v13}, Lcom/genouka/fumo/mvz2/RunnerDownloadTask;->setStatus(Lcom/genouka/fumo/mvz2/DownloadStatus;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 158
    .end local v0    # "_e":Ljava/net/MalformedURLException;
    .restart local v1    # "buffer":[B
    .restart local v2    # "connection":Ljava/net/HttpURLConnection;
    .restart local v3    # "curr":I
    .restart local v4    # "fs":Ljava/io/FileOutputStream;
    .restart local v5    # "in":Ljava/io/InputStream;
    .restart local v6    # "len1":I
    .restart local v8    # "responseCode":I
    .restart local v10    # "totalSize":I
    .restart local v11    # "url":Ljava/net/URL;
    :cond_3
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 159
    sget-object v12, Lcom/genouka/fumo/mvz2/DownloadStatus;->Complete:Lcom/genouka/fumo/mvz2/DownloadStatus;

    const-string v13, ""

    invoke-direct {p0, v12, v13}, Lcom/genouka/fumo/mvz2/RunnerDownloadTask;->setStatus(Lcom/genouka/fumo/mvz2/DownloadStatus;Ljava/lang/String;)V

    .line 160
    const/4 v9, 0x1

    .line 161
    goto/16 :goto_0

    .line 163
    .end local v1    # "buffer":[B
    .end local v3    # "curr":I
    .end local v4    # "fs":Ljava/io/FileOutputStream;
    .end local v5    # "in":Ljava/io/InputStream;
    .end local v6    # "len1":I
    .end local v10    # "totalSize":I
    :cond_4
    const-string v12, "yoyo"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "response Code "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_0

    .line 170
    .end local v2    # "connection":Ljava/net/HttpURLConnection;
    .end local v8    # "responseCode":I
    .end local v11    # "url":Ljava/net/URL;
    :catch_1
    move-exception v0

    .line 171
    .local v0, "_e":Ljava/net/ProtocolException;
    const-string v12, "yoyo"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Exception on DownloadFileTo "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    sget-object v12, Lcom/genouka/fumo/mvz2/DownloadStatus;->Error:Lcom/genouka/fumo/mvz2/DownloadStatus;

    const-string v13, "protocol error"

    invoke-direct {p0, v12, v13}, Lcom/genouka/fumo/mvz2/RunnerDownloadTask;->setStatus(Lcom/genouka/fumo/mvz2/DownloadStatus;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 174
    .end local v0    # "_e":Ljava/net/ProtocolException;
    :catch_2
    move-exception v0

    .line 175
    .local v0, "_e":Ljava/io/FileNotFoundException;
    const-string v12, "yoyo"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Exception on DownloadFileTo "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    sget-object v12, Lcom/genouka/fumo/mvz2/DownloadStatus;->Error:Lcom/genouka/fumo/mvz2/DownloadStatus;

    const-string v13, "file not found"

    invoke-direct {p0, v12, v13}, Lcom/genouka/fumo/mvz2/RunnerDownloadTask;->setStatus(Lcom/genouka/fumo/mvz2/DownloadStatus;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 178
    .end local v0    # "_e":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v0

    .line 179
    .local v0, "_e":Ljava/io/IOException;
    const-string v12, "yoyo"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Exception on DownloadFileTo "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    sget-object v12, Lcom/genouka/fumo/mvz2/DownloadStatus;->Error:Lcom/genouka/fumo/mvz2/DownloadStatus;

    const-string v13, "io error"

    invoke-direct {p0, v12, v13}, Lcom/genouka/fumo/mvz2/RunnerDownloadTask;->setStatus(Lcom/genouka/fumo/mvz2/DownloadStatus;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 184
    .end local v0    # "_e":Ljava/io/IOException;
    :cond_5
    const-string v12, "yoyo"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Download task completing with ret "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    return-object v12

    .line 104
    :catch_4
    move-exception v12

    goto/16 :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/genouka/fumo/mvz2/RunnerDownloadTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/genouka/fumo/mvz2/RunnerDownloadTask;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 196
    const-string v0, "yoyo"

    const-string v1, "dismissing progress dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 34
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/genouka/fumo/mvz2/RunnerDownloadTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 78
    sget-object v0, Lcom/genouka/fumo/mvz2/DownloadStatus;->NotConnected:Lcom/genouka/fumo/mvz2/DownloadStatus;

    iput-object v0, p0, Lcom/genouka/fumo/mvz2/RunnerDownloadTask;->Status:Lcom/genouka/fumo/mvz2/DownloadStatus;

    .line 79
    new-instance v0, Landroid/app/ProgressDialog;

    sget-object v1, Lcom/yoyogames/runner/RunnerJNILib;->ms_context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/genouka/fumo/mvz2/RunnerDownloadTask;->progressDialog:Landroid/app/ProgressDialog;

    .line 80
    iget-object v0, p0, Lcom/genouka/fumo/mvz2/RunnerDownloadTask;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 81
    iget-object v0, p0, Lcom/genouka/fumo/mvz2/RunnerDownloadTask;->progressDialog:Landroid/app/ProgressDialog;

    const-string v1, "Activating phase inducer...."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Lcom/genouka/fumo/mvz2/RunnerDownloadTask;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 84
    iget-object v0, p0, Lcom/genouka/fumo/mvz2/RunnerDownloadTask;->progressDialog:Landroid/app/ProgressDialog;

    const-string v1, "Change Settings"

    new-instance v2, Lcom/genouka/fumo/mvz2/RunnerDownloadTask$2;

    invoke-direct {v2, p0}, Lcom/genouka/fumo/mvz2/RunnerDownloadTask$2;-><init>(Lcom/genouka/fumo/mvz2/RunnerDownloadTask;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ProgressDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 91
    iget-object v0, p0, Lcom/genouka/fumo/mvz2/RunnerDownloadTask;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 92
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2
    .param p1, "progress"    # [Ljava/lang/Integer;

    .prologue
    .line 190
    iget-object v0, p0, Lcom/genouka/fumo/mvz2/RunnerDownloadTask;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 192
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 34
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/genouka/fumo/mvz2/RunnerDownloadTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
