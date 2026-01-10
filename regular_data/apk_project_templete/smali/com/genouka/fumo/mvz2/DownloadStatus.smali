.class final enum Lcom/genouka/fumo/mvz2/DownloadStatus;
.super Ljava/lang/Enum;
.source "RunnerDownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/genouka/fumo/mvz2/DownloadStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/genouka/fumo/mvz2/DownloadStatus;

.field public static final enum Canceled:Lcom/genouka/fumo/mvz2/DownloadStatus;

.field public static final enum Complete:Lcom/genouka/fumo/mvz2/DownloadStatus;

.field public static final enum Connected:Lcom/genouka/fumo/mvz2/DownloadStatus;

.field public static final enum Connecting:Lcom/genouka/fumo/mvz2/DownloadStatus;

.field public static final enum Downloading:Lcom/genouka/fumo/mvz2/DownloadStatus;

.field public static final enum Error:Lcom/genouka/fumo/mvz2/DownloadStatus;

.field public static final enum NotConnected:Lcom/genouka/fumo/mvz2/DownloadStatus;

.field public static final enum SettingsChanged:Lcom/genouka/fumo/mvz2/DownloadStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 24
    new-instance v0, Lcom/genouka/fumo/mvz2/DownloadStatus;

    const-string v1, "NotConnected"

    invoke-direct {v0, v1, v3}, Lcom/genouka/fumo/mvz2/DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genouka/fumo/mvz2/DownloadStatus;->NotConnected:Lcom/genouka/fumo/mvz2/DownloadStatus;

    .line 25
    new-instance v0, Lcom/genouka/fumo/mvz2/DownloadStatus;

    const-string v1, "Connecting"

    invoke-direct {v0, v1, v4}, Lcom/genouka/fumo/mvz2/DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genouka/fumo/mvz2/DownloadStatus;->Connecting:Lcom/genouka/fumo/mvz2/DownloadStatus;

    .line 26
    new-instance v0, Lcom/genouka/fumo/mvz2/DownloadStatus;

    const-string v1, "Connected"

    invoke-direct {v0, v1, v5}, Lcom/genouka/fumo/mvz2/DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genouka/fumo/mvz2/DownloadStatus;->Connected:Lcom/genouka/fumo/mvz2/DownloadStatus;

    .line 27
    new-instance v0, Lcom/genouka/fumo/mvz2/DownloadStatus;

    const-string v1, "Downloading"

    invoke-direct {v0, v1, v6}, Lcom/genouka/fumo/mvz2/DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genouka/fumo/mvz2/DownloadStatus;->Downloading:Lcom/genouka/fumo/mvz2/DownloadStatus;

    .line 28
    new-instance v0, Lcom/genouka/fumo/mvz2/DownloadStatus;

    const-string v1, "Complete"

    invoke-direct {v0, v1, v7}, Lcom/genouka/fumo/mvz2/DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genouka/fumo/mvz2/DownloadStatus;->Complete:Lcom/genouka/fumo/mvz2/DownloadStatus;

    .line 29
    new-instance v0, Lcom/genouka/fumo/mvz2/DownloadStatus;

    const-string v1, "Error"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/genouka/fumo/mvz2/DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genouka/fumo/mvz2/DownloadStatus;->Error:Lcom/genouka/fumo/mvz2/DownloadStatus;

    .line 30
    new-instance v0, Lcom/genouka/fumo/mvz2/DownloadStatus;

    const-string v1, "Canceled"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/genouka/fumo/mvz2/DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genouka/fumo/mvz2/DownloadStatus;->Canceled:Lcom/genouka/fumo/mvz2/DownloadStatus;

    .line 31
    new-instance v0, Lcom/genouka/fumo/mvz2/DownloadStatus;

    const-string v1, "SettingsChanged"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/genouka/fumo/mvz2/DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genouka/fumo/mvz2/DownloadStatus;->SettingsChanged:Lcom/genouka/fumo/mvz2/DownloadStatus;

    .line 21
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/genouka/fumo/mvz2/DownloadStatus;

    sget-object v1, Lcom/genouka/fumo/mvz2/DownloadStatus;->NotConnected:Lcom/genouka/fumo/mvz2/DownloadStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/genouka/fumo/mvz2/DownloadStatus;->Connecting:Lcom/genouka/fumo/mvz2/DownloadStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/genouka/fumo/mvz2/DownloadStatus;->Connected:Lcom/genouka/fumo/mvz2/DownloadStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/genouka/fumo/mvz2/DownloadStatus;->Downloading:Lcom/genouka/fumo/mvz2/DownloadStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/genouka/fumo/mvz2/DownloadStatus;->Complete:Lcom/genouka/fumo/mvz2/DownloadStatus;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/genouka/fumo/mvz2/DownloadStatus;->Error:Lcom/genouka/fumo/mvz2/DownloadStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/genouka/fumo/mvz2/DownloadStatus;->Canceled:Lcom/genouka/fumo/mvz2/DownloadStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/genouka/fumo/mvz2/DownloadStatus;->SettingsChanged:Lcom/genouka/fumo/mvz2/DownloadStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/genouka/fumo/mvz2/DownloadStatus;->$VALUES:[Lcom/genouka/fumo/mvz2/DownloadStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/genouka/fumo/mvz2/DownloadStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 21
    const-class v0, Lcom/genouka/fumo/mvz2/DownloadStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/genouka/fumo/mvz2/DownloadStatus;

    return-object v0
.end method

.method public static values()[Lcom/genouka/fumo/mvz2/DownloadStatus;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/genouka/fumo/mvz2/DownloadStatus;->$VALUES:[Lcom/genouka/fumo/mvz2/DownloadStatus;

    invoke-virtual {v0}, [Lcom/genouka/fumo/mvz2/DownloadStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/genouka/fumo/mvz2/DownloadStatus;

    return-object v0
.end method
