.class public Lyuanwow/foxr/starter/ui/webdialog$WebAppInterface;
.super Ljava/lang/Object;
.source "webdialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyuanwow/foxr/starter/ui/webdialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x29
    name = "WebAppInterface"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyuanwow/foxr/starter/ui/webdialog$WebAppInterface$100000002;
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private dialog:Landroid/app/AlertDialog;

.field private path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/AlertDialog;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lyuanwow/foxr/starter/ui/webdialog$WebAppInterface;->dialog:Landroid/app/AlertDialog;

    .line 84
    iput-object p2, p0, Lyuanwow/foxr/starter/ui/webdialog$WebAppInterface;->path:Ljava/lang/String;

    .line 85
    iput-object p3, p0, Lyuanwow/foxr/starter/ui/webdialog$WebAppInterface;->activity:Landroid/app/Activity;

    return-void
.end method

.method static synthetic access$L1000005(Lyuanwow/foxr/starter/ui/webdialog$WebAppInterface;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lyuanwow/foxr/starter/ui/webdialog$WebAppInterface;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$S1000005(Lyuanwow/foxr/starter/ui/webdialog$WebAppInterface;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lyuanwow/foxr/starter/ui/webdialog$WebAppInterface;->activity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public closeDialog()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lyuanwow/foxr/starter/ui/webdialog$WebAppInterface;->dialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lyuanwow/foxr/starter/ui/webdialog$WebAppInterface;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public closeDialogT()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lyuanwow/foxr/starter/ui/webdialog$WebAppInterface;->dialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lyuanwow/foxr/starter/ui/webdialog$WebAppInterface;->activity:Landroid/app/Activity;

    new-instance v1, Lyuanwow/foxr/starter/ui/webdialog$WebAppInterface$100000002;

    invoke-direct {v1, p0}, Lyuanwow/foxr/starter/ui/webdialog$WebAppInterface$100000002;-><init>(Lyuanwow/foxr/starter/ui/webdialog$WebAppInterface;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 106
    iget-object v0, p0, Lyuanwow/foxr/starter/ui/webdialog$WebAppInterface;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public readFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 114
    nop

    .line 116
    :try_start_0
    invoke-static {p1}, Lyuanwow/foxr/starter/ui/webdialog;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p1, ""

    .line 118
    :goto_0
    return-object p1
.end method

.method public readFile11()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 126
    nop

    .line 128
    :try_start_0
    iget-object v0, p0, Lyuanwow/foxr/starter/ui/webdialog$WebAppInterface;->path:Ljava/lang/String;

    invoke-static {v0}, Lyuanwow/foxr/starter/ui/webdialog;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, ""

    .line 130
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

    .line 136
    invoke-static {p1, p2}, Lyuanwow/foxr/starter/ui/webdialog;->writeStringToFile(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public writeSyncT(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 141
    const-string v0, "undefined"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object p1, p0, Lyuanwow/foxr/starter/ui/webdialog$WebAppInterface;->activity:Landroid/app/Activity;

    const-string v0, "\u5b58\u6863\u4fee\u6539\u5931\u8d25\uff0c\u5df2\u81ea\u52a8\u963b\u6b62\u574f\u6863"

    const/16 v1, 0x3e8

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 143
    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lyuanwow/foxr/starter/ui/webdialog$WebAppInterface;->path:Ljava/lang/String;

    invoke-static {v0, p1}, Lyuanwow/foxr/starter/ui/webdialog;->writeStringToFile(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
