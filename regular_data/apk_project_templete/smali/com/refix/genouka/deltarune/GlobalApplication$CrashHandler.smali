.class public Lcom/refix/genouka/deltarune/GlobalApplication$CrashHandler;
.super Ljava/lang/Object;
.source "GlobalApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/refix/genouka/deltarune/GlobalApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x29
    name = "CrashHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/refix/genouka/deltarune/GlobalApplication$CrashHandler$UncaughtExceptionHandlerImpl;
    }
.end annotation


# static fields
.field public static final DEFAULT_UNCAUGHT_EXCEPTION_HANDLER:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private static sInstance:Lcom/refix/genouka/deltarune/GlobalApplication$CrashHandler;


# direct methods
.method static final constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    sput-object v0, Lcom/refix/genouka/deltarune/GlobalApplication$CrashHandler;->DEFAULT_UNCAUGHT_EXCEPTION_HANDLER:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/refix/genouka/deltarune/GlobalApplication$CrashHandler;
    .locals 1

    .line 117
    sget-object v0, Lcom/refix/genouka/deltarune/GlobalApplication$CrashHandler;->sInstance:Lcom/refix/genouka/deltarune/GlobalApplication$CrashHandler;

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Lcom/refix/genouka/deltarune/GlobalApplication$CrashHandler;

    invoke-direct {v0}, Lcom/refix/genouka/deltarune/GlobalApplication$CrashHandler;-><init>()V

    sput-object v0, Lcom/refix/genouka/deltarune/GlobalApplication$CrashHandler;->sInstance:Lcom/refix/genouka/deltarune/GlobalApplication$CrashHandler;

    .line 120
    :cond_0
    sget-object v0, Lcom/refix/genouka/deltarune/GlobalApplication$CrashHandler;->sInstance:Lcom/refix/genouka/deltarune/GlobalApplication$CrashHandler;

    return-object v0
.end method


# virtual methods
.method public registerGlobal(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 124
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/refix/genouka/deltarune/GlobalApplication$CrashHandler;->registerGlobal(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public registerGlobal(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 128
    new-instance v0, Lcom/refix/genouka/deltarune/GlobalApplication$CrashHandler$UncaughtExceptionHandlerImpl;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lcom/refix/genouka/deltarune/GlobalApplication$CrashHandler$UncaughtExceptionHandlerImpl;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method public unregister()V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 132
    sget-object v0, Lcom/refix/genouka/deltarune/GlobalApplication$CrashHandler;->DEFAULT_UNCAUGHT_EXCEPTION_HANDLER:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method
