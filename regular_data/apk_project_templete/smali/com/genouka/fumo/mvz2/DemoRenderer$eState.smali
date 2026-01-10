.class public final enum Lcom/genouka/fumo/mvz2/DemoRenderer$eState;
.super Ljava/lang/Enum;
.source "DemoRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genouka/fumo/mvz2/DemoRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "eState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/genouka/fumo/mvz2/DemoRenderer$eState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

.field public static final enum APKExpansionDownload:Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

.field public static final enum DoStartup:Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

.field public static final enum DownloadGameDroidInit:Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

.field public static final enum DownloadGameDroidWait:Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

.field public static final enum InitRunner:Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

.field public static final enum Process:Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

.field public static final enum Splash:Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

.field public static final enum Splash2:Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

.field public static final enum Startup:Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

.field public static final enum WaitForDoStartup:Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

.field public static final enum WaitOnTimer:Lcom/genouka/fumo/mvz2/DemoRenderer$eState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 75
    new-instance v0, Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

    const-string v1, "Startup"

    invoke-direct {v0, v1, v3}, Lcom/genouka/fumo/mvz2/DemoRenderer$eState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genouka/fumo/mvz2/DemoRenderer$eState;->Startup:Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

    .line 76
    new-instance v0, Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

    const-string v1, "DownloadGameDroidInit"

    invoke-direct {v0, v1, v4}, Lcom/genouka/fumo/mvz2/DemoRenderer$eState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genouka/fumo/mvz2/DemoRenderer$eState;->DownloadGameDroidInit:Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

    .line 77
    new-instance v0, Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

    const-string v1, "DownloadGameDroidWait"

    invoke-direct {v0, v1, v5}, Lcom/genouka/fumo/mvz2/DemoRenderer$eState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genouka/fumo/mvz2/DemoRenderer$eState;->DownloadGameDroidWait:Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

    .line 78
    new-instance v0, Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

    const-string v1, "Splash"

    invoke-direct {v0, v1, v6}, Lcom/genouka/fumo/mvz2/DemoRenderer$eState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genouka/fumo/mvz2/DemoRenderer$eState;->Splash:Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

    .line 79
    new-instance v0, Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

    const-string v1, "Splash2"

    invoke-direct {v0, v1, v7}, Lcom/genouka/fumo/mvz2/DemoRenderer$eState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genouka/fumo/mvz2/DemoRenderer$eState;->Splash2:Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

    .line 80
    new-instance v0, Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

    const-string v1, "APKExpansionDownload"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/genouka/fumo/mvz2/DemoRenderer$eState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genouka/fumo/mvz2/DemoRenderer$eState;->APKExpansionDownload:Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

    .line 81
    new-instance v0, Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

    const-string v1, "InitRunner"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/genouka/fumo/mvz2/DemoRenderer$eState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genouka/fumo/mvz2/DemoRenderer$eState;->InitRunner:Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

    .line 82
    new-instance v0, Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

    const-string v1, "WaitForDoStartup"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/genouka/fumo/mvz2/DemoRenderer$eState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genouka/fumo/mvz2/DemoRenderer$eState;->WaitForDoStartup:Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

    .line 83
    new-instance v0, Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

    const-string v1, "WaitOnTimer"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/genouka/fumo/mvz2/DemoRenderer$eState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genouka/fumo/mvz2/DemoRenderer$eState;->WaitOnTimer:Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

    .line 84
    new-instance v0, Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

    const-string v1, "DoStartup"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/genouka/fumo/mvz2/DemoRenderer$eState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genouka/fumo/mvz2/DemoRenderer$eState;->DoStartup:Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

    .line 85
    new-instance v0, Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

    const-string v1, "Process"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/genouka/fumo/mvz2/DemoRenderer$eState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genouka/fumo/mvz2/DemoRenderer$eState;->Process:Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

    .line 73
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

    sget-object v1, Lcom/genouka/fumo/mvz2/DemoRenderer$eState;->Startup:Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/genouka/fumo/mvz2/DemoRenderer$eState;->DownloadGameDroidInit:Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/genouka/fumo/mvz2/DemoRenderer$eState;->DownloadGameDroidWait:Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/genouka/fumo/mvz2/DemoRenderer$eState;->Splash:Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/genouka/fumo/mvz2/DemoRenderer$eState;->Splash2:Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/genouka/fumo/mvz2/DemoRenderer$eState;->APKExpansionDownload:Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/genouka/fumo/mvz2/DemoRenderer$eState;->InitRunner:Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/genouka/fumo/mvz2/DemoRenderer$eState;->WaitForDoStartup:Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/genouka/fumo/mvz2/DemoRenderer$eState;->WaitOnTimer:Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/genouka/fumo/mvz2/DemoRenderer$eState;->DoStartup:Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/genouka/fumo/mvz2/DemoRenderer$eState;->Process:Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/genouka/fumo/mvz2/DemoRenderer$eState;->$VALUES:[Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

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
    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/genouka/fumo/mvz2/DemoRenderer$eState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 73
    const-class v0, Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

    return-object v0
.end method

.method public static values()[Lcom/genouka/fumo/mvz2/DemoRenderer$eState;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/genouka/fumo/mvz2/DemoRenderer$eState;->$VALUES:[Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

    invoke-virtual {v0}, [Lcom/genouka/fumo/mvz2/DemoRenderer$eState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/genouka/fumo/mvz2/DemoRenderer$eState;

    return-object v0
.end method
