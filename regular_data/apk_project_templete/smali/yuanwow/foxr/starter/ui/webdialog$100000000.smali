.class Lyuanwow/foxr/starter/ui/webdialog$100000000;
.super Landroid/webkit/WebView;
.source "webdialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyuanwow/foxr/starter/ui/webdialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000000"
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/app/Activity;

.field private final synthetic val$dialog:Landroid/app/AlertDialog;

.field private final synthetic val$filepath:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/app/AlertDialog;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lyuanwow/foxr/starter/ui/webdialog$100000000;->val$dialog:Landroid/app/AlertDialog;

    iput-object p3, p0, Lyuanwow/foxr/starter/ui/webdialog$100000000;->val$filepath:Ljava/lang/String;

    iput-object p4, p0, Lyuanwow/foxr/starter/ui/webdialog$100000000;->val$context:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 42
    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    .line 45
    iget-object v0, p0, Lyuanwow/foxr/starter/ui/webdialog$100000000;->val$dialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lyuanwow/foxr/starter/ui/webdialog$100000000;->val$filepath:Ljava/lang/String;

    iget-object v2, p0, Lyuanwow/foxr/starter/ui/webdialog$100000000;->val$context:Landroid/app/Activity;

    invoke-static {p0, v0, v1, v2}, Lyuanwow/foxr/starter/ui/webdialog;->access$1000002(Landroid/webkit/WebView;Landroid/app/AlertDialog;Ljava/lang/String;Landroid/app/Activity;)V

    .line 47
    const-string v0, "file:///android_asset/deltarune4/savefile/main.html"

    invoke-virtual {p0, v0}, Lyuanwow/foxr/starter/ui/webdialog$100000000;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
