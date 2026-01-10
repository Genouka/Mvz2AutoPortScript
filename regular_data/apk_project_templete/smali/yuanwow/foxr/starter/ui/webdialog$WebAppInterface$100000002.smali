.class Lyuanwow/foxr/starter/ui/webdialog$WebAppInterface$100000002;
.super Ljava/lang/Object;
.source "webdialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyuanwow/foxr/starter/ui/webdialog$WebAppInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000002"
.end annotation


# instance fields
.field private final this$0:Lyuanwow/foxr/starter/ui/webdialog$WebAppInterface;


# direct methods
.method constructor <init>(Lyuanwow/foxr/starter/ui/webdialog$WebAppInterface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyuanwow/foxr/starter/ui/webdialog$WebAppInterface$100000002;->this$0:Lyuanwow/foxr/starter/ui/webdialog$WebAppInterface;

    return-void
.end method

.method static access$0(Lyuanwow/foxr/starter/ui/webdialog$WebAppInterface$100000002;)Lyuanwow/foxr/starter/ui/webdialog$WebAppInterface;
    .locals 0

    iget-object p0, p0, Lyuanwow/foxr/starter/ui/webdialog$WebAppInterface$100000002;->this$0:Lyuanwow/foxr/starter/ui/webdialog$WebAppInterface;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 103
    iget-object v0, p0, Lyuanwow/foxr/starter/ui/webdialog$WebAppInterface$100000002;->this$0:Lyuanwow/foxr/starter/ui/webdialog$WebAppInterface;

    invoke-static {v0}, Lyuanwow/foxr/starter/ui/webdialog$WebAppInterface;->access$L1000005(Lyuanwow/foxr/starter/ui/webdialog$WebAppInterface;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u5b58\u6863\u4fee\u6539\u5e76\u540c\u6b65\u6210\u529f\u3002"

    const/16 v2, 0x3e8

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
