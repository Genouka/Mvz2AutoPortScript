.class public final enum Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;
.super Ljava/lang/Enum;
.source "IAdvertising.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genouka/fumo/mvz2/IAdvertising;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AdTypes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;

.field public static final enum BANNER:Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;

.field public static final enum FULL_BANNER:Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;

.field public static final enum INTERSTITIAL:Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;

.field public static final enum LEADERBOARD:Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;

.field public static final enum MRECT:Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;

.field public static final enum SKYSCRAPER:Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7
    new-instance v0, Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;

    const-string v1, "BANNER"

    invoke-direct {v0, v1, v3}, Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;->BANNER:Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;

    .line 8
    new-instance v0, Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;

    const-string v1, "MRECT"

    invoke-direct {v0, v1, v4}, Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;->MRECT:Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;

    .line 9
    new-instance v0, Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;

    const-string v1, "FULL_BANNER"

    invoke-direct {v0, v1, v5}, Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;->FULL_BANNER:Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;

    .line 10
    new-instance v0, Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;

    const-string v1, "LEADERBOARD"

    invoke-direct {v0, v1, v6}, Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;->LEADERBOARD:Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;

    .line 11
    new-instance v0, Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;

    const-string v1, "SKYSCRAPER"

    invoke-direct {v0, v1, v7}, Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;->SKYSCRAPER:Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;

    .line 12
    new-instance v0, Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;

    const-string v1, "INTERSTITIAL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;->INTERSTITIAL:Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;

    .line 5
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;

    sget-object v1, Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;->BANNER:Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;

    aput-object v1, v0, v3

    sget-object v1, Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;->MRECT:Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;

    aput-object v1, v0, v4

    sget-object v1, Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;->FULL_BANNER:Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;

    aput-object v1, v0, v5

    sget-object v1, Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;->LEADERBOARD:Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;

    aput-object v1, v0, v6

    sget-object v1, Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;->SKYSCRAPER:Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;->INTERSTITIAL:Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;

    aput-object v2, v0, v1

    sput-object v0, Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;->$VALUES:[Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;

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
    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 5
    const-class v0, Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;

    return-object v0
.end method

.method public static values()[Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;->$VALUES:[Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;

    invoke-virtual {v0}, [Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/genouka/fumo/mvz2/IAdvertising$AdTypes;

    return-object v0
.end method
