.class public Lyuanwow/foxr/starter/ui/GenoukaCommonConfig;
.super Ljava/lang/Object;
.source "GenoukaCommonConfig.java"


# static fields
.field private static final CONFIG_FILE:Ljava/lang/String; = ".genouka_config"

.field private static volatile ins:Lyuanwow/foxr/starter/ui/GenoukaCommonConfig;


# instance fields
.field private applicationContext:Landroid/content/Context;

.field private volatile config:Lyuanwow/foxr/starter/ui/ConfigSe;

.field private volatile lazyconfig:Lyuanwow/foxr/starter/ui/ConfigSe;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lyuanwow/foxr/starter/ui/GenoukaCommonConfig;->applicationContext:Landroid/content/Context;

    .line 9
    const-string v0, ".genouka_config"

    invoke-static {p1, v0}, Lyuanwow/foxr/starter/ui/SrzaHelper;->read(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyuanwow/foxr/starter/ui/ConfigSe;

    .line 10
    if-nez p1, :cond_0

    new-instance p1, Lyuanwow/foxr/starter/ui/ConfigSe;

    invoke-direct {p1}, Lyuanwow/foxr/starter/ui/ConfigSe;-><init>()V

    .line 11
    :cond_0
    iput-object p1, p0, Lyuanwow/foxr/starter/ui/GenoukaCommonConfig;->config:Lyuanwow/foxr/starter/ui/ConfigSe;

    iput-object p1, p0, Lyuanwow/foxr/starter/ui/GenoukaCommonConfig;->lazyconfig:Lyuanwow/foxr/starter/ui/ConfigSe;

    return-void
.end method

.method public static getIns()Lyuanwow/foxr/starter/ui/GenoukaCommonConfig;
    .locals 3

    .line 38
    sget-object v0, Lyuanwow/foxr/starter/ui/GenoukaCommonConfig;->ins:Lyuanwow/foxr/starter/ui/GenoukaCommonConfig;

    if-nez v0, :cond_1

    .line 39
    :try_start_0
    const-string v0, "yuanwow.foxr.starter.ui.GenoukaCommonConfig"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    monitor-enter v0

    .line 40
    :try_start_1
    sget-object v1, Lyuanwow/foxr/starter/ui/GenoukaCommonConfig;->ins:Lyuanwow/foxr/starter/ui/GenoukaCommonConfig;

    if-nez v1, :cond_0

    .line 41
    new-instance v1, Lyuanwow/foxr/starter/ui/GenoukaCommonConfig;

    sget-object v2, Lcom/refix/genouka/deltarune/GlobalApplication;->application:Lcom/refix/genouka/deltarune/GlobalApplication;

    invoke-direct {v1, v2}, Lyuanwow/foxr/starter/ui/GenoukaCommonConfig;-><init>(Landroid/content/Context;)V

    sput-object v1, Lyuanwow/foxr/starter/ui/GenoukaCommonConfig;->ins:Lyuanwow/foxr/starter/ui/GenoukaCommonConfig;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 39
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 45
    :cond_1
    :goto_0
    sget-object v0, Lyuanwow/foxr/starter/ui/GenoukaCommonConfig;->ins:Lyuanwow/foxr/starter/ui/GenoukaCommonConfig;

    return-object v0
.end method


# virtual methods
.method public getConfig()Lyuanwow/foxr/starter/ui/ConfigSe;
    .locals 1

    .line 19
    iget-object v0, p0, Lyuanwow/foxr/starter/ui/GenoukaCommonConfig;->config:Lyuanwow/foxr/starter/ui/ConfigSe;

    invoke-virtual {v0}, Lyuanwow/foxr/starter/ui/ConfigSe;->clone()Lyuanwow/foxr/starter/ui/ConfigSe;

    move-result-object v0

    return-object v0
.end method

.method public getLazyConfig()Lyuanwow/foxr/starter/ui/ConfigSe;
    .locals 1

    .line 22
    iget-object v0, p0, Lyuanwow/foxr/starter/ui/GenoukaCommonConfig;->lazyconfig:Lyuanwow/foxr/starter/ui/ConfigSe;

    return-object v0
.end method

.method public setConfig(Lyuanwow/foxr/starter/ui/ConfigSe;)Lyuanwow/foxr/starter/ui/GenoukaCommonConfig;
    .locals 1

    .line 25
    :try_start_0
    const-string v0, "yuanwow.foxr.starter.ui.GenoukaCommonConfig"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    monitor-enter v0

    .line 26
    :try_start_1
    iput-object p1, p0, Lyuanwow/foxr/starter/ui/GenoukaCommonConfig;->config:Lyuanwow/foxr/starter/ui/ConfigSe;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    .line 28
    return-object p0

    .line 26
    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    .line 25
    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public syncConfig()Lyuanwow/foxr/starter/ui/GenoukaCommonConfig;
    .locals 4

    .line 31
    :try_start_0
    const-string v0, "yuanwow.foxr.starter.ui.GenoukaCommonConfig"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    monitor-enter v0

    .line 32
    :try_start_1
    iget-object v1, p0, Lyuanwow/foxr/starter/ui/GenoukaCommonConfig;->applicationContext:Landroid/content/Context;

    const-string v2, ".genouka_config"

    iget-object v3, p0, Lyuanwow/foxr/starter/ui/GenoukaCommonConfig;->config:Lyuanwow/foxr/starter/ui/ConfigSe;

    invoke-static {v1, v2, v3}, Lyuanwow/foxr/starter/ui/SrzaHelper;->write(Landroid/content/Context;Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lyuanwow/foxr/starter/ui/ConfigSe;

    iput-object v1, p0, Lyuanwow/foxr/starter/ui/GenoukaCommonConfig;->config:Lyuanwow/foxr/starter/ui/ConfigSe;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    .line 34
    return-object p0

    .line 32
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 31
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method
