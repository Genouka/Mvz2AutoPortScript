.class Lyuanwow/foxr/starter/ui/s$100000008$100000007;
.super Ljava/lang/Object;
.source "s.java"

# interfaces
.implements Lyuanwowandroidx/DirectoryPickerDialog$DirectorySelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyuanwow/foxr/starter/ui/s$100000008;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000007"
.end annotation


# instance fields
.field private final this$0:Lyuanwow/foxr/starter/ui/s$100000008;

.field private final synthetic val$c:Landroid/app/Activity;

.field private final synthetic val$currentConfig:Lyuanwow/foxr/starter/ui/ConfigSe;


# direct methods
.method constructor <init>(Lyuanwow/foxr/starter/ui/s$100000008;Lyuanwow/foxr/starter/ui/ConfigSe;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyuanwow/foxr/starter/ui/s$100000008$100000007;->this$0:Lyuanwow/foxr/starter/ui/s$100000008;

    iput-object p2, p0, Lyuanwow/foxr/starter/ui/s$100000008$100000007;->val$currentConfig:Lyuanwow/foxr/starter/ui/ConfigSe;

    iput-object p3, p0, Lyuanwow/foxr/starter/ui/s$100000008$100000007;->val$c:Landroid/app/Activity;

    return-void
.end method

.method static access$0(Lyuanwow/foxr/starter/ui/s$100000008$100000007;)Lyuanwow/foxr/starter/ui/s$100000008;
    .locals 0

    iget-object p0, p0, Lyuanwow/foxr/starter/ui/s$100000008$100000007;->this$0:Lyuanwow/foxr/starter/ui/s$100000008;

    return-object p0
.end method


# virtual methods
.method public onDirectorySelected(Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 357
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Selected directory: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DirectoryPicker"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 361
    iget-object v0, p0, Lyuanwow/foxr/starter/ui/s$100000008$100000007;->val$currentConfig:Lyuanwow/foxr/starter/ui/ConfigSe;

    if-nez v0, :cond_0

    new-instance v0, Lyuanwow/foxr/starter/ui/ConfigSe;

    invoke-direct {v0}, Lyuanwow/foxr/starter/ui/ConfigSe;-><init>()V

    .line 362
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lyuanwow/foxr/starter/ui/ConfigSe;->savepath:Ljava/lang/String;

    .line 363
    invoke-static {}, Lyuanwow/foxr/starter/ui/GenoukaCommonConfig;->getIns()Lyuanwow/foxr/starter/ui/GenoukaCommonConfig;

    move-result-object p1

    invoke-virtual {p1, v0}, Lyuanwow/foxr/starter/ui/GenoukaCommonConfig;->setConfig(Lyuanwow/foxr/starter/ui/ConfigSe;)Lyuanwow/foxr/starter/ui/GenoukaCommonConfig;

    move-result-object p1

    invoke-virtual {p1}, Lyuanwow/foxr/starter/ui/GenoukaCommonConfig;->syncConfig()Lyuanwow/foxr/starter/ui/GenoukaCommonConfig;

    .line 364
    iget-object p1, p0, Lyuanwow/foxr/starter/ui/s$100000008$100000007;->val$c:Landroid/app/Activity;

    invoke-static {p1}, Lyuanwow/foxr/starter/ui/s;->restartgamedialog(Landroid/app/Activity;)V

    goto :goto_1

    .line 366
    :cond_1
    iget-object p1, p0, Lyuanwow/foxr/starter/ui/s$100000008$100000007;->val$c:Landroid/app/Activity;

    const-string v0, "\u76ee\u5f55\u4e0d\u53ef\u5199"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 367
    iget-object p1, p0, Lyuanwow/foxr/starter/ui/s$100000008$100000007;->val$c:Landroid/app/Activity;

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_2

    .line 369
    iget-object p1, p0, Lyuanwow/foxr/starter/ui/s$100000008$100000007;->val$c:Landroid/app/Activity;

    if-eqz p1, :cond_2

    .line 370
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lyuanwow/foxr/starter/ui/s$100000008$100000007;->val$c:Landroid/app/Activity;

    :try_start_0
    const-string v1, "com.refix.genouka.deltarune.MainActivity"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 371
    const-string v0, "genouka"

    const-string v1, "reqstorage"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 372
    iget-object v0, p0, Lyuanwow/foxr/starter/ui/s$100000008$100000007;->val$c:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 370
    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 375
    :cond_2
    :goto_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt p1, v0, :cond_3

    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result p1

    if-nez p1, :cond_3

    .line 377
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 378
    iget-object v0, p0, Lyuanwow/foxr/starter/ui/s$100000008$100000007;->val$c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    const-string v2, "package"

    invoke-static {v2, v0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 379
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 380
    iget-object v0, p0, Lyuanwow/foxr/starter/ui/s$100000008$100000007;->val$c:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_3
    :goto_1
    return-void
.end method
